function phiy = activecontourCV( u0, center, radius, isinside, d_it, m_it, m_name )
% 用主动轮廓线CV算法对输入图像u0实现图像边缘提取
% 输入图像为double型，灰度为1—256的图像。选用圆形起始轮廓线
% center为起始轮廓线原点，radius为起始轮廓线半径。isinside 表示边缘目标在起始轮廓线外还是内，=1表示目标在起始轮廓线内，=0表示在外

% 初始化参数
ITERATIONS = 500;%迭代次数
delta_t = 0.1;%时间步长
%轮廓内外能量参数
lambda1 = 1;
lambda2 = 1;
nu = 0;
%曲率项参数
h = 1; h_sq = h^2;
epsilon = 1;
mu = 0.01 * 255^2;

% 初始化符号距离函数
phi = initsdf( size( u0 ), center, radius, isinside );

for ii = 1 : ITERATIONS;

  % 显示当前迭代次数
  fprintf( 1, '%d\n', ii );

  % 每d_it显示一次图像
  if( mod( ii - 1, d_it ) == 0 )
    disp( 'Displaying Segmented Image' );
    segim = createim( u0, phi );
    clf; imshow( segim );
    drawnow;
  end;
  
  % 每m_it次保存一次图像
   if( mod( ii - 1, m_it ) == 0 )
    segim = createim( u0, phi );
    filename = strcat( m_name, sprintf( '%06d', ( ( ii - 1 )/ m_it ) + 1 ), '.png' );
    imwrite( segim, filename );
  end;

  %delta_t*狄力克函数
  dirac_delta_t = delta_t * diracfunction( phi, epsilon );

  % 计算轮廓线内外能量
  [ inside, outside ] = calcenergyf( u0, phi, epsilon );
  energy_term = -nu - lambda1 .* inside + lambda2 .* outside;%能量项

  % 中心差分
  dx_central = ( circshift( phi, [ 0, -1 ] ) - circshift( phi, [ 0, 1 ] ) ) / 2;
  dy_central = ( circshift( phi, [ -1, 0 ] ) - circshift( phi, [ 1, 0 ] ) ) / 2;

  % div(delt_phi/|delta_phi|)
  abs_grad_phi = ( sqrt( dx_central.^2 + dy_central.^2 ) + 0.00001 );
  x = dx_central ./ abs_grad_phi;
  y = dy_central ./ abs_grad_phi;
  grad_term = ( mu / h_sq ) .* divergence( x, y );%梯度能量

  % phi(n+1)
  phi = phi + dirac_delta_t .* ( grad_term + energy_term );
  phiy(:,:,ii)=phi;%保存每次迭代结果
end;


%子函数
%初始化水平集函数，符号距离函数
function phi = initsdf( imsize, center, radius, isinside )
m = imsize( 1 ); n = imsize( 2 );
phi = zeros( imsize );
for i = 1 : m;
  for j = 1 : n;
     distance = sqrt( sum( ( center - [ i, j ] ).^2 ) );
     phi( i, j ) = distance - radius;
    if( isinside == 0 )
      phi( i, j ) = -phi( i, j );
    end
  end
end

%狄力克函数，利于检测出目标的空心部分
function y = diracfunction( x, epsilon )
y = ( 1 ./ pi ) .* ( epsilon ./ ( epsilon.^2 + x.^2 ) );

%用于求轮廓内外能量
function value = heavisidef( z, epsilon )
value = 0.5 .* ( 1 + ( 2 ./ pi ) .* atan( z ./ epsilon ) );

%求轮廓内外能量
function [ inside, outside ] = calcenergyf( u0, phi, epsilon )
H_phi = heavisidef( phi, epsilon );
H_phi_minus = 1 - heavisidef( phi, epsilon );

c1 = sum( sum( u0 .* H_phi ) ) /  sum( sum( H_phi ) );
c2 = sum( sum( u0 .* H_phi_minus ) ) / sum( sum( H_phi_minus ) );

inside = ( u0 - c1 ).^2;
outside = ( u0 - c2 ).^2;

%显示代轮廓的图像，轮廓为零水平集，用ifro检测出。将原图和轮廓叠加为rgb图像，轮廓用绿色表示
function newim = createim( im, phi )
newim( :, :, 1 ) = im;
newim( :, :, 3 ) = im;

tempim = im;
tempim( find( isfro( phi ) ) ) = 255;

newim( :, :, 2 ) = tempim;

newim = uint8( newim );

%检测零水平集的位置
function front = isfro( phi )
[ n, m ] = size( phi );
front = zeros( size( phi ) );
for i = 2 : n - 1;
  for j = 2 : m - 1;

    maxVal = max( max( phi( i:i+1, j:j+1 ) ) );
    minVal = min( min( phi( i:i+1, j:j+1 ) ) );
    front( i, j ) = ( ( maxVal > 0 ) & ( minVal < 0 ) ) | phi( i, j ) == 0;

  end
end

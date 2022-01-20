Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BD0E4494598
	for <lists+devicetree@lfdr.de>; Thu, 20 Jan 2022 02:43:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbiATBnH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 20:43:07 -0500
Received: from 6.mo584.mail-out.ovh.net ([188.165.36.253]:32947 "EHLO
        6.mo584.mail-out.ovh.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231954AbiATBnH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 20:43:07 -0500
X-Greylist: delayed 16799 seconds by postgrey-1.27 at vger.kernel.org; Wed, 19 Jan 2022 20:43:07 EST
Received: from player791.ha.ovh.net (unknown [10.108.1.191])
        by mo584.mail-out.ovh.net (Postfix) with ESMTP id ABC8722A5D
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 20:55:55 +0000 (UTC)
Received: from etezian.org (82-181-27-157.bb.dnainternet.fi [82.181.27.157])
        (Authenticated sender: andi@etezian.org)
        by player791.ha.ovh.net (Postfix) with ESMTPSA id D597A266CDB75;
        Wed, 19 Jan 2022 20:55:36 +0000 (UTC)
Authentication-Results: garm.ovh; auth=pass (GARM-106R006390dcab6-99cd-4766-9f5f-a59f7922d779,
                    EAD790EBCBC9E102087108CB0F5556A3B44BAE4B) smtp.auth=andi@etezian.org
X-OVh-ClientIp: 82.181.27.157
Date:   Wed, 19 Jan 2022 22:55:35 +0200
From:   Andi Shyti <andi@etezian.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Cc:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Andi Shyti <andi@etezian.org>, Mark Brown <broonie@kernel.org>,
        Balletbo i Serra <enric.balletbo@collabora.com>,
        Sam Protsenko <semen.protsenko@linaro.org>,
        Pratyush Yadav <p.yadav@ti.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-spi@vger.kernel.org,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 5/5] spi: s3c64xx: allow controller-data to be optional
Message-ID: <Yeh6x6U3tA7y5gvF@jack.zhora.eu>
References: <20220119201005.13145-1-krzysztof.kozlowski@canonical.com>
 <20220119201005.13145-6-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220119201005.13145-6-krzysztof.kozlowski@canonical.com>
X-Ovh-Tracer-Id: 8852669495508536017
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedvvddrudeigdekgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenucfjughrpeffhffvuffkfhggtggujgesthdtredttddtvdenucfhrhhomheptehnughiucfuhhihthhiuceorghnughisegvthgviihirghnrdhorhhgqeenucggtffrrghtthgvrhhnpedtgfduudfhfeeuueejfeeihedtfeetgfegveehgfeuleelhfduteegieekudeifeenucfkpheptddrtddrtddrtddpkedvrddukedurddvjedrudehjeenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhhouggvpehsmhhtphhouhhtpdhhvghlohepphhlrgihvghrjeeluddrhhgrrdhovhhhrdhnvghtpdhinhgvtheptddrtddrtddrtddpmhgrihhlfhhrohhmpegrnhguihesvghtvgiiihgrnhdrohhrghdpnhgspghrtghpthhtohepuddprhgtphhtthhopeguvghvihgtvghtrhgvvgesvhhgvghrrdhkvghrnhgvlhdrohhrgh
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed, Jan 19, 2022 at 09:10:05PM +0100, Krzysztof Kozlowski wrote:
> The Samsung SoC SPI driver requires to provide controller-data node
> for each of SPI peripheral device nodes.  Make this controller-data node
> optional, so DTS could be simpler.
> 
> Suggested-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
> Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
> ---
>  drivers/spi/spi-s3c64xx.c | 14 ++++++--------
>  1 file changed, 6 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/spi/spi-s3c64xx.c b/drivers/spi/spi-s3c64xx.c
> index 8755cd85e83c..769d958a2f86 100644
> --- a/drivers/spi/spi-s3c64xx.c
> +++ b/drivers/spi/spi-s3c64xx.c
> @@ -796,16 +796,14 @@ static struct s3c64xx_spi_csinfo *s3c64xx_get_slave_ctrldata(
>  		return ERR_PTR(-EINVAL);
>  	}
>  
> -	data_np = of_get_child_by_name(slave_np, "controller-data");
> -	if (!data_np) {
> -		dev_err(&spi->dev, "child node 'controller-data' not found\n");
> -		return ERR_PTR(-EINVAL);
> -	}
> -
>  	cs = kzalloc(sizeof(*cs), GFP_KERNEL);
> -	if (!cs) {
> -		of_node_put(data_np);
> +	if (!cs)
>  		return ERR_PTR(-ENOMEM);
> +
> +	data_np = of_get_child_by_name(slave_np, "controller-data");
> +	if (!data_np) {
> +		dev_info(&spi->dev, "child node 'controller-data' not found, using defaults\n");

"not found" sounds like an error; I would just write something
like "feedback delay set to '0' dfault", you also tell that the
default value is '0'.

In any case,

Reviewed-by: Andi Shyti <andi@etezian.org>

Andi

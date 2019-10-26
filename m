Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BBE6BE5A59
	for <lists+devicetree@lfdr.de>; Sat, 26 Oct 2019 14:05:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726175AbfJZMFu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 26 Oct 2019 08:05:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:57706 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726162AbfJZMFu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 26 Oct 2019 08:05:50 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 99A1D20863;
        Sat, 26 Oct 2019 12:05:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1572091550;
        bh=vEeuAbF0jGSLicUYjS282y4gW60r15/l1Ux0W++rJnE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=umLw596aInWYaJRO3tahHmflItaumE6EkVRvKxXosp1whMOMGE/Lqz4WHoB4+BL8j
         V7hXopcDzTjYbRw+h6qHi4wsEXMDXszu6dU3HCVeVQGf1BNLdv0+RrwpZD6a/F2oZC
         GROa7ECNsXgxL9CfQCOjE6WW05BFcW71VFLZUYHM=
Date:   Sat, 26 Oct 2019 20:05:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Peter Chen <peter.chen@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de,
        devicetree@vger.kernel.org, robh+dt@kernel.org, linux-imx@nxp.com
Subject: Re: [PATCH 1/1] ARM: dts: imx6ul-14x14-evk.dtsi: configure USBOTG1
 ID pinctrl
Message-ID: <20191026120534.GK14401@dragon>
References: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1571214665-26402-1-git-send-email-peter.chen@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 16, 2019 at 04:31:05PM +0800, Peter Chen wrote:
> Without configuring this pinctrl, the ID value can't be got correctly,
> then, the dual-role switch can't work well.
> 
> Reviewed-by: Jun Li <jun.li@nxp.com>
> Signed-off-by: Peter Chen <peter.chen@nxp.com>

Reviewed-by should generally go after Signed-off-by, as you create patch
first and then people review it.

I flipped the order and applied the patch.

Shawn

> ---
>  arch/arm/boot/dts/imx6ul-14x14-evk.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> index c2a9dd57e56a..ed3d993c25f7 100644
> --- a/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> +++ b/arch/arm/boot/dts/imx6ul-14x14-evk.dtsi
> @@ -266,6 +266,8 @@
>  
>  &usbotg1 {
>  	dr_mode = "otg";
> +	pinctrl-names = "default";
> +	pinctrl-0 = <&pinctrl_usb_otg1>;
>  	status = "okay";
>  };
>  
> @@ -499,6 +501,12 @@
>  		>;
>  	};
>  
> +	pinctrl_usb_otg1: usbotg1grp {
> +		fsl,pins = <
> +			MX6UL_PAD_GPIO1_IO00__ANATOP_OTG1_ID	0x17059
> +		>;
> +	};
> +
>  	pinctrl_usdhc1: usdhc1grp {
>  		fsl,pins = <
>  			MX6UL_PAD_SD1_CMD__USDHC1_CMD     	0x17059
> -- 
> 2.17.1
> 

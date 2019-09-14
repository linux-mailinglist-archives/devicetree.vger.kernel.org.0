Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DD7CEB2964
	for <lists+devicetree@lfdr.de>; Sat, 14 Sep 2019 04:42:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389705AbfINCmi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Sep 2019 22:42:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:40908 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389553AbfINCmi (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Sep 2019 22:42:38 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C425520866;
        Sat, 14 Sep 2019 02:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1568428958;
        bh=u+OoaYDVu8n91ZtMX/DLeBe/J9Gl3SnEOSQ8P8tZZFA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VhNxGps99qmf6pdOYjQ66fbo80M4G/RFFUXTN5iSJPpLbDaIkYI0w5cHn508OS5ch
         DXf/H7BM3JS+G++fycDqeoBbdVsJoPCqqToyZI69vsv5TtxOLmz4UI+CwT+Z1icPGT
         71+fh86z0dfpNdMtRopip3sqBgGZA+74ummv1BUg=
Date:   Sat, 14 Sep 2019 10:42:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Yuantian Tang <andy.tang@nxp.com>
Cc:     leoyang.li@nxp.com, robh+dt@kernel.org, mark.rutland@arm.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: ls1028a: fix a compatible issue
Message-ID: <20190914024231.GB3425@dragon>
References: <20190829073439.13069-1-andy.tang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190829073439.13069-1-andy.tang@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 29, 2019 at 03:34:39PM +0800, Yuantian Tang wrote:
> The I2C multiplexer used on ls1028aqds is PCA9547, not PCA9847.
> So correct it.

Can elaborate the fix a little bit, saying what's the issue exactly 
with using that incorrect compatible?

> 
> Signed-off-by: Yuantian Tang <andy.tang@nxp.com>

Do we need a fix tag?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> index 5e14e5a19744..f5da9e8b0d9d 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a-qds.dts
> @@ -107,7 +107,7 @@
>  	status = "okay";
>  
>  	i2c-mux@77 {
> -		compatible = "nxp,pca9847";
> +		compatible = "nxp,pca9547";
>  		reg = <0x77>;
>  		#address-cells = <1>;
>  		#size-cells = <0>;
> -- 
> 2.17.1
> 

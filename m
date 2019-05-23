Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 29B9E27860
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 10:48:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726230AbfEWIsI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 04:48:08 -0400
Received: from mail.kernel.org ([198.145.29.99]:33466 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726070AbfEWIsI (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 23 May 2019 04:48:08 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id B0CFD20881;
        Thu, 23 May 2019 08:48:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558601287;
        bh=ZpO820+HRCThlTiYwTEWDIq9N5/gK8HjH0ZTj3YuZcU=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=pCrNfEmobtn2AALu+kG8hm28tzxm2DL3MrfxfS5hkbJK7MM2I3DIO8Oz+BObtk8M5
         AJzK7vWJ/rwPgjdH0P3GniVtNsVIZR3DCOohHQjEvqx+n15ryS7UDXBvFiMBMscpSH
         GXTbFZ/pBI7X3TE14i1bs6gvmx6A1VXnNjkXBk2s=
Date:   Thu, 23 May 2019 16:47:07 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Kuldeep Singh <kuldeep.singh@nxp.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "linux-mtd@lists.infradead.org" <linux-mtd@lists.infradead.org>,
        "bbrezillon@kernel.org" <bbrezillon@kernel.org>,
        "broonie@kernel.org" <broonie@kernel.org>,
        Ashish Kumar <ashish.kumar@nxp.com>
Subject: Re: [PATCH] arm64: dts: ls1046a: Fast read m25p60
Message-ID: <20190523084707.GN9261@dragon>
References: <20190516114807.30817-1-kuldeep.singh@nxp.com>
 <20190516114807.30817-2-kuldeep.singh@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190516114807.30817-2-kuldeep.singh@nxp.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 16, 2019 at 11:47:06AM +0000, Kuldeep Singh wrote:
> QSPI support is added for kernel version greater than 5.0 and supports
> quad mode defined by
> TX-WIDTH = <4>, RX-WIDTH = <4>
> 
> RDB/QDS has two 64MB flash from SPANSION(s25fs512s)
> 
> Signed-off-by: Ashish Kumar <ashish.kumar@nxp.com>
> Signed-off-by: Kuldeep Singh <kuldeep.singh@nxp.com>

Please do not send patch in message encoding with base64.  I do not
apply it.

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts | 3 ++-
>  arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts | 6 ++++--
>  2 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> index eec62c63dafe..43a5ef6357d5 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-qds.dts
> @@ -166,9 +166,10 @@
>  	status = "okay";
>  
>  	qflash0: flash@0 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> index 6a6514d0e5a9..85105a20fc04 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a-rdb.dts
> @@ -102,9 +102,10 @@
>  	status = "okay";
>  
>  	qflash0: flash@0 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> @@ -112,9 +113,10 @@
>  	};
>  
>  	qflash1: flash@1 {
> -		compatible = "spansion,m25p80";
> +		compatible = "spansion,m25p80", "jedec,spi-nor";
>  		#address-cells = <1>;
>  		#size-cells = <1>;
> +		m25p,fast-read;
>  		spi-max-frequency = <20000000>;
>  		spi-rx-bus-width = <4>;
>  		spi-tx-bus-width = <4>;
> -- 
> 2.17.1
> 

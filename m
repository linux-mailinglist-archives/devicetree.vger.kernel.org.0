Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4BF7737F135
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 04:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230293AbhEMCQv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 22:16:51 -0400
Received: from mail.kernel.org ([198.145.29.99]:60804 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230305AbhEMCQu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 12 May 2021 22:16:50 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A78DE61108;
        Thu, 13 May 2021 02:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1620872141;
        bh=YtB5ucUvpAZ5on+ORipj1YYtnYvBijEjhMlsIGH98Uk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=beefXncwG8RzASycRJnUvsGWDnev2Bo7H0v0MoZDsvYnO+z3NONT5dZiyjJadwevv
         rgnbGVTkBqkhSXNBjyjtz2NxNssLtonbUj30OPwXLQrXXtupD+Lwh8qdNma14Qr97n
         /gSHbBQsKWtFybYEvZdpgeR6sI3DThk3ank9G6Bxm988wL3H0v40uR8cVuMFA0huD+
         ANRHKmZe83+gLjPRxJ2+GdkJhOcLRTUhUYL4Nk89PfQE8tvj6EQJ2dzLfR95itNkJn
         cBdbcsSE6pvEMsAzE62SBCDQgDJmn2QCNj+LEKu7pQ0ZXUtLZbiLmN7TVS5E79R0Ch
         caf9SQY3bo9CQ==
Date:   Thu, 13 May 2021 10:15:35 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Michael Walle <michael@walle.cc>,
        Bhaskar Upadhaya <bhaskar.upadhaya@nxp.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Li Yang <leoyang.li@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/2] arm64: dts: ls1028a: fix memory node
Message-ID: <20210513021535.GK3425@dragon>
References: <20210408110219.20149-1-michael@walle.cc>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210408110219.20149-1-michael@walle.cc>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

+ Bhaskar

On Thu, Apr 08, 2021 at 01:02:18PM +0200, Michael Walle wrote:
> While enabling EDAC support for the LS1028A it was discovered that the
> memory node has a wrong endianness setting as well as a wrong interrupt
> assignment. Fix both.
> 
> This was tested on a sl28 board. To force ECC errors, you can use the
> error injection supported by the controller in hardware (with
> CONFIG_EDAC_DEBUG enabled):
> 
>  # enable error injection
>  $ echo 0x100 > /sys/devices/system/edac/mc/mc0/inject_ctrl
>  # flip lowest bit of the data
>  $ echo 0x1 > /sys/devices/system/edac/mc/mc0/inject_data_lo
> 
> Fixes: 8897f3255c9c ("arm64: dts: Add support for NXP LS1028A SoC")
> Signed-off-by: Michael Walle <michael@walle.cc>

Bhaskar,

Does it look good to you?

Shawn

> ---
>  arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> index 9506f0669ead..040a3e529bf1 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1028a.dtsi
> @@ -197,8 +197,8 @@
>  		ddr: memory-controller@1080000 {
>  			compatible = "fsl,qoriq-memory-controller";
>  			reg = <0x0 0x1080000 0x0 0x1000>;
> -			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
> -			big-endian;
> +			interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
> +			little-endian;
>  		};
>  
>  		dcfg: syscon@1e00000 {
> -- 
> 2.20.1
> 

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C082E4587D3
	for <lists+devicetree@lfdr.de>; Mon, 22 Nov 2021 02:43:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231378AbhKVBq0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Nov 2021 20:46:26 -0500
Received: from mail.kernel.org ([198.145.29.99]:34232 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229920AbhKVBqZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 21 Nov 2021 20:46:25 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1321D600D4;
        Mon, 22 Nov 2021 01:43:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1637545400;
        bh=kjRtpdMvWrrMcXo4qounkQ9V0x4RJw1njpKM8ueIkQw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=fwLzfV/omd+tvOy6aTBYZoTggkY7Lb/BNaQenBBFNwkdMcTAY1jBfQ1DOusveREjb
         tXNzEy2VzVZeyg5iTcqCqNOOpRbAjTqZXj1BWsK5auNC4qy+Z+osxFRCpd+Ouf4r1t
         BeUprqN33K0KqFCxI6kEFk1oGAbWZQ8dQWLnGanfBUJoWMfSyT7YiJFqtTZEs5xr0D
         DYvzsdugDmYBxdUjN7e1AH4+03NEKdwtgze1IeT/V2MZi978Vu9iZgVab2JLk0uZMw
         6t3xNhdTyRuZ8EsmxE7JRORByItcbqdlLzCjcxqQuMKRaKOIzJjlbQsxvRxyfRgvdG
         w4BQXF8JW7L7g==
Date:   Mon, 22 Nov 2021 09:43:15 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/1] arm64: dts: imx8qm: Add fsl,imx7ulp-lpuart
 compatible to lpuart
Message-ID: <20211122014314.GV31998@dragon>
References: <20211116125814.2674343-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211116125814.2674343-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Nov 16, 2021 at 01:58:14PM +0100, Alexander Stein wrote:
> After commit b4b844930f27 ("tty: serial: fsl_lpuart: drop earlycon entry
> for i.MX8QXP") earlycon support was essentially removed from
> imx8qm/imx8qxp due to missing compatible.
> The commit message says "i.MX8QXP lpuart is compatible with i.MX7ULP" so
> adding a fallback compatible should be fine.
> With this change earlycon is supported again on imx8qm/imx8qxp.
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> Reviewed-by: Peng Fan <peng.fan@nxp.com>
> ---
> Changes in v2:
> * Fix typo in commit message: 'early' -> 'earlycon'
> 
>  arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> index bbe5f5ecfb92..3486b99ab6eb 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-dma.dtsi
> @@ -19,19 +19,19 @@ uart4_lpcg: clock-controller@5a4a0000 {
>  };
>  
>  &lpuart0 {
> -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";

Then fsl,imx8qxp-lpuart should be dropped?

Shawn

>  };
>  
>  &lpuart1 {
> -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
>  };
>  
>  &lpuart2 {
> -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
>  };
>  
>  &lpuart3 {
> -	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart";
> +	compatible = "fsl,imx8qm-lpuart", "fsl,imx8qxp-lpuart", "fsl,imx7ulp-lpuart";
>  };
>  
>  &i2c0 {
> -- 
> 2.25.1
> 

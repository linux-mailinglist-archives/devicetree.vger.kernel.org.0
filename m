Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7D71E315
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2019 14:52:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728104AbfD2Mwx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Apr 2019 08:52:53 -0400
Received: from mail-oi1-f195.google.com ([209.85.167.195]:41415 "EHLO
        mail-oi1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727764AbfD2Mwx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Apr 2019 08:52:53 -0400
Received: by mail-oi1-f195.google.com with SMTP id v23so7995986oif.8
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2019 05:52:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=L9gQvZ8PDconijULodU/VsDyvFooGr/uOkw0zHpyhD4=;
        b=N65tAs3NM3WQE6CwytbCi0hBPy/jNzpENSyNFvjSBUmR9zCj5mb1axtkZduFngn+bK
         nRRvxxSs0Vu6/BydjBWdDMo/EqMjTpnMyZN7vY1xgzgZkv1F+I/hWgx2DpeLqtFsmvkn
         bfjsJMIda7jiVGBqYkuveyG7J8XsSAJptucsqfJVrSMoHYKynQLvaIGoBjz42Pvod9r8
         ZTiNUvAcSUnQVK93Nbe3wahlOsEGpfIyv27mfDAuIwnCxX/4cPB+nMOIL+MtLIG6wVD2
         XuUpaZt9+sTgDw9W7pcFO40OjFlPhfTPnoYJvH0QxEjB4CduQFJe3fHB0hr6h/5Ge5ln
         S7Mw==
X-Gm-Message-State: APjAAAUu9wdK4YyA4kksIg4GmbcD84NBSnMxuydu/aX6882+HZDZQcVJ
        JcTIl3Vsv0GTTDYqwH/zPw==
X-Google-Smtp-Source: APXvYqydxoK0ZWQqQb6pLbJXiOIFY9FTTBBrSwscONAjRKuuFmgRBnDzkS5OjJzE/9hj/1p7P67eXQ==
X-Received: by 2002:aca:df55:: with SMTP id w82mr16023454oig.113.1556542371816;
        Mon, 29 Apr 2019 05:52:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x202sm14118222oix.54.2019.04.29.05.52.50
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Apr 2019 05:52:51 -0700 (PDT)
Date:   Mon, 29 Apr 2019 07:52:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Frank Li <frank.li@nxp.com>
Cc:     "mark.rutland@arm.com" <mark.rutland@arm.com>,
        "will.deacon@arm.com" <will.deacon@arm.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "lznuaa@gmail.com" <lznuaa@gmail.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH V8 3/4] arm64: dts: imx8qxp: added ddr performance
 monitor nodes
Message-ID: <20190429125250.GA21014@bogus>
References: <1556311794-14708-1-git-send-email-Frank.Li@nxp.com>
 <1556311794-14708-3-git-send-email-Frank.Li@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1556311794-14708-3-git-send-email-Frank.Li@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 26, 2019 at 08:50:15PM +0000, Frank Li wrote:
> Add ddr performance monitor
> 
> Signed-off-by: Frank Li <Frank.Li@nxp.com>
> Reviewed-by: Fabio Estevam <festevam@gmail.com>
> ---
> Change from v3 to v8
> * none
> 
> Change from v2 to v3
> * ddr_pmu0 -> ddr-pmu
> 
>  arch/arm64/boot/dts/freescale/imx8qxp.dtsi | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> index 0683ee2..16f2588 100644
> --- a/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8qxp.dtsi
> @@ -110,6 +110,13 @@
>  		interrupts = <GIC_PPI 7 IRQ_TYPE_LEVEL_HIGH>;
>  	};
>  
> +	ddr-pmu@5c020000 {

This should be under a bus node.

> +		compatible = "fsl,imx8-ddr-pmu";
> +		reg = <0x0 0x5c020000 0x0 0x10000>;
> +		interrupt-parent = <&gic>;
> +		interrupts = <GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>;
> +	};
> +
>  	psci {
>  		compatible = "arm,psci-1.0";
>  		method = "smc";
> -- 
> 2.5.2
> 

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3B9F4547805
	for <lists+devicetree@lfdr.de>; Sun, 12 Jun 2022 02:30:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232790AbiFLAaw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 11 Jun 2022 20:30:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231936AbiFLAav (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 11 Jun 2022 20:30:51 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 243533FBD2
        for <devicetree@vger.kernel.org>; Sat, 11 Jun 2022 17:30:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D67A7B80B3E
        for <devicetree@vger.kernel.org>; Sun, 12 Jun 2022 00:30:48 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E955CC34116;
        Sun, 12 Jun 2022 00:30:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1654993847;
        bh=TM9rth8nPqrjpHY/lA97AuyYwSUyWxhqnLW8j1anpc4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=F+OcAkhcXT2VWu7sUgbIN/YAJy3DYcDM4zpWiK0GgGYwypuHk3C6lo1VysQGm0SbV
         45+UoAOrpN51mE2GFsqq1mR3mZNRm0pdS5qJbtk2tCR9S730Q9eHkPa9/LVX16A1/R
         LeVD1ZR3RHHxNx2SuYHMqK6HR3C+hRx36WNarcWJeCruQT/qLlpWQdrmr5HW+ra6wf
         a9gfbgpZNlTxJe7NITwG8QAgu8o8YDXpnb6snrLIb8UcthFy4fKyO7FLpLMH5ovYY8
         4wQIswSZs21XZhXmjqsAmLAyxZ1chbYPo3hEnmP2aCKKiQ5fclC5wJbtrvQEiPXvyV
         sfFaXBRmySd5Q==
Date:   Sun, 12 Jun 2022 08:30:41 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>,
        Marcel Ziswiler <marcel.ziswiler@toradex.com>,
        Peng Fan <peng.fan@nxp.com>, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8mm: Add SNVS LPGPR on MX8Menlo board
Message-ID: <20220612003041.GK254723@dragon>
References: <20220521150750.93718-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220521150750.93718-1-marex@denx.de>
X-Spam-Status: No, score=-8.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, May 21, 2022 at 05:07:50PM +0200, Marek Vasut wrote:
> Add SNVS LPGPR bindings on this system, the LPGPR is used to store
> boot counter.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Marcel Ziswiler <marcel.ziswiler@toradex.com>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
> NOTE: Depends on
>       https://git.kernel.org/pub/scm/linux/kernel/git/robh/linux.git/commit/?h=for-next&id=fee6de80bdd3df976a43f3092a165cb43c072f20
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
> index 92eaf4ef45638..6956c9bb992be 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-mx8menlo.dts
> @@ -303,6 +303,12 @@ &sai2 {
>  	status = "disabled";
>  };
>  
> +&snvs {
> +	snvs-lpgpr {
> +		compatible = "fsl,imx7d-snvs-lpgpr";

Should we encode imx8mm specific compatible as well, while you added it
in the bindings?

Also this is a SoC rather than board device, so we may want to add it in
soc.dtsi instead?

Shawn

> +	};
> +};
> +
>  &uart1 {
>  	uart-has-rtscts;
>  	status = "okay";
> -- 
> 2.35.1
> 

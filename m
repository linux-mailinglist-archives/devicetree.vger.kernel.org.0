Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 417B267C11E
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 00:46:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230190AbjAYXqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 18:46:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236108AbjAYXqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 18:46:52 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EA4CDA
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 15:46:51 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 7AF82CE21C7
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:46:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0EF1CC433D2;
        Wed, 25 Jan 2023 23:46:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674690407;
        bh=yfSf5cHaKDbkpSmzL2FwktD546v/proNkErqGpnBwX8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gL/8dw7t9/5nlOI0qo8M/8qUMBFXm33FHJiTxcfGLEFRZwCGw56YyTLCeK9KVKSv0
         i2n22rnVZiKD279pwuacPeGD20K7pQlnKPLcmkzGVEEiKi6gG3vUsE7RGLy1yOJhAp
         uhrlcozh2c9W8UzWu14PejAnUVdUvEdVnG4yrWkWi5pBtPKThI7M6r6uxa5Sv71AKe
         C5aGLDVLrvlcBEK7eO8j3QFrR7RJPvZ8OwLaG5DfFyvRXZdvvlZzHL9b3lCAWyzKh9
         tQnAThQ/udbX7dGM92LDTogHrIYtw1merWDPmNjx1haWaRcLtDukBT0jtAH1uDR3wq
         MncRpgPWAMgGQ==
Date:   Thu, 26 Jan 2023 07:46:39 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Sean Anderson <sean.anderson@seco.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Camelia Alexandra Groza <camelia.groza@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        linuxppc-dev@lists.ozlabs.org, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Li Yang <leoyang.li@nxp.com>
Subject: Re: [PATCH v9 06/10] arm64: dts: ls1046a: Add serdes bindings
Message-ID: <20230125234638.GD20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-7-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-7-sean.anderson@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 29, 2022 at 07:01:35PM -0500, Sean Anderson wrote:
> This adds bindings for the SerDes devices. They are disabled by default

s/bindings/descriptions?

The term "bindings" generally means the schema/doc in
Documentation/devicetree/bindings/.

Shawn

> to prevent any breakage on existing boards.
> 
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---
> 
> (no changes since v4)
> 
> Changes in v4:
> - Convert to new bindings
> 
> Changes in v3:
> - Describe modes in device tree
> 
> Changes in v2:
> - Use one phy cell for SerDes1, since no lanes can be grouped
> - Disable SerDes by default to prevent breaking boards inadvertently.
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> index a01e3cfec77f..12adccd5caae 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
> @@ -424,6 +424,24 @@ sfp: efuse@1e80000 {
>  			clock-names = "sfp";
>  		};
>  
> +		serdes1: serdes@1ea0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1046a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1ea0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
> +		serdes2: serdes@1eb0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1046a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1eb0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
>  		dcfg: dcfg@1ee0000 {
>  			compatible = "fsl,ls1046a-dcfg", "syscon";
>  			reg = <0x0 0x1ee0000 0x0 0x1000>;
> -- 
> 2.35.1.1320.gc452695387.dirty
> 

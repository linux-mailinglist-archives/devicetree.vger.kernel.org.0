Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DDE3067C127
	for <lists+devicetree@lfdr.de>; Thu, 26 Jan 2023 00:48:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235174AbjAYXs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 18:48:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236210AbjAYXs5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 18:48:57 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6EA715E50D
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 15:48:56 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0955B616D6
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 23:48:56 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DB6B3C433D2;
        Wed, 25 Jan 2023 23:48:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674690535;
        bh=XEe8zkYl5BVybaU3QY5R7IM0pyPQXzr1kJej+KUlLj4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gDWtAfWb3BXcxxlGNhh9AdTAPGhupaDp/wf6H+M9VheIaTriDe0fg+q4s6R3byKQN
         BaJPXnM1w/51P50L0Bo+2Gv3SAm52g51NVPi2L2yn3MrDd+FoXmOdngr0/idJUCKQ2
         yZTTcIS4iRErb4dVBNSwuhQrqGa6YgTvYyzwm6YV6j5vOhjwzmHLENdxd8occSHlt7
         MHtgsIQkjvBLlE5snAAko0z7clXa3T42JcCyYuZxGKVutzoh7sUSC5nLh1qVKAJWmi
         V7vZp4GjNy/fKzgR1VwodgzkTRQCe/+hy29bcjJjDayaqzrwStKk72GOoVVln6/24a
         2jUTkEPIe0v9w==
Date:   Thu, 26 Jan 2023 07:48:46 +0800
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
Subject: Re: [PATCH v9 08/10] arm64: dts: ls1088a: Add serdes bindings
Message-ID: <20230125234845.GE20713@T480>
References: <20221230000139.2846763-1-sean.anderson@seco.com>
 <20221230000139.2846763-9-sean.anderson@seco.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221230000139.2846763-9-sean.anderson@seco.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 29, 2022 at 07:01:37PM -0500, Sean Anderson wrote:
> This adds bindings for the SerDes devices. They are disabled by default
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
> - New
> 
>  arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi | 18 ++++++++++++++++++
>  1 file changed, 18 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> index 260d045dbd9a..ecf9d830e36f 100644
> --- a/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> +++ b/arch/arm64/boot/dts/freescale/fsl-ls1088a.dtsi
> @@ -238,6 +238,24 @@ reset: syscon@1e60000 {
>  			reg = <0x0 0x1e60000 0x0 0x10000>;
>  		};
>  
> +		serdes1: serdes@1ea0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1ea0000 0x0 0x2000>;

Can we start the properties with compatible (and reg) like most of other
device nodes?

Shawn

> +			status = "disabled";
> +		};
> +
> +		serdes2: serdes@1eb0000 {
> +			#address-cells = <1>;
> +			#size-cells = <0>;
> +			#clock-cells = <1>;
> +			compatible = "fsl,ls1088a-serdes", "fsl,lynx-10g";
> +			reg = <0x0 0x1eb0000 0x0 0x2000>;
> +			status = "disabled";
> +		};
> +
>  		isc: syscon@1f70000 {
>  			compatible = "fsl,ls1088a-isc", "syscon";
>  			reg = <0x0 0x1f70000 0x0 0x10000>;
> -- 
> 2.35.1.1320.gc452695387.dirty
> 

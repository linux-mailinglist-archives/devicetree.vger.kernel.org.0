Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF40E4F63E8
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 17:48:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236253AbiDFPqE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 11:46:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236286AbiDFPpJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 11:45:09 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E41E04409A6
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 06:02:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 02E4D61B9C
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 13:02:11 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ED27FC385A1;
        Wed,  6 Apr 2022 13:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649250130;
        bh=yoiRnSmms+ZvT7T7Nf5h8LP9zFWwK0yIswbzBY0vQbc=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=QrBabtYB/6p3wn5/wntsOggsMmniqRabqqJeGdu3ch5IAqC+HAulCjSFWV7pwVnJn
         Co4U7yYcusAd0jx2I5y1M9FdffHPt4llibJsosvf1MrlXngIMN7w+5gmutAW6G0PpH
         FJPEdegoRKR4JSC+lnYAfjKk9P4JcoIoZb8EBjcww15sX8KE5G8S4v2jl7bz0O/wbi
         zclNYXRAylDuH/NToeIzQ+RCUOoDrvIfaA8/kDR1e0lBg3jJ2a/ysuNthUyCxKwhMv
         cfYQrhHXDIE0uaitCxShCV8q+DAoevHvFjorlB2jeZHVlsd353raqwSmIPeEYNR8/n
         rLoRi6HBF2yGg==
Date:   Wed, 6 Apr 2022 21:02:04 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v3 0/5] Support for TQMa6ULx & TQMa6ULxL modules
Message-ID: <20220406130204.GP129381@dragon>
References: <20220222070945.563672-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220222070945.563672-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 22, 2022 at 08:09:40AM +0100, Alexander Stein wrote:
> Hi everyone,
> 
> thanks for your feedback on v2.
> 
> Changes in v3:
> * Reviewed-by: Krzysztof Kozlowski to PATCH 1
> * Fixed gpio-keys DT node names in PATCH 2
> 
> Changes in v2:
> * Acked-by: Rob Herring to PATCH 1
> * Removed 'status' property for non-disabled devices in PATCH 2
> * Removed superfluous blank lines in PATCH 2
> * Removed doubled status = "disabled" in PATCH 2
> * Moved 'chosen' node up in PATCH 2
> * Removed unit-address for GPIO buttons in PATCH 2
> * Removed internal (und unsupported) SPI device node in PATCH 2
> * Removed QSPI flash partitions in PATCH 2
> * Rename audio-codec node name in PATCH 2
> 
> Below is the summary from v1 which has not changed.
> 
> This patch series adds support for the TQ-Systems TQMa6ULx & TQMa6ULxL modules.
> Admittedly the name can be confusing, so I'll explain in more detail.
> 
> TQMa6ULx [1] is the module series using i.MX6UL. The 'x' is a placeholder for
> different variants which have a different µC. TQMa6UL1 is using MCIMX6G1 which
> has some peripheries disabled, more about it below. TQMa6UL2 (and TQMa6UL3)
> has a full feature set and are treated identical on Linux side.
> 
> TQMa6ULxL [2] is the LGA variant of TQMa6ULx with a differnt module PCB, but
> still common parts. There is no variant using MCIMX6G1.
> 
> TQMa6ULLx [1] is identical to TQMa6ULx, but using an i.MX6ULL instead.
> There is no TQMa6UL1L.
> 
> TQMa6ULLxL [2] is identical to TQMa6ULxL, but using an i.MX6ULL instead.
> There is no TQMa6ULL1L.
> 
> There are also 2 different mainboards namely MBAa6ULx & MBa6ULxL ('x' here is
> not a placeholder, but part of the name). MBAa6ULx is for non-LGA variants
> TQMa6ULx & TQMa6ULLx, while MBa6ULxL is used for TQMa6ULxL & TQMa6ULLxL.
> It is also possible to mount a TQMa6ULxL to MBa6ULx using an LGA adapter
> providing the sockets.
> 
> TQMa6UL1 uses MCIMX6G1 which has FEC2, CAN2, CSI and LCDIF disabled by fuses.
> This wouldn't be a problem at all, iff fec would support EPROBE_DEFER for
> Ethernet PHYs on a different MDIO bus. Both PHYs are connected to the same MDIO
> bus. This is not a proble, but as FEC2 has the lower base address than FEC1
> it is probed first. For this reason the PHYs have to be attached to FEC2 or
> things wont work. But exactly this breaks on TQMa6UL1 which has no FEC2 at all.
> There is a suggestion for fec driver at [3] but without solution (yet).
> This is the single reason there is a 'tq,imx6ul-tqma6ul1' compatible.
> In order for things to work, the PHYs have to be deleted from fec2 & mdio
> subnode and added to fec1 again.
> 
> Regardings the file structure there is a .dtsi file for
> * common common parts on all 4 module variants (LGA & non-LGA, imx6ul & imx6ull):
>   imx6ul-tqma6ul-common.dtsi
> * common to non-LGA variants only: imx6ul-tqma6ulx-common.dtsi
> * common to LGA variants only: imx6ul-tqma6ulxl-common.dtsi
> 
> This is valid for both TQMa6ULx and TQMa6ULLx. To not introduce another file
> name separation, 'imx6ul-' is the prefix for common parts for imx6ul as well
> as imx6ull.
> 
> Best regards,
> Alexander
> 
> [1] https://www.tq-group.com/de/produkte/tq-embedded/arm-architektur/tqma6ulx/
> [2] https://www.tq-group.com/de/produkte/tq-embedded/arm-architektur/tqma6ulxl/
> [3] https://lkml.org/lkml/2021/10/14/430
> 
> Alexander Stein (4):
>   ARM: dts: imx6ul: add TQ-Systems MBa6ULx device trees
>   ARM: dts: imx6ul: add TQ-Systems MBa6ULxL device trees
>   ARM: dts: imx6ull: add TQ-Systems MBa6ULLx device trees
>   ARM: dts: imx6ull: add TQ-Systems MBa6ULLxL device trees
> 
> Matthias Schiffer (1):
>   dt-bindings: arm: fsl: add TQ Systems boards based on i.MX6UL(L)

Applied all, thanks!

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A6612661F31
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 08:25:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234227AbjAIHZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 02:25:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233751AbjAIHZf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 02:25:35 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 547C11277E
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 23:25:32 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 0EFC4B80D1A
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 07:25:31 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 53F4CC433EF;
        Mon,  9 Jan 2023 07:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1673249129;
        bh=XuUJ4/XcVShdi52T76uGF7sF1Bd0QKeO6UjCBQ76ZO0=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qDOxQR4bVRBa/N785eNEiO8k5yeph5mSVEjjCQC4aA+WNvNc6kjP+lOcL+8Ro6zeL
         s/cZnV7r8cvYqC91PucddnMZlDHlLzmehINf3sbvZzElb4CYC5t2hgHNmbgbixS3oV
         +EfXggG4g9UFsAVnnm4QMkpPFCuAnFt9GNp1oz/wez7cmIbPIr0U6cBro9wn/c7mqc
         i7e9y447rx+Vmy/jMKFr22SXy9PocEkztdzt58jAMGlSF3musETZlpcZQPSDrhqAbG
         MD04S3cQJbN1e+w+5zdPX3tTuLo3yTaBC1RVXqpG2ntZG2Kbfegg36YktmmzRskDtH
         WitTqNMAHd3sw==
Date:   Mon, 9 Jan 2023 15:25:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Fabio Estevam <festevam@denx.de>
Cc:     tharvey@gateworks.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: imx8m-venice: Remove incorrect
 'uart-has-rtscts'
Message-ID: <20230109072522.GD18301@T480>
References: <20230102140402.582698-1-festevam@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230102140402.582698-1-festevam@denx.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jan 02, 2023 at 11:04:02AM -0300, Fabio Estevam wrote:
> The following build warnings are seen when running:
> 
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
> 
> arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: cts-gpios: False schema does not allow [[33, 3, 1]]
> 	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dtb: serial@30860000: rts-gpios: False schema does not allow [[33, 5, 1]]
> 	From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
> ...
> 
> The imx8m Venice Gateworks boards do not expose the UART RTS and CTS
> as native UART pins, so 'uart-has-rtscts' should not be used.
> 
> Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
> detected by serial.yaml.
> 
> Fix the problem by removing the incorrect 'uart-has-rtscts' property.
> 
> Fixes: 27c8f4ccc1b9 ("arm64: dts: imx8mm-venice-gw72xx-0x: add dt overlays for serial modes")
> Fixes: d9a9a7cf32c9 ("arm64: dts: imx8m{m,n}-venice-*: add missing uart-has-rtscts property to UARTs")
> Fixes: 870f645b396b ("arm64: dts: imx8mp-venice-gw74xx: add WiFi/BT module support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Applied, thanks!

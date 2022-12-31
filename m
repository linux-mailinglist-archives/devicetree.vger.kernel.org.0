Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3F8565A3F9
	for <lists+devicetree@lfdr.de>; Sat, 31 Dec 2022 13:29:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229436AbiLaM3o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 31 Dec 2022 07:29:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231864AbiLaM3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 31 Dec 2022 07:29:34 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00FA0DE83
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 04:29:33 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9198060B24
        for <devicetree@vger.kernel.org>; Sat, 31 Dec 2022 12:29:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 801B5C433EF;
        Sat, 31 Dec 2022 12:29:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1672489773;
        bh=qdzITmnpqskFSFWC1O1qDV6tTsJMGUC86HiMlzoZhRA=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=NZrNGwtCtVLxZh919D7z+Ny6x8871wT5pqwIa/gWMzr4glhJ+RmW83zXtSNXOCtkn
         1th1N7LTc7UMKdF21GZk1z54lx4cB9DrT5XePKyk51VHUC3+wEnQy0xGjKWNWVDQMk
         K51smx5pp7fVl2bijZFykUvU8CPTexYVaOUBm5k28b7dx/69jjpYYHBwI2Vk8O13rG
         bGV16KPpIN/azpkB16J/bkVd7MkZPZIDrbaIRz1HRJuY2BfNsE/ywSE4ghWjvCy4lm
         iJPeQuCJGmzcR8IwDgy/PeWNwZkNOQkV5D9btnjbrUueqWrF6D036ChcrHPVejzl6Y
         ONeFqRey7yjbg==
Date:   Sat, 31 Dec 2022 20:29:25 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Francesco Dolcini <francesco@dolcini.it>
Cc:     linux-arm-kernel@lists.infradead.org,
        Emanuele Ghidoli <emanuele.ghidoli@toradex.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org,
        Francesco Dolcini <francesco.dolcini@toradex.com>
Subject: Re: [PATCH v1] arm64: dts: verdin-imx8mm: fix dahlia audio playback
Message-ID: <20221231122400.GR6112@T480>
References: <20221201125548.34793-1-francesco@dolcini.it>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221201125548.34793-1-francesco@dolcini.it>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 01, 2022 at 01:55:48PM +0100, Francesco Dolcini wrote:
> From: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> 
> Set optional `simple-audio-card,mclk-fs` parameter to ensure a proper
> clock to the wm8904 audio codec. Without this change with an audio
> stream rate of 44.1 kHz the playback is completely distorted.
> 
> Fixes: 6a57f224f734 ("arm64: dts: freescale: add initial support for verdin imx8m mini")
> Signed-off-by: Emanuele Ghidoli <emanuele.ghidoli@toradex.com>
> Signed-off-by: Francesco Dolcini <francesco.dolcini@toradex.com>

Applied, thanks!

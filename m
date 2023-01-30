Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DC63681BFA
	for <lists+devicetree@lfdr.de>; Mon, 30 Jan 2023 22:00:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229637AbjA3VAT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Jan 2023 16:00:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229688AbjA3VAS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Jan 2023 16:00:18 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210F3460BF
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 13:00:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id CBB81B80E7B
        for <devicetree@vger.kernel.org>; Mon, 30 Jan 2023 21:00:13 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 97280C433D2;
        Mon, 30 Jan 2023 21:00:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675112412;
        bh=0qCJs9x+zx7S/aIAKZoN20zb3eVW8TP2fNPskc4zsFI=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=dW5zXp+wTF0m5Cl5G2k5/bxOp7QKsCfHltK1ATA0LFpGExD2s/aXfCwvUZOD+AL+l
         sVUHIY/snYS533s+4ZPRQcr2DQBf/i/ulp56px7D5pNdTGGMlXgUFJhQUOzeBz7eW+
         4gf8WkaorlU1Fd6O2lEPeuHcyDiDty4A2IdpMaDtG8KFBdEN7Bzx5AzqbJoQJotBc4
         XjyisQV0z4XmU3IKU02KHLRJujlgcdP7MOfQ6M8jLYMRnTbrqNIu+izlZMsumGzpr1
         PJq0gzAyScgd5VTNbEwZMm/FF9t/ZPon99opINQNSvEl9FyElBt03hGFuckwgZJSDY
         nzV6F/F1guIdA==
From:   Mark Brown <broonie@kernel.org>
To:     linux-arm-kernel@lists.infradead.org, Marek Vasut <marex@denx.de>
Cc:     Adam Ford <aford173@gmail.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Paul Elder <paul.elder@ideasonboard.com>,
        Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Richard Cochran <richardcochran@gmail.com>,
        Richard Zhu <hongxing.zhu@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Stefan Agner <stefan@agner.ch>,
        Tim Harvey <tharvey@gateworks.com>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20230105144145.165010-1-marex@denx.de>
References: <20230105144145.165010-1-marex@denx.de>
Subject: Re: (subset) [PATCH 1/2] ASoC: dt-bindings: fsl-sai: Simplify the
 VFxxx dmas binding
Message-Id: <167511240513.2141894.10630659697412696608.b4-ty@kernel.org>
Date:   Mon, 30 Jan 2023 21:00:05 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 05 Jan 2023 15:41:44 +0100, Marek Vasut wrote:
> Get rid of the vf610 sai special case, instead update the vfxxx.dtsi
> DT to use the same DMA channel ordering as all the other devices. The
> sai DMA channel ordering has not been aligned with other IP DMA channel
> ordering in the vfxxx.dtsi anyway.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: fsl-sai: Simplify the VFxxx dmas binding
      commit: 21d64f6f63eeca9f136ac514ca801a5a6485cd78

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 207E464700E
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 13:52:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbiLHMwC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 07:52:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbiLHMvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 07:51:45 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 18C68950E9
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 04:51:04 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id BC988B823A1
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 12:51:02 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1F6C5C433D6;
        Thu,  8 Dec 2022 12:50:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670503861;
        bh=8hnNJ9DZ4igi+2oWkwMROzxxrbtcCPXUTfGBvpCICRE=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=OBB8ECup1asPHUtDd+yv9pGEbglayCD8FXpWNbIJoFUPULofulix6CpBu3dqbOBoY
         BxOi0HBuoOMfPvTjCJUKZS5ZWSr0qgKs7COm+1p6psZRJ47CHztaa3V82SyqYzxrEY
         1KYUoPM6+wtYuE56voOqTrK9XER6DcejbAXSKOJ5LMkCvcXDjQtzfPD5qvuGyvcMlU
         JlMI36ez57pOOo6stAVPR+HDWSCjzyuCQunNq9BR27tIHJAAVBIEZkxaXfnrNwEIoQ
         mYDn5dGJedysCPvgPj1a258z3Wy1ZTX9KTjylY1V48WbJ0zTILXIFeHGMuTf3Qw2tb
         NEGWpkrb/h1uQ==
From:   Mark Brown <broonie@kernel.org>
To:     alsa-devel@alsa-project.org, Marek Vasut <marex@denx.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        devicetree@vger.kernel.org
In-Reply-To: <20221208035354.255438-1-marex@denx.de>
References: <20221208035354.255438-1-marex@denx.de>
Subject: Re: [PATCH] ASoC: dt-bindings: fsl-sai: Reinstate i.MX93 SAI
 compatible string
Message-Id: <167050385979.139462.9635280378479288853.b4-ty@kernel.org>
Date:   Thu, 08 Dec 2022 12:50:59 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.11.0-dev-b77ec
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 08 Dec 2022 04:53:54 +0100, Marek Vasut wrote:
> The ASoC: dt-bindings: fsl-sai: Fix mx6ul and mx7d compatible strings
> dropped i.MX93 SAI compatible string, reinstate it.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: fsl-sai: Reinstate i.MX93 SAI compatible string
      commit: e85b1f5a9769ac30f4d2f6fb1cdcd9570c38e0c1

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

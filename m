Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C5F14D0880
	for <lists+devicetree@lfdr.de>; Mon,  7 Mar 2022 21:39:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245340AbiCGUkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Mar 2022 15:40:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245297AbiCGUkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Mar 2022 15:40:14 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F68473052
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 12:39:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8A0EEB81706
        for <devicetree@vger.kernel.org>; Mon,  7 Mar 2022 20:39:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 60646C340E9;
        Mon,  7 Mar 2022 20:39:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1646685553;
        bh=RH4jSxBsE3z8+OBS4M+nam095nn+1JwbTE+qnLWrtBc=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=kgSbKeo/a+DcIvwfAfn/WAXKPVU7RWhdibA3C9HDTylBQuI5HDFF3Xm3EuqrRnBOJ
         BiV3kS+AG/5K2mGOhAb98A71frTqV8V6fUNkgyEDySXeg1Db78z0iptE3qEsHZz6xI
         n79K9K6BITSgyodXCtsZY2NlLi6azu17wd3+bDCJuOghwqL7Si/c2Shw7ZJYPnX2TU
         JJi6uvixgNCgvOU8SFbRyDOt4cAHvCyLzehN2TJjeZ3pYBhZSZFawWTg+rfuTvu1Ll
         hqg4S/0cwTtAlMG0aGRG6Z7fxLFxmOmWTDdkfvknkK/7MdhpR53RzfAt92aGjGWifS
         bgBlhCsJUS4kQ==
From:   Mark Brown <broonie@kernel.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org,
        Jonathan Albrieux <jonathan.albrieux@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
In-Reply-To: <20220304102452.26856-1-stephan@gerhold.net>
References: <20220304102452.26856-1-stephan@gerhold.net>
Subject: Re: [PATCH v2 0/2] ASoC: codecs: Add Awinic AW8738 audio amplifier driver
Message-Id: <164668555106.3137316.5314190084666294576.b4-ty@kernel.org>
Date:   Mon, 07 Mar 2022 20:39:11 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 4 Mar 2022 11:24:50 +0100, Stephan Gerhold wrote:
> This series adds a simple driver and DT schema for the Awinic AW8738
> audio amplifier. It's fairly simple - the main difference to
> simple-amplifier is that there is a "one-wire pulse control" that
> allows configuring the amplifier to one of a few pre-defined modes.
> This can be used to configure the speaker-guard function (primarily
> the power limit for the amplifier).
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: Add schema for "awinic,aw8738"
      commit: b3284430615c27ca441967f99fbde957b434e092
[2/2] ASoC: codecs: Add Awinic AW8738 audio amplifier driver
      commit: fc14fac286a05d36202f8114d00a9935ca2e0756

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

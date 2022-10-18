Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1EC51602B6B
	for <lists+devicetree@lfdr.de>; Tue, 18 Oct 2022 14:13:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229906AbiJRMNi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Oct 2022 08:13:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229833AbiJRMNh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Oct 2022 08:13:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C88943AB0C
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 05:13:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 6436461538
        for <devicetree@vger.kernel.org>; Tue, 18 Oct 2022 12:13:36 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id ECE7FC433C1;
        Tue, 18 Oct 2022 12:13:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1666095215;
        bh=tngQ/VUv3GezrfKgSfe21fo9gVZuTqKNUb0EATjT+A0=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=XHMepo22TGTg1alpJqa0H4HK8OvI8DYAtCBu1R10H0O7BtAo0ekIM3xNEoZfIjHyr
         Ha9sh+Zj35PoY9kfWUrCw1IqS1zNQFcBcdVJjtVH0rMhZmCJL2ysxnNJU8Re4KDhXk
         0aA+54fbFiP7pAgAbVnm9EPuobWMq6v5x9sWCV1fKJ/XlVs1C7q6VZtQ+EL8qjl33h
         q4efc99xutXgiTjSmN9Eshafd4ZdLv3iK4pmmQ6Ltk1d7beomj2dttdWjHrabu++Eg
         D+ILnVwYV3ZfarUfKaPgNvFtt24BmLWRguVsRED1qs5rgWdvWstMuatAF32R+1QC3M
         x6pk5X61+IScg==
From:   Mark Brown <broonie@kernel.org>
To:     Doug Brown <doug@schmorgal.com>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        alsa-devel@alsa-project.org, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>, patches@opensource.cirrus.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
In-Reply-To: <20221003032414.248326-1-doug@schmorgal.com>
References: <20221003032414.248326-1-doug@schmorgal.com>
Subject: Re: [PATCH v2 0/3] ASoC: add devicetree support for WM8961 codec
Message-Id: <166609521366.371929.7498409301315120148.b4-ty@kernel.org>
Date:   Tue, 18 Oct 2022 13:13:33 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fc921
X-Spam-Status: No, score=-7.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 2 Oct 2022 20:24:11 -0700, Doug Brown wrote:
> This series adds devicetree support for the Wolfson WM8961 codec. The
> first patch adds a schema, the second patch hooks it up in the code, and
> the third patch allows it to be selected in Kconfig.
> 
> Changes since v1:
> - Fix ordering of property lists and example in schema
> - Fix wording of commit message
> - Fix unused variable warning
> - Split Kconfig change to separate commit
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: add schema for WM8961
      commit: b9b0d88d87e5565e8d12bcf22ec601e8b4658dc6
[2/3] ASoC: wm8961: add support for devicetree
      commit: c96851ee8195c820b765c6a7effcec79c81eb9c6
[3/3] ASoC: codecs: allow WM8961 to be selected by the user
      commit: 74a6a948c8fc28c8937e24178739979b3cd2ce14

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

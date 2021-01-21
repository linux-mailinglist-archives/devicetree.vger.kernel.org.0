Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E514B2FDEA0
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 02:19:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733140AbhAUA7o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 19:59:44 -0500
Received: from mail.kernel.org ([198.145.29.99]:53894 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387798AbhAUAIC (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 20 Jan 2021 19:08:02 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 88C542054F;
        Thu, 21 Jan 2021 00:07:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1611187633;
        bh=FDFIu182DIZzhgxiOXveNlHA/Hh6Y4tQs85NKRtax5E=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=TR/KEC/Bwo32KzXpHkqnfIrklnvHUmXpSJJnc0vRkqgpnBHQxcjXQSdPnRcZCDMC3
         E5pRo3O5xMr0Lc58wMEfNZ2cOFm/zBtbY0of69XvAhilS2Rn1I8bmQ9WC6LOHUJp2n
         JiwHLc09udsgWHR6u/nA5VwLXpTZV74EOHbaD47G8eduQwzsh6Iqv1S3vVqSyCg88y
         Fo5q4EZVB0Av2J0PVlEIgqazzrr/iWqvl1SpV6ADebJOUi+uQz5YRCLnif05FprFka
         lSElmHfN/7qmuSMHDzwVOnXiYgqu75INn8Tq9fvVz0GpUZqBhnF1HKGSLzaaosWy6E
         Wd5Yba0MAprMA==
From:   Mark Brown <broonie@kernel.org>
To:     robh+dt@kernel.org, Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20210120080850.699354-1-tzungbi@google.com>
References: <20210120080850.699354-1-tzungbi@google.com>
Subject: Re: [PATCH 0/5] ASoC: mediatek: mt8192-mt6359: support DP audio
Message-Id: <161118753485.45718.14478394591214975243.b4-ty@kernel.org>
Date:   Thu, 21 Jan 2021 00:05:34 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 20 Jan 2021 16:08:45 +0800, Tzung-Bi Shih wrote:
> The 1st and 2nd patches refactor the machine driver.
> 
> The 3rd patch changes the platform driver to support TDM 8 channel output.
> 
> The 4th patch adds an optional DT property.
> 
> The 5th patch makes the machine driver support DP audio if the optional DT
> property is specified.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/5] ASoC: mediatek: mt8192-mt6359: move headset_jack to card specific data
      commit: 4e37528a97bfffb2cd4f645c945759e76d583848
[2/5] ASoC: mediatek: mt8192-mt6359: simplify mt8192_rt5682_init
      commit: 12295ef97078db19683d8c0a23abc6f633ef0e23
[3/5] ASoC: mediatek: mt8192: change mclk_multiple of TDM from 128 to 512
      commit: df369921d726410a093de48d33e605fd4e0ee33c
[4/5] ASoC: dt-bindings: mt8192-mt6359: add hdmi-codec property
      commit: 9bc20e8076c96a54c9fb20228d12ff35c88447d5
[5/5] ASoC: mediatek: mt8192-mt6359: support audio over DP
      commit: 0d80c48c847842de488e76ae434ccb74397623c3

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

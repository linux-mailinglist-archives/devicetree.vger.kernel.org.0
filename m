Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3072A43BA51
	for <lists+devicetree@lfdr.de>; Tue, 26 Oct 2021 21:06:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238389AbhJZTJU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Oct 2021 15:09:20 -0400
Received: from mail.kernel.org ([198.145.29.99]:44970 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235698AbhJZTJT (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 26 Oct 2021 15:09:19 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 011F160EC0;
        Tue, 26 Oct 2021 19:06:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635275215;
        bh=7u4QGKllgphUDf17RYxI9Tia8BLop71SJ2OaHQZJaTw=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=qZtxmtOihqrJJSP7jtBI6396sOtP+/MyO7OAe8qwIIy16/RPwIlCZrtpu6YXvbaZ6
         /hgRUpWTbeHdgmxTMDTPx+uqQHhcH40DH/e7shP2rj4Xkb0/DQaA9X2r1hiLWZ6v2G
         qVyPC33NzW3CnTPPC3z6R0F2NH4QB+M3dGTCp67/N4fBWDBw2RLvqwOFWVDVZSGOb3
         5BxgXD9C19oiJIrazI2izHjQ1ZuqSxRcm32eawUozUPLsA6WOfV5XIH45Z8vnhFsPT
         sIS/hbeF5Kn/6KkCs5WmelK76ZY4gR4JflTBeK5eDuhKkfNg9KWfWhHEKlkxTlMUzy
         xeO6rq6Gbq9lg==
From:   Mark Brown <broonie@kernel.org>
To:     robh@kernel.org, bjorn.andersson@linaro.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     tiwai@suse.de, devicetree@vger.kernel.org,
        pierre-louis.bossart@linux.intel.com, bgoswami@codeaurora.org,
        alsa-devel@alsa-project.org, plai@codeaurora.org, perex@perex.cz,
        lgirdwood@gmail.com
In-Reply-To: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
References: <20211026111655.1702-1-srinivas.kandagatla@linaro.org>
Subject: Re: [PATCH v11 00/17] ASoC: qcom: Add AudioReach support
Message-Id: <163527521274.2033755.15584864386897759344.b4-ty@kernel.org>
Date:   Tue, 26 Oct 2021 20:06:52 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Oct 2021 12:16:38 +0100, Srinivas Kandagatla wrote:
> This version is a respin of v10 fixing a build error in 12/17 patch.
> 
> QCOM SoC relevant non-audio patches in this series has been merged into
> the Qualcomm drivers-for-5.16 tree, as this series depends those patches
> an immutable tag is available at:
> https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git tags/20210927135559.738-6-srinivas.kandagatla@linaro.org
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[01/17] ASoC: dt-bindings: move LPASS dai related bindings out of q6afe
        commit: e1b26ac90287d513699edbb8cae009ec89fe79b7
[02/17] ASoC: dt-bindings: move LPASS clocks related bindings out of q6afe
        commit: e44cfc9d82d8189ea15556052eb9d8640804f954
[03/17] ASoC: dt-bindings: rename q6afe.h to q6dsp-lpass-ports.h
        commit: e3008b7ccb1dedcea954505ff964a53641d2b980
[04/17] ASoC: qdsp6: q6afe-dai: move lpass audio ports to common file
        commit: 95b6cd57e9e8210fca315270ac05ce66fc536703
[05/17] ASoC: qdsp6: q6afe-clocks: move audio-clocks to common file
        commit: 9ab71ac372407acc93045931ed9da867b9415360
[06/17] ASoC: dt-bindings: q6dsp: add q6apm-lpass-dai compatible
        commit: accaa13167363f22835fe904c3ccee8bd624423d
[07/17] ASoC: dt-bindings: lpass-clocks: add q6prm clocks compatible
        commit: c04f02d63d0d9c794df889d396da14f735a270eb
[08/17] ASoC: dt-bindings: add q6apm digital audio stream bindings
        commit: 96d0232564c3b16e9a4286f183e1e6d317521a5a
[09/17] ASoC: qdsp6: audioreach: add basic pkt alloc support
        commit: 44c28dbdb6195b2a92e1fcb2946d1e987658f8b5
[10/17] ASoC: qdsp6: audioreach: add q6apm support
        commit: 5477518b8a0e8a45239646acd80c9bafc4401522
[11/17] ASoC: qdsp6: audioreach: add module configuration command helpers
        commit: 25ab80db6b133c20adb9ee39ce5cfdf347c92d5c
[12/17] ASoC: qdsp6: audioreach: add Kconfig and Makefile
        commit: cf989b68fcadbeeea1446e50fd8b2f24a0f1275c
[13/17] ASoC: qdsp6: audioreach: add topology support
        commit: 36ad9bf1d93d66b901342eab9f8ed6c1537655a6
[14/17] ASoC: qdsp6: audioreach: add q6apm-dai support
        commit: 9b4fe0f1cd791d540100d98a3baf94c1f9994647
[15/17] ASoC: qdsp6: audioreach: add q6apm lpass dai support
        commit: 30ad723b93ade607a678698e5947a55a4375c3a1
[16/17] ASoC: qdsp6: audioreach: add q6prm support
        commit: 9a0e5d6fb16f5a92a8e7e7626666665d0ff79474
[17/17] ASoC: qdsp6: audioreach: add support for q6prm-clocks
        commit: d07568686793f840b4144b19e0a52020b5c7bf94

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

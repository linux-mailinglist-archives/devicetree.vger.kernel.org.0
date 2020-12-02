Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C13D2CC369
	for <lists+devicetree@lfdr.de>; Wed,  2 Dec 2020 18:23:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbgLBRUw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Dec 2020 12:20:52 -0500
Received: from mail.kernel.org ([198.145.29.99]:39028 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726276AbgLBRUw (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Dec 2020 12:20:52 -0500
From:   Mark Brown <broonie@kernel.org>
Authentication-Results: mail.kernel.org; dkim=permerror (bad message/signature format)
To:     Tzung-Bi Shih <tzungbi@google.com>, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20201201132614.1691352-1-tzungbi@google.com>
References: <20201201132614.1691352-1-tzungbi@google.com>
Subject: Re: [RESEND PATCH 0/6] ASoC: mediatek: mt8192: support new machine rt1015p_rt5682
Message-Id: <160692956494.33960.780147549576992424.b4-ty@kernel.org>
Date:   Wed, 02 Dec 2020 17:19:24 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 1 Dec 2020 21:26:08 +0800, Tzung-Bi Shih wrote:
> The series supports new machines with rt1015p and rt5682.  Reuses most of
> the code in mt8192-mt6359-rt1015-rt5682.c.
> 
> The first 3 patches refactor the existing mt8192-mt6359-rt1015-rt5682.c.
> For easier to support newly added components later.
> 
> The 4th patch fixes a typo in DT bindings document.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/6] ASoC: mediatek: mt8192: rename common symbols
      commit: a5f8037505cbae5b877dea3e15acce4c29e9e797
[2/6] ASoC: mediatek: mt8192: extract rt1015_rt5682 specific DAI link
      commit: 2b53d2e16f735d8f13b77fefe03ce6b43c726beb
[3/6] ASoC: mediatek: mt8192: move rt1015_rt5682 specific data
      commit: ba499c36d12bcea9d4eba0b021c508bfe13c515d
[4/6] ASoC: dt-bindings: mt8192-mt6359: fix typo in the example
      commit: 6552c35de1915c8b423e4969ada1f1f8a53847e1
[5/6] ASoC: dt-bindings: mt8192-mt6359: add new compatible for using rt1015p
      commit: 6986256fdfefc2eeaec5f21d7937d57850fd57fe
[6/6] ASoC: mediatek: mt8192: support rt1015p_rt5682
      commit: cfd8bb254c9985266e4be7f59042170a72548a8f

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

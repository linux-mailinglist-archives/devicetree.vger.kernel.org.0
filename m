Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C698D408991
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 12:55:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239379AbhIMK4y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 06:56:54 -0400
Received: from mail.kernel.org ([198.145.29.99]:52556 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239465AbhIMK4n (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 06:56:43 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id BC46261029;
        Mon, 13 Sep 2021 10:55:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631530527;
        bh=B3WACOWaU5Afzv3Vm7VAdPhu0oyR6Yu45R6CaWCqSI0=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=aH4zYEtKk8ayJHkzsUGqom6WuSU00WV6ODNFUSJ6nAxlHlOAkqN+abtsoXjKH7BOj
         3HsHLkxoA/w+g7AOlHPC3KsTlBq+456/xyDBP463NeAIY1xrLlz0FPK3q/f/UWP3TM
         GFDNrZJ4Z0CQlMt6oH1aNtxaqiSVwndrOL3JHgF5fAAof51a8ehn7ZpXTAZ5y8vjSZ
         oaZlVIpMcWlj4DW1kIhzcZln4B449ONaqFIcIdMHlgwjslZ460undJtEbCVXhh9uo4
         3o6OYw3BGiCvBa0Tn4kiQOyURacorH+zIVXVrs/zHpdvKcY0QByTSArr6AOkdWCrHD
         48qAg4Z4/qAZg==
From:   Mark Brown <broonie@kernel.org>
To:     Sugar Zhang <sugar.zhang@rock-chips.com>, heiko@sntech.de
Cc:     Mark Brown <broonie@kernel.org>,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v4 0/7] Patches to update for rockchip pdm
Date:   Mon, 13 Sep 2021 11:53:33 +0100
Message-Id: <163152996585.45703.15904928941100821408.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
References: <1630675357-3286-1-git-send-email-sugar.zhang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 3 Sep 2021 21:22:37 +0800, Sugar Zhang wrote:
> These patches fixup or update for rockchip pdm.
> 
> Changes in v4:
> - Acked by Rob Herring
> 
> Changes in v3:
> - Fix property 'path-map' suggested by Rob Herring.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/7] ASoC: rockchip: Add support for rv1126 pdm
      commit: d269aa2ab975807764dc2509e4156bb9b6bd0d34
[2/7] ASoC: dt-bindings: rockchip: Add binding for rv1126 pdm
      commit: 49a7a625ad79e5b995be313472743b278c90c853
[3/7] ASoC: rockchip: pdm: Add support for rk3568 pdm
      commit: d00d1cd4ab42f92d4d871deb9cdea1d7c262a213
[4/7] ASoC: dt-bindings: rockchip: Add binding for rk3568 pdm
      commit: f80e5a14ac2730b441c71d191e6538a74706cab3
[5/7] ASoC: rockchip: pdm: Add support for path map
      commit: 13e6e042a6f9c2be676f421935e026308de3303c
[6/7] ASoC: dt-bindings: rockchip: pdm: Document property 'rockchip,path-map'
      commit: b2527dcd65b3e141e9363af5b256aa484bd4c06f
[7/7] ASoC: dt-bindings: rockchip: Convert pdm bindings to yaml
      commit: 8ece5ef67edca06e54460b244f4043c237c90a21

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

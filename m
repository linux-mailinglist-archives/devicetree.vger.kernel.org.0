Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CC8A38E60E
	for <lists+devicetree@lfdr.de>; Mon, 24 May 2021 14:00:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232855AbhEXMCP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 May 2021 08:02:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:48624 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S232692AbhEXMCA (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 24 May 2021 08:02:00 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 001376128D;
        Mon, 24 May 2021 12:00:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621857632;
        bh=aB67jAoUabmrvPvNeu2p/bIDSS6GeTv8dUedzFdTyQE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=gnu8Okowfm1deDMXO9mUDGl1Pxv2OsnBgPk6dJ4dCeQVojlY0yoj+Rf4ryUdk+PxJ
         J72crv7UY/xkyQqAVllGhqtowxpgBNxRb3XbrSAraQ2pc7ANUFseM8LGQIfXEKjKRZ
         799DpI/UYRByCgyiiaHwLnnMGpJEDdGh/BAdy/832YlzBZGLAiKJsSzLxLwRV3B77w
         JP4QcTCnDRtvv8JNT7fVf3r3BOnCrWWcnQcRXkl6w31Vp7Oj+sqwuTQNtRD0+3itSQ
         xByaiY0eDbdmfsqkAptAJEwqTmk6xj8Sf+L2twxqlTDJJGNlIwC7SfrFmKzgiHl6qy
         hWOAJ6Fo1FDkA==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH 0/3] ASoC: rsnd: add D3 support
Date:   Mon, 24 May 2021 12:59:57 +0100
Message-Id: <162185746497.49382.1963607123568169981.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com>
References: <87y2c4oe3y.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24 May 2021 15:11:29 +0900, Kuninori Morimoto wrote:
> These adds R-Car D3 support for rsnd driver.
> [1/3] is tidyup patch for dt-bindings (not only for D3).
> [2/3], [3/3] are for R-Car D3.
> 
> Kuninori Morimoto (3):
>   ASoC: dt-bindings: renesas: rsnd: tidyup properties
>   ASoC: rsnd: tidyup loop on rsnd_adg_clk_query()
>   ASoC: rsnd: add null CLOCKIN support
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: renesas: rsnd: tidyup properties
      commit: 17c2d247ddd231199e682b0a7fda42fe46c2c07b
[2/3] ASoC: rsnd: tidyup loop on rsnd_adg_clk_query()
      commit: cf9d5c6619fadfc41cf8f5154cb990cc38e3da85
[3/3] ASoC: rsnd: add null CLOCKIN support
      commit: d6956a7dde6fbf843da117f8b69cc512101fdea2

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

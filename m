Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 719E4419D6A
	for <lists+devicetree@lfdr.de>; Mon, 27 Sep 2021 19:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236209AbhI0RuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 13:50:19 -0400
Received: from mail.kernel.org ([198.145.29.99]:59284 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236230AbhI0Rtu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 27 Sep 2021 13:49:50 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3B49D6101A;
        Mon, 27 Sep 2021 17:48:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1632764891;
        bh=qNtI6u1oaPUxSEX1LWZuJEskpXnJO/H93H1clSrhl3g=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CdvhoOlwGIliU/l2Tvifg0nlQ80Khm/nUQ02TQ0Apk/bMHksfxi2zJCoZvN46d3CA
         QODFeoxFY2/jIOjdO91WrKh1AzHYI297nD3KJtyYDUJnLP/n2KDFOgfvmRElXd6GR7
         3GGtjgjvEiTGmniw4FAfUX4u2ZeV+pn7GKwpivnAILXL+JLPdfHt4eYwOLp5+bn9S+
         bFouOk2V1ueSUaMHFcT7pUjMxE1GNlb6+iWqj4tIsqN3jWfpXW/IKuBoC6FhXhKZZO
         BFkzdSb5kWIx6o4pIpGkquWVj1WX7udK4uZidJrVcdk/9KNAnIRbTQQWcG5qVxJ5BU
         bqnU4YtXsh3Ig==
From:   Mark Brown <broonie@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        alsa-devel@alsa-project.org, Maxime Ripard <maxime@cerno.tech>,
        patches@opensource.cirrus.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
Date:   Mon, 27 Sep 2021 18:45:49 +0100
Message-Id: <163276442023.18200.17825655146761674998.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <0409470fbe6bba69ec74a3f30681b5fe93a372ba.1632470464.git.geert+renesas@glider.be>
References: <0409470fbe6bba69ec74a3f30681b5fe93a372ba.1632470464.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021 10:02:50 +0200, Geert Uytterhoeven wrote:
> According to the WM8978 datasheet, the address of the device is fixed as
> 0011010 in 2-wire mode.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: wlf,wm8978: Fix I2C address in example
      commit: 9208d3ca8cb65748e436c224ed63dbba4a60a3d5

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

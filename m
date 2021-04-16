Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 917203627CA
	for <lists+devicetree@lfdr.de>; Fri, 16 Apr 2021 20:34:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240997AbhDPSfW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Apr 2021 14:35:22 -0400
Received: from mail.kernel.org ([198.145.29.99]:45640 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S236085AbhDPSfW (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 16 Apr 2021 14:35:22 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 85992610FC;
        Fri, 16 Apr 2021 18:34:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1618598097;
        bh=s1jF8f/YwSM7iQj2NFyAZcn8VnPfgVcOIVtxUHM8KIE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=NmNYQkhPNsJLqMKdkysMraciLH99iKAS+KfOwvNlZj/70c2EfYKqKfvWWrcZC2uMk
         EbfP9OGMvx6orCC33Fetmg3clIj73bW9mL8dpOBb/7vFZ+SFBjcorY7Y8NVgCHlxn3
         5VOfKsBdlkiEvwWYyGrdZZ00Wm/OxODoicGjlcsUO6e/9npXPJPMcsceNXOIXJYok+
         9eeU/q2bDjHcrvhFfEujzsne9S8hldpGift56ALSOsoOreK9/IqJ/vntADd32JPDfS
         XgeKVuYvydQHkU3J5M7iFbNwsus6sDAri0ASM/Ob65ltkCr1G/DfhnNeWkmTdpHwMP
         R6/fqQzJRbMMg==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>,
        linux-mediatek@lists.infradead.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org, Argus Lin <argus.lin@mediatek.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH] Revert "ASoC: mt6359: add ASoC mt6359 ASoC accdet jack document"
Date:   Fri, 16 Apr 2021 19:34:30 +0100
Message-Id: <161859792866.33058.12744070673579269607.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210416180118.3662904-1-robh@kernel.org>
References: <20210416180118.3662904-1-robh@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Apr 2021 13:01:18 -0500, Rob Herring wrote:
> This reverts commit e61c589587c772c5f672b22683c3e0b38be20702.
> 
> The binding document has lots of schema errors and there's been no
> effort to fix them, so let's remove it.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] Revert "ASoC: mt6359: add ASoC mt6359 ASoC accdet jack document"
      commit: d63f2a88d5cfaad025f26e1107f3807d579654c5

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

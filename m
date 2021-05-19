Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D80C4389351
	for <lists+devicetree@lfdr.de>; Wed, 19 May 2021 18:11:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355137AbhESQMm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 May 2021 12:12:42 -0400
Received: from mail.kernel.org ([198.145.29.99]:54452 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1355152AbhESQMl (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 19 May 2021 12:12:41 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 208EC61244;
        Wed, 19 May 2021 16:11:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1621440681;
        bh=ZL3psb3b/PFz1Seul7gHnQyH1SZ87FzQ+4g1uiKv7xI=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=oYJ2Kb8A5KEl78y977KlTupYWeDNOcVNuHyAC89B/yEt/vCLvaKUiB42OqAEKJiEX
         wpm2zlEGZttK8mFaDxA5K7X3gArZ0dFM9/v2Pshq2IhFbu4SMHCY0yqtg0Q6s0KKSw
         MQgPxbPJH2aJHbasFWHdQJHtJH50w+cycBj11lZnLU+DSRzkuE4ls61AWfTEWSh7qI
         SCTTTYJH2Q6dqHsKQ4hgw73j62cc3VRponStdt+opayu1YOPbnHP/Ku+J0qAT0P6EH
         DieMU9d7DQV8I0U4qyHDtcINyKeIG4t3/GD28qBzANhQ1gyZuMB7tnGoAO+UFBRwcY
         BMMxDx7clLNTA==
From:   Mark Brown <broonie@kernel.org>
To:     alsa-devel@alsa-project.org, Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
Date:   Wed, 19 May 2021 17:10:17 +0100
Message-Id: <162144027323.37060.7346923502506402074.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210512205926.780-1-zajec5@gmail.com>
References: <20210512205926.780-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 May 2021 22:59:26 +0200, Rafał Miłecki wrote:
> This helps validating DTS files.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] dt-bindings: sound: wm8750: convert to the json-schema
      commit: 11480dbfe1d59eaa6382864acc476e7621b1da4c

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

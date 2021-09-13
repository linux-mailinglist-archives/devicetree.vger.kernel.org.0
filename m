Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7380C408984
	for <lists+devicetree@lfdr.de>; Mon, 13 Sep 2021 12:55:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239414AbhIMK4R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Sep 2021 06:56:17 -0400
Received: from mail.kernel.org ([198.145.29.99]:51940 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S239251AbhIMK4J (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 13 Sep 2021 06:56:09 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 671DA6108B;
        Mon, 13 Sep 2021 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1631530494;
        bh=J92vC4acCGp/Nk1DVTMvmiwsE+1YSxjAx3HdJ63Eif8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=CA/ReKV88hWRccNlZp2jbvoF+MRdqbytMChkRu3P1UoZB0DlxO8RJbf4X/I8EPBKN
         5KBsjYp5FPRiikbFXTwcFaICeHQvOEarhXNZ26bVC9GjQMdKpAlHpPKwHIJVVwlTo2
         V8Ztr+ul5R7N+UUqu+3O/rccSIccMOI93651bbXkufYjiJXqVvA7gWZ7oIaCegHBqp
         4RB3C1QfxT89nRdn0eZAn+JalCO9U3HBi/Lspp4kEg/Ol+F9nes8Y+oqaTsNki6Ua8
         OkaIIoPQATjwRnslyThDxIszGqdBYtRn/DxFvDe18Ea9ybw0C94P9B62L7uzx3yuxI
         mqjx8QKfYu4RQ==
From:   Mark Brown <broonie@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Jernej=20=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Chen-Yu Tsai <wens@csie.org>
Cc:     Mark Brown <broonie@kernel.org>, linux-sunxi@googlegroups.com,
        linux-arm-kernel@lists.infradead.org
Subject: Re: (subset) [PATCH v2 00/52] ARM: dts: Last round of DT schema fixes
Date:   Mon, 13 Sep 2021 11:53:20 +0100
Message-Id: <163152996583.45703.2271458065369838682.b4-ty@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210901091852.479202-1-maxime@cerno.tech>
References: <20210901091852.479202-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 1 Sep 2021 11:18:00 +0200, Maxime Ripard wrote:
> Here's another round of schema warnings fixes for the Allwinner platform.
> 
> There's a fair share of new schemas in there since the schema tools now warn
> when a compatible is not documented in a schema.
> 
> We don't have any warning anymore if we use the OPP binding Rob submitted, and
> since that means we have all our devices properly validated I don't expect more
> fixes now, aside from the usual bunch of regressions.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[01/52] ASoC: dt-bindings: Add WM8978 Binding
        commit: 5bd5699c494f42a3c23e377bb35be5d716b85012
[02/52] ASoC: dt-bindings: Convert Bluetooth SCO Link binding to a schema
        commit: 6ef239699102580b104bfca11d9b94abfbc8caec
[03/52] ASoC: dt-bindings: Convert SPDIF Transmitter binding to a schema
        commit: 1c02b74ba20838ba194850beb0adfc6b5e11bb2a
[04/52] ASoC: dt-bindings: Convert Simple Amplifier binding to a schema
        commit: 50a41ce8c56d07f42a97112077acbaeda8b86ed9

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

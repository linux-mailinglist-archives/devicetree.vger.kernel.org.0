Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE53143CFB2
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 19:29:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233913AbhJ0RcC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 13:32:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:41898 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S243282AbhJ0Rbs (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 27 Oct 2021 13:31:48 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 78CCC60F02;
        Wed, 27 Oct 2021 17:29:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635355761;
        bh=cJp8gs8AleZxnawpuHmN71D6zTfYnuA2fLvcbSbgeBA=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=EN8VG8ko9h6CuFi9zsIHTIWsQHENACoDoFdOak7dAwr+wVZ3a0e7Ae/L2ntB3YGUh
         VfywyLYcWTnaM0e3LV+aaftmofiUpxkljlAGa3a8mhQiRY/qixyA5MwWTVAibydUVP
         OzNKKbbQ6F6VpeiRNxmlZ71fcLl6onWdCaa7xpQGdrNJCpg/OKueOBZLwR1Uzug0U7
         +36ObdpcYcgtqChrCbEtjOGUQnxvb5FWHTKafrQjwjMfO/fwuLfqXwc5Z5ABXJEj+r
         qkRfe91gIDMdrsghKotYKR4+JhaxMR1R3YmZmgTP6khvTwq98dhAMGaaHy2FCJF3Zb
         ze1MgD3iyfrmg==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Alexander Stein <alexander.stein@mailbox.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
In-Reply-To: <20211026182754.900688-1-alexander.stein@mailbox.org>
References: <20211026182754.900688-1-alexander.stein@mailbox.org>
Subject: Re: [PATCH v2 1/1] ASoC: meson: t9015: Add missing AVDD-supply property
Message-Id: <163535576023.4012075.11294627556140470131.b4-ty@kernel.org>
Date:   Wed, 27 Oct 2021 18:29:20 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Oct 2021 20:27:54 +0200, Alexander Stein wrote:
> Fixes the schema check warning "audio-controller@32000: 'AVDD-supply'
> do not match any of the regexes: 'pinctrl-[0-9]+'"
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: meson: t9015: Add missing AVDD-supply property
      commit: 5d03907bbf9ccf10e0d2cfb4f4d312b7cc4274f4

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

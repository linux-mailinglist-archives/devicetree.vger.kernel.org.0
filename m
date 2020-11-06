Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E07A62A95D0
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 12:54:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726692AbgKFLy1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 6 Nov 2020 06:54:27 -0500
Received: from mail.kernel.org ([198.145.29.99]:52390 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726565AbgKFLy1 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 6 Nov 2020 06:54:27 -0500
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4AB0120719;
        Fri,  6 Nov 2020 11:54:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1604663666;
        bh=t7hIe64oZxwvv8OMpmU6pe1LYNjGNe5T4p+vSi15Hdo=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=ueC6j1eazn08TXoAslq5E1lfR+oB3YJdYHN4pO33aHhoNpHKjnvQZYa/IIxvgZntC
         lm7RSxvo0J9CLQI85wGQJG0YnLydAE7j6KF9QhOGvoeKaewRT1Ol1XDX+dEg4Ll5Qz
         Fl5IEZTzWnTVM/u/NjQMAnEfjvAGeNC4Io8YvSxs=
Date:   Fri, 06 Nov 2020 11:54:15 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        Sameer Pujar <spujar@nvidia.com>
In-Reply-To: <87eel8baxc.wl-kuninori.morimoto.gx@renesas.com>
References: <87eel8baxc.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v6 0/3] ASoC: dt-bindings: audio-graph-card: switch to yaml base Documentation
Message-Id: <160466365500.22812.987228346341402469.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05 Nov 2020 15:04:25 +0900, Kuninori Morimoto wrote:
> Cc: Sameer
> 
> These are v6 of switch to yaml base Documentation for
> audio-graph-card and renesas,rsnd which uses audio-graph-card.
> 
> v5 -> v6
> 	- add Acked-by/Reviewed-by on each patch
> 	- remove "audio-graph-card,xxx" property
> 	- remove un-needed if "ok"
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: audio-graph-card: switch to yaml base Documentation
      commit: 97198614f6c3b019299b1189106478ffb58481c9
[2/3] ASoC: renesas, rsnd: switch to yaml base Documentation
      commit: 2d8fc973646c8ae87b668e30730becc8b1a57a06
[3/3] ASoC: renesas,rsnd: Add r8a77961 support
      commit: 8d96ec9ba9e7bd606d5d0fead9f91f0c5a3366a0

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

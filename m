Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7EBA849B18D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 11:28:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349577AbiAYKX6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 05:23:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36988 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344637AbiAYKUw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 05:20:52 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C89E2C06175E
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 02:20:48 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8FBE7B8175F
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 10:20:47 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 68D93C340E0;
        Tue, 25 Jan 2022 10:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643106046;
        bh=0+aOms5Nvf71uva22FMN1OUg14vB/MdFCk/0gC3mHHw=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=sHucB4FcoZrvpPF7ljb8+c/o5Or0qh4NnbFBAxhjxAQxCsazNijxpNYY/y45tXPkE
         VCdu1at6O2FgYXcdPloCmrLRENyfj7/eaaVMgPVDHwAJmSxL5kbVRyTv95sIUkIaRY
         vy9Tqijv+su5kVI4tBffnnoD9Bsmv8uOqt8NjD9BsjeONyiVsZf97BG2bkh4rXD8Ve
         3MRWHqAF2Xuwjj+7111tTPYmKEr7KkWQYiE8M8LDXiQjDZUc84ClP4CxaX0k+mjLEV
         Lxb2U9JJeknjawDZGAxWnGyuLaBzwkQJwbszQucwwJGmg0e/2+GSi3mgfrIKYpdGPz
         qbLiPsITr+rNA==
From:   Mark Brown <broonie@kernel.org>
To:     alsa-devel@alsa-project.org,
        Robert Hancock <robert.hancock@calian.com>
Cc:     tiwai@suse.com, lgirdwood@gmail.com,
        kuninori.morimoto.gx@renesas.com, devicetree@vger.kernel.org,
        perex@perex.cz, robh+dt@kernel.org, michal.simek@xilinx.com,
        maruthi.srinivas.bayyavarapu@xilinx.com
In-Reply-To: <20220120195832.1742271-1-robert.hancock@calian.com>
References: <20220120195832.1742271-1-robert.hancock@calian.com>
Subject: Re: [PATCH v3 0/6] ASoC: Xilinx fixes
Message-Id: <164310604415.74844.5269237550048804822.b4-ty@kernel.org>
Date:   Tue, 25 Jan 2022 10:20:44 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Jan 2022 13:58:26 -0600, Robert Hancock wrote:
> There are drivers in mainline for the Xilinx Audio Formatter and Xilinx
> I2S IP cores. However, because of a few issues, these were only really
> usable with Xilinx's xlnx_pl_snd_card top-level driver, which is not in
> mainline (and not suitable for mainline).
> 
> The fixes in this patchset, for the simple-card layer as well as the
> Xilinx drivers, now allow these drivers to be properly used with
> simple-card without any out-of-tree support code.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/6] ASoC: xilinx: xlnx_formatter_pcm: Handle sysclk setting
      commit: 1c5091fbe7e0d0804158200b7feac5123f7b4fbd
[2/6] ASoC: xilinx: xlnx_i2s: create drvdata structure
      commit: 5e46c63ca22278fe363dfd9f5360c2e2ad082087
[3/6] ASoC: xilinx: xlnx_i2s: Handle sysclk setting
      commit: c47aef899c1bb0cbda48808356e7c040d95ca612
[4/6] ASoC: simple-card-utils: Set sysclk on all components
      commit: ce2f7b8d4290c22e462e465d1da38a1c113ae66a
[5/6] ASoC: dt-bindings: simple-card: document new system-clock-fixed flag
      commit: e9fed03aebacb8873dee8e2edfbce96f27f6c730
[6/6] ASoC: simple-card-utils: Add new system-clock-fixed flag
      commit: 5ca2ab4598179a2690a38420f3fde9f2ad79d55c

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

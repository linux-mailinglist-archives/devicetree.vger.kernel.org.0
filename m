Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 26341268E61
	for <lists+devicetree@lfdr.de>; Mon, 14 Sep 2020 16:53:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726322AbgINOwq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Sep 2020 10:52:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:52868 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726877AbgINOwO (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 14 Sep 2020 10:52:14 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 24C3320829;
        Mon, 14 Sep 2020 14:52:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1600095133;
        bh=0Rdhj23dSlc9B+I6Z1sKv+n1S1msaVOGFY5Rifck8UY=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=fHEYHty1PVdcEQnikpPvfiPNka9hST336BpqbxHDCMnUueClin5G5K5kX2SKqMrj8
         jsuZ/zPMJHvowVIOH3/2O/2zvMvRtCaCuFp+uzqWxLkRq9yBg4vxOJSLZ1QQR3jVmA
         /cQV/jesqMRC/2qgYMcibLfSSnzrVbtumNbPSyU0=
Date:   Mon, 14 Sep 2020 15:51:25 +0100
From:   Mark Brown <broonie@kernel.org>
To:     robh+dt@kernel.org, Tzung-Bi Shih <tzungbi@google.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20200911024833.1673961-1-tzungbi@google.com>
References: <20200911024833.1673961-1-tzungbi@google.com>
Subject: Re: [PATCH 0/2] ASoC: mediatek: mt8183-da7219: support machine driver for rt1015p
Message-Id: <160009506912.439.1847050038899323133.b4-ty@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 11 Sep 2020 10:48:31 +0800, Tzung-Bi Shih wrote:
> The series reuses mt8183-da7219-max98357.c for supporting machine
> driver with rt1015p speaker amplifier.
> 
> The 1st patch adds document for the new proposed compatible string.
> 
> The 2nd patch changes the machine driver to support "RT1015P" codec.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: mt8183-da7219: add compatible string for using rt1015p
      commit: 5d1e0557520862c3a73b8b6a809807be1b522c3f
[2/2] ASoC: mediatek: mt8183-da7219: support machine driver with rt1015p
      commit: 7e5bfdddd8772011a2d38cf6be821d616db6cf8c

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

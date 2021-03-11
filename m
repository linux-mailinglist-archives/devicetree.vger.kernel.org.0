Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EE0FE337917
	for <lists+devicetree@lfdr.de>; Thu, 11 Mar 2021 17:20:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234491AbhCKQT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Mar 2021 11:19:56 -0500
Received: from mail.kernel.org ([198.145.29.99]:52382 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S234517AbhCKQTn (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 11 Mar 2021 11:19:43 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8B93764F9C;
        Thu, 11 Mar 2021 16:19:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1615479583;
        bh=s403Yj9fATOFnZaMBCJI/Gp0tkjtHDvFjlBDnVVKLIQ=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=pMb1uWdkQilPnlnTKD8vClV6Ejqh4VX9NCpY804+8xPyybgu6WKTVYhJOVurPBsR2
         o/SvZOiw3lgt5TmMuxWyjIvMsZWSM1lhmbFRJBeFxPlUXmlHXvaj6wbb4AxTiP5nRD
         a8yTcv2oEnMl136qS+JvuXJlkGNNAu9fLeNFBeflBA75+d3U4HuHvDZBYIl5PUWSsO
         BdPU1ZL2j/c3NP30C2GrGJ2l5hbQS8ADd60P+d2Upx5z2LwTISpJZt+iKh99649LzA
         mXupEKYlruOe0JJx4Ir+VLAmKMg/MsGI1zXBLNB21hageiGwY14AzhnjSKkxC2kkhL
         xKz+rNRXjGlHA==
From:   Mark Brown <broonie@kernel.org>
To:     robh+dt@kernel.org, Tzung-Bi Shih <tzungbi@google.com>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20210311033151.1818603-1-tzungbi@google.com>
References: <20210311033151.1818603-1-tzungbi@google.com>
Subject: Re: [PATCH 0/2] ASoC: mediatek: mt8183-mt6358: support machine driver for rt1015p
Message-Id: <161547949200.51229.17809460239850176672.b4-ty@kernel.org>
Date:   Thu, 11 Mar 2021 16:18:12 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Mar 2021 11:31:49 +0800, Tzung-Bi Shih wrote:
> The series reuses mt8183-mt6358-ts3a227-max98357.c for supporting
> machine driver with rt1015p speaker amplifier.
> 
> The 1st patch adds document for the new proposed compatible string.
> 
> The 2nd patch changes the machine driver to support "RT1015P" codec.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: mt8183: add compatible string for using rt1015p
      commit: 5fd6b9b8b1c477fb695e3ae313ffb70b3cc88dc9
[2/2] ASoC: mediatek: mt8183: support machine driver with rt1015p
      commit: 9dc21a066bb6bff55d889f22460f1bf236a9a4a3

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

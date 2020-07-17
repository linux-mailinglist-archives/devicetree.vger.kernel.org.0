Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F05B1222F77
	for <lists+devicetree@lfdr.de>; Fri, 17 Jul 2020 01:57:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726011AbgGPX5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Jul 2020 19:57:18 -0400
Received: from mail.kernel.org ([198.145.29.99]:57620 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725958AbgGPX5S (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 16 Jul 2020 19:57:18 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4DC03207E8;
        Thu, 16 Jul 2020 23:57:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594943837;
        bh=/io6uUiej5SmWDClcTYfJyK1we59aJu74pwpy6NeqIM=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=yeW0YcJEBhCJPMSw+BgqcOZAqp7OjJ/7DeeVL5rlxxVSGjHyKCOUaiXX6V5r11JFh
         4hPXsalTzpq/Msuo7QMbKlVsEZzHrhUnMAX4e7Lg5A+GDZ3Q0KIyWMx/U/HnZA96zE
         0Sigxni2ZMA+GRLxbI3DdcXs5GSNJbmJw379ir7Q=
Date:   Fri, 17 Jul 2020 00:57:07 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <87o8osxlow.wl-kuninori.morimoto.gx@renesas.com>
References: <87o8osxlow.wl-kuninori.morimoto.gx@renesas.com>
Subject: Re: [resend] ASoC: dt-bindings: renesas, fsi: use patternProperties for FSI-A/B
Message-Id: <159494380522.42174.164889717047302735.b4-ty@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07 Jul 2020 08:34:40 +0900, Kuninori Morimoto wrote:
> FSI has FSI-A and FSI-B, and has fsia-xxx/fsib-xxx properties.
> This patch uses patternProperties, and reduce verbose settings.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: renesas, fsi: use patternProperties for FSI-A/B
      commit: d235b282369813c53fdd512d61402b6a7cda1603

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

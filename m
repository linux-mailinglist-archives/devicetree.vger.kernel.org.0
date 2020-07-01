Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD3FD2115C9
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2020 00:23:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726119AbgGAWXE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jul 2020 18:23:04 -0400
Received: from mail.kernel.org ([198.145.29.99]:50120 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727850AbgGAWXD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 1 Jul 2020 18:23:03 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A9E2620780;
        Wed,  1 Jul 2020 22:23:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1593642183;
        bh=Q3eRPK687CJ1TD+vPYTtpnTYTLgMFnwzqhQyWhTTvfI=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=AU0bGnUMeN653PjKqibdORxjLIr7pxXQi/6VJBzTn6KMk+xQNnfrQsFccxC9l4eEt
         aC/T/aY2uhNS5CNEzSdTzfNFXX9qzBvokTqKf4PiCb3jn40gmzDLLgV5jpDvRk20Jr
         ZAegaSYwl5SVbPfbutZW3TWnFnXh6BNlZb/oYFr0=
Date:   Wed, 01 Jul 2020 23:23:01 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     alsa-devel@alsa-project.org, jee.heng.sia@intel.com,
        robh+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20200630224459.27174-1-festevam@gmail.com>
References: <20200630224459.27174-1-festevam@gmail.com>
Subject: Re: [PATCH] ASoC: dt-bindings: keembay-i2s: Fix reg descriptions
Message-Id: <159364215574.10630.17562111847021411509.b4-ty@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 30 Jun 2020 19:44:59 -0300, Fabio Estevam wrote:
> intel,keembay-i2s has two register regions:
> - I2S registers
> - I2S gen configuration
> 
> Describe these regions accordingly to fix the following warning seen
> with 'make dt_binding_check':
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: keembay-i2s: Fix reg descriptions
      commit: 9308a3c92642cddb9ef89cc4014282cf14f2e2d2

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

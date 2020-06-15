Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BFE0D1FA47C
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2020 01:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726546AbgFOXkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jun 2020 19:40:36 -0400
Received: from mail.kernel.org ([198.145.29.99]:52504 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725960AbgFOXkg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Jun 2020 19:40:36 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id CAF12207D3;
        Mon, 15 Jun 2020 23:40:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1592264436;
        bh=HCMgLrkq762gZav8QxH4QvTqyfuNNmMXp3IOi92cHuc=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=XFs2kV7653RL3D++y2TDm5PqDDQ6AnUrQ1bq/i5kPm8QxHA5A+0HPS1QEq9b/AsKa
         NSqBq7Yjuy20UWq0cnwByMgGzygtAn4sr5cZTRfOLsrxlHQsjbBRyTVxcZLPW4roR7
         oJOI11Du/mFHIsE/kMqPoV+q/zFW2g3iFt7paJKM=
Date:   Tue, 16 Jun 2020 00:40:34 +0100
From:   Mark Brown <broonie@kernel.org>
To:     robh+dt@kernel.org, Tzung-Bi Shih <tzungbi@google.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20200605034931.107713-1-tzungbi@google.com>
References: <20200605034931.107713-1-tzungbi@google.com>
Subject: Re: [PATCH 0/2] ASoC: max98357a: support MAX98360A in OF
Message-Id: <159226439189.27409.4876644528029797996.b4-ty@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 5 Jun 2020 11:49:29 +0800, Tzung-Bi Shih wrote:
> Commit 1a0f2433d738 ("ASoC: max98357a: Add ACPI HID MAX98360A") supports
> MAX98360A in ACPI world.  This series supports MAX98360A in OF world.
> 
> Tzung-Bi Shih (2):
>   ASoC: max98357a: add compatible string for MAX98360A
>   ASoC: dt-bindings: add compatible string for MAX98360A
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: max98357a: add compatible string for MAX98360A
      commit: 3aad07b87ac3fa1c67a75403f7f9c576da8df71d
[2/2] ASoC: dt-bindings: add compatible string for MAX98360A
      commit: 3e3b803f9e76b2ec386c0f3f0618fb7d0bca4ffc

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

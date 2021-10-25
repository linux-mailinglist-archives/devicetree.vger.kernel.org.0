Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 97007439BC2
	for <lists+devicetree@lfdr.de>; Mon, 25 Oct 2021 18:39:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234024AbhJYQmC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Oct 2021 12:42:02 -0400
Received: from mail.kernel.org ([198.145.29.99]:46906 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S233970AbhJYQl7 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 Oct 2021 12:41:59 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D0AD660EB9;
        Mon, 25 Oct 2021 16:39:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1635179977;
        bh=OG4xVFMz61gmA5aN/a4qTFWUoD7RB1ivYPTxQ1ppB3s=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=TG47zceUXSpXIn0gbCOXte6XsKfSv5g9+wuzQBYS12EiuyIW5x/zAcoIOFPRix28b
         HzkW8VceTVE4/504/690lnfAy+pEoLnpZZXUFxIfANR7+GbKjqGVhKyuK2kqqvdTpI
         BYqObbJ7tsvUhA/7qXBf4pYkoddg9nnHvBVp67yqrtlQkpx4KZJ2S695zOBibEPCAa
         5vmi88R54gGnUYCwzIwFUHrN3ASbg5x7+3wYCuCJ1GrU3c4NJh5MGH1H6v8vsyhGrJ
         LajLDCpw06g1qdoN3mAG+d2gNG57yVm4DMhvmexoh1EC10IlSux+V+UcnjcZzoYRUn
         ldRi+lXAS/OyA==
From:   Mark Brown <broonie@kernel.org>
To:     patches@opensource.cirrus.com, Adam Ford <aford173@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Mark Brown <broonie@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
Subject: Re: (subset) [PATCH 0/2] ASoC: wm8962: Conversion to json-schema and fix
Date:   Mon, 25 Oct 2021 17:39:21 +0100
Message-Id: <163517996156.3558038.1402289987821049770.b4-ty@kernel.org>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <cover.1634565154.git.geert+renesas@glider.be>
References: <cover.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Oct 2021 15:59:01 +0200, Geert Uytterhoeven wrote:
> 	Hi all,
> 
> This patch series converts the Wolfson WM8962 Device Tree binding
> documentation to json-schema, after fixing an issue in the imx8mn-beacon
> DTS file.
> 
> Thanks for your comments!
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[2/2] ASoC: dt-bindings: wlf,wm8962: Convert to json-schema
      commit: cd51b942f34431a2a2c92a8385e94cdd97e15350

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

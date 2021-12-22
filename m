Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6986247D357
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 15:04:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245573AbhLVOEp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 09:04:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237349AbhLVOEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 09:04:44 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C07B1C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 06:04:44 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 53E1961A3D
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 14:04:44 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7702AC36AEA;
        Wed, 22 Dec 2021 14:04:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640181883;
        bh=GNoSR9vATcN9dhd1CYRFeQx4pH59qmWj2wK1IQ1OdLU=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=RPLXrACyo+zki3TL6/5jE5+DFghyQj9p9XLlNuRVUhjR7NBNVXU4r1L8Ymim1S6+c
         qGmD7qYWE17yzP+RKpFR+innBJHu6WDYe5qvFTPzgeSe2IiyXwLrOykfNIqbd5MOJt
         RUIp9OvmDRiqWK2pdinnJFrP9a/aW4GyB6uypgWVlZkN943cPlyIAyPa9Hahbcg/mQ
         YkAFt/q54b9l0bB+BF8hNkJcC6B8M+MZqGo8tImKj/rIUnjozr7IgaO64hvaWqiO/9
         Sd741ngElI5Cfd7WZgplUMQXFPEw44f2clSsNeIwTMBA7cidiffUpwLU1CYYTaASez
         ex/qIOjLKo2ZQ==
From:   Mark Brown <broonie@kernel.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Alexander Stein <alexander.stein@mailbox.org>
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20211218143423.18768-1-alexander.stein@mailbox.org>
References: <20211218143423.18768-1-alexander.stein@mailbox.org>
Subject: Re: [PATCH v2 1/3] ASoC: dt-bindings: Use name-prefix schema
Message-Id: <164018188218.2905927.3191011789641589358.b4-ty@kernel.org>
Date:   Wed, 22 Dec 2021 14:04:42 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 15:34:21 +0100, Alexander Stein wrote:
> name-prefix.txt does not exist anymore, just reference the schema instead.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: dt-bindings: Use name-prefix schema
      commit: 0d422a466ef7fdbbe402194ac06144d1bbcdc227
[2/3] ASoC: meson: t9015: add missing sound-name-prefix property
      commit: 847cbea6459d5beb3f0f960fde4337f28b663eae
[3/3] ASoC: meson: g12a: add missing sound-name-prefix property
      commit: 1f6532073e3e9caee1dbc3f9b4be28359a181ea4

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

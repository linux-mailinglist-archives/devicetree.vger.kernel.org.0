Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DB2B21F778
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2020 18:40:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgGNQjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jul 2020 12:39:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:56562 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1725931AbgGNQjq (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 14 Jul 2020 12:39:46 -0400
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id A879122475;
        Tue, 14 Jul 2020 16:39:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1594744786;
        bh=TbXWV5ei7TBnr/Ctk0w3GzHb6IxxNUBtez1DyLMmyCk=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=BznuuqH97wJLHyex5iSFWHeYbkNfLTB2RFZQR+i+UN8PjghuFxITWS+85qdQchZaw
         +06NZp5M5zHse8Ky/eFq7lvb48byAkGE+Ar+GUPnD84kMxweJMwi66np7bv6NgLBBQ
         TOdoGJScF39M++kfVYx6sAvwM1+CAb4OnAcVaABk=
Date:   Tue, 14 Jul 2020 17:39:37 +0100
From:   Mark Brown <broonie@kernel.org>
To:     Katsuhiro Suzuki <katsuhiro@katsuster.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, Rob Herring <robh@kernel.org>,
        devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org
In-Reply-To: <20200714073247.172859-1-katsuhiro@katsuster.net>
References: <20200714073247.172859-1-katsuhiro@katsuster.net>
Subject: Re: [PATCH v3] dt-bindings: sound: convert rk3328 codec binding to yaml
Message-Id: <159474477218.998.15280718297734736345.b4-ty@kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 14 Jul 2020 16:32:47 +0900, Katsuhiro Suzuki wrote:
> This patch converts Rockchip rk3328 audio codec binding to DT schema.
> And adds description about "mclk" clock and fixes some errors in
> original example.

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: convert rk3328 codec binding to yaml
      commit: 3f6597ad2f9ed8ed89dbd2a9ec0b0c892774f9d2

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

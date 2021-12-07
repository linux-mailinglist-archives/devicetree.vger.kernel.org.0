Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6E1546BED3
	for <lists+devicetree@lfdr.de>; Tue,  7 Dec 2021 16:11:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238678AbhLGPNc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Dec 2021 10:13:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238590AbhLGPNX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Dec 2021 10:13:23 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37A15C061A32
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 07:09:53 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E206FB817F8
        for <devicetree@vger.kernel.org>; Tue,  7 Dec 2021 15:09:51 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A9107C341CB;
        Tue,  7 Dec 2021 15:09:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638889790;
        bh=5ChtgNAv0NsVyeTJeKILOF0UQ2XwhTxWLB8HWx3UL3Y=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=SUzP5sxLPaqlOg8yRMH5Ko43eg5F7BZwua4lmG2HlzqM+47YEltsBuHKMBAq/epO2
         LA0Ly3LiR1Je55URBSGnbnTGBsz5p/Pbq1O3PSDLjQHQ25CLj8QKyP1zUurA/RvdbJ
         C7edLRwfiNcLc3knN5z8vbJfpgDQTleQLlUWRdzuKKWN89t8I9313XHYn2RejQ71Gs
         f9cuYMSAMYP9s2bi1nh2RwXHp5rLQsGERPauzf0NSkwHZZBLOf1dhyyRpn/tSh+ubP
         iNN/rF41pYXGv0hiXF/MhGGw1DMZ9eNMLsO8szcWnZ89LS1XsBoipH7rd1GH86SRpV
         QmWCHGi/C48OQ==
From:   Mark Brown <broonie@kernel.org>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org
In-Reply-To: <20211206153432.226963-1-thierry.reding@gmail.com>
References: <20211206153432.226963-1-thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: regulator: maxim,max8973: Document interrupts property
Message-Id: <163888978941.1135191.8395981443432991522.b4-ty@kernel.org>
Date:   Tue, 07 Dec 2021 15:09:49 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 6 Dec 2021 16:34:32 +0100, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> One of the examples in the bindings has an interrupts property and the
> Linux kernel driver has support for requesting an interrupt as well. It
> looks like the absence from the bindings was just an oversight. Add the
> property to make sure the examples can be validated.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulator: maxim,max8973: Document interrupts property
      commit: 4aafc5c61b4c2be920b8a56b11279c5fadb8a6bf

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

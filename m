Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0C0447B886
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 03:50:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233921AbhLUCuo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Dec 2021 21:50:44 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:53948 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233901AbhLUCun (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Dec 2021 21:50:43 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2962A6136A
        for <devicetree@vger.kernel.org>; Tue, 21 Dec 2021 02:50:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AF910C36AE8;
        Tue, 21 Dec 2021 02:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1640055042;
        bh=NflUddK7ZSORKU6UF7tiO2E1Di36GbuGTE02whw17Bw=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=Wi9KZ7fwyVIefDHjMdgeiKxq5SSqYzmVHLxRgJBKZnNhc7akAidwD1L4ri8QE6+HY
         EYzi4z6pdprQqJP3fGm+niSWTBNNc1cQT7buIp9+l4v4OUC7W3l9gvAe4cflnO5hBC
         aayyfyW1Oi0ityZ5ecXXqsnL19SWafMZ6GQVDPDX8kmWQ/CKpDjsU2Zyh8symQlHPQ
         sfiUarNdHUtjJUwcdKI3qaKUGEL0Ef6SHQVA7+94Hs2b4Ud413Z/oLISXQy/PX8NHt
         jvjiU0AZ/oX1sWs5rnlyz4Kw/ZYVipGXkwcMLSX5eEt1/7W88EXecpcqCLGFJS4K8K
         6LRmISst06oMw==
From:   Mark Brown <broonie@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20211216000018.2641925-1-kuninori.morimoto.gx@renesas.com>
References: <20211216000018.2641925-1-kuninori.morimoto.gx@renesas.com>
Subject: Re: [PATCH v2] ASoC: dt-bindings: audio-graph-port: enable both flag/phandle for bitclock/frame-master
Message-Id: <164005504144.2647792.1608765502662236125.b4-ty@kernel.org>
Date:   Tue, 21 Dec 2021 02:50:41 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 16 Dec 2021 09:00:18 +0900, Kuninori Morimoto wrote:
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> snd_soc_daifmt_parse_clock_provider_raw() is handling both
> bitclock/frame-master, and is supporting both flag/phandle.
> Current DT is assuming it is flag style.
> This patch allows both case.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: audio-graph-port: enable both flag/phandle for bitclock/frame-master
      commit: 9b3c847b5fa0364a00227f13ab8ac0cbaf69be83

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

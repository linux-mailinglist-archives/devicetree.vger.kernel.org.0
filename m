Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DEED72BB852
	for <lists+devicetree@lfdr.de>; Fri, 20 Nov 2020 22:31:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728256AbgKTV33 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Nov 2020 16:29:29 -0500
Received: from mail.kernel.org ([198.145.29.99]:49634 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728207AbgKTV33 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 20 Nov 2020 16:29:29 -0500
Received: from localhost (cpc102334-sgyl38-2-0-cust884.18-2.cable.virginm.net [92.233.91.117])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 2C4722242B;
        Fri, 20 Nov 2020 21:29:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605907768;
        bh=TiN/PEcXZyvfTQuP3y4oWjBfPiZHOkcTnSjiVhKAWt8=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=SVreCdHng3F9Tbg5eQKab66RkiVgp6TIka76jQwdm15Ol0XQzAHJ0QZr0KSzc87Lw
         3dturaJzf6DlrxTpXW0vTRpPjapI4fte1VztNZeU1oSh2mupXpVaz32Utm6LnL8jkZ
         O+QDo9KImmvTrCZIoNhz7gp8A3B/aRqmFjvaRDhY=
Date:   Fri, 20 Nov 2020 21:29:07 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, Sameer Pujar <spujar@nvidia.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        alsa-devel@alsa-project.org
In-Reply-To: <20201119161848.3379929-1-robh@kernel.org>
References: <20201119161848.3379929-1-robh@kernel.org>
Subject: Re: [PATCH] ASoC: dt-bindings: renesas, rsnd: Fix duplicate 'allOf' entries
Message-Id: <160590773741.47461.854428611172817962.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Nov 2020 10:18:48 -0600, Rob Herring wrote:
> Commit e52f3f291152 ("ASoC: audio-graph-card: Refactor schema") added an
> 'allOf' entry, but one is already present in the schema. Multiple keys
> is not valid and results in an error:
> 
> ruamel.yaml.constructor.DuplicateKeyError: while constructing a mapping
>   in "<unicode string>", line 4, column 1
> found duplicate key "allOf" with value "[]" (original value: "[]")
>   in "<unicode string>", line 262, column 1

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] ASoC: dt-bindings: renesas, rsnd: Fix duplicate 'allOf' entries
      commit: 73d2784ecf09d49e319631aea682cb360959355a

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

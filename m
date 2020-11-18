Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A819D2B8627
	for <lists+devicetree@lfdr.de>; Wed, 18 Nov 2020 22:00:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727001AbgKRU7a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Nov 2020 15:59:30 -0500
Received: from mail.kernel.org ([198.145.29.99]:55424 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727000AbgKRU7a (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Nov 2020 15:59:30 -0500
Received: from localhost (fw-tnat.cambridge.arm.com [217.140.96.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id BB2682467A;
        Wed, 18 Nov 2020 20:59:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605733170;
        bh=KThHWpdFxR/3phOiz3HNi03U9rqeXo7gprHwDV15yf4=;
        h=Date:From:To:Cc:In-Reply-To:References:Subject:From;
        b=Jc9Wvlfe/pcTwjNlV1rq/vKK+uFCbs8GS/iyiQ0T9qt9nGzYRYdk7QFxt32DdaAX/
         1sMDk05Y0PEpS9S8Ahex+SyRkYbpjRLecQT6jvwelUAwE2kJBdP4csZumcOtELKlJD
         1dJS2Tb95G5DmIA1EhMDroATc2nF2SE+5GU/MpB8=
Date:   Wed, 18 Nov 2020 20:59:10 +0000
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh@kernel.org>
Cc:     Sameer Pujar <spujar@nvidia.com>, Lubomir Rintel <lkundrak@v3.sk>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
In-Reply-To: <20201117013349.2458416-1-robh@kernel.org>
References: <20201117013349.2458416-1-robh@kernel.org>
Subject: Re: [PATCH 0/4] ASoC: graph card schema rework
Message-Id: <160573314458.46437.6554122354226422626.b4-ty@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Nov 2020 19:33:45 -0600, Rob Herring wrote:
> This series updates Sameer's patch to repartition the graph card binding
> schema and incorporate the OF graph schema. The schema was also mixing
> card node and DAI node properties, so I've split the DAI part (the
> 'port' node) into a separate schema.
> 
> There's another problem that 'frame-master' and 'bitclock-master' have
> inconsistent types of boolean and phandle. Having the properties just
> point to the local or remote endpoint within an endpoint node is kind of
> pointless. We should have gone with just boolean, but looks like we
> already have several users. MMP OLPC is the one platform using boolean,
> but it happens to work because the properties are effectively ignored
> and CPU DAI as the master is the default.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/3] ASoC: audio-graph-card: Refactor schema
      commit: e52f3f291152042f1759b2b8838e7ca24556997e
[2/3] ASoC: dt-bindings: marvell, mmp-sspa: Use audio-graph-port schema
      commit: fd97ee45ec63759593b06be010a8ed395b299cce
[3/3] ASoC: dt-bindings: Refine 'frame-master' and 'bitclock-master' type
      commit: 251bf658558f9feff8a92ddcde402ffa220d13b8

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

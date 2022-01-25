Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5127C49B1D3
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 11:44:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351496AbiAYK35 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 05:29:57 -0500
Received: from dfw.source.kernel.org ([139.178.84.217]:60880 "EHLO
        dfw.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344785AbiAYKU6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 05:20:58 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 8BC8F6163F
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 10:20:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E774AC340E9;
        Tue, 25 Jan 2022 10:20:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1643106057;
        bh=Aj8GUO+d72XjCf4g2djxHNk2mhfJ1M+0GnBA4O9XAFw=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=ie2K5LBHZVmbMrCU53tBN+Ypet16dEq06GuPmcN3/V3v6hgS9N71CkSOL1LHXQE39
         71A4Xc4Iz0fVbt4BUjKrfekgAMBP+JvsPvuwe/LWhmwgqUP4gEgmlQVEHMhxWORFqP
         0PJCQKaaO1qz9NisNNNC0eg0jlq9oIvrBY0cwXPN5p7ZXeMBQuqJvOccMBM7zoGdZ5
         sByCxFGtAHoFgW7+BnHxkWv2xLLweCkSmqkAO0fl01INRIXbudzlp4Zm9rbUPiFPcE
         QR2xsPACiH4KqBRLZazKj8qnYBAJJa1zvaUaTXs2/kOzObQWvVpcKeRiUjLGjkXbCu
         K5mgNlUifO5vg==
From:   Mark Brown <broonie@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robin Gong <yibin.gong@nxp.com>
Cc:     devicetree@vger.kernel.org
In-Reply-To: <20220119103747.58305-1-alexander.stein@ew.tq-group.com>
References: <20220119103747.58305-1-alexander.stein@ew.tq-group.com>
Subject: Re: [PATCH 1/1] dt-bindings: regulators: Add missing regulator names
Message-Id: <164310605566.75017.8589759372562408006.b4-ty@kernel.org>
Date:   Tue, 25 Jan 2022 10:20:55 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 19 Jan 2022 11:37:47 +0100, Alexander Stein wrote:
> The valid regulator names for the subnodes does not match the ones
> mentioned in the description.
> PFUZE3000 & PFUZE3001 uses 'v33', 'vccsd' and 'vldo[1-4]' as well, so
> add them to the allowed node names.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/regulator.git for-next

Thanks!

[1/1] dt-bindings: regulators: Add missing regulator names
      commit: 8e9977e48c7c2a49e09859456dcba12a8d804a51

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

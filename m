Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C601C682F4F
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 15:32:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231529AbjAaOcr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 09:32:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34152 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231614AbjAaOcq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 09:32:46 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40E0B4390E
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 06:32:42 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 9089961536
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 14:32:41 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C8329C433EF;
        Tue, 31 Jan 2023 14:32:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1675175561;
        bh=hGEYxozapv2lFwUHx3F3CpHxfGxtk761b6hTvAin2Jw=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=h+2dlPRx5BQMyuwm+6z+ZRBuys1PqrD5uuuiPK7S+4djDefxBsLTXrYP4OIri8PLg
         nMDrDe+lFKqjoUtF0aR/Xe9N9ibd0K+gPMA1Q/62vzOMyaZcG6h042oC0vkYQ8GFjC
         JmEhmOYbhWEfYOIHDEWv5leUr5dPefJ6BjOrVeRM+L2DoeZMNmf7/GWFlsQ9TfZBK1
         eCLZ/kSR6hC5oeFSWVwlOYvdRiLzVsU+pRnm06Hj/Vbl+DpQTR8ibfzKZ6x48Kdy+p
         rhgjDsrRn4m/3t7lU3wg0F1lt347Wjqa7thN//JnZiyJuWvXN8By+Kh0lfI4K6kzAY
         V9DP/+X1Z/GpQ==
From:   Mark Brown <broonie@kernel.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kiseok Jo <kiseok.jo@irondevice.com>
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org
In-Reply-To: <20230131054526.14653-1-kiseok.jo@irondevice.com>
References: <20230131054526.14653-1-kiseok.jo@irondevice.com>
Subject: Re: [PATCH] MAINTAINERS: add IRON DEVICE AUDIO CODEC DRIVERS
Message-Id: <167517555954.691025.17847273688504869741.b4-ty@kernel.org>
Date:   Tue, 31 Jan 2023 14:32:39 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.0
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 31 Jan 2023 05:45:27 +0000, Kiseok Jo wrote:
> Add Kiseok Jo as maintainer for Iron Device audio codec drivers.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/1] MAINTAINERS: add IRON DEVICE AUDIO CODEC DRIVERS
      commit: 4a639a757128debbede924736f255680740a4364

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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 54D175A7E01
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 14:53:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231500AbiHaMw7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 08:52:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35094 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231527AbiHaMw6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 08:52:58 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 924B319C12
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 05:52:57 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 2E8C0618D1
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 12:52:57 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 89EC1C433C1;
        Wed, 31 Aug 2022 12:52:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661950376;
        bh=nL6/hWbD7AHWVj/hITRA5on1b+uHLf3GP4zUn748llo=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=TyWKscgPnlY56InNkb1dcyKrofZMhA/o2Iwhk8r1TvRv7rMHQy2wk3P3zvrhusZ3v
         NEuo2kr2seJMfH/3Y174pekbtiiOZubWa2NnvT1MpF7CXNGcUifc/YqcGg5KxbklgY
         qwiiHFV5kMm+2KnTGZOWDyNtnzW5nGRKNKWHpJ3tFIJtt370CnNO/yKMOiPrpAl0ai
         h+P2zp0/7Qchx200Y6Tm4HryotaAU2pD3SjUXItQ9PCDN4tsh/wa2Wo1XdQ/WCpiGA
         jFh3eiBh1ikaf1noura72HBdkGFNgSXx4Fjw9uZc+wq5tRSX10UyY0xU55Lq9WsAdV
         kRVg/gQFWxyEA==
From:   Mark Brown <broonie@kernel.org>
To:     Daniel Mack <daniel@zonque.org>, ryan.lee.analog@gmail.com
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
In-Reply-To: <20220826085927.2336224-1-daniel@zonque.org>
References: <20220826085927.2336224-1-daniel@zonque.org>
Subject: Re: [PATCH v3 1/2] ASoC: dt-bindings: max98396: Document data monitor properties
Message-Id: <166195037526.99184.15812768406102730466.b4-ty@kernel.org>
Date:   Wed, 31 Aug 2022 13:52:55 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-0c1df
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 26 Aug 2022 10:59:26 +0200, Daniel Mack wrote:
> This device features a data monitor that puts the device in software reset
> upon a configurable set of events.
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: max98396: Document data monitor properties
      commit: ec2988da1a4671f31b898351daeee2e65ca508f7
[2/2] ASoC: max98396: Make data monitor features configurable
      commit: 33b7504ae08a20ad22f3bd867623c72bddefdd12

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

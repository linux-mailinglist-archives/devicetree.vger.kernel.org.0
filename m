Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1BB1595DA4
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 15:48:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229450AbiHPNsR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 09:48:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbiHPNsP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 09:48:15 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C67431DD7
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 06:48:14 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id D1008B81A56
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 13:48:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 31F5BC433C1;
        Tue, 16 Aug 2022 13:48:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1660657691;
        bh=VqW5rsrdYdwTT0k7E37ysrJSvlmvley2MOwxln3gKdI=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=cQvp6SbNd74Y82Is4uZBQiK6udaGbS+bmr8vSlR23zstLx/tKADKNxa6Vmdmo1bOH
         +4lXafbw/qfWRdN1IvalcY0uHit7qXMkvCVKGboNV5TI7WDBDg/5jcdZB1JofZ9xND
         Mo0+clZnEBmXBsyKpQzY+7JY5PES2MOxpRMg/1hG1HSdtn/SY5tkLuR9FM5j5jZVL7
         pyAT2JHUHs0p6477tYIlXbdHct7e+znN1We2uKRBLOQRfkBhbyjR5tu2lQzPJZDPHU
         gkMYZGxx4zWLFTS1YzGyKcwBQsE4LgZzguMFfSu3XXHuIXcVRF7CsCOse4/iaFbds4
         mUGHpVyOc7pdw==
From:   Mark Brown <broonie@kernel.org>
To:     Zhu Ning <zhuning0077@gmail.com>, alsa-devel@alsa-project.org
Cc:     Zhu Ning <zhuning@everest-semi.com>, robh@kernel.org,
        devicetree@vger.kernel.org, tiwai@suse.com,
        David Yang <yangxiaohua@everest-semi.com>,
        pierre-louis.bossart@linux.intel.com
In-Reply-To: <20220804091800.744316-1-zhuning0077@gmail.com>
References: <20220804091800.744316-1-zhuning0077@gmail.com>
Subject: Re: [PATCH v5 1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
Message-Id: <166065768874.1387305.6708346550854638085.b4-ty@kernel.org>
Date:   Tue, 16 Aug 2022 14:48:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailer: b4 0.10.0-dev-fe10a
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 4 Aug 2022 17:17:59 +0800, Zhu Ning wrote:
> Add device tree binding documentation for Everest ES8326
> 
> ----
> v5 tested by dtschema
> 
> 

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/2] ASoC: dt-bindings: Add Everest ES8326 audio CODEC
      commit: 8c6789f4e2d4ee7d6c8c60daa88ea7a4c4cf6779
[2/2] ASoC: codecs: add support for ES8326
      commit: 5c439937775d77a334696a98fb2a25dee72ffa2d

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

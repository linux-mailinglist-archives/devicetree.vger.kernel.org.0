Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B08555C18C
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:45:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241160AbiF0UTY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:19:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241194AbiF0UTT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:19:19 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 88A941EAE3
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:19:17 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E4B51B81B1B
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 20:19:15 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A30EBC385A5;
        Mon, 27 Jun 2022 20:19:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1656361154;
        bh=+oMVcAo3/DJCNjq6cv5dBPqjaPJsplwyRFcbzoAqNag=;
        h=From:To:Cc:In-Reply-To:References:Subject:Date:From;
        b=KNTTObgNBFkHnY1iAE6uBi3tcPzO7S+rsafCt2DVAntrkXz41fv8y8RAEYnB7C0ic
         VadK6HP5QAvr4UDfmAbiuJAX2Xg7foPTazwhmx+xfK8Wp7K4SOveW/QrTHVPRaaTTM
         gATyKYTETbnKBQsvhaEuft0RqWEeDh4FWTGMJWBdGcscP9z3iM/REKpzvrsnhlepjT
         oyqX1S178G1cBVd70pUB8NTmyWLJkxxBGCpamve7N5MZuriDeUf9G+GeJOdeA/CW2K
         /XDiVK15hpmmvAKZwH1mPkoyctGQYFuj5hJpCtey1Z5Yo/KBQ+d7Mj8KdLVes3beMZ
         KfntMVNbUZ4sA==
From:   Mark Brown <broonie@kernel.org>
To:     ryan.lee.analog@gmail.com, daniel@zonque.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
In-Reply-To: <20220624104712.1934484-1-daniel@zonque.org>
References: <20220624104712.1934484-1-daniel@zonque.org>
Subject: Re: (subset) [PATCH 0/8] ASoC: max98396: Some assorted fixes and additions
Message-Id: <165636115333.3997797.6298161546515778991.b4-ty@kernel.org>
Date:   Mon, 27 Jun 2022 21:19:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-7.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Jun 2022 12:47:04 +0200, Daniel Mack wrote:
> This is a series of some patches that I collected while using the
> max98396 driver is a TDM mode setup.
> 
> They correct BSEL and PCM mode configs, add support for power supplies
> and add some bits to the documentation.
> 
> The code is tested in TDM-16 and TDM-8 mode with 32 channel width.
> 
> [...]

Applied to

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Thanks!

[1/8] ASoC: dt-bindings: max98396: add voltage supplies
      (no commit info)
[2/8] ASoC: dt-bindings: max98396: Add #sound-dai-cells
      (no commit info)
[3/8] ASoC: dt-bindings: max98396: Document adi,bypass-slot-no
      (no commit info)
[4/8] ASoC: max98396: add voltage regulators
      (no commit info)
[5/8] ASoC: max98396: Improve some error prints
      (no commit info)
[6/8] ASoC: max98396: Fix register access for PCM format settings
      commit: cf5c888539f353cb10e127d3a8754554cacd293a
[7/8] ASoC: max98396: Implement DSP speaker monitor
      (no commit info)

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

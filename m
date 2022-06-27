Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F26155C207
	for <lists+devicetree@lfdr.de>; Tue, 28 Jun 2022 14:46:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241226AbiF0U0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jun 2022 16:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241209AbiF0U0q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jun 2022 16:26:46 -0400
Received: from mail.bugwerft.de (mail.bugwerft.de [46.23.86.59])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 0C41E1AD94
        for <devicetree@vger.kernel.org>; Mon, 27 Jun 2022 13:26:44 -0700 (PDT)
Received: from [192.168.178.106] (p57bc972b.dip0.t-ipconnect.de [87.188.151.43])
        by mail.bugwerft.de (Postfix) with ESMTPSA id 38719282FDC;
        Mon, 27 Jun 2022 20:26:42 +0000 (UTC)
Message-ID: <b59afe57-7608-f049-c075-1a95d65984c4@zonque.org>
Date:   Mon, 27 Jun 2022 22:26:41 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: (subset) [PATCH 0/8] ASoC: max98396: Some assorted fixes and
 additions
Content-Language: en-US
To:     Mark Brown <broonie@kernel.org>, ryan.lee.analog@gmail.com
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org
References: <20220624104712.1934484-1-daniel@zonque.org>
 <165636115333.3997797.6298161546515778991.b4-ty@kernel.org>
From:   Daniel Mack <daniel@zonque.org>
In-Reply-To: <165636115333.3997797.6298161546515778991.b4-ty@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 6/27/22 22:19, Mark Brown wrote:
> On Fri, 24 Jun 2022 12:47:04 +0200, Daniel Mack wrote:
>> This is a series of some patches that I collected while using the
>> max98396 driver is a TDM mode setup.
>>
>> They correct BSEL and PCM mode configs, add support for power supplies
>> and add some bits to the documentation.
>>
>> The code is tested in TDM-16 and TDM-8 mode with 32 channel width.
>>
>> [...]
> 
> Applied to
> 
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-next

Umm, I was about to send out a new version of this series tomorrow to
address the things you pointed out, and some more detected by the test bots.

Which patches got applied now? I only see "Fix register access for PCM
format settings" in for-next and for-5.19 currently?


Thanks,
Daniel



> Thanks!
> 
> [1/8] ASoC: dt-bindings: max98396: add voltage supplies
>       (no commit info)
> [2/8] ASoC: dt-bindings: max98396: Add #sound-dai-cells
>       (no commit info)
> [3/8] ASoC: dt-bindings: max98396: Document adi,bypass-slot-no
>       (no commit info)
> [4/8] ASoC: max98396: add voltage regulators
>       (no commit info)
> [5/8] ASoC: max98396: Improve some error prints
>       (no commit info)
> [6/8] ASoC: max98396: Fix register access for PCM format settings
>       commit: cf5c888539f353cb10e127d3a8754554cacd293a
> [7/8] ASoC: max98396: Implement DSP speaker monitor
>       (no commit info)
> 
> All being well this means that it will be integrated into the linux-next
> tree (usually sometime in the next 24 hours) and sent to Linus during
> the next merge window (or sooner if it is a bug fix), however if
> problems are discovered then the patch may be dropped or reverted.
> 
> You may get further e-mails resulting from automated or manual testing
> and review of the tree, please engage with people reporting problems and
> send followup patches addressing any issues that are reported if needed.
> 
> If any updates are required or you are submitting further changes they
> should be sent as incremental updates against current git, existing
> patches will not be replaced.
> 
> Please add any relevant lists and maintainers to the CCs when replying
> to this mail.
> 
> Thanks,
> Mark


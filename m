Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 708325F2217
	for <lists+devicetree@lfdr.de>; Sun,  2 Oct 2022 10:35:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229594AbiJBIfp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Oct 2022 04:35:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229699AbiJBIfg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Oct 2022 04:35:36 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33ACE3A16C
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 01:35:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B090360E03
        for <devicetree@vger.kernel.org>; Sun,  2 Oct 2022 08:35:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74EAAC433B5;
        Sun,  2 Oct 2022 08:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1664699733;
        bh=fzEeaCEz4b7Nafq06ViNPP9BBrASb9GdM1dJ0bBxeyg=;
        h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
        b=SIDH0ywsK6X8/liN5r8QYeG6GB/75JrTTnRQD7cGXhKT/xe32Pt2OBlLEU1VgCJcN
         WGb97qmOzPYywXDQNetOp36j9k9rFmldy2cOg8F9AQKipAc5uH5oKqSz7CU3Nt2Yyb
         fAyCd7SqX+7/dTdbRc0oiNufRnzB8iIsYLAr5VTMwvObXHR5vlbTdb4Kz0lRWcqfud
         XDermtnCZoVsCmMqFz3DBeU3VpCe9ZgxOL/ROse1QTXC8oCQ6Zjfg8HYLzweWuk6x7
         wR+NHYofe2ODahCwNzox4IlTkD5yWV/d/eZmmws59gkkxIW1ZoGjG2gJOuYj2XEano
         lckDxOQtcRBjA==
Message-ID: <a5f9ec49-f921-5efa-6721-d23671ec6bc0@kernel.org>
Date:   Sun, 2 Oct 2022 10:35:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] ASoC: wm8961: add support for devicetree
Content-Language: en-US
To:     Doug Brown <doug@schmorgal.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     kbuild-all@lists.01.org, Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org
References: <20221001200039.21049-3-doug@schmorgal.com>
 <202210020642.ts8UPw06-lkp@intel.com>
 <a9a94d2d-5379-7e0b-b27c-cad0f569a773@schmorgal.com>
From:   Krzysztof Kozlowski <krzk@kernel.org>
In-Reply-To: <a9a94d2d-5379-7e0b-b27c-cad0f569a773@schmorgal.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-8.2 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/10/2022 07:04, Doug Brown wrote:
> On 10/1/2022 3:23 PM, kernel test robot wrote:
> 
>>>> sound/soc/codecs/wm8961.c:974:34: warning: 'wm8961_of_match' defined but not used [-Wunused-const-variable=]
>>       974 | static const struct of_device_id wm8961_of_match[] = {
>>           |                                  ^~~~~~~~~~~~~~~
> 
> Oops, nice catch by the kernel test robot. I will submit a V2 patch that

Now I see the report about issue I wrote to you. It's not particular
nice catch of robot... it's visible from the code and easily testable by
yourself. Even without compile test... The code was just not tested for
warnings.

> does this part exactly how the wm8960 driver does it, including
> .of_match_table in wm8961_i2c_driver. Waiting to see if I get any other
> feedback on V1 first.

maybe_unused instead of ifdefs.

Best regards,
Krzysztof


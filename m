Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 24015380C33
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 16:48:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233086AbhENOuJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 10:50:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232971AbhENOuJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 10:50:09 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF91AC06174A
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 07:48:56 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id r12so4684346wrp.1
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 07:48:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=qk8PAC7djaeBU0jQbfU6OXoqZvIZrKqv6YILZJB9cnA=;
        b=SRRFKOjiz8E6BpghVkf4BD/7Hy6Ww6utNWhgkoOjIgDkazwsehD1+1Qnij9JuiFmDN
         R0KQHKVWP284nUW0/NkesvWYQUHODAjQvPyA6G63Kk0af8kvYYNQHlT1x0BMSSdZDXhl
         x0IXQ6jP4nnBXJ66Mv4bBeJ8aJ8Aexe1wJNp//Jc2adK4VbIXI4vK4fe0AJTZJ19nktZ
         p2fDweM7h+0FEvWnplH4FnKSzuV/aLlXyeW+esOWB0bfmXVwNze4qCe0scO5npn7xxR5
         X6mcmCLOFfWh5mxBG2NlA2kTOrsgFu1JItRSKLmPcNY5nZK7QmLIQ4/jXdCvkZOEnhc9
         rYMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=qk8PAC7djaeBU0jQbfU6OXoqZvIZrKqv6YILZJB9cnA=;
        b=d76ULsaCXyBBEdG5DrEsHi+5kIaL8PIa28nMXi4NTCroFkNwvYBiFmjla8dFUBDU+A
         ReLKOKyQIIhuN9eTRUARsPvS+8/3f9AFmpI/4jbpi20wai5wnMZt97LWjq7IprOf16Fd
         C/qyZp6OAJEfgJEBv6oTiGrFDiPBsLUiMsypbF77f0DuhD4JXt+3LsQ1GXysOBMSU8VR
         wAE4Vh/6sLVAeYa8hERrSsuFNRWweRE7Kp4lmHA5oTcJgjYa0pHkk8usOFIsr0PzcfIw
         qZECcFIuEF9cyNlMs6Wb6OjknCbGamq7uOXBagWHBrkEotrog4aCb6tEQe5yPhyKmmge
         FnjQ==
X-Gm-Message-State: AOAM530gG91qFp32wxiNqVI3Jc38o1z5JyWEM4P+RwgzTFnGVhV368Y9
        tFhhJkewUo3EvlmxDW6cXBqakK8/BedOk7QY
X-Google-Smtp-Source: ABdhPJzYQH6oCQ9mAhLNbVN2ZPyuNnylKHjaDnUSi8bBDD6blzpCMfsh/3lCmfcN5vC6DXrQ+dnB1A==
X-Received: by 2002:adf:bc46:: with SMTP id a6mr21290203wrh.232.1621003735286;
        Fri, 14 May 2021 07:48:55 -0700 (PDT)
Received: from [172.20.10.7] ([37.173.48.34])
        by smtp.gmail.com with ESMTPSA id k11sm11599007wmj.1.2021.05.14.07.48.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 May 2021 07:48:54 -0700 (PDT)
Subject: Re: [PATCH v13 0/4] drm/panfrost: Add support for mt8183 GPU
To:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     Nicolas Boichat <drinkcat@chromium.org>,
        Rob Herring <robh@kernel.org>,
        Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        devicetree <devicetree@vger.kernel.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>, fshao@chromium.org,
        David Airlie <airlied@linux.ie>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        dri-devel <dri-devel@lists.freedesktop.org>, hsinyi@chromium.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        hoegsberg@chromium.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
References: <20210421052855.1279713-1-drinkcat@chromium.org>
 <c91746ce-88b6-5612-74a5-74600c7761e8@baylibre.com>
 <CAAEAJfD3i+L4w1NuE5pUkMuH=R3CfBztDn-ZLcYR=onkcZ4Gxg@mail.gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <373d0803-8658-9413-2f51-1e9804c39126@baylibre.com>
Date:   Fri, 14 May 2021 16:48:52 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <CAAEAJfD3i+L4w1NuE5pUkMuH=R3CfBztDn-ZLcYR=onkcZ4Gxg@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/05/2021 16:55, Ezequiel Garcia wrote:
> Hi Neil,
> 
> On Mon, 26 Apr 2021 at 06:59, Neil Armstrong <narmstrong@baylibre.com> wrote:
>>
>> Hi,
>>
>> On 21/04/2021 07:28, Nicolas Boichat wrote:
>>> Hi!
>>>
>>> This is just a rebase of the v11, untested (but it seems like
>>> Neil Armstrong recently tested it), with small changes in
>>> binding and dts. v11 cover follows:
>>>
>>> Follow-up on the v5 [1], things have gotten significantly
>>> better in the last year, thanks to the efforts on Bifrost
>>> support by the Collabora team (and probably others I'm not
>>> aware of).
>>>
>>> I've been testing this series on a MT8183/kukui device, with a
>>> chromeos-5.10 kernel [2], and got basic Chromium OS UI up with
>>> mesa 20.3.2 (lots of artifacts though).
>>>
>>> devfreq is currently not supported, as we'll need:
>>>  - Clock core support for switching the GPU core clock (see 2/4).
>>>  - Platform-specific handling of the 2-regulator (see 3/4).
>>>
>>> Since the latter is easy to detect, patch 3/4 just disables
>>> devfreq if the more than one regulator is specified in the
>>> compatible matching table.
>>>
>>> [1] https://patchwork.kernel.org/project/linux-mediatek/cover/20200306041345.259332-1-drinkcat@chromium.org/
>>> [2] https://crrev.com/c/2608070
>>>
>>> Changes in v13:
>>>  - devfreq: Fix conflict resolution mistake when rebasing, didn't
>>>    even compile. Oops.
>>>
>>> Changes in v12:
>>>  - binding: Fix min/maxItems logic (Rob Herring)
>>>  - Add gpu node to mt8183-pumpkin.dts as well (Neil Armstrong).
>>>
>>> Changes in v11:
>>>  - binding: power-domain-names not power-domainS-names
>>>  - mt8183*.dts: remove incorrect supply-names
>>>
>>> Changes in v10:
>>>  - Fix the binding to make sure sram-supply property can be provided.
>>>
>>> Changes in v9:
>>>  - Explain why devfreq needs to be disabled for GPUs with >1
>>>    regulators.
>>>
>>> Changes in v8:
>>>  - Use DRM_DEV_INFO instead of ERROR
>>>
>>> Changes in v7:
>>>  - Fix GPU ID in commit message
>>>  - Fix GPU ID in commit message
>>>
>>> Changes in v6:
>>>  - Rebased, actually tested with recent mesa driver.
>>>  - Add gpu regulators to kukui dtsi as well.
>>>  - Power domains are now attached to spm, not scpsys
>>>  - Drop R-B.
>>>  - devfreq: New change
>>>  - Context conflicts, reflow the code.
>>>  - Use ARRAY_SIZE for power domains too.
>>>
>>> Changes in v5:
>>>  - Rename "2d" power domain to "core2"
>>>  - Rename "2d" power domain to "core2" (keep R-B again).
>>>  - Change power domain name from 2d to core2.
>>>
>>> Changes in v4:
>>>  - Add power-domain-names description
>>>    (kept Alyssa's reviewed-by as the change is minor)
>>>  - Add power-domain-names to describe the 3 domains.
>>>    (kept Alyssa's reviewed-by as the change is minor)
>>>  - Add power domain names.
>>>
>>> Changes in v3:
>>>  - Match mt8183-mali instead of bifrost, as we require special
>>>    handling for the 2 regulators and 3 power domains.
>>>
>>> Changes in v2:
>>>  - Use sram instead of mali_sram as SRAM supply name.
>>>  - Rename mali@ to gpu@.
>>>
>>> Nicolas Boichat (4):
>>>   dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
>>>   arm64: dts: mt8183: Add node for the Mali GPU
>>>   drm/panfrost: devfreq: Disable devfreq when num_supplies > 1
>>>   drm/panfrost: Add mt8183-mali compatible string
>>>
>>>  .../bindings/gpu/arm,mali-bifrost.yaml        |  30 ++++-
>>>  arch/arm64/boot/dts/mediatek/mt8183-evb.dts   |   5 +
>>>  .../arm64/boot/dts/mediatek/mt8183-kukui.dtsi |   5 +
>>>  .../boot/dts/mediatek/mt8183-pumpkin.dts      |   5 +
>>>  arch/arm64/boot/dts/mediatek/mt8183.dtsi      | 105 ++++++++++++++++++
>>>  drivers/gpu/drm/panfrost/panfrost_devfreq.c   |   9 ++
>>>  drivers/gpu/drm/panfrost/panfrost_drv.c       |  10 ++
>>>  7 files changed, 168 insertions(+), 1 deletion(-)
>>>
>>
>> Seems this version is ready to be applied if we get a review on the DT ?
>>
>> Mathias ? could you have a look ?
>>
> 
> Given Rob has Acked the DT bindings, I think it's OK to apply patches
> 1, 3 and 4 via drm-misc, letting Mediatek people sort out the DT changes.
> 
> My two unsolicited cents :-)

Yeah sure, is there a panfrost maintainer in the room ? I can apply them if you ack me.

Neil

> 
> Ezequiel
> 


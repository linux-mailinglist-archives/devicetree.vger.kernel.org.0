Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FF7838C09E
	for <lists+devicetree@lfdr.de>; Fri, 21 May 2021 09:20:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233764AbhEUHWI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 May 2021 03:22:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230427AbhEUHWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 May 2021 03:22:08 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 39B0DC061574
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:20:45 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id c10so7227731lfm.0
        for <devicetree@vger.kernel.org>; Fri, 21 May 2021 00:20:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=+zvE77Dy0HWtB2vSoTXbuxB8YCpVgcKGtskG63kgZ/I=;
        b=DmRg1m7AJO5S2J/yEvcBPobkiVLITdvgf3stXtBCu257IYOI3v5X+Ikjo0UeG/SaMF
         VuPxH475Sgv1L/esmDvAycnyV/rinsTo0kas0qB9kQFctwGD71QO8Ey1wYDJdD+4e4zq
         1rf4t8P+vOmbkYMp9n0QcCErQNtc5IrPkzZqwCNDHQA34DE+crpozEif2G4vHjc+K3hE
         4zwB0xhHT7U30vQMdT2DdYiZzMoEQbobYCo3k7nXQHHXrjCK0j1HhCLmvhSD3xRKF8q5
         b89JcXlUu1o/5JkuiSjLgCB3zGpDW9JPz6aT82Md7k0qG4cw8G5ChJ2Lhtq5JAxMYs6E
         f82A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=+zvE77Dy0HWtB2vSoTXbuxB8YCpVgcKGtskG63kgZ/I=;
        b=uVQNXmHbMoLj0szcPwFqPS9XHP0Z4Rp6IX/jC2d2tE9XngP90DaId5tNu7qR9d85yv
         GqXxhHhoSn5BWaJ7xSoUciKSsLveclLewDEbYGUfSMjS1h7poBeyOrVWb6BaX3cAwkKw
         CBWJcbwjtYj0YGGFxTPvCpkrhAN55R9qnHI3CPj3scbiuoWVMAXBHRORo2VVb55Pi8DZ
         6e7BGHvRcENyt15Gih2bI+ICCvdosYaR6wJSIJOrP6QjmYAmHj9tAVeCB83MgZHDrIS4
         9ZkrqdWK2KHBesGZYYnrdHxR7QV9KPBo4/kQaatWakusFx+chkP9qHhdUI8yv+GVHwTU
         rRbw==
X-Gm-Message-State: AOAM532852hIJOMz6yKwhMuTTjYj+xvE5veAxo/hVAtFPabpFH6L16WI
        jmFhIV1vvCk5U+bMbqLCSr1bTmjY+h4=
X-Google-Smtp-Source: ABdhPJxt8e9nHxG2b2gEcdzQKkLPrMJC1eUja40SQBlWWnBo7RYF8TF8MQYzwMCEYo/r+YIiniJ+fQ==
X-Received: by 2002:a05:6512:3d1c:: with SMTP id d28mr1229463lfv.21.1621581643432;
        Fri, 21 May 2021 00:20:43 -0700 (PDT)
Received: from localhost.localdomain (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.googlemail.com with ESMTPSA id c10sm540543ljr.85.2021.05.21.00.20.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 May 2021 00:20:43 -0700 (PDT)
Subject: Re: [PATCH V3 robh dt/next] dt-bindings: mfd: add Broadcom CRU
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Vivek Unune <npcomplete13@gmail.com>,
        "maintainer:BROADCOM BCM7XXX ARM ARCHITECTURE" 
        <bcm-kernel-feedback-list@broadcom.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Linus Walleij <linus.walleij@linaro.org>
References: <20210519082049.30976-1-zajec5@gmail.com>
 <20210519184041.563-1-zajec5@gmail.com>
 <CAL_Jsq+zUa-KdCEVJ6qdLeSu6QUGFkTy6O-HC_=_zxFUhfON8Q@mail.gmail.com>
 <20210521071221.GU2549456@dell>
From:   =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Message-ID: <273988f1-7180-572e-f9e2-4218637d0353@gmail.com>
Date:   Fri, 21 May 2021 09:20:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210521071221.GU2549456@dell>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21.05.2021 09:12, Lee Jones wrote:
> On Thu, 20 May 2021, Rob Herring wrote:
> 
>> On Wed, May 19, 2021 at 1:40 PM Rafał Miłecki <zajec5@gmail.com> wrote:
>>>
>>> From: Rafał Miłecki <rafal@milecki.pl>
>>>
>>> CRU is a block used in e.g. Northstar devices. It can be seen in the
>>> bcm5301x.dtsi and this binding documents its proper usage.
>>>
>>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
>>> Reviewed-by: Rob Herring <robh@kernel.org>
>>> ---
>>> Rob: would you take this patch through your dt/next?
>>
>> I can't, I don't have the dependencies. It looks like 08e9fdfbb224 is
>> already upstream. For ac5f8197d15c, I could get a stable branch from
>> Linus, but I can't take some random github branch. Even if I got a
>> stable branch for that, that's a lot of extra work for me for 1 patch
>> compared to waiting til next cycle.
>>
>> My suggestion is get a stable branch/tag from Linus, merge that into
>> the Broadcom branch and then apply this patch. Though really, Linus
>> needed to know the dependency when applying the patch if he doesn't
>> rebase his tree. (I realize the dependency probably happened because
>> of the review).
>>
>>>
>>> V2: Use complete binding & change additionalProperties to false
>>> V3: Use clock-controller@ for clocks
>>>
>>> NOTICE: this patch is based on top of the linux-next as it requires:
>>> ac5f8197d15c ("dt-bindings: pinctrl: convert Broadcom Northstar to the json-schema")
>>> 08e9fdfbb224 ("dt-bindings: thermal: brcm,ns-thermal: Convert to the json-schema")
>>> AND merged git@github.com:Broadcom/stblinux.git devicetree/next as it requires:
>>> 8f711f68cffd ("dt-bindings: clock: brcm, iproc-clocks: convert to the json-schema")
>>>
>>> This is reworked version of the
>>> [PATCH robh next] dt-bindings: bus: add Broadcom CRU
>>> https://patchwork.ozlabs.org/project/devicetree-bindings/patch/20210309142241.16259-1-zajec5@gmail.com/
>>> ---
>>>   .../devicetree/bindings/mfd/brcm,cru.yaml     | 86 +++++++++++++++++++
>>>   1 file changed, 86 insertions(+)
>>>   create mode 100644 Documentation/devicetree/bindings/mfd/brcm,cru.yaml
> 
> What's the dependency here?  It's a new file that doesn't reference anything.

Without dependencies it will cause warnings for those running "dt_binding_check".

I didn't find it critical so I thought Rob can take in on a promise of
what is queued for the next release. It appears Rob has more strict
rules so I'll just have to wait for stuff to land in Linus's tree :)

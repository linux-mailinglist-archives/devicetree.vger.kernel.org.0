Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 70D8969008D
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 07:44:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229504AbjBIGoP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 01:44:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229728AbjBIGoN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 01:44:13 -0500
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4091D2E0E3
        for <devicetree@vger.kernel.org>; Wed,  8 Feb 2023 22:44:12 -0800 (PST)
Received: by mail-ej1-x636.google.com with SMTP id u22so3414271ejj.10
        for <devicetree@vger.kernel.org>; Wed, 08 Feb 2023 22:44:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pl8UfXfXOcA268c1AF2tJc6nqx7sCR8O8aA51K5pIto=;
        b=TVBr3VGjYOGs7MpwFOeDbFUnYqCWQD10w+iWtTaIFp0KVBpPJh0orTL9yUGg0WnzLi
         ++9eGJIVK+WKAGFnyFRC20e5YpZe2VxTWzXALUJvT/gLfU09dFnimP4WIm+7hfitlitu
         pa9b5Fsxn4gMnVsD40FmYyhzpI9lr77yalzAxk5RrW7RkK76bp3FICB960bvISRDonus
         m44ijYqKFXgjidATNCUDoHo0KWlHcZtfiyAG0Oct2UZ1RTSIgLMA7NvEPEZBzuRRGvEy
         VhZrYRLYkuYEYlP5lETsVplpeXYLVrPov9bQv76GP0MrMh8xfpgdGB1qdxBoBQGJ98KA
         HF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pl8UfXfXOcA268c1AF2tJc6nqx7sCR8O8aA51K5pIto=;
        b=tfOYhY54jhtSS9n10HpNHfqwSYgJqscnHyC3Bf5a+aIEawH61P5ojsX1ynKzK/eAk2
         rEDHqCwxaYGmsBod+6c/4pWL24bcX/CFvHAsdRH+AWCmIMg0cjvPskSyadTusvHvbG2d
         XJqXpE919IuGtUUtZuQL1x51UevVdBW93ov1qCQ1pyqVl0M8/pMm48oUopVhCSnGz47D
         bPzXp85YxxUBqH6afQ8GqIC2ttCg0TbQyR5DRK2ljzJ+9iAM76FHJ40yygOLBdgdWPTz
         BDSbj4VEWVjy709NRAWiAjQVSaIBnAOayggv+AO5znQAstN0x1WAn2MDgCRx9K3QuGk1
         oaWg==
X-Gm-Message-State: AO0yUKVSOIjYZOkkkCCX/B/cT5XknIZizMXRSIueHbQ1w8/wm+cwjNQy
        wg0aDZQVWwQ7vNUqI/uzXjo=
X-Google-Smtp-Source: AK7set8hdbPpp6+k2+Ssl4gYlQA1mqAcm/Hp514iOGifcna6ZJbKJxaFzF4g2Jj6qIPWvJ7x8DAyQw==
X-Received: by 2002:a17:906:3155:b0:87b:d597:1fd5 with SMTP id e21-20020a170906315500b0087bd5971fd5mr12219656eje.75.1675925050659;
        Wed, 08 Feb 2023 22:44:10 -0800 (PST)
Received: from ?IPV6:2a01:c23:c4df:e300:e1c2:7c84:c05c:ad3d? (dynamic-2a01-0c23-c4df-e300-e1c2-7c84-c05c-ad3d.c23.pool.telefonica.de. [2a01:c23:c4df:e300:e1c2:7c84:c05c:ad3d])
        by smtp.googlemail.com with ESMTPSA id v16-20020a170906381000b00889a9444e29sm472379ejc.14.2023.02.08.22.44.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Feb 2023 22:44:10 -0800 (PST)
Message-ID: <4dfc29ef-4d88-f899-3f96-fded32f5736f@gmail.com>
Date:   Thu, 9 Feb 2023 07:44:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.2
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
 <61db3f1c-b780-4385-f991-ebb4c3423791@linaro.org>
Content-Language: en-US
From:   Heiner Kallweit <hkallweit1@gmail.com>
In-Reply-To: <61db3f1c-b780-4385-f991-ebb4c3423791@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08.02.2023 13:40, Neil Armstrong wrote:
> Le 27/01/2023 à 14:02, Heiner Kallweit a écrit :
>> On 27.01.2023 08:59, Neil Armstrong wrote:
>>> Hi,
>>>
>>> On 26/01/2023 15:03, Heiner Kallweit wrote:
>>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>>> see [0]. This was confirmed to be fixed by using level-triggered
>>>> interrupts.
>>>> The report was about SDIO. However, as the host controller is the same
>>>> for SD and MMC, apply the change to all mmc controller instances.
>>>
>>> Thanks, I applied it in for-next so it runs on the CI tests.
>>>
>>>>
>>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>>
>>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>>>
>>> I think we should find a better Fixes or perhaps split in 3 so it targets the
>>> right commit adding the nodes for each family.
>>>
>> This would be the cleanest option, right. Practically it shouldn't make
>> much of a difference. The chosen commit is from 2019, SDIO interrupt
>> support has been added just recently, and regarding MMC/SD it seems no
>> problems caused by edge-triggered interrupts are known.
> 
> I understand, but the Fixes tag must reflect what commit introduced the breakage,
> so either keep a single patch but list all commits introducing the MMC, SD & SDIO nodes
> on the 3 families, or split in 3 and specify the commit introducing the MMC, SD & SDIO
> node on each family.
> 
> I'll prefer the later.
> 
> If the patch isn't applicable for older kernels, it doesn't matter as the stable team
> will only apply the fix on a tree if it applies and builds.
> If you target an older release you can submit them a patch reworked to apply
> correctly if the original patch is already only Linus master tree.
> 
Do you need a revert for the current "TEST"-annotated commit in linux-next
as part of the series?

> And don't forget adding the Tested-by tags.
> 
> Thanks,
> Neil
> 
>>
>>> If the test doesn't report any breakage, I'll probably ask you that.
>>>
>> Sure.
>>
>>> Neil
>>>
>> Heiner
>>
> 
Heiner


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 285E568D16D
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 09:22:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229731AbjBGIW4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 03:22:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230027AbjBGIWz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 03:22:55 -0500
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4CA0CA3B
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 00:22:53 -0800 (PST)
Received: by mail-wr1-x432.google.com with SMTP id a2so12432964wrd.6
        for <devicetree@vger.kernel.org>; Tue, 07 Feb 2023 00:22:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=rznDP7uBI+QG6KYVDkvdwqbzoBSSdyzFVHdEMC/qL+s=;
        b=XrpjMr0Dw4av7VtcwsHWujhnmZivRmIkKYDhHR/7GpoEMk6VOLS+v5n+iPETazs/y+
         wiVPRxEEIeX8niUYSXglh7QjYaJ3k7PQXFk0suw9gkSQ3DwGw4Fu5Myt6BZnUsWyME0A
         n0WyqEwyMZZCAh9YvuXTh2g4EQ8UnJww4DDEfdvv12hBTzXTG6ToL8V/wbgIDPWE56pG
         obxV6/QD1TKXHXOjz2lAdPht2yTdwOkDMzxbYzZqUgutyudvFDA/0OkwSmUMvLEGMVih
         5IFIzyOY/6yvXgeCpv64tL5NVxNsG2FjoEgEYFsunQ7EJfY18R/FnpI5Afxq7w6tAssX
         xg7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rznDP7uBI+QG6KYVDkvdwqbzoBSSdyzFVHdEMC/qL+s=;
        b=3JmmJWPnyt1AYAfLaBZ2lChnXbF09qrSx/9oqql+4HLGhBP9OP3gp9MpyiurxvbxlT
         MhV/3Y4OAkauDYlQePvPLewySlz+jqEiNx6UzMqWv7pFEm2dAY75ob80VzIlMt9BhB+6
         bhEWUhbnrZxTaZwekDLZLvz0DCM1QedXyEx5o+OaqYjIxEku9DBJq0HGxNVfhJaJyIdw
         V9vT3xRtCqsEjqK5AwJvEUkDyn+WmdxwaEDiJvhsjUDBDc+1cehbEIevAT+7BoYsMMuc
         OMHLIvuRRj9zBNtxzZxFaL7DnZi5vOFNJ3ChQjxafQVM//nrnDTWdIeiMvmPpfrCHEbr
         uZBg==
X-Gm-Message-State: AO0yUKUC5hmEx1Cqo0DcksXWsOHEvnHA5lS1Z3u1Wl4kPEc1Z2Wvdti5
        r5AgtGQuZKvEqYDDdsxB5lukCQ==
X-Google-Smtp-Source: AK7set/13nHV2KQUuofdwb5s1dtrRayAH/7m7w+qHZtqe0Fmgaktq8+HvHFuHmI6dCONzCX5hAMmwg==
X-Received: by 2002:a5d:4d46:0:b0:2c3:f0ec:68a7 with SMTP id a6-20020a5d4d46000000b002c3f0ec68a7mr1817670wru.30.1675758172501;
        Tue, 07 Feb 2023 00:22:52 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3? ([2a01:e0a:982:cbb0:c58c:fc5c:67d6:e5f3])
        by smtp.gmail.com with ESMTPSA id l11-20020a05600002ab00b002bfb5ebf8cfsm11173916wry.21.2023.02.07.00.22.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Feb 2023 00:22:51 -0800 (PST)
Message-ID: <0bc74947-8522-d924-de21-a1ebb6814364@linaro.org>
Date:   Tue, 7 Feb 2023 09:22:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   neil.armstrong@linaro.org
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
To:     Da Xue <da@lessconfused.com>, Jerome Brunet <jbrunet@baylibre.com>
Cc:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>
References: <d9721029-780e-09f1-0207-72d3897032a4@gmail.com>
 <f06d1676-4fce-846d-d8fe-fa68439b119e@linaro.org>
 <84d40502-fe1a-ef61-e945-9c581557f528@gmail.com>
 <1jedrg6mkl.fsf@starbuckisacylon.baylibre.com>
 <CACdvmAhW-uDUK-iL4HT1PgEnRHrBmNr26Q6M=wBYcpZ8=DF4Tg@mail.gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <CACdvmAhW-uDUK-iL4HT1PgEnRHrBmNr26Q6M=wBYcpZ8=DF4Tg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/02/2023 09:03, Da Xue wrote:
> On Fri, Jan 27, 2023 at 10:10 AM Jerome Brunet <jbrunet@baylibre.com> wrote:
>>
>>
>> On Fri 27 Jan 2023 at 14:02, Heiner Kallweit <hkallweit1@gmail.com> wrote:
>>
>>> On 27.01.2023 08:59, Neil Armstrong wrote:
>>>> Hi,
>>>>
>>>> On 26/01/2023 15:03, Heiner Kallweit wrote:
>>>>> The usage of edge-triggered interrupts lead to lost interrupts under load,
>>>>> see [0]. This was confirmed to be fixed by using level-triggered
>>>>> interrupts.
>>>>> The report was about SDIO. However, as the host controller is the same
>>>>> for SD and MMC, apply the change to all mmc controller instances.
>>>>
>>>> Thanks, I applied it in for-next so it runs on the CI tests.
>>>>
>>>>>
>>>>> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
>>>>>
>>>>> Fixes: 1499218c80c9 ("arm64: dts: move common G12A & G12B modes to meson-g12-common.dtsi")
>>>>
>>>> I think we should find a better Fixes or perhaps split in 3 so it targets the
>>>> right commit adding the nodes for each family.
>>>>
>>> This would be the cleanest option, right. Practically it shouldn't make
>>> much of a difference. The chosen commit is from 2019, SDIO interrupt
>>> support has been added just recently, and regarding MMC/SD it seems no
>>> problems caused by edge-triggered interrupts are known.
>>
>> ... Well, I wonder is this might be linked to instabilities seen with
>> very high speed mode (such as SDR104) and DDR modes. We have seen quite
>> a lot of those over the years. In any case, if it helps stabilize the
>> MMC on amlogic, it would be great if it can be picked up by stable.
> 
> On S905X, I'm still getting SDR104 failures with this change at both
> 208MHz and 150MHz so maybe not completely.
> 
> [    9.071641] mmc1: tuning execution failed: -5
> [    9.579765] mmc1: tuning execution failed: -5
> [    9.761580] mmc1: tuning execution failed: -5
> [    9.871836] mmc1: tuning execution failed: -5

Are these the same before the change ? or did those appear with the change ?

> 
>>
>>>
>>>> If the test doesn't report any breakage, I'll probably ask you that.
>>>>
>>> Sure.
>>>
>>>> Neil
>>>>
>>> Heiner
>>
>>
>> _______________________________________________
>> linux-amlogic mailing list
>> linux-amlogic@lists.infradead.org
>> http://lists.infradead.org/mailman/listinfo/linux-amlogic


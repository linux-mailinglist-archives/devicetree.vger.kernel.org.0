Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B73955B8F54
	for <lists+devicetree@lfdr.de>; Wed, 14 Sep 2022 21:44:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229609AbiINToc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Sep 2022 15:44:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbiINToa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Sep 2022 15:44:30 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 284A2B5C
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 12:44:28 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id e16so27341878wrx.7
        for <devicetree@vger.kernel.org>; Wed, 14 Sep 2022 12:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=YTsYGZzhaRMoDOgNfzuhnR52+qccmbYkM+d60yg4Y1o=;
        b=rc+mHPUzZAS2vaOMbc+ho7YHBG6KDEr4WTDkzwNDL0gxKp6i5o6efQIKDl8MVjCkyp
         SDdCy7XR0H1SXxE22Txl/z622N2tIr7mI4YdTIwEYE9Z1d3CoVS3404Dj1AGaLK4rTHy
         fPXLz/c5SN7bK6yuNa42AWpsuABfsCuMl+aGIsABOLYcy9IVXfGmh9ztlUefWnX81bpG
         xChKHRapSNO/RFnek90S91Lh6nm4jKMBAk812ZPbc8GM60idFsqF63UnRtL4adtHlBjt
         lhKD8sJso61h70U78ySAd/CBrFkIE4KoSTVDd944h70BZbIdFr5BmqrYyEDrCxdWBKtG
         SsZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=YTsYGZzhaRMoDOgNfzuhnR52+qccmbYkM+d60yg4Y1o=;
        b=2a1lAKXT5lb/B1KcaEb4/jj4APDUVdwu83N2nNUYmtYSh387wueWnm0eoJaNGpe5Tq
         qD6OofZSyFnsPwBU5jGUxi/VpVQqBUQlzJMfEJ4mWEgZtG3qkurEQW9S9LF6L2qqqFzf
         XZUtvRJSiQvSqVtkiV7dpJrayae4HPO0zPjz3Hs3KXDcn8Wq1f6xOENty7NUW+YeO8XJ
         V2Tp3aj4WsKrI96rCbQHZCD7FvC7wutAplzPVbOYJO5ubA3me1hwuwkPt/o55Ecq7CE4
         HFMpRuLm4XW1YC8Sr3b4UVNRYSZlRCaddgrb5VMWA6jGSil+LW/lyd9l5nYV7TBZP0/a
         XrtA==
X-Gm-Message-State: ACgBeo0CUQSCV9QnzKHLs+NchXBhndJlMWTqlsxy+aNLlbmZKVI9JmPR
        KCeFGyQWUFRLg/HmqWn4DTyTYQ==
X-Google-Smtp-Source: AA6agR7EL+x8pNTKbWUf5+XEsJ9MrMWoqCeAkvA4m6JWQ59HbDf/+G5IzKtN54Lh5GYaFanSNTBEGA==
X-Received: by 2002:a05:6000:1866:b0:228:e373:ad68 with SMTP id d6-20020a056000186600b00228e373ad68mr21165175wri.605.1663184666639;
        Wed, 14 Sep 2022 12:44:26 -0700 (PDT)
Received: from [192.168.0.20] (210.145.15.109.rev.sfr.net. [109.15.145.210])
        by smtp.gmail.com with ESMTPSA id bi6-20020a05600c3d8600b003b339438733sm53756wmb.19.2022.09.14.12.44.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Sep 2022 12:44:25 -0700 (PDT)
Message-ID: <6e9c94e7-3f0b-83bd-b419-db6c002f7d98@baylibre.com>
Date:   Wed, 14 Sep 2022 21:44:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] arm64: dts: mediatek: mt8183: remove thermal zones
 without trips.
Content-Language: en-US
To:     Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220914131339.18348-1-aouledameur@baylibre.com>
 <a8af4c54-12a2-a314-f190-f12859ef4ddd@gmail.com>
From:   Amjad Ouled-Ameur <aouledameur@baylibre.com>
In-Reply-To: <a8af4c54-12a2-a314-f190-f12859ef4ddd@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Matthias,

Thank you for your review.

On 9/14/22 16:15, Matthias Brugger wrote:
>
>
> On 14/09/2022 15:13, Amjad Ouled-Ameur wrote:
>> Thermal zones without trip point are not registered by thermal core.
>>
>> tzts1 ~ tzts6 zones of mt8183 were intially introduced for test-purpose
>> only but are not supposed to remain on DT.
>>
>> Remove the zones above and keep only cpu_thermal.
>>
>
> My understanding is that this thermal zones exist but are not used. 
> DTS should describe the HW as it is, so I propose to add
> status = "disabled";
> to the zones.
>
Correct, they are unused unless for testing purposes. Thus, your 
suggestion of disabling them seems more relevant

than removal.


Regards,

Amjad

> Regards,
> Matthias
>
>> Signed-off-by: Amjad Ouled-Ameur <aouledameur@baylibre.com>
>> ---
>>   arch/arm64/boot/dts/mediatek/mt8183.dtsi | 57 ------------------------
>>   1 file changed, 57 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/mediatek/mt8183.dtsi 
>> b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> index 9d32871973a2..f65fae8939de 100644
>> --- a/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> +++ b/arch/arm64/boot/dts/mediatek/mt8183.dtsi
>> @@ -1182,63 +1182,6 @@ THERMAL_NO_LIMIT
>>                       };
>>                   };
>>               };
>> -
>> -            /* The tzts1 ~ tzts6 don't need to polling */
>> -            /* The tzts1 ~ tzts6 don't need to thermal throttle */
>> -
>> -            tzts1: tzts1 {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 1>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>> -
>> -            tzts2: tzts2 {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 2>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>> -
>> -            tzts3: tzts3 {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 3>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>> -
>> -            tzts4: tzts4 {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 4>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>> -
>> -            tzts5: tzts5 {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 5>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>> -
>> -            tztsABB: tztsABB {
>> -                polling-delay-passive = <0>;
>> -                polling-delay = <0>;
>> -                thermal-sensors = <&thermal 6>;
>> -                sustainable-power = <5000>;
>> -                trips {};
>> -                cooling-maps {};
>> -            };
>>           };
>>             pwm0: pwm@1100e000 {

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAF8B6F90C6
	for <lists+devicetree@lfdr.de>; Sat,  6 May 2023 11:04:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231616AbjEFJEB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 May 2023 05:04:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231443AbjEFJEA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 May 2023 05:04:00 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48164EE0
        for <devicetree@vger.kernel.org>; Sat,  6 May 2023 02:03:51 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4efd6e26585so3041306e87.1
        for <devicetree@vger.kernel.org>; Sat, 06 May 2023 02:03:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683363830; x=1685955830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SdVNb9Mn581l8lgASjfW3rki8vUOXzSPLGbYRZ2k+z0=;
        b=cK8dtzvU8R42XfG8GQqIl6uPRxpjRk/CWexR6Ea7VDCnuKJ9TVcuABB18JH+gS9fjn
         /Qo4gRPlawkMfRBbVprLtt7kiVvOcrdTTMiu38CQY4ur5teDSHO8Rx7uaxKgCpdru6BN
         dbww/b+wdDhL/zoEKKoVJ/KZAspG7IDPtT8976R90ISEggs8Eg4BNvsZzZhmT7Z2TwsN
         ly6jBsB0nNFygAfWc3FqyR4hLUzHaaiPLkADkyW5TrpMpUoxss82H2CfXb+71boGJaDj
         EEPofInHuvMKcBk0yqQy8QFobjXzcgYmj6TZi/Ruy2wyUBN914IoP+PGutV6OFN1a+8q
         C1wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683363830; x=1685955830;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SdVNb9Mn581l8lgASjfW3rki8vUOXzSPLGbYRZ2k+z0=;
        b=IZLSTiVFoBPp/KClD/q1FfQt/i78bbXTZ30Cse3yfzvmcZvwB5qJ8S1e0HiW5iw9PT
         Eugg65sqM2b4v65+p7PhOo4HeHh1iJrNRDWqfianD9+5yV3Pzo4WptLtKCkuznmrKXfm
         1iqAkqMcUvCUMD2nDWwPU57QG8kzIv0WWGJBEUt3qfH9UBCvMajB9am3akCapE52M1PY
         Fk24P+Au+sOzxLjQ35LMqQpYqkWTSd+LzP1E+URTEU+4h9N+b+o8sY6RhGb6a7pSYot5
         Cy+F7/41Cj+hQF2+pztmJdX96E7Dx8Ktn3mWZ9R78BLXmCDmm4GgvWAlxyUNgypsn/jg
         WDvg==
X-Gm-Message-State: AC+VfDz9my6WmJeIx3NrN6g/1tbcJzkQwERSQhg8JzeixjyZtIkAEACM
        z3AYqWBARAVYyKJftNhmTeyZzw==
X-Google-Smtp-Source: ACHHUZ5/9stiAnwRBqLEXpr5GKHp8S43F39twqWRZH3/EqfgoK4aqKgC84D0L794DGLoJRZfGKrS7A==
X-Received: by 2002:a19:7512:0:b0:4eb:3fb2:c56d with SMTP id y18-20020a197512000000b004eb3fb2c56dmr1102078lfe.12.1683363830116;
        Sat, 06 May 2023 02:03:50 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id o15-20020a05651238af00b004eff1163c37sm581352lft.308.2023.05.06.02.03.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 06 May 2023 02:03:49 -0700 (PDT)
Message-ID: <9e48a247-1f2c-795d-3991-f820cf66ee05@linaro.org>
Date:   Sat, 6 May 2023 11:03:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: Add Fxtec Pro1X (QX1050) DTS
To:     Dang Huynh <danct12@riseup.net>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230505-fxtec-pro1x-support-v2-0-0ea2378ba9ae@riseup.net>
 <20230505-fxtec-pro1x-support-v2-1-0ea2378ba9ae@riseup.net>
 <abae55ef-172b-036f-40a9-b27c38e850ec@linaro.org>
 <7894772.GXAFRqVoOG@melttower>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <7894772.GXAFRqVoOG@melttower>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6.05.2023 03:42, Dang Huynh wrote:
>>> +	qcom,board-id = <34 0>;
>>
>> Does the bootloader refuse to boot without these? Some newer
>> ones don't need it.
>>
>> In case they are compulsory, you'll have to add the pro1x to the
>> relevant allOf:if:then: block in bindings.
>>
> Tested, nope.
> 
>>> +&usb_dwc3 {
>>> +	maximum-speed = "high-speed";
>>
>> Do you know whether the phone supports usb3? Usually if that's
>> the case, you will get usb3 in fastboot.
>>
>> You'll need an actual usb3 cable to check that though, many claim
>> that but then don't have the necessary wires connected.
> I asked around, they said yes but without anything to test on hand, I'm not 
> sure.
> 
> Should I remove it or something?
No, you may get weird behavior. Keep it high-speed for now.

Konrad
> 
> Other than that, I've fixed the other issues with the series.
> 
> Best regards,
> Dang
> 
> 

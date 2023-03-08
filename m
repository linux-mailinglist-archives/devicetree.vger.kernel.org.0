Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA3206B04A6
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 11:37:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229611AbjCHKhI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 05:37:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229903AbjCHKhB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 05:37:01 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA2D020064
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 02:36:38 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id o12so63723716edb.9
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 02:36:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678271791;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VG+RlrvK7dZWuzlwZ1EYIzr+/GC/6ow/DPfTqBZGod4=;
        b=LEii19fZHdyPtUtrIbxlgmS8ZY8i5KnQZi6X3CkZvve17XFtkFB1QTXGNSLxzX/YSV
         Eql3hZ5/oMgUfyTQtsgiWcTKuQ22bwtycmZSddNcGS+Pz84h+SjX06d8ZRaAyoypdiEF
         kZwTsrAv2Y6Uiu2tSqwjdKWNMraWGE40vSv67fl/aAPZFrmC1M0aaHIDNX92fi0PzonY
         LwQMz4y+MjUhTedroJ9LgFj0+5thiYgrgVxNNxP4zB5abDy3p6asS6E3eYkbMbZqrNxp
         9+38WdnNKm02t1i5vnATS0FBgPxHtc104iqJLuWbpJRugxNrjnVdwBF0fz9NI97X+eac
         VJNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678271791;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VG+RlrvK7dZWuzlwZ1EYIzr+/GC/6ow/DPfTqBZGod4=;
        b=z9xxHJCBvOSLk7ZiH2Vin2ot2TOx/N1PKdK3t+LFDVHUSTejA48ZI7VDAG1zyIMYJC
         dBKIKHrmh9pGuO1sWrzMvse4uxjTUjjaep80qL7MzDhvgQ2KtG2KaItDMvvgOC/Wb1qB
         t1Tqwwv0zTf7kYxfdtrCx/iIDaJWGDi8ujw/pnnqaCpc/nNYIH1sKWLJyt+wFumvKjmG
         0w0XIOxenNm85VgjnPzEfrGOtY5bW1u6CMKALVMfyWJgSu4XetVfFAIgvNwP2MjNsNZE
         I60R28jFM1kbn0Xrz2XuqhYYpQBqZt95rqs5ntE2q0N2lsr8IID/9T/v8c8MB9MSVAQr
         1NIg==
X-Gm-Message-State: AO0yUKX1aEMz2nAmXoo/QBzNr/SrIpSJHgiMrrp6SsrcSZIMlEsU9Ink
        HevRVuDt0foIFdonSGyrX1hCfA==
X-Google-Smtp-Source: AK7set+XBkFvOC4Zw1V00sJcba/mjbhIsdM76P8x5GoJIkuLsllH0XcGs1KzVG/UTXiT1PAi0vj+XQ==
X-Received: by 2002:a17:906:bc57:b0:874:e17e:2526 with SMTP id s23-20020a170906bc5700b00874e17e2526mr16260378ejv.72.1678271790829;
        Wed, 08 Mar 2023 02:36:30 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id ga2-20020a170906b84200b00882f9130eafsm7253599ejb.26.2023.03.08.02.36.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 02:36:30 -0800 (PST)
Message-ID: <52f951e6-1b14-1a47-0a62-4203978be024@linaro.org>
Date:   Wed, 8 Mar 2023 11:36:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/2] dt-bindings: hwmon: ina2xx: add supply property
Content-Language: en-US
To:     Svyatoslav Ryhel <clamor95@gmail.com>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230308094024.14115-1-clamor95@gmail.com>
 <20230308094024.14115-2-clamor95@gmail.com>
 <559c2588-e586-b4fb-97f8-5fe25bb79607@linaro.org>
 <CAPVz0n38LtyAqBP4GfC003xzaW78FaZ91zjdTNe46ormL5RY=Q@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAPVz0n38LtyAqBP4GfC003xzaW78FaZ91zjdTNe46ormL5RY=Q@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2023 11:32, Svyatoslav Ryhel wrote:
> ср, 8 бер. 2023 р. о 12:27 Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> пише:
>>
>> On 08/03/2023 10:40, Svyatoslav Ryhel wrote:
>>> Add supply property.
>>
>> You have entire commit msg to explain and give background, but instead
>> there is just sentence duplicating subject. And since you did not
>> explain anything, we have questions... like: INA238 does not have VDD,
>> so this does not look correct.
>>
> 
> This is why a regulator is not mandatory. If ina238 does not have vdd
> then one who needs ina238 may omit this prop. How about looking from
> this perspective?

Not required means "optional", not "not existing" or "totally invalid".

Best regards,
Krzysztof


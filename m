Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 59ABE6656C0
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 10:02:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235923AbjAKJCE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 04:02:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37140 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236347AbjAKJBg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 04:01:36 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8E572AF2
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 01:01:33 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id t5so9917964wrq.1
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 01:01:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5dS4qSGPO4yWj3Z7ypjjNw9DSVSZ6wqYQv517RYDUB0=;
        b=n5BurDpXx9LyDRhtDh7RodixUsJCHu/2mhpSLe2kUqULLQ7mUrOQnQQR8Z9PrVGo9l
         HPMyICLFSJ5lCzzFfZmuFcPesKpu0x2hiAvnqH4T/kBM66VMNZjAHAdGFDM5jKb+XcyT
         xx13Waufgv0Qh63BxHOLRQQ1nw/TIGB1xvVKZKaDHvotfwlIKH1UReTKsfBYZukDp0nL
         5qbKMsjBzFl53IRflySuf+ibZao84wtlHuxGUtZYInpGp3PjlSqardfuQRuNzBzljvFt
         NRo+NGLyP/8+r3UKvQpHSJVw0KRBVF/+NKx7HVD5STwUAwQTd49IAyaZNueFA8rVIlVD
         Q4bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5dS4qSGPO4yWj3Z7ypjjNw9DSVSZ6wqYQv517RYDUB0=;
        b=Iamt3XsYeWrnxzGe0h2U01hpetqnQce7+pbuscA3UbB4MFzdS4FEsy+Z2ZSt5N+vPn
         MuWj/bgOEH5UseSuZlk8wki0LDxdVAFMsrF1WpP7PwOOrAqEdxhHJmvC7/xMobG53qJ2
         JWEiGvt18F5BgJelddZMj35/grpPm+ygYa64oOo697+1mr/qMwvuEcnKEQYuE/aDe6AI
         GmbctCe5zdBCc4K/Hkt6S6jhUglpESC8LuXf4f69UjCVNVE0TV0wtUZGElGNWfBW47bt
         WJp4broknuIdbqxCAzPJC6kQD21BJLIa0p5siFw40p79Akik4oEQBneJQsRHYAfb0M7R
         PfWw==
X-Gm-Message-State: AFqh2krgEe2uV5viw4KII1XaOIem80cjEbdCmlgjh1/DEfwxAuzXJ3mg
        jdrLGycHjJvx78cuniSnt/uYgQ==
X-Google-Smtp-Source: AMrXdXusjjYpff7QjkOkpQLGe27pWd7X9osDxphpKgaL9qZCk2vmA4lVPVSsY1v8CHFEqWJZNIzoow==
X-Received: by 2002:a05:6000:501:b0:26b:8177:a5e6 with SMTP id a1-20020a056000050100b0026b8177a5e6mr42641359wrf.51.1673427692152;
        Wed, 11 Jan 2023 01:01:32 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id w8-20020adf8bc8000000b002bdc39849d1sm907887wra.44.2023.01.11.01.01.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 01:01:31 -0800 (PST)
Message-ID: <11709c16-d9c1-f7f4-eb39-f1b210144044@linaro.org>
Date:   Wed, 11 Jan 2023 10:01:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 02/16] dt-bindings: spi: Add bcmbca-hsspi controller
 support
Content-Language: en-US
To:     William Zhang <william.zhang@broadcom.com>,
        Linux SPI List <linux-spi@vger.kernel.org>,
        Broadcom Kernel List <bcm-kernel-feedback-list@broadcom.com>
Cc:     anand.gore@broadcom.com, tomer.yacoby@broadcom.com,
        dan.beygelman@broadcom.com, joel.peshkin@broadcom.com,
        f.fainelli@gmail.com, jonas.gorski@gmail.com,
        kursad.oney@broadcom.com, dregan@mail.com,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230106200809.330769-1-william.zhang@broadcom.com>
 <20230106200809.330769-3-william.zhang@broadcom.com>
 <b529a53b-d00c-063d-a58d-e64b0300605d@linaro.org>
 <5dfac2d7-3b4b-9ded-0dde-26b289c604d0@broadcom.com>
 <99b01e96-3b96-6692-c5e1-87db49295e6d@linaro.org>
 <49925933-aacc-4f0d-a1ca-e1bd45b05eee@broadcom.com>
 <b246a81f-e465-5e52-f0ce-65e0a82fc3e1@linaro.org>
 <0194391a-6aef-3a7d-0037-1f87e12a6b6e@broadcom.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <0194391a-6aef-3a7d-0037-1f87e12a6b6e@broadcom.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/01/2023 01:59, William Zhang wrote:
>>>> You need to add constraints for reg-names, same way as for reg.
>>>> Disallowing the reg-names also could work, but there won't be benefit in
>>>> it. Better to have uniform DTS.
>>>>
>>> I agree it is better to have the uniform DTS but the situation here is
>>> that the brcm,bcm6328-hsspi does not require reg name since there is
>>> only one register needed and it was already used in many chip dts for
>>> long time.  If I enforce it to have the corresponding reg name, that
>>
>> No one told you to enforce to have a reg-names.
>>
>>> could potentially break the compatibility of those old device if the
>>> driver change to use reg name, right?
>>
>> How compatibility is broken by some optional, unrelated property?
>>
> I think I misunderstand what you said.  You basically want the reg-name 
> minItem/maxItem constraints for brcm,bcm6328-hsspi compatible as well so 
> it is consistent for all the compatibles?

Yes.

Best regards,
Krzysztof


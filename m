Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B04A06B083D
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 14:16:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231134AbjCHNQm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 08:16:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230403AbjCHNQX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 08:16:23 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F8C352F79
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 05:13:12 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id j11so45996470edq.4
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 05:13:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678281187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zl9a5YR7z/ZneHIO81SBz6TtTLPvQqQTr5PQNn8diCw=;
        b=AMcs3U9Rn+VjKT/+tfC2gO2HfbUv00+q8Q0mRyu15tA3Kax6sEgLnVNCQxt2MWjO/5
         Y2jM2xxvYZImWuqTU+MOlvnqFucZ8nQmQz+HHdGploejQQwF3SOTNkjviLHop4/OilaD
         cbx/hwJBhWq4en7HSM8AhQ3Q2pCtBvpIVV6ush5FEhsWRZ9y2sIPn1jSWSjJwG/KCvfd
         ZAu+UsevLhjXiyl8f02+v9q6v95BqQBbu7er6g0+5dZ9d5uC9AYfv3D9kTUz7P4rlnuO
         ztpljTFmqBvRaE9VyYCw4D/HNtasNeVAHhWzE/xdSbSK4hmgumaF1hFz2EHgKpdhIrHX
         KfBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678281187;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zl9a5YR7z/ZneHIO81SBz6TtTLPvQqQTr5PQNn8diCw=;
        b=DrmteLlpGDE0iPkP5nm94MmJDiQqVrZQhqevkwcG5FkcqYoA8DJLBtPmmu+4Ty03dg
         YZFeUkKiNo7javsvlAFVQWScK5Ji5HX0zcblWzmt59Gy4GU98J+MRMq5/LmD6xM2VrGr
         3Kaq2mOhyfpt/E2H2f/8ZZWVfWGwByZk5CKjI8QUG9XV6xORc4iIOJ46kDrJLHiUJ9MG
         Y0Q8SXCOyNyDweTgYyEuZU2Zew3xr4GuUbLDabZze74od3LdMm61d7MPxzto3apjjs27
         l43AEHZP7oe3EXIKlX43TRvBkkfQ3rSxW97I1Ky+zMGB9lrnpZgrKAQCr+SS0v43lzfB
         RakQ==
X-Gm-Message-State: AO0yUKWm17zHqi863BfUoX5Ou6Ms1rNzmgeWV21o/ZZHI8OOzsuDei5V
        VhAdRJpKnlXhdTbdFJ15fl/a3A==
X-Google-Smtp-Source: AK7set/5FpmW/1zhzgWVHzPGlyvoqKpijeBE+DbwesSw/NeBoeQ1LYdVkaGS4aciyPpa+VK4WO4Y8Q==
X-Received: by 2002:a17:906:7395:b0:8e4:96c4:8a4 with SMTP id f21-20020a170906739500b008e496c408a4mr17505111ejl.62.1678281187589;
        Wed, 08 Mar 2023 05:13:07 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:ff33:9b14:bdd2:a3da? ([2a02:810d:15c0:828:ff33:9b14:bdd2:a3da])
        by smtp.gmail.com with ESMTPSA id w21-20020a1709064a1500b008cce6c5da29sm7440904eju.70.2023.03.08.05.13.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 05:13:07 -0800 (PST)
Message-ID: <bfb859da-ea8e-50a1-81b0-7f84a55e930f@linaro.org>
Date:   Wed, 8 Mar 2023 14:13:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/2] dt-bindings: hwmon: ina2xx: add supply property
Content-Language: en-US
To:     Svyatoslav Ryhel <clamor95@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230308094024.14115-1-clamor95@gmail.com>
 <20230308094024.14115-2-clamor95@gmail.com>
 <31ca0ede-012c-4849-bf25-d0492b116681@sirena.org.uk>
 <6DBD0F5A-4625-4FCD-8D64-23293D734A82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <6DBD0F5A-4625-4FCD-8D64-23293D734A82@gmail.com>
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

On 08/03/2023 13:58, Svyatoslav Ryhel wrote:
> 
> 
> 8 березня 2023 р. 14:54:34 GMT+02:00, Mark Brown <broonie@kernel.org> написав(-ла):
>> On Wed, Mar 08, 2023 at 11:40:23AM +0200, Svyatoslav Ryhel wrote:
>>> Add supply property.
>>
>>> +  vdd-supply: true
>>> +
>>>  required:
>>>    - compatible
>>>    - reg
>>
>> Unless the device can work without power the supply should be required.
> 
> Device can work without supply defined on most devices,

Are you sure they can work without any power? INA231 does not say VS
supply is optional. Datasheet says:
"The INA231 is typically powered by a separate supply that can range
from 2.7 V to 5.5 V."

Although it uses word "typically" which could suggest other design, but
are you sure it can work without it? From where it gets the power?


>  but in my case power is gated with gpio and devices will not work
without fixed regulator.

BTW, wrap your lines to match mailing list style.

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BE18D54CFA9
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 19:24:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344717AbiFORYA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 13:24:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346434AbiFORX6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 13:23:58 -0400
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com [IPv6:2607:f8b0:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00CB7377DC
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 10:23:57 -0700 (PDT)
Received: by mail-pf1-x431.google.com with SMTP id u37so3620386pfg.3
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 10:23:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=uQzT9M+wirjRWTALR/Ctil1z3dCrk4kc07t01L80RXo=;
        b=J/mzUAtY7HFHAhHvR2gggx1KG7QYBDhZ3DOnNXM2JXfomAjEJ78beMxayCw4L0L+ZL
         SotETEomqUpouk7DAFyVhRC7qld5i8nY6Pc3+0nhoNyDrmbNkzUOs5428wvxkUIgw8LJ
         RahTG2ALvpAz+6/pv3QnvEmhR9tvVlPkYI6eCwAIW2DioCeexX1R3vM2alzUnWBKam1x
         In2q6a40Y/HlgQWnFDKtt6P06VQfgzcIYvM+Jdn1H6TNsaTG/gZtzXpIc/4ueyN+rZwg
         y3WRr191VTkvzCBKZvoYqWRpzvdC/SiBjz4FLa0tiDwyBVmIaWIuy/nbkWAashS34k/i
         Em2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=uQzT9M+wirjRWTALR/Ctil1z3dCrk4kc07t01L80RXo=;
        b=kfNaDsP0lRc7DH0qA6dL6rM2ZZvbEnrm4ApVWN0EdxGXV/pu3rEUF84TOS7VyftNFu
         m6GR3nlBDK5OsOIvyuDp4t16EN+KHvO4pUmKALuiWBdHiUL8kjjIgTbQp1pzI0+pqufq
         H4Pbyn7Bs6yj4v9nkNlYE4PeE4ogYyzzjqEsMQw6yx4DcSQNGU2QW1ejpA5okgiRalWo
         imZKgh0rWrxp1cm95Adr6FJ9mue6Yp4SIxIQ7981LsfgHh4+sweJPIBgwNCNSeAeybf3
         PhcExQ8qm9p0JkfTvebl/FBkOn4beuRQGxmtuu9gjbGIft94G+NqTjBwidhCFb7Mj7n4
         AJzA==
X-Gm-Message-State: AJIora/lJn3VlgtsfKYFQl9UwKUIAJwziaCM6UgSP9sar1CMXVwmIqeX
        Rjcqxu5Q4ZJdBeR0D4Sz1pz5Mg==
X-Google-Smtp-Source: AGRyM1u8esQ1tilHUI1WkY7e3mLOm1U8h0S3L/MsXoduHlEGJA3frw9eZXYydBPsK1xgTQa7XC9MAg==
X-Received: by 2002:a05:6a00:9a2:b0:505:974f:9fd6 with SMTP id u34-20020a056a0009a200b00505974f9fd6mr559898pfg.12.1655313836466;
        Wed, 15 Jun 2022 10:23:56 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id x52-20020a056a000bf400b0050dc762817esm10169267pfu.88.2022.06.15.10.23.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Jun 2022 10:23:56 -0700 (PDT)
Message-ID: <450937fd-8067-21c3-344e-18769257ee10@linaro.org>
Date:   Wed, 15 Jun 2022 10:23:55 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 1/3] dt-bindings: adc-joystick: add
 adc-joystick,no-hardware-trigger
Content-Language: en-US
To:     Artur Rojek <contact@artur-rojek.eu>,
        Chris Morgan <macroalpha82@gmail.com>
Cc:     linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        dmitry.torokhov@gmail.com, Chris Morgan <macromorgan@hotmail.com>
References: <20220613192353.696-1-macroalpha82@gmail.com>
 <20220613192353.696-2-macroalpha82@gmail.com>
 <a1deee0f1c8293b41f47ce2c6e988fd4@artur-rojek.eu>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <a1deee0f1c8293b41f47ce2c6e988fd4@artur-rojek.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2022 18:50, Artur Rojek wrote:
> On 2022-06-13 21:23, Chris Morgan wrote:
>> From: Chris Morgan <macromorgan@hotmail.com>
>>
>> Add documentation for adc-joystick,no-hardware-trigger. New device-tree
>> properties have been added.
>>
>> - adc-joystick,no-hardware-trigger: A boolean value noting the joystick
>> 				    device should be polled rather than
>> 				    use a triggered buffer.
>>
>> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
>> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
>> ---
>>  .../devicetree/bindings/input/adc-joystick.yaml          | 9 ++++++++-
>>  1 file changed, 8 insertions(+), 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/input/adc-joystick.yaml
>> b/Documentation/devicetree/bindings/input/adc-joystick.yaml
>> index 2ee04e03bc22..627cc6c40191 100644
>> --- a/Documentation/devicetree/bindings/input/adc-joystick.yaml
>> +++ b/Documentation/devicetree/bindings/input/adc-joystick.yaml
>> @@ -12,12 +12,19 @@ maintainers:
>>
>>  description: >
>>    Bindings for joystick devices connected to ADC controllers 
>> supporting
>> -  the Industrial I/O subsystem.
>> +  the Industrial I/O subsystem. Supports both polled devices where no
>> +  iio trigger is available and non-polled devices which are triggered
>> +  by iio.
>>
>>  properties:
>>    compatible:
>>      const: adc-joystick
>>
>> +  adc-joystick,no-hardware-trigger:
> I'm against using Device Tree for this functionality. See my reply to 
> patch 2/3 for details.

I am surprised to see v3 after that comment...

> But in case we do end up going DT way, I would much prefer going with 
> Rob's suggestion of using the existing `poll-interval` input property.

+1 here as well, if above does not work.


Best regards,
Krzysztof

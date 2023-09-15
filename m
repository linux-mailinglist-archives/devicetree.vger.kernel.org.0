Return-Path: <devicetree+bounces-361-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EE617A1671
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 08:51:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3DBFB1C20944
	for <lists+devicetree@lfdr.de>; Fri, 15 Sep 2023 06:51:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A3F6F63C1;
	Fri, 15 Sep 2023 06:51:05 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED8B53FC7
	for <devicetree@vger.kernel.org>; Fri, 15 Sep 2023 06:51:03 +0000 (UTC)
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB0E62701
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:51:01 -0700 (PDT)
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-401b393ddd2so20542625e9.0
        for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 23:51:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694760660; x=1695365460; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=E+yPchd1OF14YEx7hFDIQf6gB7Zd0Tpalu5rQeIxJmg=;
        b=p1W+rftkN7pyqeh6UUjd26aMZUgtFNHsxZemI8zQkJq+1heReN9LHUbhAXooHRyNfO
         yy9ndz0Nv2kJdKOxOyepZkXu6RA08LIFNba7eeCUyNitDJVdkj7en/49ufdAR8ooF2hP
         G9qGyUwl1wtXc6yi4cmdKTUwZZLuHGa9YK865q06eP2AaiFf4sumNDchDZsywatfjeIH
         P1V9bM9lF8rUQifoVuX83vpPnyX0Q/8wmUsKHDxAv/7W5Nqxp2RTbzhc+kDW6wM9SOga
         flEzW/VES0aah+9b2JVc6Cv/hx+JrlY5rd0vV8K48OvCmoy3KacQxM0wzwv8qTs24vob
         dg/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694760660; x=1695365460;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=E+yPchd1OF14YEx7hFDIQf6gB7Zd0Tpalu5rQeIxJmg=;
        b=nPMfj71nht24wi8auv3++ykQlLsF8tx1VcY0u88n3IzpgFUD4hKagScnA16jJlY+Nm
         KDNJmIWXVD2N29IuSwd8CNW25e35cnFjyO82TNeA0E1Ac/N6oeEo+luKePkpEUdcCQst
         2D7T/2FoqzBkzwN/S5Kc0VKBEMh2j/FMM09w4ka2T4xwwkeFvyJYb8+tUA1c0+KVVjJw
         AvLx51OP6gieKIzkEIMyz5BUJi5XwWqBR//67TrEFzbCv4+997p63h2yjwQJ62VTwZHt
         29MoVc6HYBtqU5VKqYws9WFGI2h57kSxI6X9Sdt+4H0MI36aeWYWBZjm86moy2FTbqOS
         DaDA==
X-Gm-Message-State: AOJu0YwQ+YuPgbdSZWPEuTG1j+/7BqRA+wZZKPbIykIOKMXGldTNju4j
	UN64FCYbQulrDA57DavVExOxO4GGnb6R3JKJhjs=
X-Google-Smtp-Source: AGHT+IH/8g+avoYqVMdv6S+pJjql4rz2e+Urfb+s7H/AE/YkelrHE8ZK2/YVDITmpvOiEWInE9tw1Q==
X-Received: by 2002:a05:600c:ac8:b0:402:f54d:745 with SMTP id c8-20020a05600c0ac800b00402f54d0745mr778159wmr.17.1694760660045;
        Thu, 14 Sep 2023 23:51:00 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id h16-20020a5d5490000000b0031773a8e5c4sm3559298wrv.37.2023.09.14.23.50.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Sep 2023 23:50:59 -0700 (PDT)
Message-ID: <6438f3ad-23ff-0392-e549-d64ef499d739@linaro.org>
Date: Fri, 15 Sep 2023 08:50:57 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 3/4] dt-bindings: serial: document esp32s3-acm bindings
To: Max Filippov <jcmvbkbc@gmail.com>
Cc: linux-kernel@vger.kernel.org, linux-serial@vger.kernel.org,
 devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Jiri Slaby <jirislaby@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
References: <20230913211449.668796-1-jcmvbkbc@gmail.com>
 <20230913211449.668796-4-jcmvbkbc@gmail.com>
 <196fb9ac-53b7-51a6-6ce4-9f980215fde4@linaro.org>
 <CAMo8Bf+u3hkk8zW6EQUtQcAC5t-hUJ5+HoE8JDskBj4KyFK7xA@mail.gmail.com>
Content-Language: en-US
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAMo8Bf+u3hkk8zW6EQUtQcAC5t-hUJ5+HoE8JDskBj4KyFK7xA@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 14/09/2023 22:47, Max Filippov wrote:
> On Wed, Sep 13, 2023 at 10:57 PM Krzysztof Kozlowski
> <krzysztof.kozlowski@linaro.org> wrote:
>>
>> On 13/09/2023 23:14, Max Filippov wrote:
>>> Add documentation for the ESP32S3 ACM controller.
>>
>> A nit, subject: drop second/last, redundant "bindings". The
>> "dt-bindings" prefix is already stating that these are bindings.
> 
> Ok.
> 
>>> Signed-off-by: Max Filippov <jcmvbkbc@gmail.com>
>>> ---
>>>  .../bindings/serial/esp,esp32-acm.yaml        | 40 +++++++++++++++++++
>>>  1 file changed, 40 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
>>> new file mode 100644
>>> index 000000000000..dafbae38aa64
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/serial/esp,esp32-acm.yaml
>>> @@ -0,0 +1,40 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>> +
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/serial/esp,esp32-acm.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>> +
>>> +title: ESP32S3 ACM controller
>>> +
>>> +maintainers:
>>> +  - Max Filippov <jcmvbkbc@gmail.com>
>>> +
>>> +description: |
>>
>> Do not need '|' unless you need to preserve formatting.
> 
> Ok.
> 
>>> +  ESP32S3 ACM controller is a communication device found in the ESP32S3
>>
>> What is "ACM"?
> 
> It's an 'Abstract Control Model' as in USB CDC-ACM: 'Communication Device Class
> - Abstract Control Model'.
> 
>> Why is this in serial? Only serial controllers are in serial.
> 
> Because it's a serial communication device. The SoC TRM calls this peripheral
> 'USB Serial', but the USB part is fixed and is not controllable on the SoC side.
> When you plug it into a host USB socket you get a serial port called ttyACM on
> the host.
> 
>> The description is very vague, way too vague.
> 
> Is the following better?
> 
>   Fixed function USB CDC-ACM device controller of the Espressif ESP32S3 SoC.

Yes.

> 
>>> +  SoC that is connected to one of its USB controllers.
>>
>> Same comments as previous patch.
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: esp,esp32s3-acm
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  interrupts:
>>> +    maxItems: 1
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  - |
>>> +    acm@60038000 {

So this must be named "serial" now. ACM describes how this is interfaces
to the SoC, right? Otherwise it would not be in "serial" directory and
you would not be able to put serial devices as children.


>>> +            compatible = "esp,esp32s3-acm";
>>
>> Use 4 spaces for example indentation.
> 
> Ok.
> 
>>> +            reg = <0x60038000 0x1000>;
>>> +            interrupts = <96 3 0>;
>>
>> Same comments as previous patch.
> 
> These are not IRQ flags. In any case the contents of the IRQ
> specification cells is not relevant here, right?

Yes, if 0 is not an IRQ flag :)
> 

Best regards,
Krzysztof



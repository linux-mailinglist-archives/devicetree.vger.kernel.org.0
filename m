Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBA0B63C400
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 16:45:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234117AbiK2PpW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 10:45:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233137AbiK2PpV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 10:45:21 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B102159FED
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 07:45:18 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id w15-20020a17090a380f00b0021873113cb4so13869065pjb.0
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 07:45:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NwqgbXWFd8mNBQRKaBAwSj1zbltG8JixRsOoLI1NOpw=;
        b=OiDuD58ffbgMKGWLix+Hs4KWO4EX6iwpciWkUWNnprPWAB2SNUxjbx9ynkiuVXRPcc
         uRMrTExILOjhUuN5cP3m4khovPjZGSuhDmOdTzzcUtVmmXlY+3ex6JgCgEwQStAjhztQ
         6+kJw7vZTOL2I+DgfcekGZjaMBYJ6ZqBsfhpF8wC1GnHa5gEDH1wumTqeQwlc6y6cqNP
         cqchmliBu/LF3x4QIZ6U7NxTVbGH5SiPXZV8dZmDU814CFlZ5P05f6nmu9vOCEBnTroR
         NePSqvN4UMhTzeMSoWjyRF0OE1er47RID7fApsZufoEtLpTPk4W1Qfmfyb3q2eJ3wOtz
         /D3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NwqgbXWFd8mNBQRKaBAwSj1zbltG8JixRsOoLI1NOpw=;
        b=x9Z6oT1ysEcXwDcKNyviTx7isSAYThjTvuXxOH0neAPjd5diBjZdFd4EyTTwKHm1Ff
         +chAPzQMZKq8UdZ1Ita+dmLzdW0wupXhKefeTSR2JC8n9fqjTOnZyzK7VWcwd9BeWXnb
         L6iEeIgYzzi8sgtXTubyYNbBUu+5+uH5Fsvh2fGVAMtclDu79M1y1hTw+gErvwZ4tpP6
         0tCcsfi3G/L+rUZPcTLr3Xhtmqlg37h7ejkgocwie0BrHWR2mGaAFBheC6M3uZbH02gd
         BACDIan/6o8eETo4tBHVjXunITietgojNWDZWJRSciZGBMmMoQYP69Fw0fjPPmkRykFP
         3qXg==
X-Gm-Message-State: ANoB5plio0Ip85Ip9QAwUoXMPmT1Uzf5RVfr4bu91agICqK6OBolgs3b
        0M0v/OIAZUXZoy0tF0+CsP3TZw==
X-Google-Smtp-Source: AA0mqf7Kn+irBBoSCnzUZKzpClwlJn/lbklZFWE7Q0QNHmYB17lMFRt3fPT8y0h1+7JXyWBrQWvKcw==
X-Received: by 2002:a17:90b:3c4c:b0:218:a8a1:933a with SMTP id pm12-20020a17090b3c4c00b00218a8a1933amr45792753pjb.14.1669736718180;
        Tue, 29 Nov 2022 07:45:18 -0800 (PST)
Received: from ?IPV6:2405:201:d02f:d899:2028:7962:400:43b6? ([2405:201:d02f:d899:2028:7962:400:43b6])
        by smtp.gmail.com with ESMTPSA id 17-20020a170902c11100b001766a3b2a26sm11027094pli.105.2022.11.29.07.45.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 07:45:17 -0800 (PST)
Message-ID: <840daaaf-5c0b-e462-eec6-b87c54036acc@9elements.com>
Date:   Tue, 29 Nov 2022 21:15:14 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v6 1/3] dt-bindings: hwmon: fan: Add fan binding to schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>
References: <20221116213615.1256297-1-Naresh.Solanki@9elements.com>
 <20221116213615.1256297-2-Naresh.Solanki@9elements.com>
 <85b638f0-57dd-3114-6cac-42b0ccca49ac@linaro.org>
From:   Naresh Solanki <naresh.solanki@9elements.com>
In-Reply-To: <85b638f0-57dd-3114-6cac-42b0ccca49ac@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 29-11-2022 01:38 pm, Krzysztof Kozlowski wrote:
> On 16/11/2022 22:36, Naresh Solanki wrote:
>> Add common fan properties bindings to a schema.
>>
>> Bindings for fan controllers can reference the common schema for the
>> fan
>>
>> child nodes:
>>
>>    patternProperties:
>>      "^fan@[0-2]":
>>        type: object
>>        $ref: fan-common.yaml#
>>
>> Signed-off-by: Naresh Solanki <Naresh.Solanki@9elements.com>
>> ---
>>   .../devicetree/bindings/hwmon/fan-common.yaml | 42 +++++++++++++++++++
>>   1 file changed, 42 insertions(+)
>>   create mode 100644 Documentation/devicetree/bindings/hwmon/fan-common.yaml
>>
>> diff --git a/Documentation/devicetree/bindings/hwmon/fan-common.yaml b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
>> new file mode 100644
>> index 000000000000..1954882eed77
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/hwmon/fan-common.yaml
>> @@ -0,0 +1,42 @@
>> +# SPDX-License-Identifier: GPL-2.0-or-later OR BSD-2-Clause
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/hwmon/fan-common.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Common fan properties
> 
> If there is going to be resend - capitalize title, so:
> 
> Common Fan Properties
> 
Sure
>> +
>> +maintainers:
>> +  - Naresh Solanki <naresh.solanki@9elements.com>
>> +
>> +properties:
>> +  max-rpm:
>> +    description:
>> +      Max RPM supported by fan.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  pulses-per-revolution:
>> +    description:
>> +      The number of pulse from fan sensor per revolution.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  target-rpm:
>> +    description:
>> +      Target RPM the fan should be configured during driver probe.
>> +    $ref: /schemas/types.yaml#/definitions/uint32
>> +
>> +  pwms:
>> +    description:
>> +      PWM provider.
> 
> Isn't this object? If so, maybe:
>    type: object
With make dt_binding_check, I'm getting error for this.
Looking at other available examples in documentation, type object is not 
used.

Example:
   pwms:
     maxItems: 1

One pwm per fan.
> 
> 
> 
> Best regards,
> Krzysztof
> 
Regards,
Naresh

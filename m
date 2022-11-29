Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBEE63C409
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 16:46:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232155AbiK2Pql (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 10:46:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42328 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235228AbiK2Pqk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 10:46:40 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5625663CC8
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 07:46:39 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id w15-20020a17090a380f00b0021873113cb4so13873280pjb.0
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 07:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TlITRNlSvIRfx/v3kRPBsYLpShexTyED9akuGBOKj48=;
        b=WHAJKEmiS4xc1GRyJzYfwdJN/UC9HCyYTADcdVJBkbbREzqr0iZ2Rk+OJSvU5Nfxd+
         dLWeG9iWm7/dFIOtSFBxsgtWDujpxcbA+a85GS/0HSpmslxmg7qaYA50Tlc8Xakm4o6y
         khW2VDldpgmcmh+wI0kPpfdjT2yMPoBovjsuito0mp5pP20BwpcCnQHmGrYjtLmO1RxS
         91YwMYC/HY4SOyrOugNHq/sWsAh9imcoziwwGOu6wc5QjGQtU9Dj9iQc9NGVzXZ5/p/u
         VUm5khJm8F6Ou/en3zLOHhLOa+On90StzKvd5jXIwYlhIFGdMDP1sI36H635OvEzmd73
         qu3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TlITRNlSvIRfx/v3kRPBsYLpShexTyED9akuGBOKj48=;
        b=0hhw1w7XPYSjgEidrYzzw+vh2Q/U76ledU154kZ+wjxww+dtm5AYHCU6ecWKSNKA9z
         Poj4SXPvPDMDKH1ygMp/75PFXbseKdaW8mAy/PDFuTwOPxCsVrRuyMM9jQFH/mE0zTDm
         Lqp6ADTl5utfiv7RyUISZWO+3Qso43gkddikiYNQnSFyw/miknlT6gN4YVczdnLCbRlo
         TKHzF7UwyeXcfOdGgwRBbv2HW3Cgf/BpwOk5mMNtX026e1ucvW+u9rzM9cUokPQgUDUw
         avVUukIvweuogN0qlhcMI5J2qhfPE6ZPzj55BeMEdmlGv8bJ0cHuQrDbhmALGNohOOa2
         oafg==
X-Gm-Message-State: ANoB5pmPYEQR4gmq8Rs1UaNW3LcyasAS8BLe/E3+a4RHymoS1vmr+MT0
        3PTKSX5EIgyq1c0d78ql4PcExw==
X-Google-Smtp-Source: AA0mqf6B9BzEYfnIu/cqQ3h07jq5XYScwVBdcUkDYQSRSM11MyrdtlrFdURcKUsedAOQ3vdXvT3/MQ==
X-Received: by 2002:a17:90a:5787:b0:218:8398:5846 with SMTP id g7-20020a17090a578700b0021883985846mr57130609pji.241.1669736798826;
        Tue, 29 Nov 2022 07:46:38 -0800 (PST)
Received: from ?IPV6:2405:201:d02f:d899:2028:7962:400:43b6? ([2405:201:d02f:d899:2028:7962:400:43b6])
        by smtp.gmail.com with ESMTPSA id h23-20020a63e157000000b00434272fe870sm8562138pgk.88.2022.11.29.07.46.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 07:46:38 -0800 (PST)
Message-ID: <2487f032-1261-be6e-2e2a-38ca0af7c83c@9elements.com>
Date:   Tue, 29 Nov 2022 21:16:34 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v7 1/4] dt-bindings: hwmon: fan: Add fan binding to schema
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        devicetree@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
        Jean Delvare <jdelvare@suse.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        Patrick Rudolph <patrick.rudolph@9elements.com>
References: <20221121122932.2493174-1-Naresh.Solanki@9elements.com>
 <20221121122932.2493174-2-Naresh.Solanki@9elements.com>
 <c35917d1-dfbd-f7d9-5c94-a9f0ee3b7ed8@linaro.org>
From:   Naresh Solanki <naresh.solanki@9elements.com>
In-Reply-To: <c35917d1-dfbd-f7d9-5c94-a9f0ee3b7ed8@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On 29-11-2022 01:42 pm, Krzysztof Kozlowski wrote:
> On 21/11/2022 13:29, Naresh Solanki wrote:
> 
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
> Ah, so it is not a PWM provider by this FAN controller? A bit confusing
> description. Instead maybe:
> 	PWM signal for the fan
Sure.
> 
> and do you expect more than one PWM for one fan?
One pwm per fan
> 
> Best regards,
> Krzysztof
> 

Regards,
Naresh

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C62D457E579
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 19:25:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231178AbiGVRZK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 13:25:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229567AbiGVRZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 13:25:08 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3032E87
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 10:25:06 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id u14so6238516lju.0
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 10:25:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=KuEpwZJ1uhtFdUF1C/gI9wPx+uXhdTm9dpr0H9Yke6w=;
        b=egPNOAbAN7Y+qZ60MlIEaORxMlNW33vdbhk/TMQ/ZDFV2yScqD8w0HuBXmVJB23Mgr
         mJuWq/sryAH4iWp/5UHpI2wskFsbtxE7mUll6tkj0cjp0oEY5R/ZcRCXSo+qH/kk5uIz
         kHMnq/L9Qt3LQrGEmJuO1QDt2I8sVfV9Hby0UH8vJ6wxfdKNDfOIKuK3qjDPt4vXObaO
         cmmCNZ1BA6OjXgdOnaLISFsGguwpY4ApUPps3YB59luy7kyLjtd7FJyiYTpYtpBLLnws
         qG/1qMQpOiWD8AtVLBsmGQctucAgovGC9Ga8TFOFfZRXlOL4oMphLGwTCVTBzFQlpC6F
         9dRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=KuEpwZJ1uhtFdUF1C/gI9wPx+uXhdTm9dpr0H9Yke6w=;
        b=5S2TDtl8LJ2EMVJnHGEwpWV32YPqK/l2o0daeLMo76ZfTSPxKn2L5c5145hezUbaYB
         EYL2iicezp5ReK4XyZcprxoJ/G/vMgh/PLfKtalg0CFyqfB87DuLMwEzy2gliZQ50uCa
         wfX8YMklKxQoMSfnbNMRf225xJWbnIOX3jXytse94fHynRkYs+sQN7IrIQomn7XR3K/z
         OVGq4J/EA/L6FJ8SjC4TBUTOibHnZC8VCOjEnT8PTp1zbxwB00tAMnhp9Z10ZvbySh28
         dio7f+hj/ueSXUBH7l4SqLCGOEWBdVXcAjJHSrQKj5IIoWxn/oM0/c7PQW9X/iKROmOq
         78VA==
X-Gm-Message-State: AJIora+5d5ZrQqLpdCqvjaoV61QGgySooMWX61Iyf/7GvCafuyz+rBxK
        x9ZPnavOit+putc7/7GD7d/VNg==
X-Google-Smtp-Source: AGRyM1sW6Ujrt3+VsCsQa6hm4P4P+ZVr5SIK9xcNS52rdxS+gihxYH01QZB0l5kXGFj69Tua+Y7gPg==
X-Received: by 2002:a2e:b013:0:b0:25d:8f3d:7f0 with SMTP id y19-20020a2eb013000000b0025d8f3d07f0mr365855ljk.131.1658510704998;
        Fri, 22 Jul 2022 10:25:04 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id o21-20020ac24c55000000b004891b4a4acfsm1157744lfk.185.2022.07.22.10.25.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Jul 2022 10:25:04 -0700 (PDT)
Message-ID: <12dd9bff-bce4-7360-4a98-89bf31202571@linaro.org>
Date:   Fri, 22 Jul 2022 19:25:02 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/1] dt-bindings: rtc: nxp, pcf85063: Convert to DT
 schema
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rtc@vger.kernel.org, devicetree@vger.kernel.org
References: <20220721133303.1998356-1-alexander.stein@ew.tq-group.com>
 <5c90ef96-969c-728a-3987-5793956c5224@linaro.org>
 <5761215.mogB4TqSGs@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <5761215.mogB4TqSGs@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2022 08:02, Alexander Stein wrote:
> Hello Krzysztof,
> 
> thanks for your feedback.
> 
> Am Donnerstag, 21. Juli 2022, 15:43:13 CEST schrieb Krzysztof Kozlowski:
>> On 21/07/2022 15:33, Alexander Stein wrote:
>>> Convert the NXP PCF85063 RTC binding to DT schema format.
>>>
>>> Add 'interrupts' and 'wakeup-source' as this device has an interrupt
>>> which was not documented, but is in use.
>>> 'clock-output-names' and '#clock-cells' are added as well, those were
>>> probably missed when adding clkout support in commit 8c229ab6048b
>>> ("rtc: pcf85063: Add pcf85063 clkout control to common clock framework")
>>
>> Thanks for adding it here, this sounds fine but brought my attention to
>> interrupts and quartz-load. It seems that only rv8263 supports
>> interrupts. In the same time rv8263 work only with 7000
>> quartz-load-femtofarads.
>>
>> If that's correct, you need to put "allOf" after "required" and inside
>> "if:then:" restricting it. For rv8263 interrupts:true and quartz as
>> const 7000, for else: interrupts:false.
> 
> It is slightly different. In all the datasheets I found there was an IRQ pin, 
> so this applies to all models, although only some of them (PCF85063A, 
> PCF85073A and RV8263) support alarms, which is what Linux cares for right now. 
> But this is handles in the driver already.

OK, this is fine then.

> quartz-load-femtofarads does not apply to RV8263, because it has no OSCI pins 
> at all but uses an onboard oscillator. See commit 5b3a3ade0293 ("rtc: 
> pcf85063: add Micro Crystal RV8263 support") for that. But this also handled 
> in the driver already.

This is what I was based on, so the quartz-load-femtofarads should not
be even allowed for RV8263.

> Apart from that apparently only PCF85063 has a fixed quartz-load of 7pF, the 
> other types supported can have either 7 oder 12.5 pF.

...and for PCF85063 this should be fixed to 7.

Best regards,
Krzysztof

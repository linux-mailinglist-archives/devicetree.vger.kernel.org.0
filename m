Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C29EA6B381B
	for <lists+devicetree@lfdr.de>; Fri, 10 Mar 2023 09:07:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230019AbjCJIH4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Mar 2023 03:07:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229774AbjCJIHw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Mar 2023 03:07:52 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60ACAF1685
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:07:14 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id cw28so17126059edb.5
        for <devicetree@vger.kernel.org>; Fri, 10 Mar 2023 00:07:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678435611;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rVnc0kHjfb6WR8zgiNTVTUOi5y/jlNnTwVPCFa2f25o=;
        b=SurW0+gWwuPcoGmNpT30MoSAALFUefAuCoaUwhEAy460w5MY5u9iBdlmPB81RcVAzd
         sBn0C6PLg/EhCmKHCymEgQPtkjhRT8c2ndjjkkc1qKOzEFf5d2zgSUko2afRSPenT5E4
         498dvuBO/fip/b0Xtc0hhMOSSl+UgfHUP1LJNRPk9BrT788A+BFCE0qAqTlQJ/QBO6J7
         tRO+YlZrXpvzJvCBkpwin7vQLXb+tEPbXG1VRPQanryVw6HF89+8PgH4ctsI6UC/P15q
         rlBaaEsIVX11fImEoK9kZHg0YXMbsvCZ/kaHG/ceYqtEzE5lRZ9QhaYktkuNWX03v+Ud
         HS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678435611;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rVnc0kHjfb6WR8zgiNTVTUOi5y/jlNnTwVPCFa2f25o=;
        b=CA5p8KeXd0+575XGev811QA7/cbxwfmmQ6nvee9Tf5an+LPGtI2wZTf59Fs33KvZk9
         gpmpQSSKTTF1r+soV0hQ0EJNwSbxhO4bDFwCOzqKgXtaC3SVes+sSunrt9nsG+YO26wj
         3fYi2+L10x53G8GFaHb/vYX4SiUUmFyUN7oogGsXG6gagfR1NPTGkfrwTZw4Qesd9Dmo
         stK5zR3rtH25Eg8XyOe5fyI3bsvwz1gix5lH9F4Fxu/hvzdC2xS5g47zA7SRCzuaOMal
         qeMt/m2Xueb7HH9/dBjAmvK7Mx/1Uwop5uPz00aGPFVZ6fsUEC0KAKrX7/fm15lE1q07
         5qiA==
X-Gm-Message-State: AO0yUKXO0OB3ZJ8Gi8nxz+meLIF7lraDJWT+Sr7AnZLz3YR+ykY8EtTY
        3SmsEk3+VhWDnEBdPJMB10JZmg==
X-Google-Smtp-Source: AK7set9OCiU6sz+Wb9xhH3agADyu3oF1kpKbiPqnJFZe+hETI4Y038QXJwU//HiMTmmFPwQjLwDAnA==
X-Received: by 2002:a17:906:12cc:b0:8f4:ec13:d599 with SMTP id l12-20020a17090612cc00b008f4ec13d599mr26071743ejb.27.1678435610090;
        Fri, 10 Mar 2023 00:06:50 -0800 (PST)
Received: from ?IPV6:2a02:810d:15c0:828:2a59:841a:ebc:7974? ([2a02:810d:15c0:828:2a59:841a:ebc:7974])
        by smtp.gmail.com with ESMTPSA id s30-20020a50d49e000000b004c44d00a3b5sm521897edi.20.2023.03.10.00.06.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 10 Mar 2023 00:06:49 -0800 (PST)
Message-ID: <a1290791-7589-32dc-fc96-af857d10aa61@linaro.org>
Date:   Fri, 10 Mar 2023 09:06:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH] dt-bindings: power: supply: bq256xx: Add ts-ignore
 property
Content-Language: en-US
To:     Hermes Zhang <chenhuiz@axis.com>,
        Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andrew Davis <afd@ti.com>
Cc:     kernel@axis.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230309023926.38682-1-chenhuiz@axis.com>
 <49e67fb3-4ef9-5d50-c3e8-3c7857145bbc@linaro.org>
 <b2ac2d1f-3e9b-f96d-3724-020f7140b05f@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <b2ac2d1f-3e9b-f96d-3724-020f7140b05f@axis.com>
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

On 10/03/2023 04:48, Hermes Zhang wrote:
> On 2023/3/9 18:12, Krzysztof Kozlowski wrote:
>> On 09/03/2023 03:39, Hermes Zhang wrote:
>>> Add a new property: ts-ignore to allow user to enable the TS_IGNORE flag
>>> in chip. Ignore TS pin will allow user to control the charging
>>> parameters instead of the default JEITA profile in chip.
>> You miss users of it.
> Could you give some more info about what I missed?

Users. DTS and driver code.

>> @@ -68,6 +68,12 @@ properties:
>>         Interrupt sends an active low, 256 μs pulse to host to report the charger
>>         device status and faults.
>>   
>> +  ts-ignore:
>> Missing vendor prefix... is this generic property? ts-ignore is very
>> cryptic. You should describe here rather desired system characteristic.
>> Why anyone would need to use it per-board level?
> 
> OK, I will fix it. Will "ti,ignore-ts-pin" be better? 

No, because does not describe system characteristic. Read again my last
two sentences.

> Yes, it's a 
> generic. To disable the TS pin, actually we also could do it from HW, 
> but from software, it could be more flexble. But if HW already disable 
> it, then you don't need to do it again from dts.

If this is configurable from HW, why this should be in DT?


Best regards,
Krzysztof


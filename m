Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BD1D6F6FFE
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 18:38:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229703AbjEDQic (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 12:38:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbjEDQib (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 12:38:31 -0400
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7CDE62D69
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 09:38:29 -0700 (PDT)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-50b9ef67f35so1298154a12.2
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 09:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683218308; x=1685810308;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=s3wBe73mosnqOQG7ohxBbumaqwsm4POyruGXwDmlt7c=;
        b=motgwoZwae/jsDnStJCwOpt2BEXyN4VGOTe/GgL/igTq+Lhh6CpOVXfnOqnQPSHTqI
         jnDwFF+W/ULfrOsTtZmG10e1YBdNBwSS95mwaMbrtZwI2SA48Zu+kNYXjzC5PQAvom8f
         1EpjKVdKwIRoG6GJEA6dz8AChwSht4G1p9M8xmgt/O2k+PXE1+nEgMOrHldPPrUgxkJH
         ff1nnI8a3oXjtPX4nI+WEnteqpJhQ5jOl4QAQHri1Dc6FQOY0r/calT11rsdxFcB4gce
         ep5Iy6mHOiaLe91Y8iAsnVdx3bymLRIBPWbQ7mO3/ZU/ZIjJRFxTK9gsXiu5sWSq7whz
         Etig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683218308; x=1685810308;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=s3wBe73mosnqOQG7ohxBbumaqwsm4POyruGXwDmlt7c=;
        b=fXu8QbGzPytkaPffNiZw5UtxK+9xdeYwGmXvBuzw0zT+aRPhyr0Xe2Zgn4p2GdN3BH
         kEiOcrVUJ/vx4AeWOGb0OxI+Mqai7lwBgpLZt/XYskQOMWMvUtMHD5AMm4T5icVzrbqV
         wN4vTCy95OHiAW6uKBobVTirBmvR0CpMsBQUMHrGGtS3L1aPp9PS0K3ub/ITkR/C1+kh
         ViLIE1gMJlTy1asd1lA6Om+RoH1UAJDRKDcW8yka1wA66F28081EoWgNs/V5yrM3xQBF
         GZbM9C3MByF8hc7ObRpJ1kgB9t4pKCRmk3sRVSe0nHo9UBweiki2/LxQPqXJ+/Q+NzeD
         lLnw==
X-Gm-Message-State: AC+VfDxQdmMii0KFPQARmZYtwmkwyOO3xiEjYYEKFG0/gqVKvYOoDUMN
        vWSdlWTBsfo4yoTd61bE4XVPpw==
X-Google-Smtp-Source: ACHHUZ6dcTZEMhsV/uySbXTLEbzQtiHKTJs/GWL2Wm+zsGAVPf2NGpLmtLSLsrNs2LZ4ciPZ7GifCA==
X-Received: by 2002:a17:906:eec3:b0:94a:7716:e649 with SMTP id wu3-20020a170906eec300b0094a7716e649mr6989461ejb.13.1683218307873;
        Thu, 04 May 2023 09:38:27 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:bdb9:99c4:33a5:6114? ([2a02:810d:15c0:828:bdb9:99c4:33a5:6114])
        by smtp.gmail.com with ESMTPSA id qf22-20020a1709077f1600b0094a8aa6338dsm19196506ejc.14.2023.05.04.09.38.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 May 2023 09:38:27 -0700 (PDT)
Message-ID: <bce6cbcd-b693-4027-7d17-8e582b8fa2f9@linaro.org>
Date:   Thu, 4 May 2023 18:38:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH RFC 1/6] dt-bindings: mfd: Add Renesas RAA215300 PMIC
 bindings
Content-Language: en-US
To:     Biju Das <biju.das.jz@bp.renesas.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-renesas-soc@vger.kernel.org" 
        <linux-renesas-soc@vger.kernel.org>,
        Fabrizio Castro <fabrizio.castro.jz@renesas.com>
References: <20230503084608.14008-1-biju.das.jz@bp.renesas.com>
 <20230503084608.14008-2-biju.das.jz@bp.renesas.com>
 <ca926221-ffc2-8572-39ab-0f849ac91b5f@linaro.org>
 <OS0PR01MB5922B1520AF46095263BD74F866D9@OS0PR01MB5922.jpnprd01.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <OS0PR01MB5922B1520AF46095263BD74F866D9@OS0PR01MB5922.jpnprd01.prod.outlook.com>
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

On 04/05/2023 18:13, Biju Das wrote:
> Hi Krzysztof Kozlowski,
> 
> Thanks for the feedback.
> 
>> Subject: Re: [PATCH RFC 1/6] dt-bindings: mfd: Add Renesas RAA215300 PMIC
>> bindings
>>
>> On 03/05/2023 10:46, Biju Das wrote:
>>> Document Renesas RAA215300 PMIC bindings.
>>>
>>> The RAA215300 is a high Performance 9-Channel PMIC supporting DDR
>>> Memory, with Built-In Charger and RTC.
>>>
>>> It supports DDR3, DDR3L, DDR4, and LPDDR4 memory power requirements.
>>> The internally compensated regulators, built-in Real-Time Clock (RTC),
>>> 32kHz crystal oscillator, and coin cell battery charger provide a
>>> highly integrated, small footprint power solution ideal for
>>> System-On-Module (SOM) applications. A spread spectrum feature
>>> provides an ease-of-use solution for noise-sensitive audio or RF
>>> applications.
>>>
>>> Signed-off-by: Biju Das <biju.das.jz@bp.renesas.com>
>>> ---
>>>  .../bindings/mfd/renesas,raa215300.yaml       | 57 +++++++++++++++++++
>>>  1 file changed, 57 insertions(+)
>>>  create mode 100644
>>> Documentation/devicetree/bindings/mfd/renesas,raa215300.yaml
>>>
>>> diff --git
>>> a/Documentation/devicetree/bindings/mfd/renesas,raa215300.yaml
>>> b/Documentation/devicetree/bindings/mfd/renesas,raa215300.yaml
>>> new file mode 100644
>>> index 000000000000..1e65f7618333
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/mfd/renesas,raa215300.yaml
>>> @@ -0,0 +1,57 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) %YAML 1.2
>>> +---
>>> +$id:
>>> +title: Renesas RAA215300 Power Management Integrated Circuit (PMIC)
>>> +
>>> +maintainers:
>>> +  - Biju Das <biju.das.jz@bp.renesas.com>
>>> +
>>> +description: |
>>> +  The RAA215300 is a high-performance, low-cost 9-channel PMIC
>>> +designed for
>>> +  32-bit and 64-bit MCU and MPU applications. It supports DDR3,
>>> +DDR3L, DDR4,
>>> +  and LPDDR4 memory power requirements. The internally compensated
>>> +regulators,
>>> +  built-in Real-Time Clock (RTC), 32kHz crystal oscillator, and coin
>>> +cell
>>> +  battery charger provide a highly integrated, small footprint power
>>> +solution
>>> +  ideal for System-On-Module (SOM) applications. A spread spectrum
>>> +feature
>>> +  provides an ease-of-use solution for noise-sensitive audio or RF
>> applications.
>>> +
>>> +  This device exposes two devices via I2C. One for the integrated RTC
>>> + IP, and  one for everything else.
>>> +
>>> +  Link to datasheet:
>>> +
>>> + https://www.renesas.com/in/en/products/power-power-management/multi-
>>> + channel-power-management-ics-pmics/ssdsoc-power-management-ics-pmic-
>>> + and-pmus/raa215300-high-performance-9-channel-pmic-supporting-ddr-me
>>> + mory-built-charger-and-rtc
>>> +
>>> +properties:
>>> +  compatible:
>>> +    enum:
>>> +      - renesas,raa215300
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +  renesas,raa215300-rtc:
>>> +    $ref: /schemas/types.yaml#/definitions/phandle
>>> +    description: phandle to the built-in RTC device.
>>
>> Why do you need phandle to anything else? This looks like wrong relationship
>> described. If these are siblings, why do you need cross-linking via
>> phandles?
>>
>> Most of PMICs are described with one node, even though RTC is on separate
>> address.
> 
> OK, will model like below
> 
> 	raa215300: pmic@12 {
> 		compatible = "renesas,raa215300";
> 		reg = <0x12 0x6f>;
> 		reg-names = "main", "rtc";

Just two separate regs. I think this should work for I2C bus. The DT
schema allows multiple addresses for children.

Best regards,
Krzysztof


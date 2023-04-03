Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2271D6D3FEC
	for <lists+devicetree@lfdr.de>; Mon,  3 Apr 2023 11:15:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230490AbjDCJPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 05:15:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34616 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231808AbjDCJPe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 05:15:34 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BC5A9ED7
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 02:15:22 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id h8so114524739ede.8
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 02:15:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680513320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5kYXKZ2RCZn16jR5maV8r+9BrSCMMN8KaXT6+P5DPzM=;
        b=gMzi1Z/4ikDRXOBgoA/VgdYkqanOy+eVWF4/ta6h1EutlyoH3s/IWBX4Tk+XMo0c0W
         uVDxTP0E9aUGsIVz3XOnR9535CLtQ5SMgEsLAGEM9IuHamSaKn6Rz/U2/yvfb2KB5s5R
         UbIhKzOMGNDozVPlMzHrEqhWnBp/jMkJSQ3zZJp2VSprOIjs9rP2Mm6eqnjBULgUc4VH
         gSfoxcdSqUS7Tdm7yRZBe7HH5xGN4Ib3D8Ka8+hJBQBB24JuB9wXPHDV2IRClQs1PCUV
         QZUn+QqG2IQgzPOx3mChQEjAbWI7ZLw7RP8VLijeDlnWgaxWvfTRjqxf+MZCQfMBn3wZ
         5y8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680513320;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5kYXKZ2RCZn16jR5maV8r+9BrSCMMN8KaXT6+P5DPzM=;
        b=EYVOJxJaJTzzgQl5HqrwPxwS2W8f2IqRke+K1gvN/4crYlzJU0dpXqXoxWtBuU6/jZ
         piJG8JRGwv4bqAzazA6P13zevp0A0qw2i0onPhx41+9tdbueiKyBQQRBBJarGNQj6jhH
         y0ML3ylcGPNLoz6BT6eZBuccOck1RrcgmOZs15NQ+6TI6TMo74Z2IdQgphN787Y5D0AA
         sPbcZlpjV6CjU02Prg7s8Idq6yemvkYjR+U2/vt2JjJR1QISgiXZZi9t38Ee7uRDiEnd
         fakxT8HtoO8TmBILrsByt6BdYc8N21z+nQZw4NXqgUQuLkftdm07SEbiRFp+o/tf+1pT
         l0Mw==
X-Gm-Message-State: AAQBX9fIiydvUQOsPUTGW1IEJAlEkW3UYaSdktX2aXJcsORWMoKf7O5x
        nafvytzUvrjIaZzJ+5lfPunzPg==
X-Google-Smtp-Source: AKy350Y0/vIBS61AVHpBZz4f3qaay6npqsyZkZCNNM1LrtgNYISeV/FbFlvPGn4hbJ2kKZt7z1xdJQ==
X-Received: by 2002:a17:906:b74f:b0:92d:591f:6586 with SMTP id fx15-20020a170906b74f00b0092d591f6586mr33387705ejb.34.1680513320470;
        Mon, 03 Apr 2023 02:15:20 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:ae90:d80:1069:4805? ([2a02:810d:15c0:828:ae90:d80:1069:4805])
        by smtp.gmail.com with ESMTPSA id bt3-20020a170906b14300b0092f289b6fdbsm4260543ejb.181.2023.04.03.02.15.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 02:15:20 -0700 (PDT)
Message-ID: <dcd8b3d4-8255-0ec1-55ea-4c489e316e24@linaro.org>
Date:   Mon, 3 Apr 2023 11:15:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/6] dt-bindings: firmware: Add arm,errata-management
Content-Language: en-US
To:     James Morse <james.morse@arm.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        Oliver Upton <oliver.upton@linux.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andre Przywara <andre.przywara@arm.com>
References: <20230330165128.3237939-1-james.morse@arm.com>
 <20230330165128.3237939-2-james.morse@arm.com>
 <8a1b2aeb-c89e-d8de-1784-e0cf9ec33aa3@linaro.org>
 <f9bb371f-427f-84f7-690c-8f96fff31d43@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f9bb371f-427f-84f7-690c-8f96fff31d43@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/03/2023 18:58, James Morse wrote:
> Hi Krzysztof
> 
> On 31/03/2023 09:29, Krzysztof Kozlowski wrote:
>> On 30/03/2023 18:51, James Morse wrote:
>>> The Errata Management SMCCC interface allows firmware to advertise whether
>>> the OS is affected by an erratum, or if a higher exception level has
>>> mitigated the issue. This allows properties of the device that are not
>>> discoverable by the OS to be described. e.g. some errata depend on the
>>> behaviour of the interconnect, which is not visible to the OS.
>>>
>>> Deployed devices may find it significantly harder to update EL3
>>> firmware than the device tree. Erratum workarounds typically have to
>>> fail safe, and assume the platform is affected putting correctness
>>> above performance.
>>>
>>> Instead of adding a device-tree entry for any CPU errata that is
>>> relevant (or not) to the platform, allow the device-tree to describe
>>> firmware's responses for the SMCCC interface. This could be used as
>>> the data source for the firmware interface, or be parsed by the OS if
>>> the firmware interface is missing.
>>>
>>> Most errata can be detected from CPU id registers. These mechanisms
>>> are only needed for the rare cases that external knowledge is needed.
> 
>>> diff --git a/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
>>> new file mode 100644
>>> index 000000000000..9baeb3d35213
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/firmware/arm,errata-management.yaml
>>> @@ -0,0 +1,77 @@
>>> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/firmware/arm,errata-management.yaml#
>>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>>
>> Except missing testing...
> 
> After a couple of hours of testing this, I went blind and missed that it was still
> complaining about spaces.
> 
> 
>>> +
>>> +title: Errata Management Firmware Interface
>>> +
>>> +maintainers:
>>> +  - James Morse <james.morse@arm.com>
>>> +
>>> +description: |+
>>
>> Do not need '|+'.
>>
>>> +  The SMC-CC has an erratum discovery interface that allows the OS to discover
>>> +  whether a particular CPU is affected by a specific erratum when the
>>> +  configurations affected is only known by firmware. See the specification of
>>> +  the same title on developer.arm.com, document DEN0100.
>>> +  Provide the values that should be used by the interface, either to supplement
>>> +  firmware, or override the values firmware provides.
>>
>> Why? If you have the discovery interface, don't add stuff to the DT, but
>> use that interface.
> 
> A DT property was explicitly requested by Marc Z on the RFC:
> https://lore.kernel.org/linux-arm-kernel/86mt5dxxbc.wl-maz@kernel.org/
> 
> The concern is that platforms where the CPU is affected, but the issue is masked by the
> interconnect will never bother with a firmware interface. The kernel can't know this, so
> has to enable the workaround at the cost of performance.

It would have to bother DT, so same problem... DT is not optimization
mechanism for SW decisions.

> 
> Adding a DT property to describe the hardware state of the erratum avoids the need for
> separate kernel builds to work around the missing firmware.

The purpose of DT is not to avoid separate kernel builds thus this is
not an argument whether property fits DT or it doesn't.

> 
> 
>>> +      - const: arm,cpu-erratum-list
>>> +
>>> +  arm,erratum-affected:
>>> +    description: Erratum numbers that this CPU is affected by.
>>
>> Isn't this explicit from CPU compatible?
> 
> I'll drop it from the compatible. The concern is arm add erratum in other IP to this
> interface, hence shoving 'cpu' in a few places to future proof it against changes in the spec.
> 
> 
>>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>>> +    minItems: 1
> 
>> What do the numbers mean?
> 
> The numbers are unique identifiers issued by the CPU designer to identify the part
> affected and the erratum. See the cover-letter for links to arms documents for all these
> CPUs, or Documentation/arm64/silicon-errata.txt for a table of those the kernel works around.

The answer should be in description, not in cover letter.

> 
> 
>> maxItems?
> 
> If there are zero entries, the table can be omitted, hence minItems.
> 
> This is the first erratum workaround that needs to know non-discoverable CPU properties,
> but there will be others.


Best regards,
Krzysztof


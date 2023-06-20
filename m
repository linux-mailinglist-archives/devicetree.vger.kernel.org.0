Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 99C20736A58
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 13:07:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231535AbjFTLHN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 07:07:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232086AbjFTLHJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 07:07:09 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5978A19AA
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 04:06:42 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id ffacd0b85a97d-307d20548adso3544920f8f.0
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 04:06:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687259192; x=1689851192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KT1ofLh67QbHzizNPx+KKb1VFMOfDe7sYVySqlC78CE=;
        b=vvm0o8KzU8OoT0ntmU/pUfSjvvC49nx3S7FTzzzPJlvAsWtAy6C6brLF7Fj8PxM9Vm
         iGC8sMJ6tPeDfy0IDEWUsiphrnvQA8IhuYzbZX1MbbiyWQ1n/sZ+wlaH+H3tmnb/c7WG
         pJIMNsJt3IGpTFv66jR2x9SerfmU5dZ3LUWwZf2Msd0woFy6XDpNLwqU/LsrJFUcx5S8
         iyBUv0b7tRkFhw4IUxKEAly8O1hMCTXgp6CFW4hgfNYjDpcSvVlqL+KPeqm+xBPkXQlJ
         NkBOYSx9XUg48T5aVY2n3+TPRbIrwYE61DNNYSt5HeoqTIlQuBVHsLNYBqUSaUfdQYEk
         BTbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687259192; x=1689851192;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KT1ofLh67QbHzizNPx+KKb1VFMOfDe7sYVySqlC78CE=;
        b=k1Js7sIfWpU5wByBRTmFUjya5bGKhyU5zmls53gU1NhkXiCQ/Et0JIRWaa4JFumXSZ
         iaVdQ4kkkkC9x1uj0GE0U/vJDLgRKzpBnXp5eGKD0/8O8LDi9oTkBYREGW1Xq4zah7ZZ
         53XHNhypmAm87mylxtNOVzIvicvwhcjnHbLETtUpV3qi+SZAe6Zt+ey2KfT97txjha3M
         Q6i0i5LP6Wfq7JMttzEilqOh8Y60POFIeI6XgcrolaHKtyqSo578De7SA5fD9WG5rHsl
         xJEyifrhQhIeqR//YruFxfynYeANknKzJV/TM7NhqZTkGtpCCbGxgfoosIjP+amsGquv
         Pifg==
X-Gm-Message-State: AC+VfDwuXyOu/tQNsO+2+5MPWhTJRFMPWiis+3pN+eb4fgmgUFNVcibA
        SgtfA1Q/QvZnNJlSAvfoKnA+PQ==
X-Google-Smtp-Source: ACHHUZ4duUXd2dKsPPFa5YwcAu5daqLG6JvhFde9VZTF4QDI938552Au7e9Zc7cCpSzLkMqrSxXzUg==
X-Received: by 2002:a5d:4fc1:0:b0:30f:c1ab:a039 with SMTP id h1-20020a5d4fc1000000b0030fc1aba039mr7735138wrw.40.1687259192356;
        Tue, 20 Jun 2023 04:06:32 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id o16-20020a5d6850000000b003047ae72b14sm1736958wrw.82.2023.06.20.04.06.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Jun 2023 04:06:31 -0700 (PDT)
Message-ID: <ed6f9ab8-9c4e-ec9f-efb7-81974d75f074@linaro.org>
Date:   Tue, 20 Jun 2023 13:06:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 2/4] dt-bindings: clock: Add Intel Agilex5 clocks and
 resets
Content-Language: en-US
To:     wen.ping.teh@intel.com
Cc:     adrian.ho.yin.ng@intel.com, andrew@lunn.ch, conor+dt@kernel.org,
        devicetree@vger.kernel.org, dinguyen@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, mturquette@baylibre.com,
        netdev@vger.kernel.org, niravkumar.l.rabara@intel.com,
        p.zabel@pengutronix.de, richardcochran@gmail.com,
        robh+dt@kernel.org, sboyd@kernel.org
References: <8d5f38e6-2ca6-2c61-da29-1d4d2a3df569@linaro.org>
 <20230620103930.2451721-1-wen.ping.teh@intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230620103930.2451721-1-wen.ping.teh@intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/06/2023 12:39, wen.ping.teh@intel.com wrote:
>>
>>> +
>>> +properties:
>>> +  compatible:
>>> +    const: intel,agilex5-clkmgr
>>
>>
>> Why "clkmgr", not "clk"? You did not call it Clock manager anywhere in
>> the description or title.
>>
> 
> The register in Agilex5 handling the clock is named clock_mgr.
> Previous IntelSocFPGA, Agilex and Stratix10, are also named clkmgr.

So use it in description.

> 
>>> +
>>> +  '#clock-cells':
>>> +    const: 1
>>> +
>>> +  reg:
>>> +    maxItems: 1
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - '#clock-cells'
>>
>> Keep the same order as in properties:
>>
> 
> Will update in V2 patch.
> 
>>> +
>>> +additionalProperties: false
>>> +
>>> +examples:
>>> +  # Clock controller node:
>>> +  - |
>>> +    clkmgr: clock-controller@10d10000 {
>>> +      compatible = "intel,agilex5-clkmgr";
>>> +      reg = <0x10d10000 0x1000>;
>>> +      #clock-cells = <1>;
>>> +    };
>>> +...
>>> diff --git a/include/dt-bindings/clock/agilex5-clock.h b/include/dt-bindings/clock/agilex5-clock.h
>>> new file mode 100644
>>> index 000000000000..4505b352cd83
>>> --- /dev/null
>>> +++ b/include/dt-bindings/clock/agilex5-clock.h
>>
>> Filename the same as binding. Missing vendor prefix, entirely different
>> device name.
>>
> 
> Will change filename to intel,agilex5-clock.h in V2.

Read the comment - same as binding. You did not call binding that way...
unless you rename the binding.

>>
>>> +
>>> +#endif	/* __AGILEX5_CLOCK_H */
>>> diff --git a/include/dt-bindings/reset/altr,rst-mgr-agilex5.h b/include/dt-bindings/reset/altr,rst-mgr-agilex5.h
>>> new file mode 100644
>>> index 000000000000..81e5e8c89893
>>> --- /dev/null
>>> +++ b/include/dt-bindings/reset/altr,rst-mgr-agilex5.h
>>
>> Same filename as binding.
>>
>> But why do you need this file? Your device is not a reset controller.
> 
> Because Agilex5 device tree uses the reset definition from this file.

That's not the correct reason. The binding header has nothing to do with
this device. You miss another patch adding support for your device
(compatible) with this header.

Best regards,
Krzysztof


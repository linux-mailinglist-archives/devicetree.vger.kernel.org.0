Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4AA1551BA18
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 10:19:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348175AbiEEIWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 04:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347325AbiEEIWE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 04:22:04 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FA6E49939
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 01:18:12 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id u3so5048896wrg.3
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 01:18:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=J+ZPQwdwus+sA1dqhZGKwJyFtivNMxn3vuagpJWZ2E8=;
        b=YzTS20RHecVjsm0SDnWmTJ1P4NopKbIQl3++dsnyrZsrY1E5QUXBtV1djkfM2NtfgI
         BreMslg0FkelKFvel8Ea1SXzBOpFtUbhmOY4wB5JU/iNpnwUoSbKNHpngqMGw2C4X127
         fT8KyUW1sv7idrXQqnZIiNYbUyCWsyiTepPxj7mJggU8/+E8M25wWrHLVqOCL4fwiPgF
         mJS5H20EmNo1/oCY1vU7IjHQFn3Ikx+ALhNVUnApYhougQLQROb6FpWebztq7esvXpC0
         gcpgVLQNvOBZKTBvdTmM6IEi1CT4GsFQKDiBCDTyhp5rmcf5GYsoIKpsnOtu8kNlBt9K
         WEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=J+ZPQwdwus+sA1dqhZGKwJyFtivNMxn3vuagpJWZ2E8=;
        b=nOJKhgkSDDU1pLAU0KTTTzzd98Z14zjANblpB0pAsU563NMAMbeKHi1RbB2sAQ1K3l
         dUAKNtY5OFw/R5z53xgRYU8SgSPyvYYzdyt9C6aTxKQcdO+VnytORUgY3aetMrCuCPAU
         WnXVo6AhUIfNvfotxqb0dAD5Qq+fV9Q0Oper4i4qGUwaooRa0KMgp62aAfvkK8Yfzzp2
         0Y4L/P6KkoW/o+5S0aUD3+5mTpKaJ1ya7o6l6Kw2hbNWdFMUApxEmJZDNSUHmoWZJEan
         LCGzQqXY6zTK75SxxOvajE32zsPts+9yuUbeZXKP+j5CxuWbZSt55D9hprzQRhZ4NSX/
         bkog==
X-Gm-Message-State: AOAM532GndkJCbXNSWcmcMDRv1Vm0I8YIR1l53NLxOo1SXTCSRrPWWtn
        OXGj6H2iV2lIF320ABdWpfJfQg==
X-Google-Smtp-Source: ABdhPJyKYBCsU67vlDgZ+DwKTotM9asYUa7LtneV+RLc0CJPByEftzr1sppMmtgDchlZj/TvTXpdyw==
X-Received: by 2002:adf:eb4d:0:b0:1ed:c1f7:a951 with SMTP id u13-20020adfeb4d000000b001edc1f7a951mr18915860wrn.454.1651738690662;
        Thu, 05 May 2022 01:18:10 -0700 (PDT)
Received: from [192.168.0.217] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n124-20020a1c2782000000b0039447beb28asm1747344wmn.23.2022.05.05.01.18.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 05 May 2022 01:18:09 -0700 (PDT)
Message-ID: <9581ba8b-1d28-3292-872b-026c60e20424@linaro.org>
Date:   Thu, 5 May 2022 10:18:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v2 1/3] dt-bindings: misc: add bindings for Intel HPS Copy
 Engine
Content-Language: en-US
To:     matthew.gerlach@linux.intel.com
Cc:     dinguyen@kernel.org, robh+dt@kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20220503194546.1287679-1-matthew.gerlach@linux.intel.com>
 <20220503194546.1287679-2-matthew.gerlach@linux.intel.com>
 <17407fe7-b11d-2ba8-acca-3e71cf1a3b2f@linaro.org>
 <alpine.DEB.2.22.394.2205041425230.2669897@rhweight-WRK1>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <alpine.DEB.2.22.394.2205041425230.2669897@rhweight-WRK1>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/05/2022 00:41, matthew.gerlach@linux.intel.com wrote:
>> Please find appropriate directory matching this hardware, not "misc". As
>> a fallback SoC related bindings end up in "soc".
> 
> I thought misc seemed appropriate because it is a very specific IP block 
> in the FPGA connected to the HPS.  It does perform a simple DMA function; 
> so I considered putting it in the dma directory, but it also has some
> hand-shaking registers between the HPS and a host processor connected to the
> FPGA via PCIe; so I thought misc.  Since the HPS "soc" accesses the 
> component, I can put it in the "soc" directory, unless there is a better 
> suggestion.

So let it be "soc".

>>
>> $ git grep address-cell
>> Do not use inconsistent coding. The same applies to your DTS.
> 
> Is the inconsistency the use of '0x' in the values of #address-cells and 
> #size-cells, or is the consistency having different values for 
> #address-cells and #size-cells or both?

It's about "0x".

> 
>>
>>> +        #size-cells = <0x1>;
>>> +        ranges = <0x00000000 0x00000000 0xf9000000 0x00001000>;
>>
>> Why do you even need the simple-bus above and cannot put the device
>> directly on the bus?
> 
> On an Agilex chip, the HPS is connected to the FPGA via two bridges, 
> referred as the "HPS to FPGA bridge" and the "Lightweight HPS to FPGA 
> bridge".  An IP block in the FPGA could be connected to one or both of 
> these bridges.  I am anticipating device tree overlays being applied for 
> other IP blocks instantiated in the FPGA.

OK

> 
>>
>>> +
>>> +        hps_cp_eng@0 {
>>
>> No underscores in node names. Generic node name.
> 
> I understand.  I am considering dma@0 for the generic node name.

Let's keep the same as in DTS.


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 515245BC90B
	for <lists+devicetree@lfdr.de>; Mon, 19 Sep 2022 12:23:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229985AbiISKXG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Sep 2022 06:23:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230251AbiISKRT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Sep 2022 06:17:19 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECFAD12D1D
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:17:17 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id j16so19097395lfg.1
        for <devicetree@vger.kernel.org>; Mon, 19 Sep 2022 03:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=XOtH2ITlshpecI6bnBjoAK2o/4UpsZgaomPe58WTFa0=;
        b=GwFABzsbegV66LxbaPP4YDrsxec94wyru8Hz9FS4rgvjS8oOOS858m8qxYp3aMSxnC
         VCu+vHzF3xlEnnlwmtjkWjY+lrkVKYGVwBVDLgqBVoYi/xwkMUf5+tHzj7F4Ecx8Kx4v
         H1l9byIZ3wYm6YoXcvgkDLoPJr6kia7fdUOpXgKWjcUJgUfCJuNwGHQOwTfkTKz977CJ
         PH6G8IeN8iIZ9pkSFILb/BrGWyPv2dhyMr7raDJztLo+oUeIGgN9hzmESOwJHfO9116S
         Cmm3gwS1dlFMYQAvHt0/97W73qQ6md0kHnBaE6ezK2NFV519DV1U53TwBkEfsFz9IT/T
         FAYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=XOtH2ITlshpecI6bnBjoAK2o/4UpsZgaomPe58WTFa0=;
        b=gLgiayt3mQeURsHyn4GdzjNSvc39MRHSX7Yszt4Pn+sn/LDnPCz3m5Ix6EwO8sSC42
         3hshbuReKvzXhrAVyB/N1jh1IqtdGuADOFK4MVPANRlzE/6CdlsH6VVlXHcD4b73Nf8X
         T85v4Iec4w9deywyueQiyXGziRAKMo8oj6jhW/rrNpRy+cBxwQwk8kINBiiO2NAJHDFk
         WgvNed0/bjmFGeVOd6T+JE6fwMdxEyT+o3wLvQ7yQP9C1de5bJa4DQD2S3qaCwQENNQh
         XV60718EdTYwoB0b3zWsrXNBd8bj9ZZ932bPafL19RnoFTt7OUcM068xuU6uNxjS6xjy
         tXZQ==
X-Gm-Message-State: ACrzQf3qaFwl9yiq+XKTldbz5nVQbFiyUXR7S09UbxjdM58Sr9p5srjH
        60z1fcoDRAhkizqzr+H3vvmq1w==
X-Google-Smtp-Source: AMsMyM6c/cgEmUbMwNS+ktAG5NYNyqQf7jmXokYFYJBjSFcX8SUSKTqHBQ0nwJnCUhV0rlKmUK8rUw==
X-Received: by 2002:a05:6512:1283:b0:499:d0a3:3ca8 with SMTP id u3-20020a056512128300b00499d0a33ca8mr5781548lfs.665.1663582636171;
        Mon, 19 Sep 2022 03:17:16 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id o20-20020ac24bd4000000b0049c29292250sm3847835lfq.149.2022.09.19.03.17.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Sep 2022 03:17:15 -0700 (PDT)
Message-ID: <31028736-ba81-122e-b630-b66e9d9d491a@linaro.org>
Date:   Mon, 19 Sep 2022 12:17:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: phy: ti: phy-gmii-sel: Add bindings for
 J721e
Content-Language: en-US
To:     Siddharth Vadapalli <s-vadapalli@ti.com>,
        Rob Herring <robh@kernel.org>
Cc:     lee.jones@linaro.org, krzysztof.kozlowski+dt@linaro.org,
        kishon@ti.com, vkoul@kernel.org, dan.carpenter@oracle.com,
        grygorii.strashko@ti.com, rogerq@kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, sjakhade@cadence.com
References: <20220914093911.187764-1-s-vadapalli@ti.com>
 <20220914093911.187764-2-s-vadapalli@ti.com>
 <20220914161527.GA2269201-robh@kernel.org>
 <d48e5ef4-6d5b-0977-ed45-de810e42356c@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <d48e5ef4-6d5b-0977-ed45-de810e42356c@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/09/2022 07:28, Siddharth Vadapalli wrote:
>>> @@ -65,12 +66,19 @@ properties:
>>>      description: |
>>>        Required only for QSGMII mode. Array to select the port for
>>>        QSGMII main mode. Rest of the ports are selected as QSGMII_SUB
>>> -      ports automatically. Any one of the 4 CPSW5G ports can act as the
>>> -      main port with the rest of them being the QSGMII_SUB ports.
>>> -    maxItems: 1
>>> -    items:
>>> -      minimum: 1
>>> -      maximum: 4
>>> +      ports automatically. For J7200 CPSW5G with the compatible:
>>> +      ti,j7200-cpsw5g-phy-gmii-sel, ti,qsgmii-main-ports is an
>>> +      array of only one element, which is the port number ranging from
>>> +      1 to 4. For J721e CPSW9G with the compatible:
>>> +      ti,j721e-cpsw9g-phy-gmii-sel, ti,qsgmii-main-ports is an array
>>> +      of two elements, which corresponds to two potential QSGMII main
>>> +      ports. The first element and second element of the array can both
>>> +      range from 1 to 8 each, corresponding to two QSGMII main ports.
>>> +      For J721e CPSW9G, to configure port 2 as the first QSGMII main
>>> +      port and port 7 as the second QSGMII main port, we specify:
>>> +      ti,qsgmii-main-ports = <2>, <7>;
>>> +      If only one QSGMII main port is desired, mention the same main
>>> +      port twice.
>>
>> Two different forms for the same property name is not great. Just make a 
>> new property if you need something different.
> 
> Thank you for reviewing the patch. Based on the discussion for the
> previous series at [1], I had planned to reuse the same property
> "ti,qsgmii-main-ports" for TI's J721e device too. The reason for this is
> that the property represents the same feature on both devices which is
> that of the QSGMII main port. The only difference between the two of
> them is that J7200's CPSW5G has 4 external ports while J721e's CPSW9G
> has 8 external ports. Thus, J7200 can have at most one QSGMII main port
> while J721e can have up to two. Adding a new property which describes
> the same feature appears to be redundant to me. Please let me know.
> 

The trouble is that you wrote the description like it were two different
properties (for xx this is one element, for yy this is something else).
You need to describe the property in unified way.


Best regards,
Krzysztof

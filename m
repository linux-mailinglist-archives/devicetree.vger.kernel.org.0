Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F00FC683302
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 17:49:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229651AbjAaQtt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 11:49:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230514AbjAaQto (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 11:49:44 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA9DB2069B
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:49:42 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id h12so14796087wrv.10
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 08:49:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NSEGD/xtm60wXblc08WxZnGDiXJW2nRLYVCmhXmbvbU=;
        b=sI6MVev051pwPuQouBouY5CRhRalEeyBc2HL3Oenf9AMJkJiruJWCxtQEUpfN0TXsy
         4AdXKyBWpql5XCFfT2FHoB8t+KmHaob7Z4DamBo1nOJWzfsyJiwPZRjIfDNq1X2fqqUS
         5IpFfIVNRtJxIqaXHGDrx2OEQwwB1uJxLDcOpg1J9X1IzgzH9gLxDKnVik1lTrE5LxR4
         tgJt4DK6d+HTmxPx35PZSArq1gbHRvbdwxzG3OvDBm8ld8evbwpmbSshxYu2EeoZ6MHd
         TIvT8p0KQaAtNo1GSBkvSmkBG0A3CtBexJK5CSDEpF5VbNrbcLncsvHtJGa8kwC46ce/
         1jkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NSEGD/xtm60wXblc08WxZnGDiXJW2nRLYVCmhXmbvbU=;
        b=57xZ55cxXpO7V7kMq9meOAtKULA6SK6SyizVDA/iGwMvaQQIUgylmjldBRSLyoLGVD
         cmX7u74e/ieyU7ErMwUggYCv8WP2mAaez+x/qGtydLTKZxxJX4q4BQxazluHJuv1KYXA
         1FpA2zh13z7++kbscV72O51KjNRj9VqQ0wcoFNPek1lJnyajpERvtI/U2SiC9QA7VVa5
         JywONxYdr1bQ57IwpgXvMTjkeuAC51JLp1agIzkTeXjWFEAI/ggmfKISQ5dXJmKs8djI
         KizmRqfpy0Q4kJJ/i80p5PQUDs6RRXcnPTUUy+CBVhKuLS48kw2gUbWXOz/CcDZRREgt
         QflA==
X-Gm-Message-State: AO0yUKUgLWmFzLFFtTL7+JEiArKZ9XzWZmHPpYKFOVitD+sxS4ejInLo
        EO4c+B9CFHkTWJHqDz0Tp5UOcA==
X-Google-Smtp-Source: AK7set8gCTTdCs4CtmgPn0TiWDEaYi9+OBM5a1Cnbi014YeUlhU/J/O2Aj/AOOfRzYg06BmxtncQwQ==
X-Received: by 2002:a5d:4f06:0:b0:2bf:dbe3:eb9c with SMTP id c6-20020a5d4f06000000b002bfdbe3eb9cmr3291839wru.4.1675183781515;
        Tue, 31 Jan 2023 08:49:41 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id t16-20020adfe450000000b002bbdcd15e44sm14805071wrm.37.2023.01.31.08.49.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 08:49:41 -0800 (PST)
Message-ID: <a929d517-bbb3-fca2-71cf-6f3870969016@linaro.org>
Date:   Tue, 31 Jan 2023 17:49:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V9 1/6] dt-bindings: usb: Add Cypress cypd4226 Type-C
 controller
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, Wayne Chang <waynec@nvidia.com>
References: <20230127151041.65751-1-jonathanh@nvidia.com>
 <20230127151041.65751-2-jonathanh@nvidia.com>
 <be2a9eaa-d049-c249-0c1b-d0eb50b25c3d@linaro.org>
 <9708e6a5-1cde-425a-d463-61d82ccae232@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <9708e6a5-1cde-425a-d463-61d82ccae232@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/01/2023 22:10, Jon Hunter wrote:
> 
> On 28/01/2023 10:29, Krzysztof Kozlowski wrote:
> 
> ...
> 
>>> +    $ref: /schemas/connector/usb-connector.yaml#
>>> +    unevaluatedProperties: false
>>> +    properties:
>>> +      reg:
>>> +        maxItems: 1
>>> +
>>> +required:
>>> +  - compatible
>>> +  - reg
>>> +  - interrupts
>>
>> I would assume that at least one connector is required (oneOf: required:).
> 
> 
> I have been looking at this and wondered if we need the 'oneOf' in this 
> case? Shouldn't we just add 'connector@0' to the required properties?
> 
> At first I added ...
> 
> oneOf:
>      - required:
>          - connector@0
>      - required:
>          - connector@1
> 
> But this is not correct, because the above will cause warnings if both 
> connector@0 and connector@1 are present.

Right, then anyOf should do the trick.

Best regards,
Krzysztof


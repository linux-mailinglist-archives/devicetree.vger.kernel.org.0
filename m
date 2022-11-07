Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 78F6861FD0D
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 19:14:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233130AbiKGSOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 13:14:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233105AbiKGSOf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 13:14:35 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64C9D252BD
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 10:13:36 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id b3so17905272lfv.2
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 10:13:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+uKA18edLc0BdeLK0lwtbtFRbx6XMgKgPvpuZ8pTG/4=;
        b=brGlE0v/tMoxQZNy8szT2vo/Dy327U9piUlgB77pqjpYHBE1rQgN0Rd9J4vJ8gpsAi
         AFQQO/poLFL84N6Y8INi1jC/+sPlYJ10aSd6Oq6xOHoSBi7FunCoCRXxWsYQoq8VWZ0o
         JSm5ipGp9XVB1EzcRLDuRTPG1rHK0zcCwttkTdHGxWVHi8XwjDVRwsumdUJrgqkIwRq3
         WW4GnWiA87aFRPZDYWKny4bNiSJvkLsAoJ11AOrqYmJpov1LJ8PxH4wMzrpos2UbXppb
         AGX6XiTExWInqLMhnV21iB0z3aF7hb5vYZBvt0J0F28PsDXoqY+6XjN1/tVoTSjeRVBx
         Dvgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=+uKA18edLc0BdeLK0lwtbtFRbx6XMgKgPvpuZ8pTG/4=;
        b=vFA4sJtTXchranSqxtDkZe3S+JrDcLGDfwvhR56jo+1bCX/Q0SfdOIrILqrUJLQg7T
         s1tKNWayq3MZRkpFCqoE88wgevcz1zX8TbNKU4WbTw3EdoS2YYmKP3CsqZh/Cy3PaeZu
         s4b6uqfJBRaQ+4Y/QDvU/tEqd2B8qK5ElfnhHJ/YABbz7Jn/uG6+RvF3/KXqKTSwzsMK
         qJgug4cNcF/uDp+SIfYwCE4iz5S33kpP0ND/Tbsfk/wBW1i1S1t30DXt+wSkXGcy5a6B
         rU8mum8y/mtQI0uGH5IU2LzN6mIbE4ZZHrCSKbTJRzoXjTqr+JZvKo1ZsOcS4vamynmJ
         74JA==
X-Gm-Message-State: ACrzQf3C+l8wDuB40fj+nvZ5zxj8IbOxDLn9KOswjWe+w7HHlz+tIGNF
        0SMxW+7QeWiIzePbHiCxwpTTCg==
X-Google-Smtp-Source: AMsMyM4JUWltwpF4oWZQkgXEXu/izLEqc9exREa9Kelefsjbx3kXzH7U3G+j96MADQinmbYeVKVSNw==
X-Received: by 2002:a05:6512:2a9b:b0:4ac:3f87:1510 with SMTP id dt27-20020a0565122a9b00b004ac3f871510mr17087497lfb.104.1667844814529;
        Mon, 07 Nov 2022 10:13:34 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id c15-20020a056512074f00b0049476667228sm1368632lfs.65.2022.11.07.10.13.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 10:13:33 -0800 (PST)
Message-ID: <2d8b2d85-7bc6-026a-baf9-11a47171ddc5@linaro.org>
Date:   Mon, 7 Nov 2022 19:13:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: (subset) [PATCH 20/20] arm64: dts: Update cache properties for
 tesla
Content-Language: en-US
To:     Pierre Gondois <pierre.gondois@arm.com>,
        linux-kernel@vger.kernel.org
Cc:     Sriranjani P <sriranjani.p@samsung.com>,
        Shashank Prashar <s.prashar@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Aswani Reddy <aswani.reddy@samsung.com>,
        devicetree@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob.Herring@arm.com
References: <20221031092125.533621-1-pierre.gondois@arm.com>
 <166742051293.139492.11245653117636211417.b4-ty@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <166742051293.139492.11245653117636211417.b4-ty@linaro.org>
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

On 02/11/2022 21:21, Krzysztof Kozlowski wrote:
> On Mon, 31 Oct 2022 10:21:19 +0100, Pierre Gondois wrote:
>> The DeviceTree Specification v0.3 specifies that the cache node
>> 'compatible' and 'cache-level' properties are 'required'. Cf.
>> s3.8 Multi-level and Shared Cache Nodes
>>
>> The recently added init_of_cache_level() function checks
>> these properties. Add them if missing.
>>
>> [...]
> 
> Applied, thanks!
> 
> [20/20] arm64: dts: Update cache properties for tesla
>         https://git.kernel.org/krzk/linux/c/3f0d4a02c7490f1aa15764ed85dcf0881bf66b9e

Now dropped. I understand this is the intention/request of v2.

Best regards,
Krzysztof


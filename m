Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5030D619BCD
	for <lists+devicetree@lfdr.de>; Fri,  4 Nov 2022 16:35:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232657AbiKDPfT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Nov 2022 11:35:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232642AbiKDPfL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Nov 2022 11:35:11 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF5A1317D7
        for <devicetree@vger.kernel.org>; Fri,  4 Nov 2022 08:35:10 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id e15so3427900qvo.4
        for <devicetree@vger.kernel.org>; Fri, 04 Nov 2022 08:35:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6iCDoNmowJT2jyWbq8mvWIyPWMtuQrbpDE4g3uip2fI=;
        b=E1lGmRIyHWLaft5aAhzNeSzDn0W14oWnhjGvZed9+OBgENhF0+WPt7IRgCSv4TgYfh
         Xf+aQxfYGmafjhiqMqx/ntHyqe/FlrZBW83LRob2HkrifBpwtxsDcm+vQpcH12wBjI0v
         wwZgibWX302KEBwM/l/d7Dsm0mp8kFK3HL/tDKdvyM4Iw0Dgp1V3U0ihvjbA2XAoZyif
         yq1jFPRqOTUqjqh8p1WdAyAUrc9oIdDKz+MgtvLGqW3cQ4zBaJmLTGrN9dNHlCS2QArc
         aRH+MKIN6L4CfI/um2RAC4GohOQTYAQQ06R+Fr3AP2oJO0BkVG7OJKZAZsyr2MheJbk3
         xepw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6iCDoNmowJT2jyWbq8mvWIyPWMtuQrbpDE4g3uip2fI=;
        b=uhKRO7D0hxBb0EGPD8GWTvs7uMVmThla0cQxVEXPFaYmlZwv7aJzZvO+DaNLL7OgFi
         XIjvwYe9cZ31Oa4wLV81yfxNZciQalUmMbnjBtylqY4JFaIOtXSe/fYOZAxu/1FBN56N
         Hij0lCTkEAwmifuRTgd2ALuqP8JaJTksLRoIja3c73VUNgx9VFMQHtgd0ws03RuB+kAP
         ftcQOoE5vL9qQOP+VpveBDmO7ZN0S+kOCnV1Y/Akdy5oopfg6mndW0QMUHU/WpeHJXQV
         2Baa1hkOd+M0R4qb5n4IvJwjrt30Ozp+4z8sYFqSujTmEqs0UWyOb6p1lfk/9ppSL8Yc
         Q6qQ==
X-Gm-Message-State: ACrzQf2ych4gJAENm7/5x6wZLkHxfe+4xMdG1xGDgrS2Yl+dYQhHicCe
        0P4IHc2Z1X+ErepbBLB4VcT9QQ==
X-Google-Smtp-Source: AMsMyM6ZI40WJt7Q6MnZhGSrFbWvzC+8vSJhYXx3wpRhlkjzz/zOqPwZfUIWNYSCEpDn+goCgoPMzg==
X-Received: by 2002:ad4:5766:0:b0:4bb:f0a3:aec7 with SMTP id r6-20020ad45766000000b004bbf0a3aec7mr26895492qvx.86.1667576109965;
        Fri, 04 Nov 2022 08:35:09 -0700 (PDT)
Received: from ?IPV6:2601:586:5000:570:aad6:acd8:4ed9:299b? ([2601:586:5000:570:aad6:acd8:4ed9:299b])
        by smtp.gmail.com with ESMTPSA id x17-20020a05620a449100b006fa31bf2f3dsm3195397qkp.47.2022.11.04.08.35.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 04 Nov 2022 08:35:09 -0700 (PDT)
Message-ID: <b9b20abc-d37f-f74a-a416-2e210bf944c4@linaro.org>
Date:   Fri, 4 Nov 2022 11:35:07 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v3 1/8] memory: tegra: Add API for retrieving carveout
 bounds
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Mikko Perttunen <cyndis@kapsi.fi>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mikko Perttunen <mperttunen@nvidia.com>,
        Ashish Mhetre <amhetre@nvidia.com>,
        Sameer Pujar <spujar@nvidia.com>,
        dri-devel@lists.freedesktop.org, linux-tegra@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220920081203.3237744-1-cyndis@kapsi.fi>
 <20220920081203.3237744-2-cyndis@kapsi.fi> <Y1aP7kDi8cJUTcGN@orome>
 <ee3073ba-d621-8b02-c986-3cf44cfbba96@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <ee3073ba-d621-8b02-c986-3cf44cfbba96@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/11/2022 11:33, Jon Hunter wrote:
> Hi Thierry, Krzysztof,
> 
> On 24/10/2022 14:15, Thierry Reding wrote:
>> On Tue, Sep 20, 2022 at 11:11:56AM +0300, Mikko Perttunen wrote:
>>> From: Mikko Perttunen <mperttunen@nvidia.com>
>>>
>>> On Tegra234 NVDEC firmware is loaded from a secure carveout, where it
>>> has been loaded by a bootloader. When booting NVDEC, we need to tell it
>>> the address of this firmware, which we can determine by checking the
>>> starting address of the carveout. As such, add an MC API to query the
>>> bounds of carveouts, and add related information on Tegra234.
>>>
>>> Signed-off-by: Mikko Perttunen <mperttunen@nvidia.com>
>>> ---
>>> v2:
>>> - Add check for 64-bit phys_addr_t. In practice phys_addr_t
>>>    is always 64 bits where this runs, but it avoids warnings in
>>>    compile test.
>>> ---
>>>   drivers/memory/tegra/mc.c       | 25 +++++++++++++++++++++++++
>>>   drivers/memory/tegra/tegra234.c |  5 +++++
>>>   include/soc/tegra/mc.h          | 11 +++++++++++
>>>   3 files changed, 41 insertions(+)
>>
>> Krzysztof,
>>
>> I've applied this to the same tree as the patch that uses it for now.
>> Let me know if you want me to put this on a separate stable branch for
>> you to pull in.
> 
> Any update on this?

What kind of update do you expect?

Best regards,
Krzysztof


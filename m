Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC48461E19B
	for <lists+devicetree@lfdr.de>; Sun,  6 Nov 2022 11:31:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbiKFKb6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 6 Nov 2022 05:31:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229872AbiKFKb4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 6 Nov 2022 05:31:56 -0500
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62A1865C4
        for <devicetree@vger.kernel.org>; Sun,  6 Nov 2022 02:31:55 -0800 (PST)
Received: by mail-lf1-x130.google.com with SMTP id o12so13113991lfq.9
        for <devicetree@vger.kernel.org>; Sun, 06 Nov 2022 02:31:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UftRfa3QhbhyOprZ4+CKBvpNeumWx+igfcF1C3LmJVY=;
        b=Cvz8oLk4SsKXl5F+x9SW5YnyuwhaCtODAZY8kY84ih56i/IaZBTk+/TG4s5Fr1czXq
         UTiyKE8+r3H8sHGKEQPEB8udLqyQxToLFdqc7tUwP8aepAWxcBb/dVjVwADphi/G4dfj
         WgsDzyhOFtYHH3BcJDDs3rrIfbOQ3nFI7y3Dqoa6M8Zdi7jqvEqAWjy2d6KPOlgK8B7B
         V4A23ysd4SUGk8NapRan7eMVe4Myk1gABP42bO7+mFEW6uEy86IRBkyGpLtAFThBlzLj
         PGy85Q1jejG7rSbuoaIy6ICzizVgqwopAPj+LDxj/WJOvx+ap39mUfZPhs8B1J5P+hzV
         SUeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UftRfa3QhbhyOprZ4+CKBvpNeumWx+igfcF1C3LmJVY=;
        b=6CMLIQ6mc91FfuiT0gg9yJku48smX4dhWujwxrarpu/46KDVt7aNmR5kfxqbPpSVvq
         3BS+cXxPSloEUNSL9H9HHgDVd/AwJ38mUluBbR3u3R5bDAXclmmK9G2+0i5fvlv2gQl5
         hViCd4W4OzbiCXRYiSPWGXeD5LLNw1XgMx4sWLxAtGdixm7whrnQY7EDW9glnZVsrF+4
         5ctcgU83jNzaQOgO+8+7qxpRTEsSvFlGWeLKx8O8NwLdbzVsGrgwo2c6BFz3cuzR5Ufe
         LmdFzJjzgHErva0YHlwV7rrTlRHIO5urGnhXlpXW00QXj6A+rpcS5zkCERQeVrUulDHZ
         cdLg==
X-Gm-Message-State: ACrzQf2jfjry4qiNm4XML6jWDTwYgDNdo/QzZB5bcYrdVyK/S8ePi1Ax
        f39lNJZt3YkrD3Y48zRaCu5Vqw==
X-Google-Smtp-Source: AMsMyM5Kk+BtTV9IVoS24c7DgzHU0Q1H9UcqS7YflJrIjKfsemJoIFMHy5TXVVNpn0CEwRONBMC+bQ==
X-Received: by 2002:a05:6512:503:b0:4af:1cbe:1ac6 with SMTP id o3-20020a056512050300b004af1cbe1ac6mr15096844lfb.651.1667730713799;
        Sun, 06 Nov 2022 02:31:53 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id x41-20020a056512132900b004ae394b6a6fsm633564lfu.246.2022.11.06.02.31.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 06 Nov 2022 02:31:53 -0800 (PST)
Message-ID: <7f7f94a8-0547-032a-3fd5-4e0899813d6c@linaro.org>
Date:   Sun, 6 Nov 2022 11:31:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: cpufreq: qcom: Add missing cache related
 properties
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221104162429.1981729-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221104162429.1981729-1-robh@kernel.org>
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

On 04/11/2022 17:24, Rob Herring wrote:
> The examples' cache nodes are incomplete as 'cache-unified' and
> 'cache-level' are required cache properties.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>



Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


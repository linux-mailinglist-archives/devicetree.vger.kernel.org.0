Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DFB15BEAAA
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 18:01:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229791AbiITQA5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 12:00:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231229AbiITQAg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 12:00:36 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0EF8E2DA9B
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 09:00:33 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id a10so3629262ljq.0
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 09:00:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=9j9hRD8VpJNy64eeH7PNa6VDujRwggkrHfXGdaQhmrg=;
        b=Eg5YXUJ242I2k3dw88U7RH91TcQ4yM6RvhDanZxorb7IeRDZg9Df6+nBKiIChMz/9o
         Ws9HTXkaDHSppwc6YAOjgZ6dpH3L388eNJiaDGjjynObXzy3bUCAXjQdZJry7LG80cR4
         iHKd3594n9oX02ZXXV2sVYWjGVJI3igUkny/w4o/VatZhSgs4ta3wkjBeOWgN336Q84S
         4kYrGSd/PR+HsDlYfVe3f1fB8aDZzosjUv+MJ/cv2mTiUcEdEJxYeS3DMUle62mokh53
         pEB+RGnuwlsYTnt7HG7EESHpDv/tHFnepitHCgzYJ8cppnkPdLTM4TbJ+x+t10VH1n7Y
         WbkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=9j9hRD8VpJNy64eeH7PNa6VDujRwggkrHfXGdaQhmrg=;
        b=P0LtnIn0lMYYh0NhyIVpV/TmuTQ2Dkd7KAlXTR+tMCuwEO5XXmaG+gm0Yw12oQb5XP
         A0u2ztrBfRKRP3KkkndZ1PL5bYBfeWevMYfX5mtVbO7GaffwrL/fUJoKBA6pUBl2tfqs
         xZ5bZA1mt1Xao5LkXAmvHIytOoy6ThptABqkhCIt++hz0OetMemAWc9v1Dw5JrJgoIS8
         t8axcNmrzQeKOpD/C5RCipc54F84v/JU+r61O0PeEMcaRvrHeHsi9nlDr20MnibcrqoV
         K53YRdyfm5vY+SCx5PEX0T6iK9NdOza+ahDIVpS4KPZ5vQ4FCVlj5+3C1UAUMPIEsBEk
         RE+A==
X-Gm-Message-State: ACrzQf1UNS/Cx9hf2HXQHVI3KjoorVogCFYhxXie94kC0fF1WhdKrP/A
        3Ohtho5rWD7rwnD7CrcVmp4/hg==
X-Google-Smtp-Source: AMsMyM6R9UX8juD+DsbdEfe64qZRQNEUGAcKG+6QlhNsJW8FJc9I2A3RWsA6EWI1zsedGfa5XmMYOw==
X-Received: by 2002:a05:651c:1611:b0:261:e11c:c2ef with SMTP id f17-20020a05651c161100b00261e11cc2efmr6942910ljq.340.1663689631376;
        Tue, 20 Sep 2022 09:00:31 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u17-20020a05651220d100b00497abfd49fbsm16916lfr.249.2022.09.20.09.00.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Sep 2022 09:00:30 -0700 (PDT)
Message-ID: <69d78d93-ab98-a2d8-4a39-e31ec10cc334@linaro.org>
Date:   Tue, 20 Sep 2022 18:00:29 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/3] dt-bindings: pwm: tegra: Document Tegra234 pwm
 binding
Content-Language: en-US
To:     Sandipan Patra <spatra@nvidia.com>, thierry.reding@gmail.com,
        jonathanh@nvidia.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     bbasu@nvidia.com, kyarlagadda@nvidia.com
References: <20220919141455.31084-1-spatra@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919141455.31084-1-spatra@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 16:14, Sandipan Patra wrote:
> Add compatible for nvidia,tegra234-pwm with nvidia,tegra194-pwm as a
> fallback.
> The PWM controller blocks are identical to ones found on the
> Tegra194 SoC. No driver changes are required and compatible string
> "nvidia,tegra194-pwm" will be used as a fallback.
> 
> Signed-off-by: Sandipan Patra <spatra@nvidia.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

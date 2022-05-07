Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0848A51E821
	for <lists+devicetree@lfdr.de>; Sat,  7 May 2022 17:26:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243896AbiEGPak (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 May 2022 11:30:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240194AbiEGPaj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 May 2022 11:30:39 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A20F711C08
        for <devicetree@vger.kernel.org>; Sat,  7 May 2022 08:26:51 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id ks9so12964206ejb.2
        for <devicetree@vger.kernel.org>; Sat, 07 May 2022 08:26:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+cyldYyGeSN8orZdKQgiNqxz5MRewwWDiC7Zpl6m0ZE=;
        b=EtQEM/nj6x2u8iik/awsZGdMW9VySLzyDHn2hNOsBTfn27fYbkVvNCb/+rddUBX2ye
         lOk1+3VB9PwuftOi7MlJjWHMOvWY1+q390RvKA4pTjZm2d5rtz8FOZ8VIhp6a6Etw74V
         Kg2yUbo5WXkeHWgTQ8atIDGs7kIU9L+ehaXjXNXnImkJsVlvWJtP9gRzOSUFroYbH1KC
         VCnFQV6fglJm1Tj43wlbxyPlXCbG+pxS5fTFh5del3XIHh7Aw1naE+J/OXPl7cScEdAE
         n+tBw/R7TJqcpaNBMJCZIHUYkr+OUyIkkCO6Xru4EyUjA48CQruoDX28sOqVRuitVuTI
         LYYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+cyldYyGeSN8orZdKQgiNqxz5MRewwWDiC7Zpl6m0ZE=;
        b=caE1uT8kJKjG9qVgWoe+73k7KC8/xM34ICiBIHg89FSHG/860wtisxuSK/Oww5ZM/c
         4NDsjpSUceZ5mnFAmDQw3PaKKfxaVCA4yBOVvWR8m94U7YChlgWcZxDttnHYu9BzGT4Z
         fuMc4z8r6Ws4e4oIbEwWWoF1q/0hM5PeXtzLVhTtz5f/Lqe/BnfRyJx337Q98y42L5/z
         tRc8O0D4n4ZA3FxfVcdR1jho5N/wbbUYnvzI5iHSW5UKWULSyGggdp++1Esh0cZo40UO
         88oAP7tJp/11PqBjqYhUtOLjOz5qZL0S3Z6xirRGcO1jxBTi5D/t2UjDXDZo6XCqw4ln
         HeXg==
X-Gm-Message-State: AOAM531K0GnKUTYpowCXXW2dGey1sUwyhMPfKWlTQYC+CR2BCp8D8V7h
        zKqSrf4q+7Sva+wWla6Keajrtw==
X-Google-Smtp-Source: ABdhPJxhNeIRjFu28/yvbAt+uDadqUI1rvXdoSBxdbri0fQfVOftoRHil6NROgFCt+tIjBJ17hgmNw==
X-Received: by 2002:a17:906:f2c8:b0:6f5:18a1:c410 with SMTP id gz8-20020a170906f2c800b006f518a1c410mr7442640ejb.281.1651937210283;
        Sat, 07 May 2022 08:26:50 -0700 (PDT)
Received: from [192.168.0.232] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id l10-20020a170906938a00b006f3ef214e68sm3129018ejx.206.2022.05.07.08.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 07 May 2022 08:26:49 -0700 (PDT)
Message-ID: <40c22f22-8314-adb6-918e-8288090d1aea@linaro.org>
Date:   Sat, 7 May 2022 17:26:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for EBBG
Content-Language: en-US
To:     Joel Selvaraj <jo@jsfamily.in>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Corentin Labbe <clabbe@baylibre.com>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Hao Fang <fanghao11@huawei.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <cover.1651835715.git.jo@jsfamily.in>
 <BY5PR02MB7009E985CDB281DC9BE9CF37D9C59@BY5PR02MB7009.namprd02.prod.outlook.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <BY5PR02MB7009E985CDB281DC9BE9CF37D9C59@BY5PR02MB7009.namprd02.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/05/2022 14:17, Joel Selvaraj wrote:
> Add a prefix for EBBG. They manufacture displays which are used in some
> Xiaomi phones, but I could not find much details about the company.
> 
> Signed-off-by: Joel Selvaraj <jo@jsfamily.in>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

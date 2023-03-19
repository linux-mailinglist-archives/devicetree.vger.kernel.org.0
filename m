Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 495A66C0196
	for <lists+devicetree@lfdr.de>; Sun, 19 Mar 2023 13:25:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229550AbjCSMZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Mar 2023 08:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49992 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbjCSMZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Mar 2023 08:25:41 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A6017695
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:25:35 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id eg48so36754548edb.13
        for <devicetree@vger.kernel.org>; Sun, 19 Mar 2023 05:25:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679228734;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZFpW7DvYItPfLOavEDwf4Jv4q9OdZqCjmJNXxWGKgnw=;
        b=wBl/FZVyPgenBUiH7+ZKEfBWanrTHgh5D7yMrsmn25uzyjc3atmJVo+aEnYW+Lb4lh
         KUXzNuZUdbRLn8V5LmgNWehFT37Ep2EhrX1jMRQ77Ejl5DayBiE0ldlwW2XrtSlssQZr
         WkMY2qgcA20/8tBonUvE3f4UB10yPesZnaZsuEzB+dsABBWritlLho4AL9br7K+6fkDe
         TWAKFLLqQKazItu3wky+V1Ce6aUW2WU2rBZxdlf3gihjZg8ZGg0mIbSy6JLHLurG/dm8
         vfFKXtEi74MGZOoVimxsztnJ28pP6nHaeF6L0yOunsaxz0o91zOqGS3NoXWtgOuaYjDC
         g+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679228734;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZFpW7DvYItPfLOavEDwf4Jv4q9OdZqCjmJNXxWGKgnw=;
        b=VWH4w6c9tlr1QbKksME95tw+hg+vOYuzuvxjdnPyek9Rgd38dnbD974XvbWmR4z8mC
         6xSBKy8UfO5Cdr2TQfJgh3dyAkne4aOMavS4D/MR5XHzX3gVdh9L06THiBuJ4rLRd5F2
         QmeOESOuehxdjFiawjfcQDRG8TyOPKDVKsAq0O9cUHeiXrLZNGqVUAp3bAJsHZHd0Fjg
         csHZ2i4MVOotPj9f7okEFXDWvvuE/iIp0hCZe3kdd3Eb9x3YfcRIErZ3t0tTIpd4ismh
         SEDA8wXUJUt8jyqsuKbQQG5IaM1BEHYXkTzkCKEHhyH9yih+ZI2mvEAnav9HsqQQImkm
         +qFA==
X-Gm-Message-State: AO0yUKWKWL1e1UvKtMfhXdoCeWD3uJY5NKM3ud8udkoObQTivy0lRRBI
        JGKcoyxolP9jMWw9CRSxlb0yew==
X-Google-Smtp-Source: AK7set9aSrS8i0GCekJwdkTs9pBj5b6jS08qCGaGpkNZS1KjkYCsinLht12Zf3/m+HWtB30GSoHOWA==
X-Received: by 2002:a17:906:6b94:b0:932:8cd:1021 with SMTP id l20-20020a1709066b9400b0093208cd1021mr5697603ejr.33.1679228733967;
        Sun, 19 Mar 2023 05:25:33 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:5b5f:f22b:a0b:559d? ([2a02:810d:15c0:828:5b5f:f22b:a0b:559d])
        by smtp.gmail.com with ESMTPSA id g25-20020a50d0d9000000b00501c2a9e16dsm480036edf.74.2023.03.19.05.25.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 19 Mar 2023 05:25:33 -0700 (PDT)
Message-ID: <bf3a25e8-7076-d023-3b67-4d6c65790bba@linaro.org>
Date:   Sun, 19 Mar 2023 13:25:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 4/6] dt-bindings: clock: jh7110-syscrg: Add PLL clock
 inputs
Content-Language: en-US
To:     Xingyu Wu <xingyu.wu@starfivetech.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Conor Dooley <conor@kernel.org>,
        Emil Renner Berthing <kernel@esmil.dk>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Hal Feng <hal.feng@starfivetech.com>,
        William Qiu <william.qiu@starfivetech.com>,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <20230316030514.137427-1-xingyu.wu@starfivetech.com>
 <20230316030514.137427-5-xingyu.wu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230316030514.137427-5-xingyu.wu@starfivetech.com>
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

On 16/03/2023 04:05, Xingyu Wu wrote:
> Add PLL clock inputs from PLL clock generator.
> 
> Signed-off-by: Xingyu Wu <xingyu.wu@starfivetech.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


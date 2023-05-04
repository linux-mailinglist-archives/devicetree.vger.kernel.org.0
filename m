Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 673456F6502
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 08:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230011AbjEDGaB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 02:30:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbjEDG37 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 02:29:59 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7B802D5F
        for <devicetree@vger.kernel.org>; Wed,  3 May 2023 23:29:51 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50bc5197d33so77860a12.1
        for <devicetree@vger.kernel.org>; Wed, 03 May 2023 23:29:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683181790; x=1685773790;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=dKDghn2BEzef2X05qs9Bay+N6tZZ6zhNZbbQNcDAi/s=;
        b=jY89SL8jkoTW1rehE16YV3Kv+XZi1ga80FlmYc5KdWLuT82lWIXEy+kT9npuNhhTCC
         IVot5eVw3iWlvT0GTziyqWYH6TvE00ZADAQJY1NZEWJ7bqW/NJe3ElgS5wCQoGVeqsNb
         UtrRvgeWsa5E9ugG6lSiSFsLiiVey7DHiUBbGnyq2RzpM1VsCPzep/9ibQbBqnFm+UN2
         ChSSx8C4Oh6MCGU97uQEkuZhinBqXKyPCSYJxdV/nU0WIe1+l2Sh2XzfDpUWTLq6GXVv
         PM+xudNzGugw5W3T4rgJtlON+rjYAJor0ezqCJ4/kEkwT+Ojq7rfb+oHUQ+6ywbC5ySz
         MKaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683181790; x=1685773790;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dKDghn2BEzef2X05qs9Bay+N6tZZ6zhNZbbQNcDAi/s=;
        b=CWaACmPZm8afNYFF6PybgumwDKd8x9kTDaWhb/47KtUDg/jTWV+P/+tekwLeoFVGgC
         1/rJeONJgb3Xb7Z0VaY/M2Kwg6rNU1nefn4Noy09Ti+mdnHmKp6Kdh9NwzYWwUHzrlua
         LDmd085TJqahSJDxCnwkHU27UXGCoBsM6tmh5Q5VP+SXS09sszsS3yZw26VfzVpq8nNw
         47+w1sa3/tP47+nVOxa0m0uhQZrlh9vZrdg4jnEbwelIDIsVXMVekaGYwT+O25C4XcAq
         RxqgAO/WfndpJLQnFgy4fxyun/E/nMsQqAtg6rl7gO2lu9/9XnL9b9DiyKkQEFkYX4ji
         L53A==
X-Gm-Message-State: AC+VfDwmx+kojumUHlOGEr0tgz10qdy0svPJW5sJfvMzsSB4Hu1/OgxD
        7NvgL4mIRX8Qeh6foFmpeo03vg==
X-Google-Smtp-Source: ACHHUZ4L72kydfTXaK8lkI4sPCk/X09R0evirbNAkxA8WqVqFLyJgSHDJUl5pxE7BcYaMscALWexzA==
X-Received: by 2002:a17:907:1693:b0:94e:4c8f:758 with SMTP id hc19-20020a170907169300b0094e4c8f0758mr6212909ejc.76.1683181789930;
        Wed, 03 May 2023 23:29:49 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:cbf1:e7ef:fb81:e912? ([2a02:810d:15c0:828:cbf1:e7ef:fb81:e912])
        by smtp.gmail.com with ESMTPSA id gt11-20020a1709072d8b00b0094f07545d40sm18151574ejc.220.2023.05.03.23.29.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 May 2023 23:29:49 -0700 (PDT)
Message-ID: <4ee1f249-ad75-273b-f8f0-e5b00a3d77a3@linaro.org>
Date:   Thu, 4 May 2023 08:29:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH v9 01/10] arm64: Kconfig.platforms: Add config for Nuvoton
 MA35 platform
Content-Language: en-US
To:     Jacky Huang <ychuang570808@gmail.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org, p.zabel@pengutronix.de,
        gregkh@linuxfoundation.org, jirislaby@kernel.org,
        tmaimon77@gmail.com, catalin.marinas@arm.com, will@kernel.org
Cc:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-serial@vger.kernel.org, arnd@arndb.de, schung@nuvoton.com,
        mjchen@nuvoton.com, Jacky Huang <ychuang3@nuvoton.com>
References: <20230504033726.93-1-ychuang570808@gmail.com>
 <20230504033726.93-2-ychuang570808@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230504033726.93-2-ychuang570808@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2023 05:37, Jacky Huang wrote:
> From: Jacky Huang <ychuang3@nuvoton.com>
> 
> Add ARCH_NUVOTON configuration option for Nuvoton MA35 family SoCs.
> 
> Signed-off-by: Jacky Huang <ychuang3@nuvoton.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


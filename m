Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 480E7611B36
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 21:52:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229696AbiJ1TwL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 15:52:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229608AbiJ1TwK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 15:52:10 -0400
Received: from mail-qk1-x72f.google.com (mail-qk1-x72f.google.com [IPv6:2607:f8b0:4864:20::72f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DE05237971
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 12:52:08 -0700 (PDT)
Received: by mail-qk1-x72f.google.com with SMTP id f8so4154197qkg.3
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 12:52:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CsD9s1yvz639ptfKfuBHdoorUpS4Rm79rq4T8AYZWSU=;
        b=i4klOO3g+5sHwqNlxCA/zCDOf09j3n3rdI0YsZaBjt3KKeNdKuKpksJ4tQ3/zh1Zpj
         +JqWZcj6htHQRG/hEKqXveWXHGGQ7f1kvv/III+A802AsQx1FN9PU0PjxUffR2f9V7HX
         IaazjiMzB/sUOnrCRaiBV2+QXXDHjnyBRcsmYdznQFzA8hYDq8q7qEe6NLCneTdLdb61
         /3hxCQHTr6TAqXjcvRsRvIj4/BVuxlnYBzVIwQ6KMWJioXtFEz6U1qJ8z1lqaI6UvWvS
         M1dzGJAtjUPxHbIZZM0zSV6aDbQ/HpHkBhtge7VHgNTgegz6m6wjpYmGVwWgHXUZLpdZ
         u07A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CsD9s1yvz639ptfKfuBHdoorUpS4Rm79rq4T8AYZWSU=;
        b=IsyFm75tM49yiFpSsXr1Hp/r6G3uzGicpUush8eP6eyv1NgS2mhqNsrzM6wnFLxL7r
         oDUdjIWsDQQw8PLpMGoANeMIGs19yVj5ImLEwpS41Ui4HZcBhpeDgq6b4BU3kzFrwPSi
         mmZ+0NdIkkRoEqkm9vxTyFEuLSTc1y93FE+hrqXMrUVFJIZbk8sqMxXcMV7Z9PsF8xnV
         PmTZ6E3VsUHjVC8sqhlh3eobURs2oU6RDzak6UfOLf0ed6Zl7V8J/keVyeOOcp9P62tw
         lTIIxB33TTH5KoXw1Ymioi/Nt0kN2qiFly9tc+XW6Ao//+OAb4Y95Wtp4IE9f1ZTE94D
         4wyw==
X-Gm-Message-State: ACrzQf1awsXYv/GnFteT0VIl7IzZJZuL5XAszUlymqTjqGgEh3QYt1SZ
        i4Katky4cXiUxS27XpweAurEnQ==
X-Google-Smtp-Source: AMsMyM6NvkY9RwSA9ZQAQcXVqzQ7ep7mS6/5StIor3UEUXnGRCCtPj/cxgTUo3gRq6WHzNCvlcOeuw==
X-Received: by 2002:a37:308:0:b0:6f9:389a:3a49 with SMTP id 8-20020a370308000000b006f9389a3a49mr730869qkd.301.1666986727188;
        Fri, 28 Oct 2022 12:52:07 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id i16-20020a05620a405000b006eeb25369e9sm3604337qko.25.2022.10.28.12.52.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Oct 2022 12:52:06 -0700 (PDT)
Message-ID: <7e3b3e91-386b-a6aa-6247-42600248a8cb@linaro.org>
Date:   Fri, 28 Oct 2022 15:52:05 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/4] dt-bindings: arm: rockchip: Add Anbernic RG353V and
 RG353VS
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, michael.riesch@wolfvision.net,
        frattaroli.nicolas@gmail.com, jagan@amarulasolutions.com,
        Chris Morgan <macromorgan@hotmail.com>
References: <20221028184045.13113-1-macroalpha82@gmail.com>
 <20221028184045.13113-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221028184045.13113-2-macroalpha82@gmail.com>
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

On 28/10/2022 14:40, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add entry for the Anbernic RG353V and RG353VS handheld devices.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


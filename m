Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B756B7270
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 10:23:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbjCMJXV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 05:23:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230449AbjCMJXT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 05:23:19 -0400
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BCC4CDCD
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 02:23:17 -0700 (PDT)
Received: by mail-ed1-x52b.google.com with SMTP id g10so16945538eda.1
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 02:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678699396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/CKjAglWz/Z0UKapvGTWzM4Jv1UJAkt9JJZQVmUC3Ag=;
        b=kmwXNbdX6Yv5B0qf+FtauS1FWClKukDF9UgPFNhKKnvj3K64MQafXL/WI+R6y8qTh+
         S48Vfrx3f88DR6Nzr/XKhxVmGETrRGdG0g0kg0bDkIPc5Jw6WFYvxpjmrsX14FlWHSij
         KPKm+8uSU/A2apZi/zx40Bt+OjAMMh4x4g5Rx7cjrnFAXUiLLWDt2hTGrWTLgSCPgLpX
         nOD4FtNK+DSDHwiWbURmNQkjDJCLv5hH/Yyx62MdsaDJx4zGLzT4Lme+ll/CF+kkU5w3
         k0/OUnGGrmR68sYOHavrGTmWs/p2W5Oza1MbBf64CSUeUcXAvqIDQitGl96s0kQebDNz
         muUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678699396;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/CKjAglWz/Z0UKapvGTWzM4Jv1UJAkt9JJZQVmUC3Ag=;
        b=6GMbmI5WR0kCnBvtYJt63ruBnNJL4heMsVCuDM0nXu8w1T3fzfOK9MdbpWjuisuqpI
         jETG2HfbtP8B1NBaDApHIpWmkiKwVxoPWZkSLmjdIzOL9ebEYTWvNMDCn/NKm7Fj5CdZ
         pIlnOXGtDG+tNUL5nIjfEPDynddrEZAtjNLYSWlAQoWEZ11jx28Cbh/wtFKOiBgrFWUA
         VZvBPy0zd1q8AYSmsBz0KbEGooH325xbE5/fgIozBkbONhz72mlWaTVTcH5pAdf4WYSI
         I06O8cYyU8di9RW0MMj7lsC03zsz4yEjq5yUUUEAlK9J1VHc4KCgJYy8GA3T5hHrtT+E
         KVRg==
X-Gm-Message-State: AO0yUKW81Tvd7CYSp4GU6YzBP2PhKuwBdvjP81BKPQmQN2xlFR0TiHeM
        Q2BkW2y/cUP/2P1vMYF5TVOdaw==
X-Google-Smtp-Source: AK7set9wfWWQkWIGbAxb6yUogzNu1z4CVCuICv4FoGu1LamMcQdgG9VchIghpJTSxnSr++q9G9F+9A==
X-Received: by 2002:a17:907:6092:b0:888:b471:8e46 with SMTP id ht18-20020a170907609200b00888b4718e46mr42341888ejc.50.1678699396039;
        Mon, 13 Mar 2023 02:23:16 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:f052:f15:3f90:fcb3? ([2a02:810d:15c0:828:f052:f15:3f90:fcb3])
        by smtp.gmail.com with ESMTPSA id m2-20020a509302000000b004f1e91c9f87sm2991131eda.3.2023.03.13.02.23.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Mar 2023 02:23:15 -0700 (PDT)
Message-ID: <91ebf91e-99ac-2733-2dcd-860af318a03a@linaro.org>
Date:   Mon, 13 Mar 2023 10:23:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v4 3/3] dt-bindings: gpio: add NPCM sgpio driver bindings
Content-Language: en-US
To:     Jim Liu <jim.t90615@gmail.com>, Rob Herring <robh@kernel.org>
Cc:     linux-gpio@vger.kernel.org, JJLIU0@nuvoton.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, KWLIU@nuvoton.com,
        openbmc@lists.ozlabs.org, brgl@bgdev.pl,
        linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
        krzysztof.kozlowski+dt@linaro.org
References: <20230110083238.19230-1-jim.t90615@gmail.com>
 <20230110083238.19230-4-jim.t90615@gmail.com>
 <167335661623.1967925.9927691364268671668.robh@kernel.org>
 <CAKUZ0+HQYiwp0pGLhQUckk9zOYg42MSWucYss6iP68YRmHyAxA@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAKUZ0+HQYiwp0pGLhQUckk9zOYg42MSWucYss6iP68YRmHyAxA@mail.gmail.com>
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

On 13/03/2023 09:54, Jim Liu wrote:
> Hi Krzysztof
> 
> sorry for reply late.
> I think I need to explain more details about the clock.

You top posted to Rob's bot's email, so I have no clue what do you refer to.

Best regards,
Krzysztof


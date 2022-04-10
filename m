Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 63B344FAE2B
	for <lists+devicetree@lfdr.de>; Sun, 10 Apr 2022 16:16:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239760AbiDJOSv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Apr 2022 10:18:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233068AbiDJOSu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Apr 2022 10:18:50 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C9F1740E62
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 07:16:39 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id k23so25971072ejd.3
        for <devicetree@vger.kernel.org>; Sun, 10 Apr 2022 07:16:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=+n66E57OdysJv/iojocpinXXUBnXTVgXre7zhu/5jY4=;
        b=y3C7uH50HnaJHt0dohWOwoaK+ShYHghUuSkVHh4ZKQTRh1cAIo5CVw/iTR6dLbKGYg
         ytw/mLBYX6Qug7c70tX+iXutJoN3RjygmJhmeDRYKnD5vsrJUHMAYLZkxCdyrmpmar8Z
         xc+vsi6aQuQcq26kwi6ffI59zClAaV+/QuiyN496sdC5q41PjmljE92ReS0Aeb1pOapL
         LMwzn4zErpD3NRFTaHCEUyJt7RmWoA4mxwWYO1TTVKDG0tkNQA/QpHO5D1dTlVd/DCd0
         3RgyULep9kcTgkvHtCA2m5tGq+pQL0FULmoDyhJRiaHAt/Jhv5tpL0aZtiLTofJSGU5d
         aoVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=+n66E57OdysJv/iojocpinXXUBnXTVgXre7zhu/5jY4=;
        b=oGGlLU5KN0CH/atYlCEZfwNGAOM2vDv4c0X0sTo4qUYncusL76Xrngd7RAhhZXg+OJ
         WXJCvdE/ZLpaIJApYeC+a3K52WiVzkW4KDpaKFcukx3XeqneMNVeEMq+/APctHzzF0ZE
         6Caf3Qiq90P9nccMfPMb+IP7VsEl7hgRboyl9Pd65asmIW26iQZdsHiomyEma76M1UnK
         Vm1dG0L9veV5J87sHjfS3+3H5AU24SgbySMRWpJlJePH8m2Ui07M7PuxPx5yw2bpguxN
         LWUbo4bg0p/PLtucRsvkguqGcXP/YAASdCH2ckQHF94zgsLORVuHsZLPbAbAz2O2gdpl
         6KVA==
X-Gm-Message-State: AOAM530b7tdoWbDzruo1w4Dp7vyEEpI7ldbwOvbLUnHT+wJQboJXOu4Y
        oThYQyTy0N254fYoW4D366yNEA==
X-Google-Smtp-Source: ABdhPJwftD/kpUAYnedv3r2fO5QiRK5ew+azpmojwj0u7NFcs3Wgcr3aSeXL2nJSP2uTDYMk6j1e0Q==
X-Received: by 2002:a17:906:dc93:b0:6e8:8d81:b4bb with SMTP id cs19-20020a170906dc9300b006e88d81b4bbmr1719754ejc.32.1649600198431;
        Sun, 10 Apr 2022 07:16:38 -0700 (PDT)
Received: from [192.168.0.188] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id w1-20020a1709064a0100b006e89334f5dfsm205062eju.136.2022.04.10.07.16.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Apr 2022 07:16:38 -0700 (PDT)
Message-ID: <fb076ec8-04c7-a623-0ec3-899562c168ff@linaro.org>
Date:   Sun, 10 Apr 2022 16:16:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 5/6] dt-bindings: gpio: realtek-otto: Add rtl9310
 compatible
Content-Language: en-US
To:     Sander Vanheule <sander@svanheule.net>, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Bert Vermeulen <bert@biot.com>, linux-kernel@vger.kernel.org
References: <cover.1649533972.git.sander@svanheule.net>
 <380b17f04e127351b83d7f4d7db22d4f58aebcbd.1649533972.git.sander@svanheule.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <380b17f04e127351b83d7f4d7db22d4f58aebcbd.1649533972.git.sander@svanheule.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/04/2022 21:55, Sander Vanheule wrote:
> Add the "realtek,rlt9310-gpio", "realtek,otto-gpio" compatible for GPIO
> nodes on the RTL931x SoC series.
> 
> Signed-off-by: Sander Vanheule <sander@svanheule.net>
> ---
>  Documentation/devicetree/bindings/gpio/realtek,otto-gpio.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

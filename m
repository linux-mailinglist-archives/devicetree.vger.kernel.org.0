Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B9B75DB99
	for <lists+devicetree@lfdr.de>; Sat, 22 Jul 2023 11:58:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230108AbjGVJ6i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 22 Jul 2023 05:58:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35234 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230110AbjGVJ6h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 22 Jul 2023 05:58:37 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4F00E79
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 02:58:35 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id 4fb4d7f45d1cf-51e566b1774so3472078a12.1
        for <devicetree@vger.kernel.org>; Sat, 22 Jul 2023 02:58:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690019914; x=1690624714;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kgd70worU63TfKs2VrNmjloL/wFwE+PVlPgyw18hVks=;
        b=PNs9wGAp2yX+uuYqH1WzlmRqomf5eY81PJGhplmKgbSLRwb/7BlMaEEf4KiiYYfO06
         5/YwWtDhZN7kQw8OkNx1qI+AqaLI2ou1eN/AGE0R/nN5fpuGdEtoFTXtzRjD75B+W9KZ
         oJhqP/+wU6eJim9ZGFtDCIjeqTtdbdxGtQLohfB7VkPZ2rLQmD42AjmF4Qq2p7zsIz5X
         DyCbF/lp3D001BHA86WdOf+8K55vmX2/OK+U5RFJtegXlY96OOMUr0Zg19t20uPqIVyQ
         lviWbYjwAyp4SiLC7KvY7P1dkAVLakN8+6vZH+Iagt/oLaGiLojnHoe7uT7H2xP3tlyi
         1OZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690019914; x=1690624714;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kgd70worU63TfKs2VrNmjloL/wFwE+PVlPgyw18hVks=;
        b=i5bg74OwGX69SoswHT8hFuymOez8TV2s9OVqVl1lpS5IwT9WCbWyf3yttUX9jhFu3e
         yot+GWZM7d5UuKin1pTUJ9gJkwvi2x7PlF9V9fs2bL/FmJCtW0MWNyZwlghMGFpMf19E
         /FnvaKeamPoZSE6bVclWsxoUXdu21azqPmy+pQgODPjqP01Ru8ZtqQz/7EqN9dHUS6Qb
         GzGYWI6Izv8W0LXelAW1/tplGCCoBqvY4VvSKqHy/s2roTRZOIwJFq6hvyQvJy+1NCWg
         JDyLO52jnunVRWzN7AEe0OaAgpROHTlB7eG6KDLp9cBxJuf4IdUyBbMOx7y3ehBNNHrT
         ivDw==
X-Gm-Message-State: ABy/qLahCSq2yUx8TUhXZR0as1daoe7JjB6riM9X0wQUjrzOKIdn2BSy
        5+wIuxp4/nKHUpU5socC3jBHaw==
X-Google-Smtp-Source: APBJJlHnRcooSCaR6o8olZ5cjZYsWJ/3J4/iVUI/FcwltwFpm2etAg1ZcgW8v6fEHaKRh0t7V5NvAQ==
X-Received: by 2002:a50:ed92:0:b0:51e:2a17:3573 with SMTP id h18-20020a50ed92000000b0051e2a173573mr3408113edr.32.1690019914207;
        Sat, 22 Jul 2023 02:58:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f13-20020a05640214cd00b0051df1797222sm3164808edx.11.2023.07.22.02.58.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 Jul 2023 02:58:33 -0700 (PDT)
Message-ID: <20685a78-0d9b-072b-d313-5314f9b31ec2@linaro.org>
Date:   Sat, 22 Jul 2023 11:58:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/2] dt-bindings: i2c: nxp,pca9541: convert to DT schema
Content-Language: en-US
To:     Peter Rosin <peda@axentia.se>, Andi Shyti <andi.shyti@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230722095710.17496-1-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230722095710.17496-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/07/2023 11:57, Krzysztof Kozlowski wrote:
> Convert the bindings for NXP PCA9541 I2C bus master selector to DT
> schema.
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v2:
> 1. New patch (Doug)

The subject should be "PATCH v2" obviously :)

Best regards,
Krzysztof


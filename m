Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 39D6069A755
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 09:48:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229564AbjBQIr5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 03:47:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbjBQIr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 03:47:57 -0500
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F366A16337
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:47:54 -0800 (PST)
Received: by mail-ed1-x530.google.com with SMTP id i28so1059141eda.8
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 00:47:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=6mCPUncoNNGQDkBH1K4Qwr2txnBpLQ2xqpC1PN44nIo=;
        b=zMOgIsHj6qxMkglPlIGwHPtY65joY5FCUCHW41i1STnDb9VvgcgzUZZh3zCuj7WAtZ
         hCP7+xRs0HlbLdfpWze78Iq4IdVNmlM3KLY6QC66gFDQZ/Fx+N57yeDOTHIQJ4uK3q7l
         R1yG2LZBj0iqb6wVnsQF1yusZT/z8wy1Z2s2+Fb7mnDdSo5NiCn+kAHS6ZHq6BCBFzds
         3aHQAavQHhPeB2EeMjpIh3J/J4dY4ASe3ZqaaljUn5HDCSqtDcxSMHD9L37ooqzBsBE3
         AKFreSM6PdOXsILNgz/BjMR9maQiQOVcoN2SjBddVvzXAHnj2IiRxb9g4aU7TOi2UapT
         JmTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=6mCPUncoNNGQDkBH1K4Qwr2txnBpLQ2xqpC1PN44nIo=;
        b=X9gTVVLs4z+/sz+DDMYDjwA1vIC8HyQlc1hFZE2HXKUHqBdfCKSvt7baw31csqw62Y
         v0sdgGZ+n+cCd4goceB9QCU5SZsKtF17XMsPfr0z+c6aahuUPMN5wisII47EjFvTw9SD
         qeovGRe5a/00VK1Rdqx7SIG7ARfIwkFKRy/uOxfvfrEsUcJUVxPAY4yeRLTy0NoQpZp6
         wTpPQw2xlkhViXnzlTJdiRF1w4yJL0iU6iaZ7OuYfPKjJ+fl4tK0h9QSVaOdbyPigmVd
         NqFgE4RiuRgNv3ByrtrQaiOKh0ocK305poJKv6CSPaSZzmofITr2cn7lSbL1j4dS73un
         H8DQ==
X-Gm-Message-State: AO0yUKX+1W/K+ms9MkMh1P6Q6I/x/EAvq5pIzmVk4HujLp4//KB0joj6
        QorvXM2aKU94ltugk7xF+ozjLI/GCjLnD0WG
X-Google-Smtp-Source: AK7set+bc046PiYwSDnVyB86S6c9jja8hnHbQX0stMjnEgo8oKt4A8NuJK9HWepfuMYEn0SaZNEmQw==
X-Received: by 2002:a05:6402:445:b0:4ac:c720:9255 with SMTP id p5-20020a056402044500b004acc7209255mr580406edw.34.1676623673490;
        Fri, 17 Feb 2023 00:47:53 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id f29-20020a50a6dd000000b004ad6e3e4a26sm1532945edc.84.2023.02.17.00.47.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Feb 2023 00:47:53 -0800 (PST)
Message-ID: <86945f01-351b-9843-0ba8-08377f12dd4d@linaro.org>
Date:   Fri, 17 Feb 2023 09:47:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2] dt-bindings: mmc: meson-gx: fix interrupt binding
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
References: <c1437eb6-0c01-809f-422b-cb1109489355@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c1437eb6-0c01-809f-422b-cb1109489355@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/02/2023 20:50, Heiner Kallweit wrote:
> Reflect in the binding that the cd interrupt is optional,
> and add a description of the interrupts.
> 
> Fixes: 09b31a610328 ("dt-bindings: mmc: meson-gx: support specifying cd interrupt")
> Signed-off-by: Heiner Kallweit <hkallweit1@gmail.com>
> ---

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


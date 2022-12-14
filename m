Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 817E664C9B1
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 14:06:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238427AbiLNNGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 08:06:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36504 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238369AbiLNNGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 08:06:39 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 773C110B65
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:06:38 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id z4so6556074ljq.6
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 05:06:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RoQRXkX5X4uwB+IhDZoYKCKReZh3tL0j2RPpSXrZWzo=;
        b=MBV4DAQE6vtbboqOHiO5SrAbZve9Tbn3G2iCSqkjvVtxHOLXbCiefuKshGQfUoddf8
         bnMKILxuYVWVgHYutUWEG4kdyofQm3fNRbDPmxRGr323IfTWo8Xy4tibWuJi+mAMXRIs
         Klglnr4DO4BJcOOY2w0eKVW+tVw8ux12l0bIhVev8SK9a20FK2TZ1Y48E0D/zOX4K4l4
         MMk0ZD9OV6QQmAo8dTWv0pYImDKYTbNJVT2SRqfDZooggPKKmCeCOFMJZOat9xsdo4LX
         BTDwOZvUE2VupQcz802Oxkl9nr5eCCs0U0qIC33QfA2Bp9H6RNdFJ8mRzSw+nytepqmb
         o5Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RoQRXkX5X4uwB+IhDZoYKCKReZh3tL0j2RPpSXrZWzo=;
        b=pW1UWUSdD3pB73xyjsJrLBMYRECDHhPTr5MTXmEXP4g/2GEacgpPrj+eVxDYoBdpgI
         B5iYLXMIQMRwMw+0IFHkE0UfbhXG6WMll2IzB3PlEWobQ/+JilfBMmytZR/Tbiir8Uqw
         gb2Zg1+QCENQaESAs8Z6ysqLI32aBqm68Hhe4x9jF5EhAdbxYr3aZqBogw0rXxyJtRgI
         apNOzfg+ZFofYWLF/hTaciHF5rlAkM3F6W04FlKQeOeZ996UAuC/YmQN0mUbCPUbeI3K
         aZLwQ+QZ7dWAnmAI2xUUU/956JoS90S1gFKUXdlk+V3A2HjHIaWiItT/GFDO3k+r6zdn
         v0iQ==
X-Gm-Message-State: AFqh2koky5tiMqzxRz9fB7laJd2f9aNti6qkbw4DhRf/OQpvx2m12HpO
        +YdhJUz722Ai39Gg7VMKfqCjXQ==
X-Google-Smtp-Source: AMrXdXuHhlyvyA4y6M1GW9MKvaUDRZneUKFJhXvgIvNnzM2M7zWMF0ExMyDuU2u8/BgL/SC6tRGmDw==
X-Received: by 2002:a2e:a4a3:0:b0:27d:7e6c:f0d1 with SMTP id g3-20020a2ea4a3000000b0027d7e6cf0d1mr449759ljm.50.1671023196823;
        Wed, 14 Dec 2022 05:06:36 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v14-20020a2ea44e000000b0027da3a87ff6sm95246ljn.83.2022.12.14.05.06.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 05:06:36 -0800 (PST)
Message-ID: <c76c8004-021a-12db-12b8-3bb9a73b7cfe@linaro.org>
Date:   Wed, 14 Dec 2022 14:06:35 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 13/17] dt-bindings: soc: socionext: Add UniPhier media
 I/O block
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-14-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-14-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Add devicetree binding schema for the media I/O block implemented on
> Socionext Uniphier SoCs. This block is implemented on LD4, sLD8, Pro4,
> and LD11 SoCs.
> 
> Media I/O block implemented on Socionext UniPhier SoCs is an integrated
> component of the stream type peripherals including SD, USB2.0, eMMC,
> and MIO-DMAC.
> 
> Media I/O block has a common logic to control the component.
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


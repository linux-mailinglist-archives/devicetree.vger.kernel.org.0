Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7BD85568016
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:39:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229789AbiGFHjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:39:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbiGFHjv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:39:51 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D752020F7C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:39:50 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id t19so23815221lfl.5
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 00:39:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=jzG6QZoUKUUCK3YJZk4MEFjI5YySlhPEGKUbTo7RTJQ=;
        b=qtm/o99kgw+UoKiprAAZuaIa7H1m7ozgfqwYYN14ugBR8iGxj7uyeoRa89wr+kyHcs
         yHEkD428fJeYXjPsK+weye1UZIyOMFycw1djUqXJ1OTtfZs8UnOc+9sGFNz/xaZz3Wra
         7WrWKBd1fDPQHSWLMWYpQSLCpIbdIURjU1erlAxqpQ1rl3xjPEwiKli8vfcycAGrjTy5
         G5BCFeRh2rlSU3uWQs1k/6MoZqyTbfQqE9TZUjNYZQ0DOxjev/5pGW1NIDH7sVqrpgiN
         dSkqDrhRwtXgzzmvXN9SyZqQxAuHVm71Wwm5k9pEBMj3NpaoJgm5YkNG6JmZcx2JdU9b
         eFPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=jzG6QZoUKUUCK3YJZk4MEFjI5YySlhPEGKUbTo7RTJQ=;
        b=bpOd0dXqGkrxGCYh6AXDgmocEM9ExLKShzCXR4FgRf1cQmisnnIHG32RUFFr5YXIfG
         ayaXwpyaDpmCkEtVgnYg1jJl/GH9kX9u5Z/Dp0IiHGqnLj2cDiVfbXTBleoKfSOGmqwL
         EVZ3HRejfsCBRtkXY1RM5/ixjkb4maLjUnWEL9at86fS+3eX7CeIqQxD2C1Oooyz7ttq
         k/F4rxBCYaLYhxYdFXp78eWjXFgSwpUxY6XWIrJUhzSVyo6+RM5yKOAn6OZBK3KzIz0i
         L9tY9sHY1ynJ55u1/BS7if2ZJPjVTxxCudJsVz+kRW3Hcu1/l9llqXTulbIX76O3osxY
         suWQ==
X-Gm-Message-State: AJIora8F0gHJgvPftNf65xSn6yv1gIKC5fMbfHjqr1IeDj5ocIUyHe6D
        MjaMeeb6zWN6IKg0xl+26kusYg==
X-Google-Smtp-Source: AGRyM1ve0SZz0cJw8tLNtrftpPA78sfQOumel7lPFe1C9DExiRSJCU1az4fghWw0JnlGscURVh2ZOA==
X-Received: by 2002:a05:6512:23aa:b0:481:21c7:2e2f with SMTP id c42-20020a05651223aa00b0048121c72e2fmr25825147lfv.458.1657093189253;
        Wed, 06 Jul 2022 00:39:49 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id u11-20020ac258cb000000b004811ee59f40sm4648263lfo.276.2022.07.06.00.39.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 00:39:48 -0700 (PDT)
Message-ID: <a955644f-c3a3-d578-fb49-db19be148d01@linaro.org>
Date:   Wed, 6 Jul 2022 09:39:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH net-next v2 5/9] dt-bindings: net: Add Tegra234 MGBE
Content-Language: en-US
To:     Bhadram Varka <vbhadram@nvidia.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com, kuba@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, pabeni@redhat.com,
        davem@davemloft.net, edumazet@google.com
References: <20220706031259.53746-1-vbhadram@nvidia.com>
 <20220706031259.53746-6-vbhadram@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706031259.53746-6-vbhadram@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 05:12, Bhadram Varka wrote:
> Add device-tree binding documentation for the Tegra234 MGBE ethernet
> controller.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> Signed-off-by: Bhadram Varka <vbhadram@nvidia.com>
> ---
>  .../bindings/net/nvidia,tegra234-mgbe.yaml    | 167 ++++++++++++++++++
>  1 file changed, 167 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/nvidia,tegra234-mgbe.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/nvidia,tegra234-mgbe.yaml b/Documentation/devicetree/bindings/net/nvidia,tegra234-mgbe.yaml
> new file mode 100644
> index 000000000000..1a45cd374b19
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/nvidia,tegra234-mgbe.yaml
> @@ -0,0 +1,167 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/nvidia,tegra234-mgbe.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Tegra234 MGBE Device Tree Bindings

Either you agree with a comment/feedback or you answer and we keep
discussion going.

Ignoring a comment is a no-go.

Please fix everything what Rob pointed out.
> +
> +maintainers:
> +  - Thierry Reding <treding@nvidia.com>
> +  - Jon Hunter <jonathanh@nvidia.com>
> +
> +properties:
> +
> +  compatible:
> +    const: nvidia,tegra234-mgbe
> +
> +  reg:
> +    minItems: 3
> +    maxItems: 3
> +
> +  reg-names:
> +    items:
> +      - const: hypervisor
> +      - const: mac
> +      - const: xpcs
> +
> +  interrupts:
> +    minItems: 1
> +
> +  interrupt-names:
> +    items:
> +      - const: common

NAK.

Best regards,
Krzysztof

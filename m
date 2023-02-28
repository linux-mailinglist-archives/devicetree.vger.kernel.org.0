Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6110C6A5A8E
	for <lists+devicetree@lfdr.de>; Tue, 28 Feb 2023 15:08:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229803AbjB1OIE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Feb 2023 09:08:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229805AbjB1OH7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Feb 2023 09:07:59 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7DA9D40F3
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:07:55 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id h14so9891738wru.4
        for <devicetree@vger.kernel.org>; Tue, 28 Feb 2023 06:07:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677593274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P5g9gRNHIe9JMT0MKnpe3X0cE+DT49kStiSxHxV8NkU=;
        b=SlOXtBadlVZhKdyBnuAL+2dZjVpCsR9qXYhOw2/4mso9B4v1GpvUQXfMrDSKdt3X3X
         wYesoUEYCQ2aunQVGa4uoRcawDEu8bKZBqAwyK6XTSygWjPFerwkQIn4he3W8hDJUd6w
         krcOUC0cDouy4ckO2VYYSXPyoBo9zSF1cKIhG6xMNxiAtSMCbYVBzASP1n9vYlPfviJt
         PvfSEHN5pSJ4OKjB7ePJ8iMWboVkZMk2RWdTj8+5TZLzbt5JFhYiGJVsDw2vdB7ypc6d
         GMTAoDyw3L0UWohXusJy2OObLH5prrRacRSotf5PM7FdGtaRexoGssic1doZN+fWVCKn
         A5vw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677593274;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P5g9gRNHIe9JMT0MKnpe3X0cE+DT49kStiSxHxV8NkU=;
        b=3lQeqVPUe3JNpLMESA3AvqH9/0nzIpySVCOQvPWgl4rWWGkgVVpYivylGLuc+Hs3+r
         zfxCMZOWCtiJ884dEjMB6xwxwaThUsdJUSvNDktGiKDgn5PzlH4GsZaFWv1SkQxB0KUo
         2zwzY+ecXh0VI4bvGRyw9idJYRdQLqMZok8SHg/OtsZKwfqMVI3EXqTGfqismr+zGLEm
         jKNDeg5b4WsaK/B9rgMPWdevSatvPxxU5gIAx/0hlVVtSX11uohvN3QiR/oBqwy5QrCT
         AmPZFwGv/t+nBpeqCIU9PX9gEw6uQ8lfzgnYnm9yUWe0v7BXR94Ek8gAMEtL/YOIBUGH
         YEsg==
X-Gm-Message-State: AO0yUKXWfp1+2KE5j4ODl8SnpQFv/KTCJ8ViCdpYR+5QZB+eiXIpZ3tD
        MhSEsqcgFfBcf9Z5Yyoe2UstAQ==
X-Google-Smtp-Source: AK7set+0gLAM9jPhV4ksrdAN0umrBuavGvvynU37/a3Q6DC3f0MdezS08WF9nEf8RzgiBqAqGEsSEw==
X-Received: by 2002:adf:e88b:0:b0:2cc:5ee8:feee with SMTP id d11-20020adfe88b000000b002cc5ee8feeemr2472469wrm.33.1677593273978;
        Tue, 28 Feb 2023 06:07:53 -0800 (PST)
Received: from [192.168.1.20] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id q10-20020adfea0a000000b002c567b58e9asm9984551wrm.56.2023.02.28.06.07.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Feb 2023 06:07:53 -0800 (PST)
Message-ID: <af5fa75b-1831-67cc-f644-33adfd2e1031@linaro.org>
Date:   Tue, 28 Feb 2023 15:07:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 1/2] dt-bindings: PWM: Add StarFive PWM module
Content-Language: en-US
To:     William Qiu <william.qiu@starfivetech.com>,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Thierry Reding <thierry.reding@gmail.com>,
        Hal Feng <hal.feng@starfivetech.com>
References: <20230228091345.70515-1-william.qiu@starfivetech.com>
 <20230228091345.70515-2-william.qiu@starfivetech.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230228091345.70515-2-william.qiu@starfivetech.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/02/2023 10:13, William Qiu wrote:
> Add documentation to describe StarFive Pulse Width Modulation
> controller driver.
> 
> Signed-off-by: William Qiu <william.qiu@starfivetech.com>
> ---
>  .../devicetree/bindings/pwm/pwm-starfive.yaml | 54 +++++++++++++++++++
>  1 file changed, 54 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/pwm/pwm-starfive.yaml
> 
> diff --git a/Documentation/devicetree/bindings/pwm/pwm-starfive.yaml b/Documentation/devicetree/bindings/pwm/pwm-starfive.yaml
> new file mode 100644
> index 000000000000..4ba2a8cc5344
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/pwm/pwm-starfive.yaml

Filename based on compatible, so starfive,jh7110-pwm.yaml

> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/pwm/pwm-starfive.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: StarFive PWM controller
> +
> +maintainers:
> +  - William Qiu <william.qiu@starfivetech.com>
> +
> +description:
> +  StarFive SoCs contain PWM and when operating in PWM mode, the PTC core generates
> +  binary signal with user-programmable low and high periods. Clock source for the
> +  PWM can be either system clockor external clock. Each PWM timer block provides 8
> +  PWM channels.
> +
> +allOf:
> +  - $ref: pwm.yaml#
> +
> +properties:
> +  compatible:
> +    items:

Drop items, not a list in your case.

> +      - const: starfive,jh7110-pwm
> +


Best regards,
Krzysztof


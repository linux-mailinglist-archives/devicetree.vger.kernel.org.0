Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C288D652DB6
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 09:14:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234493AbiLUIN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 03:13:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229476AbiLUIN4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 03:13:56 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0B2421276
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:13:54 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bf43so22338202lfb.6
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 00:13:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=pkbnwNlIzbD+fefyBrKzBY3j56R66zu85H+p/b4oFEA=;
        b=UYdFilbWV7A+MZV/xySGbrRhz0Lb+GMht44Sq5YuuyEiDxacld1b9d/v4rYJugfOC4
         Md5gkhjhx5Hfw22SfE/EnHFav2afuKzeY94VJ5FReAHyqsHynikwpY237myDLKq0yjJH
         xj2VXCkrzY5gxnsa3NZbomL9VHFnWRh6wxFHrFasg6EtIkw0W78m/sHHaJP8G59RNsXP
         dH2jQU9T8Lc+2GWcYDmentJpjGpV6tgrkrr2ToLF1In4KjfdA8l6kTpJtAobq72W7EXR
         ub36dXcQSwd3OagUOC99tWjbNhTc9meepMaizVwpfn5Cz/PC5bO3g2/3L5aE8rV54TKF
         aBjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pkbnwNlIzbD+fefyBrKzBY3j56R66zu85H+p/b4oFEA=;
        b=zp3bXUgs81RGREdm6uR2VfTeUgxYMenmN98wzp2Tfhvg1Z5Pa7Yx+6cBryjvLBemuG
         u0S3N0R40KM0IrGawhmi5EldWBABTl1kEeFJ2sW8dmGo62F6I4BcilX+HwQTx3jhHMMM
         D5A13cAFb1dcHnlCMVZ/3zqFu1Cu9IJCzejumxDVUJcMYyh3idmRj7ohi5ZXE/Dhky17
         F9pVEOLRPy6GkF2JSARnEpbONqf/0txp3IV+VapnqAShiotQ33r//MWIVJ6lE7zy088O
         HJpv86p5U9jU76z5qQAf4fhe/oByJeMHwGBTE+byaPHekFwDcYiXoAHuEvt7UOhJggRx
         R4Qw==
X-Gm-Message-State: AFqh2kr9AsCYt5O7kl4bseHpgrb9HPhjUC0myTTDhBQYMBeLU2ndZ6Oj
        lTlMB7VVjCymp4ssyYZs+WHWaQ==
X-Google-Smtp-Source: AMrXdXt1jk8G9ZKPcFxKLxyW5hblcLez4+qRH9QHQR4npD+m5WNzpAqhc0NnY5gNKmhQO+Hv4OoEbQ==
X-Received: by 2002:a05:6512:6d6:b0:4a4:68b9:609b with SMTP id u22-20020a05651206d600b004a468b9609bmr366616lff.38.1671610433245;
        Wed, 21 Dec 2022 00:13:53 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o18-20020a05651238b200b004ac6a444b26sm1769606lft.141.2022.12.21.00.13.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 00:13:52 -0800 (PST)
Message-ID: <d37e0f2d-eaa5-4eaa-72bb-ead349235d6d@linaro.org>
Date:   Wed, 21 Dec 2022 09:13:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/2] dt-bindings: leds: backlight: add binding for Kinetic
 KTZ8866 backlight
Content-Language: en-US
To:     Jianhua Lu <lujianhua000@gmail.com>, Lee Jones <lee@kernel.org>,
        Daniel Thompson <daniel.thompson@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org
References: <20221221070216.17850-1-lujianhua000@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221221070216.17850-1-lujianhua000@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/12/2022 08:02, Jianhua Lu wrote:
> Add device tree bindings for the Kinetic KTZ8866 backlight driver.

1. Your patches are not properly threaded which makes it difficult to
review and handle them. Resend with proper threads.

2. Subject: drop second, redundant "binding for".

> 
> Signed-off-by: Jianhua Lu <lujianhua000@gmail.com>
> ---
>  .../leds/backlight/kinetic,ktz8866.yaml       | 37 +++++++++++++++++++
>  1 file changed, 37 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/leds/backlight/kinetic,ktz8866.yaml
> 
> diff --git a/Documentation/devicetree/bindings/leds/backlight/kinetic,ktz8866.yaml b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktz8866.yaml
> new file mode 100644
> index 000000000000..7286c3fc7f5d
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/leds/backlight/kinetic,ktz8866.yaml
> @@ -0,0 +1,37 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/leds/backlight/kinetic,ktz8866.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Kinetic Technologies KTZ8866 backlight
> +
> +maintainers:
> +  - Jianhua Lu <lujianhua000@gmail.com>
> +
> +description: |
> +  The Kinetic Technologies KTZ8866 is a high efficiency 6-sinks led backlight
> +  with dual lcd bias power.
> +  https://www.kinet-ic.com/ktz8866/
> +
> +allOf:
> +  - $ref: common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      const: kinetic,ktz8866

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

> +
> +required:
> +  - compatible
> +
> +additionalProperties: false

This should be rather unevaluatedProperties: false, otherwise you do not
allow any other properties, except compatible. Was this the intention?

Best regards,
Krzysztof


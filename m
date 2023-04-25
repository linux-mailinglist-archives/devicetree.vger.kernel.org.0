Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4D6E06EDF38
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 11:29:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233631AbjDYJ3G (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 05:29:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233511AbjDYJ3E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 05:29:04 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DA20F65B0
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 02:29:02 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-506bdf29712so41384531a12.0
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 02:29:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682414941; x=1685006941;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=sbrktkkbvi90sSCj/IMKTBNkW2slmVGZtwrloE8gboc=;
        b=GgbopwxA2GQl4VH/2qhfIyk6IpLllZgnXEbAKfQWIQCthLJh/bHzc2MXF3/atDFCkX
         lNYvBc+tOa3h+OmquLoPRkFz2CdLpAIgpqwrejrysOG/0ZLtxvcEoBJJ9MOaskFnrAvx
         4BrmASRie8fyWtEAFenw9axolx6cVoa0clbgI33nMyerIfFeuAtDSe+jmBvnLw5tdCj5
         b5mZ3TzTWydocsHK4YWK/OT+N7otWUavUX1oShfGG9VZoFtEIfp6Kk22JyFRvINCOKIP
         P6RqubNrU1f9Hjysjg1mziKtZ1KQBXWKYCIW25yRAJ/AuIOEgYRwjaLKkjpTb09PwJUm
         UjSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682414941; x=1685006941;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=sbrktkkbvi90sSCj/IMKTBNkW2slmVGZtwrloE8gboc=;
        b=PCbHdtPfrNp/xc1eWxehTGLs9YsXNT3va9vkmh8C+5S+tVTtGuyhQCqrPYrZ13uFAA
         Ux5QrogZhalY2+bL0BPpwpRfP7H3oHG/SOeazziYPnR1PXUOAHpjJTbMvYiPCiOemDE7
         XFv2q+cVEtpIIBQ5JwqqoUStOnB9V4ZCQhO5SRS7Ucsouhe8ZkLgjKWjMJOqK9jDxJ9/
         KQ0dKNqt0VQrgeKqvIQ5wollau4tEd+llcQtfmyIpHlJuMt8UEs/ZmDOmGnHi6HgSa+w
         dir4iwtZOts0Ho3fAlvuO3es+3lG4E/epc0MIupfTSpSKlQPZmG87xsHhTQDJDz2J44B
         oLSg==
X-Gm-Message-State: AAQBX9dPUVCOvzZcnxq7tdM3iC70Ir8FfceEvNbAlCYcaALB2weOewYt
        Smj9WRUO+1Kk87d4gEGLEEAdsw==
X-Google-Smtp-Source: AKy350Yj9T5hQYwT+nnZddlZwhL7EQFwReikxPNBfXDdRSylyBLOK5lxCqvVRNIXHg8cZe9NMpbvyA==
X-Received: by 2002:a17:906:b046:b0:94f:695f:b177 with SMTP id bj6-20020a170906b04600b0094f695fb177mr11476609ejb.30.1682414941342;
        Tue, 25 Apr 2023 02:29:01 -0700 (PDT)
Received: from [192.168.9.102] ([195.167.132.10])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906328a00b009599c3a019fsm2395657ejw.60.2023.04.25.02.29.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Apr 2023 02:29:00 -0700 (PDT)
Message-ID: <9805a697-423a-7488-8cd6-f5c35686d431@linaro.org>
Date:   Tue, 25 Apr 2023 11:29:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Subject: Re: [PATCH 05/43] dt-bindings: timers: add DT bindings for Cirrus
 EP93xx
Content-Language: en-US
To:     Nikita Shubin <nikita.shubin@maquefel.me>
Cc:     Arnd Bergmann <arnd@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hartley Sweeten <hsweeten@visionengravers.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20230424123522.18302-1-nikita.shubin@maquefel.me>
 <20230424123522.18302-6-nikita.shubin@maquefel.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230424123522.18302-6-nikita.shubin@maquefel.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/04/2023 14:34, Nikita Shubin wrote:
> This adds device tree bindings for the Cirrus Logic EP93xx
> timer block used in these SoCs.
> 
> Signed-off-by: Nikita Shubin <nikita.shubin@maquefel.me>
> ---
> 
> Notes:
>     Arnd Bergmann:
>     - replaced ep93xx wildcard with ep9301
> 
>  .../bindings/timer/cirrus,ep93xx-timer.yaml   | 41 +++++++++++++++++++
>  1 file changed, 41 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/timer/cirrus,ep93xx-timer.yaml
> 
> diff --git a/Documentation/devicetree/bindings/timer/cirrus,ep93xx-timer.yaml b/Documentation/devicetree/bindings/timer/cirrus,ep93xx-timer.yaml
> new file mode 100644
> index 000000000000..ce8b8a5cb90a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/timer/cirrus,ep93xx-timer.yaml
> @@ -0,0 +1,41 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/timer/cirrus,ep93xx-timer.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cirrus Logic EP93xx timers bindings
> +
> +maintainers:
> +  - Hartley Sweeten <hsweeten@visionengravers.com>
> +  - Alexander Sverdlin <alexander.sverdlin@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: cirrus,ep9301-timer

1. Why only one compatible?
2. If this is kept, then filename matching compatible.

Best regards,
Krzysztof


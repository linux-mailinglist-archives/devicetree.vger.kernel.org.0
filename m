Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4CB858A631
	for <lists+devicetree@lfdr.de>; Fri,  5 Aug 2022 08:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239846AbiHEGzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Aug 2022 02:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237898AbiHEGzy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Aug 2022 02:55:54 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A8CE5FAD6
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 23:55:52 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id bx38so2082859ljb.10
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 23:55:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=I57ng/u5C1q/ButzmRr4LeG/YxB0kyQnv+AhtQ/3vDo=;
        b=YZhPWqkrcL8ONS/J5HPcUZXcUimJiKomFmvEB82+f1+0EbHL/oZmsMh10DRA+Wrt8S
         7j27qhZLgt38tGhLFTna2UNqfLLM9ikKMdBfPTuQPmyobWAlZ/Rvg3bwjPp+v1pTKkvr
         vNqWL3z3i8/5OTU4lt5lixlOI1WMgHrNdbm7G7nyoa2lbz89sT4b77YVjW1U2gaNrjp3
         Q+m7raPgnA7OuUq01eI5N4RLJk/VeTMz+B9+F2HJDuUOoHDfZCrsG1rERjePKjgr/333
         Z4NbkQr4MjwXfGNWT5KEYKQ+Z+1klRR8FmosWSE9enouDKTCCCG+AlMmCEjmoHJZNys0
         60MA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=I57ng/u5C1q/ButzmRr4LeG/YxB0kyQnv+AhtQ/3vDo=;
        b=bG9KO1GqKZYzTSPF7O3S78YadlHz7Y53k+iY2EELadCEOZLYlzU3B0amBvz/qULKNu
         UIxtYSSUIWiMQdnC/zgu7iBlN5lJUCsRlhPlFFWfmeLVAEMqqfc9+7oi5qUB+YtZHNqc
         5g7xOI2WygAhwUJhfSEy7tReVYAIPmFvlHBh7cmgNEe3k7mPy7g4ApJL3w59irBeMXHV
         U7/KCMWOyt1dqkGM1qhLXMPgetaVA5NGwDXcYlLwgaJEpAkF/DK5sjxi8o6BGG21jOQi
         e9YgMjDOYn3hXoG4HiFF0FKoH6AMNVdc+j3StjmlmM+J9xiioTVjt1AsYu2jJR64vOx2
         YYRg==
X-Gm-Message-State: ACgBeo3djT+jH8M6bM3Mm/F37daaLMfTTYzbbH1zp8d03bi4xC/26YB/
        c5+fSJQisPBIhxZqhOfLNmqabw==
X-Google-Smtp-Source: AA6agR7sKldYfGNUSXBxkNcLVOys2HTK77ZAmS+Qkt1U+tsgEheYMcboEg7XE07Wt1gTlZAdYGKILg==
X-Received: by 2002:a2e:a26e:0:b0:25e:55af:ebd9 with SMTP id k14-20020a2ea26e000000b0025e55afebd9mr1569822ljm.28.1659682550750;
        Thu, 04 Aug 2022 23:55:50 -0700 (PDT)
Received: from [192.168.1.6] ([77.222.167.48])
        by smtp.gmail.com with ESMTPSA id g17-20020a0565123b9100b0048b033e10b4sm366330lfv.54.2022.08.04.23.55.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Aug 2022 23:55:49 -0700 (PDT)
Message-ID: <e75a09d1-d4b5-628e-e257-911f7d0f7097@linaro.org>
Date:   Fri, 5 Aug 2022 08:55:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v1 1/3] dt-bindings: gpio: Add imx-scu gpio driver
 bindings
Content-Language: en-US
To:     Shenwei Wang <shenwei.wang@nxp.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linus.walleij@linaro.org,
        brgl@bgdev.pl, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220804184908.470216-1-shenwei.wang@nxp.com>
 <20220804184908.470216-2-shenwei.wang@nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220804184908.470216-2-shenwei.wang@nxp.com>
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

On 04/08/2022 20:49, Shenwei Wang wrote:
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8-scu-gpio
> +
> +  "#gpio-cells":
> +    const: 2
> +
> +  gpio-controller: true
> +
> +required:
> +  - compatible
> +  - "#gpio-cells"
> +  - gpio-controller
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    gpio@scu {

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).


Best regards,
Krzysztof

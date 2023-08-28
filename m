Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A7BF978B635
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 19:18:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232039AbjH1RRq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 13:17:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232759AbjH1RRd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 13:17:33 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AECD711C
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:17:30 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-500a8b2b73eso4978823e87.0
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 10:17:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693243049; x=1693847849;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mQeg43EwpI91Aj09DwcYLaFTjZMhje/qBXZO+eTb1Zw=;
        b=SQzcB/g+CriLK6An7FPFhsuUnPBpMf5mwWAK7fZRZ9ovrEFbDULZnnPfA62fmRAWIs
         EK4ZWgGmqvw5CjI0Ia3+xDotAyBvfTme3TD8yLecXxxfmHTS0vPbZMCtXEqE9fNKPa8w
         xHY3dRGcqBN+oRhy2ijwBxjTkkjOd+b3hnaf292CMSLTqKmQQMviEwVO5NnJkrgseyJ6
         4T9USph282xVU9t8/b/0CrpoETbSjz8UP1jI5A6Jp7CVgFV7YM0DTFJSXsh4QrpHQx0z
         hQIH+IIhT2jvaBLlb+rUrwSpQlLSs7z/AK8nVpy8TgYBVqPZgJQpc4VWDoKG3CQAeQm6
         auig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693243049; x=1693847849;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mQeg43EwpI91Aj09DwcYLaFTjZMhje/qBXZO+eTb1Zw=;
        b=dLZSuu5mN3Tf7Dd8JnT6MXOIPmC3Vc3ZAwoCz6WtX1phNfR+OHSlAYS2Wc0j2dAITy
         8xS073xYAEQHErDEdE4RcT6xsAqqa+OrTpiWz3QY6yKQiMuKj3QLVh42qtCHfcgXfKnX
         axftUWFMH2PQmUlk76s3UZq5+ePcb10SJjbdAofFok36nYbf+QxBr/wp9LTrJ0sJ3on9
         FZpdolrkJ1yyJIp5iYeUOii2DfnfIjJkDG5kIYJQBJAQYh0UAmT/GhYN1AESamLRStmH
         nVw+ppJdBZBNEdcB3BVcofxA1uNGNldxMFbQUDtgZitKwQTOjm5vv0839PmAuRbzCbfx
         Nc3A==
X-Gm-Message-State: AOJu0YwDE95Wbu4r5iRD/mOtiwXTHUSJUXmr4ltOuY3n55pmWKtx9bvX
        jxwuxPrd6R2LuFoENMqWPtRIHQ==
X-Google-Smtp-Source: AGHT+IF0NmfpUAaANidgsTjUWK8m8E8gL5or+z+Hx8aSZbRgJjqTZlji0yBXPr2ZxnQtqnxibAhL+Q==
X-Received: by 2002:a05:6512:31c8:b0:4fe:8f66:28a3 with SMTP id j8-20020a05651231c800b004fe8f6628a3mr20255338lfe.0.1693243048901;
        Mon, 28 Aug 2023 10:17:28 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id pg23-20020a170907205700b0098e34446464sm4933229ejb.25.2023.08.28.10.17.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Aug 2023 10:17:28 -0700 (PDT)
Message-ID: <18b8b8b8-7f42-8e8c-1bfd-36d04eba7c40@linaro.org>
Date:   Mon, 28 Aug 2023 19:17:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 4/5] dt-bindings: soc: loongson,ls2k-pmc: Allow
 syscon-reboot/syscon-poweroff as child
Content-Language: en-US
To:     Binbin Zhou <zhoubinbin@loongson.cn>,
        Binbin Zhou <zhoubb.aaron@gmail.com>,
        Huacai Chen <chenhuacai@loongson.cn>,
        Yinbo Zhu <zhuyinbo@loongson.cn>,
        Arnd Bergmann <arnd@arndb.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Huacai Chen <chenhuacai@kernel.org>,
        loongson-kernel@lists.loongnix.cn, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Xuerui Wang <kernel@xen0n.name>,
        loongarch@lists.linux.dev
References: <cover.1693218539.git.zhoubinbin@loongson.cn>
 <2bec39b1001732de60c1521d78e44a45ff94d6b6.1693218539.git.zhoubinbin@loongson.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2bec39b1001732de60c1521d78e44a45ff94d6b6.1693218539.git.zhoubinbin@loongson.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/08/2023 14:38, Binbin Zhou wrote:
> The reboot and poweroff features are actually part of the Power
> Management Unit system controller, thus allow them as its children,
> instead of specifying as separate device nodes with syscon phandle.
> 

>  required:
>    - compatible
>    - reg
> @@ -44,10 +56,25 @@ examples:
>    - |
>      #include <dt-bindings/interrupt-controller/irq.h>
>  
> -    power-management@1fe27000 {
> +    pmc: power-management@1fe27000 {

Drop the label.

>          compatible = "loongson,ls2k1000-pmc", "syscon";
>          reg = <0x1fe27000 0x58>;
>          interrupt-parent = <&liointc1>;
>          interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
>          loongson,suspend-address = <0x0 0x1c000500>;
> +
> +        syscon-reboot {
> +            compatible ="syscon-reboot";
> +            regmap = <&pmc>;

No, why? It does not make much sense and is deprecated.

> +            offset = <0x30>;
> +            mask = <0x1>;
> +        };
> +
> +        syscon-poweroff {
> +            compatible ="syscon-poweroff";

Missing space.

Best regards,
Krzysztof


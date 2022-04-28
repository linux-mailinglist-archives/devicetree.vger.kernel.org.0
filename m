Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2821512C24
	for <lists+devicetree@lfdr.de>; Thu, 28 Apr 2022 09:01:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239044AbiD1HEy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 28 Apr 2022 03:04:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244679AbiD1HEx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 28 Apr 2022 03:04:53 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D7FF75E4B
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:01:38 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id gh6so7736542ejb.0
        for <devicetree@vger.kernel.org>; Thu, 28 Apr 2022 00:01:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=cIRo4eRm8/HOc8fK9KT41e4OKvC8YfxOJdlSeDaeq5o=;
        b=X6IDJLLpFIhHgsknq3BjKJakUmj7VGWlQAu7dQ5SAJhT9MaWeRZvl+80w7lu3xes9D
         lNErreZIG+9nKd801PkQ5193nXWyAEjFiDekvCR65gn5UYOveVSLJuxS1E91H32s61jS
         Z8cZBGmnDGbZvIek2Jro9ZcIu3PB6YWDcM33WIZ6pYtYicgSI+PH8i0JjCifcke378gB
         kpGqhqr/iDcg17eKOclQHrBtiVk2HIQPS/P5tyl882iRT4do/6559CJMudAYiwZPCdLB
         aWsOAqbJznKzm0hzUbcg+W/4yk5el8B53AV7gcXam5vE1GfoldmMaF52vxuTS8B/05y8
         DkKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=cIRo4eRm8/HOc8fK9KT41e4OKvC8YfxOJdlSeDaeq5o=;
        b=XbzwQDWaRRDCHkZ3h5fRTSD4pxPyadPs86vORbhLlnX10JYDS/2X377r3oTgCi+J3a
         eO2+hSDV/AqwFanI08K0r4ufDQtxlOj0IYX0LV6W/mTU3/H4MPQQ7O4S1zYOhnTdg9pw
         koaB7AHPgrubnTTHKEZ/1shx6AtH61vxaShTVVNpxDC7xKL6lz/plIhKDZUuAza00QV4
         ufj7jYJz7U9nEARW0+xwUf/YPMEZbq/YjUQyv9pdQMV6a+nhsvtU9dvDJDiBuwiNa7gW
         JCZpKOyFshQ9xesY4sYkAGgg1caawwNRk+xLaZJ95qKHsEa/JaZPvEnjYQh0XKm3YFJJ
         XU0g==
X-Gm-Message-State: AOAM533sr780L7oQQGH/3zTbD4/hrPbcymiKXDCB1qkBYW+m6qlPtWze
        hLculBkiGFvXuPUB51V8AAuexQ==
X-Google-Smtp-Source: ABdhPJwUSd2HR/e60JZ2nB2tpSSx2XvQA9cJsa1MI5vH37faD8iJfshcMXsd492EqdPjrDNNlQC4OQ==
X-Received: by 2002:a17:907:e88:b0:6ef:bce9:ff6a with SMTP id ho8-20020a1709070e8800b006efbce9ff6amr32013378ejc.275.1651129296774;
        Thu, 28 Apr 2022 00:01:36 -0700 (PDT)
Received: from [192.168.0.160] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id p18-20020a1709065dd200b006f3b6c3bc8fsm3322091ejv.22.2022.04.28.00.01.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Apr 2022 00:01:36 -0700 (PDT)
Message-ID: <c126ca43-e9f9-0fcb-fa7e-2168625ae25f@linaro.org>
Date:   Thu, 28 Apr 2022 09:01:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 03/11] dt-bindings: arm: sp810: convert to DT schema
Content-Language: en-US
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Robin Murphy <robin.murphy@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20220427112528.4097815-1-andre.przywara@arm.com>
 <20220427112528.4097815-4-andre.przywara@arm.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220427112528.4097815-4-andre.przywara@arm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/04/2022 13:25, Andre Przywara wrote:

Thank you for your patch. There is something to discuss/improve.

> +  reg:
> +    maxItems: 1
> +
> +  clock-names:
> +    items:
> +      - const: refclk
> +      - const: timclk
> +      - const: apb_pclk
> +
> +  clocks:
> +    items:
> +      - description: reference clock
> +      - description: timer clock
> +      - description: APB register access clock
> +
> +  "#clock-cells":
> +    const: 1
> +
> +  clock-output-names:
> +    items:
> +      - const: timerclken0
> +      - const: timerclken1
> +      - const: timerclken2
> +      - const: timerclken3
> +
> +  assigned-clocks:
> +    minItems: 4
> +
> +  assigned-clock-parents:
> +    minItems: 4
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#clock-cells"

clocks, clock-names, clock-output-names, assigned-clocks,
assigned-clock-parents. They were all required and relaxing was not
described/justified in commit msg.

> +
> +examples:
> +  - |
> +    sysctl@20000 {
> +            compatible = "arm,sp810", "arm,primecell";

Indentation is messed up here. 4 spaces please.

> +            reg = <0x020000 0x1000>;
> +            clocks = <&v2m_refclk32khz>, <&v2m_refclk1mhz>, <&smbclk>;
> +            clock-names = "refclk", "timclk", "apb_pclk";
> +            #clock-cells = <1>;
> +            clock-output-names = "timerclken0", "timerclken1",
> +                                 "timerclken2", "timerclken3";
> +            assigned-clocks = <&v2m_sysctl 0>, <&v2m_sysctl 1>,
> +                              <&v2m_sysctl 3>, <&v2m_sysctl 3>;
> +            assigned-clock-parents = <&v2m_refclk1mhz>, <&v2m_refclk1mhz>,
> +                                     <&v2m_refclk1mhz>, <&v2m_refclk1mhz>;
> +    };


Best regards,
Krzysztof

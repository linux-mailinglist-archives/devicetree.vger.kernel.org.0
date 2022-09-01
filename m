Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F4075A9B2E
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 17:06:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230340AbiIAPGY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 11:06:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229781AbiIAPGX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 11:06:23 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE9ED83F13
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 08:06:20 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id y10so15063061ljq.0
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 08:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=KCbUSop3WQVL4RTWvtr+n/jabxyBXZUokjzZKHnU5M0=;
        b=b2G44R7KnF5fTX88ReDvkLzm45zanEpaB49cNMjgDVVrz4TNOidDzAoCL2r4Cdeosl
         AK20h571HggQWfg3sVDA65zRKZ6JIHxvZtXwviB4RzcyI0BPaUiA/XCT21nio9EzQvVr
         iLbM/DmRnb1g5z3BGcKjJ4nXHAndFu0hlun63GghH3Elgkr8a5o24Iok+VtHo4htWedC
         PNXwucC8haXd3P/32QCTWhQ4DQd06S5FhJVBmEfIakUHcAmtz5oSn4f6bAZLqmLALH3/
         bKMmFKGLbGuflHGj3tV139uLu7gbH8pJr28PMOSitOChu39i7ikkJE9jdZ77dPjqGOKI
         aJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=KCbUSop3WQVL4RTWvtr+n/jabxyBXZUokjzZKHnU5M0=;
        b=2IbR2h7lw243s04jdsbNSe9GtAhpH1KzeQhiFFzekZJIc0A0E/E4WEA+pFD14NPslP
         FMX+d6kcW1bDpru6+WoIQIK054exQwfyJK7Uc/dPNpPoXF4GR54BDB4XXTg3h4ievgYG
         rvlixprhDu32LWqMh1y602eOGy8rx6j2xFKI7JmppXith4Qmm/Xw/tTCO8EQu5mXFpZ8
         FoijSs2QfhugAAaEMgl5La71CmL4/etBtSGfAqEv6JmTCuqvSzA0zT1OeHY0vv1nEfBp
         cX5EEwE9/7iJT1um5QrIh7LDVmz0KqPDEQYdykCsu0GMVvnHlTsEsCSuRvJZIiD/rIwY
         vWCQ==
X-Gm-Message-State: ACgBeo3iChfKDmY9jJH5hDPP6Do8ESpZhT2m3vRxcn1Tf7jzRpt1fYyz
        ttF1x2WVUZlftTFPQfJl9LDEng==
X-Google-Smtp-Source: AA6agR4v82tzjRxzkl50GAILGvdU/4Z8/oNIC6ddy1jLimYFNB37TxV7X+A0H1YFvTJk0OU7i+85SQ==
X-Received: by 2002:a05:651c:1993:b0:263:a41d:3d7b with SMTP id bx19-20020a05651c199300b00263a41d3d7bmr6374222ljb.63.1662044779237;
        Thu, 01 Sep 2022 08:06:19 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id 11-20020ac2482b000000b00492e2918a5asm1352324lft.269.2022.09.01.08.06.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 08:06:18 -0700 (PDT)
Message-ID: <426469c1-13cc-178b-4904-09439d7788e8@linaro.org>
Date:   Thu, 1 Sep 2022 18:06:17 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/6] dt-bindings: mfd: add binding for Apple Mac System
 Management Controller
Content-Language: en-US
To:     "Russell King (Oracle)" <rmk+kernel@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>, Lee Jones <lee@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Alyssa Rosenzweig <alyssa@rosenzweig.io>, asahi@lists.linux.dev,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Hector Martin <marcan@marcan.st>,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        Sven Peter <sven@svenpeter.dev>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
References: <YxC5eZjGgd8xguDr@shell.armlinux.org.uk>
 <E1oTkeH-003t9A-3K@rmk-PC.armlinux.org.uk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <E1oTkeH-003t9A-3K@rmk-PC.armlinux.org.uk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2022 16:54, Russell King (Oracle) wrote:
> Add a DT binding for the Apple Mac System Management Controller.
> 
> Signed-off-by: Russell King (Oracle) <rmk+kernel@armlinux.org.uk>

Thank you for your patch. There is something to discuss/improve.

> +
> +maintainers:
> +  - Hector Martin <marcan@marcan.st>
> +
> +description:
> +  Apple Mac System Management Controller implements various functions
> +  such as GPIO, RTC, power, reboot.
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +        - apple,t8103-smc

You miss two spaces of indentation on this level.

> +        - apple,t8112-smc
> +        - apple,t6000-smc

Bring some order here - either alphabetical or by date of release (as in
other Apple schemas). I think t6000 was before t8112, so it's none of
that orders.

> +      - const: apple,smc
> +
> +  reg:
> +    description: Two regions, one for the SMC area and one for the SRAM area.

You need constraints for size/order, so in this context list with
described items.

> +
> +  reg-names:
> +    items:
> +      - const: smc
> +      - const: sram
> +
> +  mboxes:
> +    description:
> +      A phandle to the mailbox channel

Missing maxItems

> +
> +additionalProperties: false
> +
Best regards,
Krzysztof

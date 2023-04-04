Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0CFCC6D5842
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 07:54:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233485AbjDDFyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 01:54:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233477AbjDDFyk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 01:54:40 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4E142706
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 22:54:37 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id ew6so125890630edb.7
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 22:54:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680587676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JYftsXhC1HlJf5hn91ov8niN90wVvfkqT+woZX4vRJQ=;
        b=YjTqz+FV29I4cIj4K64Ymc/XuFW02eB4EfUcOAB+zEYBBqCz8YuHSlp67Sw4ltyXoG
         uEmNdMZYF9zZaygT+i02TZ8LcSn6w348Mxz/f5VczdwbL3TXS02Rv7P4opqAL/naLB82
         Nruo/TC0fKWG0/iUsF52Z/6sHzSe49P4NQZIaMMoVFUHLaAopAjrV+1A4W2PQWpHmE70
         sHDue9wSkiMtfMGJA/ZCXj6uHj34SnGkXLpnbV2A4ZMsdfSttKHu4kGBxhDghnDCfvPb
         E+XATqbbP2gj6m6byh4m2tPRtr/DEygysugpyAUaJAioC+xZ1Y5aBcs541yTPd7JEF5N
         XIMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680587676;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JYftsXhC1HlJf5hn91ov8niN90wVvfkqT+woZX4vRJQ=;
        b=e6103vcRjtX5ZC0AiGHnypKtKQ6Eq5VHCxOSv2V7D0XIMsa8eLOFMHqFI3ZoYtcXD+
         uRd9YJgrjbUwpZ+gPMvTh4ggMLFJAfoa5iuMEmGhitO9XRsdAS2Riq/qwSaKH9QyB8jg
         ThvgAZEHjLch3jKk+pfcd1QKU3oKkrlgSZKRzkJjfYazURosLuvCvGeefL3LAeMUgp9L
         hWjWRsvQBzp/TZsA4axpqUfpNYkCoQWEGKrn6ZYJDZdbGU2stPugq/vVym9BxpXGc9pp
         JEerZ+owSN8HVrU7GQIgJyyJkgulOiH0HqJGvIiGuk5S0Hh5aW0ONHMXb0Ueoy87Nzc9
         6lPw==
X-Gm-Message-State: AAQBX9cukmUUGp6nlmNftWYKtCwJjK0RzggsfOHgbuNc/J7xrQxQDXMh
        s4BP6HbMSe8pm0RIGUnAXOcSgw==
X-Google-Smtp-Source: AKy350aojCzjyRrbaIydSiYdeKAJkJwokjgct9kDO5bQ4DhN3A6YUlRJlb26IFTmEAmcKqA+q7Xppw==
X-Received: by 2002:a17:907:7752:b0:948:aae5:e3bd with SMTP id kx18-20020a170907775200b00948aae5e3bdmr1121770ejc.41.1680587676290;
        Mon, 03 Apr 2023 22:54:36 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:233a:5c18:b527:381e? ([2a02:810d:15c0:828:233a:5c18:b527:381e])
        by smtp.gmail.com with ESMTPSA id d20-20020a170906c21400b00947792df079sm5426899ejz.115.2023.04.03.22.54.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 22:54:36 -0700 (PDT)
Message-ID: <3ac02bdb-8a1d-d72e-c9c9-1526e1fdd81b@linaro.org>
Date:   Tue, 4 Apr 2023 07:54:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] watchdog: dt-bindings: atmel-at91rm9200-wdt convert to
 json-schema
Content-Language: en-US
To:     Otabek Nazrullaev <otabeknazrullaev1998@gmail.com>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Claudiu Beznea <claudiu.beznea@microchip.com>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20230404054642.5691-1-otabeknazrullaev1998@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404054642.5691-1-otabeknazrullaev1998@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 07:46, Otabek Nazrullaev wrote:
> Convert atmel AT91RM9200 system timer watchdog from text bindings
> to YAML format
> 

Same comments apply as other patch.

Also - subject has missing colon.

...

> +  compatible:
> +    const: atmel,at91sam9260-wdt
> +
> +required:
> +  - compatible
> +
> +unevaluatedProperties: false

Why doing it here correctly but in the other patch differently?

Best regards,
Krzysztof


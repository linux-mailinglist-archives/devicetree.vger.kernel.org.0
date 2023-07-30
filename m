Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A1357686D7
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 19:48:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbjG3RsM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 13:48:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49896 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229625AbjG3RsL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 13:48:11 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A189103
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:48:10 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-99c0cb7285fso90916166b.0
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 10:48:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690739289; x=1691344089;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vXKQ+FT+ekXbJrRPEIuPYA+iGs9lD32lLjaVB8WOkqg=;
        b=NZXsMIFMSLCs4+QDwceXzmBnaaK14KVhIqegweudBDG32KMjauPNLPeLqW/387BC45
         SkiJXPT5Hr1Z0C9T8pTN9zhHJBwhXeLbHoj8inInwwBeUWWUq0VXKoS40e8q0Axj+fLK
         6pou8JxL1U2EaASYK22MCaq/54iiV4depgEG3CaEkSKkkBKGRMFdThbyy0DpkkAvbvbV
         rri+j6QoqREMkludmGpAVJOGe+kiqUMOWj0yS1Kp79rnpDIypCVtQpdkwONM7N84rew6
         8Q1enUJ/u8dKQFk2yTmGVLSt//LxWUUfOwdONFLAPB0Nez9Bs5mUhDu4daUsoWaRR9bf
         re1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690739289; x=1691344089;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vXKQ+FT+ekXbJrRPEIuPYA+iGs9lD32lLjaVB8WOkqg=;
        b=TxEhSiG61OM64co8sHJxMdbUwIAHz596S7/eujMDYufQIgp0pcuYXPpydB6ICZFC9Z
         OmuKh4q17ObYguWhXP+62evhzWzMKfuNDeQCM7LgvLQtwC8GJzrPq0u41GDyenkvwj/H
         TzwsPIIoUbsQm/0KgY2TofC8OAb4XZZDB7Zq3OklH3gpAQyh6Uq8BmUaxFcHtpcx+oao
         l4Ww0DcEUQmqArOAbLs2bf81dcU/i8zJRTkNZhlzVTjqo1U2lUyZGT37xxsP7Iibo7gb
         GZjCBYuBCeBNzj8iprqgAr7xVw4q7dheoxdSYW1JyJIJ6DDYNVMZYteRcaYFZT2gzAce
         lZHw==
X-Gm-Message-State: ABy/qLYFTjXQU2RXU8kBjMks8Eh7ZZn4A83E2m2ib2tdtytKjsCYnW5U
        EGMGgYNLqnq9KLW6wZYBNOfFdg==
X-Google-Smtp-Source: APBJJlFZSxLeec25a5kiJaaoHg3q/S3QWVUH2q6ROn1ceOrFwC2RtorZVHCxlbc8BcE8bpP1BWThTA==
X-Received: by 2002:a17:907:7709:b0:983:cb6c:8aa3 with SMTP id kw9-20020a170907770900b00983cb6c8aa3mr4127267ejc.59.1690739288810;
        Sun, 30 Jul 2023 10:48:08 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id y22-20020a170906449600b00992e51fecfbsm4976102ejo.64.2023.07.30.10.48.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 30 Jul 2023 10:48:08 -0700 (PDT)
Message-ID: <222ae956-213e-264d-c217-45bb8d624382@linaro.org>
Date:   Sun, 30 Jul 2023 19:48:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH 3/4] AMR: dts: st: ste: switch to enable-gpios
Content-Language: en-US
To:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Patrice Chotard <patrice.chotard@foss.st.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230726070353.103989-1-krzysztof.kozlowski@linaro.org>
 <20230726070353.103989-3-krzysztof.kozlowski@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230726070353.103989-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 09:03, Krzysztof Kozlowski wrote:
> The recommended name for enable GPIOs property in regulator-gpio is
> "enable-gpios".  This is also required by bindings:
> 
>   ste-hrefv60plus-stuib.dtb: regulator-gpio: Unevaluated properties are not allowed ('enable-gpio' was unexpected)
> 

Subject prefix needs fixes (AMR->ARM)

Best regards,
Krzysztof


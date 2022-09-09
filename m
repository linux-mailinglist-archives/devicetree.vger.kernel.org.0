Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E14DD5B33BE
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 11:26:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230476AbiIIJZI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 05:25:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46258 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230032AbiIIJYa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 05:24:30 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB8AC139ADB
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 02:23:20 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id y18so1079729ljh.12
        for <devicetree@vger.kernel.org>; Fri, 09 Sep 2022 02:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=oUAKSCEAR1eaSoD5ZbdisQXgEBDGloX5ti1fePK4Ba4=;
        b=jep4mNoJlbxhCd+mLgOe4PyTlbpu8BYoa5rAISeZqUWtFPFENWIa7c1us/ckeMKC2m
         FxmBrFsFUNd61Vz5G3jAVWg4yK8sLHHv9R8iCCI9eCAt/rdqeuCTh86valkGqUY0bu8I
         +wSZykUg/NUE9XF+5aAB0hwAUa2Q82Litq6PqJWxPxMt+4bgq6bnSpWSssDAStcnifFr
         yuokLGJkPLKl91lfchhv6kyQfrPBCzZEMgfzx7md5fB96b1QdyPi7xWIUEJPXFcx4aY1
         wh8v8za8ATE7QBP+0gojpeONcH6ZfLLdbLoL9tZl7As3v0BsEPpiun5EorsJAMMCaYmX
         wwlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=oUAKSCEAR1eaSoD5ZbdisQXgEBDGloX5ti1fePK4Ba4=;
        b=lNRGPwSY2pwoT34+ll2xPCpSLvHZWekFdj21MIZtRUASpM87gUvwfXpvbjk/hiCmjx
         DwcPaXnqpCpX2zHBy6xJA2OoP6lwqoZetcEIk4Luhjq1LNwdMxhbruKdWL7aQre3W4q+
         sJrj5Rvj8PKAOOsxFJ8ju3ZB9cpZTUIo9H/cw2+SjqEG5Gune+iSpZr6XH/eYwkRQgUc
         WluqkP4GTHszpxHMP7rXIIzsY+W6iKPJptlSYcxbY+CnoxoUbHGpgCdb2aAbDli0Cbeb
         G0x01mvFDAFGHzTAd/QgvpRXunaaykASbtrXTWaPnuWVWlP1I/YPHkEjQepclcsCvjPG
         xfNQ==
X-Gm-Message-State: ACgBeo0uHSqOENeWaVL6eVcGas88RmtfVBufermOe2M9nL992kBSEXQi
        FLlvGFDZ6XexAgorolzp8Eq7dA==
X-Google-Smtp-Source: AA6agR4A9YrAmvQD6OUos5jMjZUxELC1j8MMbUygpSXxYIg3DRmIaF/QtRGzpV+mMaHN1kBTihAuQA==
X-Received: by 2002:a2e:9e11:0:b0:268:c7d0:9662 with SMTP id e17-20020a2e9e11000000b00268c7d09662mr3462146ljk.309.1662715387840;
        Fri, 09 Sep 2022 02:23:07 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w5-20020ac25d45000000b004979df1c1fasm10096lfd.61.2022.09.09.02.23.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 09 Sep 2022 02:23:07 -0700 (PDT)
Message-ID: <88d9918a-7efd-cd3a-253b-eb11c4f86b6b@linaro.org>
Date:   Fri, 9 Sep 2022 11:23:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH] dt-bindings: gpio: renesas,rcar-gpio: Add r8a779g0
 support
Content-Language: en-US
To:     Geert Uytterhoeven <geert+renesas@glider.be>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <649e875962b486e0bf849aba8f386eb6290a433a.1662714555.git.geert+renesas@glider.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <649e875962b486e0bf849aba8f386eb6290a433a.1662714555.git.geert+renesas@glider.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/09/2022 11:09, Geert Uytterhoeven wrote:
> Document support for the GPIO controller blocks in the Renesas R-Car
> V4H (R8A779G0) SoC.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

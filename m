Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04A4D509EC2
	for <lists+devicetree@lfdr.de>; Thu, 21 Apr 2022 13:38:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230212AbiDULlB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Apr 2022 07:41:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344876AbiDULlA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Apr 2022 07:41:00 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83B22A265
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 04:38:10 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id y20so9412293eju.7
        for <devicetree@vger.kernel.org>; Thu, 21 Apr 2022 04:38:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BbZlix/BzmsuD7I7W1o8Rx4IjqXoi2CX5l01Yagkz5M=;
        b=W2rjq2y9YqaOuYf8zTJ1wzzT2AMRGdVbEftqU8zzXRe6I8mieJPZ+YBkSlwLe/X0Q5
         mGYasxN84wNpYoQOJkT/hD0kE2+Cv0XReA3+DDerVPjBsawNyeYN8/7BNRBT8/mSNKHA
         q7Dh3nWTo99y8Akguo6s8m0NTeXQZqXDel2ohH9sPTOuj1HQ5JIGCrUVYOYTbliYYI/q
         MWe2TWaT5C/Mii6aw7bvMe9HYMtg2rL1lZGWIVrfOxAE1RuO+qTwkm2APy03Gds2QpFV
         fnxaQtFIf5ZOW3PlYdJop+6cHSemT+7q4hkMzhawfcVrICNqCFB+aZRsUP6Wwky4HZ+Q
         jmpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BbZlix/BzmsuD7I7W1o8Rx4IjqXoi2CX5l01Yagkz5M=;
        b=NHKTUg/QL2hBinOeQrSEe71MNp0CLfo0TIVXZas38B8SgU9rrqFNY2QwWjLc9elLxV
         wH+9EdTY/pWoN2OAlFeHRlGomYVO+WLL6xmU54KE0LIYDxxIBPOuWXRJ+vQT6iFOwmFJ
         KI/4BfgXHgIS0EC8Y1S9FD/spCk/iKgqcniIRGzXlfw3/YfypvxQ2hS3enNAf0+hDWs1
         eCWfMOXEZ11OJ7zEnsI1LK7of9BCYznCUcmnt7baewH+2xyFoVxPSxTas22Zpz4+R85V
         NASFzJ2EiDnL9eQeNVX8Dh8iTmKgDZX7pCAVjLf7l9g2rFD4M1Vv004L2TRDoCD/oBrH
         tNfw==
X-Gm-Message-State: AOAM532iXpp0isolq+C/fj2b3ZvT7hHN5wmA8qw9GQ4yCULaB58fXiik
        g4Bo8HDbF+2TRi3GzADZMshrag==
X-Google-Smtp-Source: ABdhPJxMBUlR5ao1WK3GENZZnLpDO9xTkm8MNJXZhEi091FFEHDY5G607AlLBEJKJu8Z8vgOtUjYgA==
X-Received: by 2002:a17:907:6da9:b0:6ef:f582:6fcd with SMTP id sb41-20020a1709076da900b006eff5826fcdmr8255172ejc.685.1650541089149;
        Thu, 21 Apr 2022 04:38:09 -0700 (PDT)
Received: from [192.168.0.227] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o2-20020a170906768200b006e89514a449sm7644875ejm.96.2022.04.21.04.38.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Apr 2022 04:38:08 -0700 (PDT)
Message-ID: <79a50292-15bd-ef6c-68f2-c84923c2b8e8@linaro.org>
Date:   Thu, 21 Apr 2022 13:38:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/7] dt-bindings: rtc: rzn1: Describe the RZN1 RTC
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Magnus Damm <magnus.damm@gmail.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     linux-rtc@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        Gareth Williams <gareth.williams.jx@renesas.com>,
        Milan Stevanovic <milan.stevanovic@se.com>,
        Jimmy Lalande <jimmy.lalande@se.com>,
        Pascal Eberhard <pascal.eberhard@se.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Herve Codina <herve.codina@bootlin.com>,
        Clement Leger <clement.leger@bootlin.com>
References: <20220421090016.79517-1-miquel.raynal@bootlin.com>
 <20220421090016.79517-2-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421090016.79517-2-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 11:00, Miquel Raynal wrote:
> Add new binding file for this RTC.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

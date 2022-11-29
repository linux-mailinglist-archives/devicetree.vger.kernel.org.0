Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE60163C5A0
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 17:50:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236329AbiK2Quz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 11:50:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236327AbiK2Qub (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 11:50:31 -0500
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFC366F368
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:46:38 -0800 (PST)
Received: by mail-lj1-x22e.google.com with SMTP id z24so17953901ljn.4
        for <devicetree@vger.kernel.org>; Tue, 29 Nov 2022 08:46:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ICtfj5MrFnzqIlXyjbzwB9wa8iSvEdSbaEKexKUEIJc=;
        b=jMH1IUke8+dAR7OHQd3JnYU1kX0oyrqsEFAWO1oTAiGjsgYoZyM2Ij/fiKahZrVIA+
         wTmL6piTROPHj3R/PSRKmMC9K07fMjh7EFf/yzaIrIkC182v/dLaAxhMS9UukCYAb7uY
         glrlCOoUvuegt7zTAxj3A9eMz8sgO6X4I7O3eCRGBZUnhtMXvx0VmQTeMpBM3HjfhcmC
         4PdiuLvckaEd6TsFR/hQ9ZnTfJqYWIPEvJCVL0Ie4mLNp0TJ8vd678scKQNe0C6OLsbY
         iUcp5h+T7sI8a+JPTXHd4qGv8vpOgWP3C+ylm7tJZI22Fn36c4F+25MQjwORI9UGjL/x
         sDOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ICtfj5MrFnzqIlXyjbzwB9wa8iSvEdSbaEKexKUEIJc=;
        b=HgpB8XaC/YTe/0bYlXz44/8LE7b53BlA/bek8GxeDq8Pi0VSZu96xy/b5a38yeZ2en
         Ikv/TfCk/vRfGBZlYVDYk/lt0/J6PanrSYWCg0cXCS1cftwqzuWxqB0Het86heyl83y3
         KgyDcWmB016Hw84CjUoclGNm8o9kyye1fuPbsit4OA1ODBln81t9byDvz/8wUvmyBdPa
         bcuAM2K4Y/iiBpVMuxm38UxHNRxJCZlRcteL817wpszvoF0pmMEqmzM0kNnHf0xRAbvX
         08aHu/+jk2I8dMfreyF9CsPavjNdgG4RofxDhX6eb/zVwOaDPRqV+TH/0BTAu049/exJ
         v31w==
X-Gm-Message-State: ANoB5pnCQZXkORI7zkqlGlpoD4LVt6aUjnvnRSfnDWGM/gKW8AD/aBfI
        3w10k1TIc1HtaqcH7bX5Dcw8Oq3z9m6gD4Kv
X-Google-Smtp-Source: AA0mqf5EPSPsnKesqrD3jEsnaZzm85qklfBTN9kJNC4bwKVrtKwKscKlmyoKtJ/VX7bQ1wuylKSKSw==
X-Received: by 2002:a05:651c:1070:b0:276:ac05:b821 with SMTP id y16-20020a05651c107000b00276ac05b821mr20048021ljm.84.1669740385895;
        Tue, 29 Nov 2022 08:46:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s28-20020a056512203c00b0049c29389b98sm2244556lfs.151.2022.11.29.08.46.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Nov 2022 08:46:25 -0800 (PST)
Message-ID: <bc1086b2-871e-c540-a276-78ff63debbf4@linaro.org>
Date:   Tue, 29 Nov 2022 17:46:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: add an entry for
 WorldSemi
Content-Language: en-US
To:     Chuanhong Guo <gch981213@gmail.com>, linux-leds@vger.kernel.org
Cc:     Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Sven Schwermer <sven.schwermer@disruptive-technologies.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        open list <linux-kernel@vger.kernel.org>
References: <20221129140955.137361-1-gch981213@gmail.com>
 <20221129140955.137361-2-gch981213@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221129140955.137361-2-gch981213@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/11/2022 15:09, Chuanhong Guo wrote:
> WorldSemi is well-known for their WS2812B individually-addressable

Drop marketing. If they were well known, they would be already in vendor
prefixes, right?

Add vendor prefix for WorldSemi that makes WS2812B
individually-addressable RGB LEDs.

> RGB LEDs on the market.
> 
> Add a vendor prefix for it.
> 
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 10c178d97b02..32274d894664 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -1462,6 +1462,8 @@ patternProperties:
>      description: Wondermedia Technologies, Inc.
>    "^wobo,.*":
>      description: Wobo
> +  "^worldsemi,.*":
> +    description: WorldSemi Co., Limited
>    "^wanchanglong,.*":
>      description: Wanchanglong Electronics Technology（SHENZHEN）Co.，Ltd.
>    "^x-powers,.*":

Best regards,
Krzysztof


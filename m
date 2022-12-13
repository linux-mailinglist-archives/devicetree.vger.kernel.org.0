Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 992B464B7CF
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:52:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235708AbiLMOwO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:52:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38214 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236032AbiLMOwL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:52:11 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D832D11E
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:52:09 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bp15so5249113lfb.13
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:52:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=BaGvNtJ33i7oPYhtW0IPkwp2v/oXdcRGn/7CHRq01C4=;
        b=r2jkmtOe3zpTjPGKvA6CTA/ppLiZpYdALyhO4gzsaY2WHbPT4CNBjIBdgVoss0F8L2
         E3AJcgNnNipWKbjloMr1z8c7FPPDavyJJpFNg/EgzVthNJ45QQdR1ddpPhGeZpkaL6mK
         Pv8ZH7HpJME9y0jphTid5Y67KLwnWd1fTPH/EB9nICbpTg55QbPRrHBCyYYJOcBAqCdN
         imjJ5vhgYxjF9nAdW20rp8aluevfEUxtjJTUceYfZfQaCNI4UPqCs3LpKI7CkT+pYMOs
         KV/pJm/n04rij7hZDap62o8cJuJVwyBA0cH6XBZz76jN/yJ2AbubsM2vltYEYjYQ64ie
         eWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BaGvNtJ33i7oPYhtW0IPkwp2v/oXdcRGn/7CHRq01C4=;
        b=eim7MsoS2BIqfc3rKlu0D8+CL0v3XxdVUGOs9Y0E+vbIvFBDKTU4GYRRcS4J3Y/T3N
         kUF+PWI7O+r7mWahzba2MarcR46SIVrKSlF/csPW6jDoV0BZbf8S01D4zAgGJxKTzkgw
         lrbE9H6UzHdv1PuLcYTdHwHC/teOuKSaUksO8V4hSUn9FL8QLab2b6eW6dom/wk2nxAZ
         B8xjVvSeEBHrh3aL7ua78B+X9xJZEyQiurHt66Db5ydzvPr4KGS8Ib6943lBc0SPRMAe
         ZHgmAg15+L7s+BHDuSmqmR0MPeqDbKFKF0ThYxGfDdowWyD1p/ksmlqc/4lwTUKOpOAJ
         z5RQ==
X-Gm-Message-State: ANoB5pkl7nHqMO0R0wICCeE7+hkxkvG4oP3IFoTHnDk6EncxywKRZAJ6
        JSxh5zAaJOpIBVtaocqmHIMJNw==
X-Google-Smtp-Source: AA0mqf4PGspM3OuXCUslfcKqxSzQx/Bm/0CQFqwGaepALqNjbASQZ1tUP0dhUt33HADFenBLdLrUXg==
X-Received: by 2002:a05:6512:12d1:b0:4a4:68b8:c2e1 with SMTP id p17-20020a05651212d100b004a468b8c2e1mr7690924lfg.56.1670943127756;
        Tue, 13 Dec 2022 06:52:07 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s7-20020a056512314700b0048aa9d67483sm394593lfi.160.2022.12.13.06.52.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:52:07 -0800 (PST)
Message-ID: <13944337-facd-a12a-818f-b54c17cbf5ee@linaro.org>
Date:   Tue, 13 Dec 2022 15:52:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 03/17] dt-bindings: pinctrl: Fix node descriptions in
 uniphier-pinctrl example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-4-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-4-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Drop parent node of the pinctrl as it is not directly necessary, and
> add more examples, that is "groups", "function", and a child node to set
> pin attributes, to express this pinctrl node in detail.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../pinctrl/socionext,uniphier-pinctrl.yaml     | 17 ++++++++++++-----
>  1 file changed, 12 insertions(+), 5 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
> index 14a8c0215cc6..bc34e2c872bc 100644
> --- a/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/socionext,uniphier-pinctrl.yaml
> @@ -1,4 +1,5 @@
>  # SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +

Drop this part, no blank lines between SPDX and YAML.

>  %YAML 1.2


Best regards,
Krzysztof


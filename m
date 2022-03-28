Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 091E14E9F75
	for <lists+devicetree@lfdr.de>; Mon, 28 Mar 2022 21:07:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245357AbiC1TJH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Mar 2022 15:09:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237643AbiC1TJF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Mar 2022 15:09:05 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D375E6661A
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 12:07:23 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id p15so30656284ejc.7
        for <devicetree@vger.kernel.org>; Mon, 28 Mar 2022 12:07:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aI63GcTf6gIJjYZOcN3sH/TkheejjIhMV25OEIzc6Es=;
        b=yMCe2oa9eLROBvH71tSNApB8bYSQKjqsrRcqq9lk8SsaX8A71feiM5wg/Tf4Rh7+2H
         6436/nMc6kg2V1JU0G0862qWsGIccJH75IJcy0cr2fk3L5AWdrMu9dMqh0xkl6fgskoT
         iqzeLEIUuKe93hydF8Fxi3wDF8lTcUpf0xb5GQxJyxaXLG7uCfHrtI76i6L2V2CbAdUe
         yk+O+XhX5SGG1KZaeOhPKP6xZiCPzgOWn+OfK7xRHLiyPLiypG0FlNRmVreHQp48Z0O2
         enHSzW0UEBlbKtkW6jBGktkSscxYlQxE5iTbaN1mNv5ckYiZpC6tRdzHmCWtV0j9wvZl
         mH8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aI63GcTf6gIJjYZOcN3sH/TkheejjIhMV25OEIzc6Es=;
        b=lTpzExnfhGTmghR2/UCy9oTz7CqYdzhJpHD+QE4WS8gFJEp2GNy3r93F4R4msICLKd
         uvFoZDUarWcypNoa7L0HVe7x57Ogu+gs5KnYyY+jyfmKhsvI8RozpxtFn0fVXSNMZ62S
         rVUDt9pIsHfAr2v7hIapC4HndK4fN90MI47mE81W+YINxPz2lx44fgfHCZ88IRRBn1Ip
         r+lEwu8CEUO8PNWia5qiSH5F5fJw5y7DMxJ77iktijdOwOmkPUX6kQ+q3xGKLJZ+H13i
         nW8ipaErK9QVoL3djK07COO9sQv2zbe4T/jZusdfc/yb0uCXf3eiEbzw1JnsnDASszMP
         Hlyw==
X-Gm-Message-State: AOAM533RDC0Zmls+Wfz/UdBVNbW3ZmPcLUYkTAU9wHPzgkL7ZtAEXoJM
        qGYsJ4KHec5oVHABAu2HQfvNqw==
X-Google-Smtp-Source: ABdhPJw1kVWYj5h6rYtr9VUdImtCHgGwu9zW9gdjJDu5MHe8emeVa+v0qt9r/jwydBlC2hkJIzOVSg==
X-Received: by 2002:a17:907:761c:b0:6d6:e553:7bd1 with SMTP id jx28-20020a170907761c00b006d6e5537bd1mr28996835ejc.5.1648494442407;
        Mon, 28 Mar 2022 12:07:22 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id dn4-20020a17090794c400b006dbec4f4acbsm6421924ejc.6.2022.03.28.12.07.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Mar 2022 12:07:21 -0700 (PDT)
Message-ID: <54984d87-9bfb-94e0-69d6-eee34fafcfc6@linaro.org>
Date:   Mon, 28 Mar 2022 21:07:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: reset: Add parent "resets" property as
 optional
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1648430678-21631-1-git-send-email-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1648430678-21631-1-git-send-email-hayashi.kunihiko@socionext.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/03/2022 03:24, Kunihiko Hayashi wrote:
> LD11 mio reset controller has a reset lines from system controller.
> Add parent "resets" property to fix the following warning.
> 
>   uniphier-ld11-global.dt.yaml: reset: 'resets' does not match any of the regexes: 'pinctrl-[0-9]+'
>       From schema: Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---
>  .../devicetree/bindings/reset/socionext,uniphier-reset.yaml    | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml b/Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml
> index 377a7d242323..f2a848c74f1e 100644
> --- a/Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml
> +++ b/Documentation/devicetree/bindings/reset/socionext,uniphier-reset.yaml
> @@ -55,6 +55,9 @@ properties:
>    "#reset-cells":
>      const: 1
>  
> +  resets:
> +    minItems: 1

maxItems

> +
>  additionalProperties: false
>  
>  required:


Best regards,
Krzysztof

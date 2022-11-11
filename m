Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA6C9625FCE
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 17:48:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233277AbiKKQsB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 11:48:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233172AbiKKQsA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 11:48:00 -0500
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC0BA7B229
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 08:47:59 -0800 (PST)
Received: by mail-wm1-x32c.google.com with SMTP id t4so3236665wmj.5
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 08:47:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tzIj0FbLWchm5YW+Ojb+mjYmHVpc0ognIOdlvY0jJmc=;
        b=ORhWQXVLVCj32JAAdbD6We+SlO95hOo3Z4kePacUi0Y4dFJNCDHuu8Or4jGVP5syl/
         tv0XO4ztzdwyoOGsjdOHi2kp9D12+rOGHjXiiCm/ytEKdvPXsJsAXhr7h/kicaYCeKfY
         Ey8pwYYntRtXa9S7Oyd5k1u6h4KpNdVJeY5TGI6VA1JWDyPNUxU1WUwGr+F+iDr7IuKg
         FLaWLRPXpqWBk3LRuVQF7Bi5OoZMGySUSndVWQiCAy9W5FuJQDgdK7hxa4vA463AJbOI
         QPp9YBXHbZMTJVnPpDOGseekGWa9esEzo/3aZew/HbQBRzZIreOMoFHelwsCG8phCF7C
         oxYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tzIj0FbLWchm5YW+Ojb+mjYmHVpc0ognIOdlvY0jJmc=;
        b=g7RQOh9RXs7NBH9ZLWd3l0WuGIS/5xu0wHRiajs84uy1rXzNdbknOJhXKHIHKmTvI0
         Gcvh15g2SL/Avoi+kU74Z24ERm5qcnfNB40BNJpFrJAYwSaLCqodhpv01FcXg44u2uIM
         plTmCB7JJLrtLoOGIp4V3949mxzxQPu+stgmlWXiF53KK7NABapXOMyXewk+XCzOw5fL
         r8NvzKiabX1+e+3L0ak4M1Kc4VzxPv9bbjr34HxfYXcEr7ZdF8GSZhwVogb5xRFvnrsf
         h20sazSUzofPk9z3zM0ZxsdkP0mftt5xN2RkcOJcIKsnLtba04mBacjsG5JRG8s1SELg
         ORog==
X-Gm-Message-State: ANoB5pmu62+tVsP7YTQrcpfGyzpfMS1aIPp/iTFS7JLg3rBUaHD2N620
        bpOV77viAN96p6vX1/rLItDGyA==
X-Google-Smtp-Source: AA0mqf4lxHD2VhR2gUmwYJipW4ys4Uden0b2CxCOUYSldiDwhdTomovtUeokqfW6glhyz46sxexSFA==
X-Received: by 2002:a7b:cd12:0:b0:3cf:5080:412c with SMTP id f18-20020a7bcd12000000b003cf5080412cmr1821930wmj.99.1668185278322;
        Fri, 11 Nov 2022 08:47:58 -0800 (PST)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id q12-20020a05600c46cc00b003b4ac05a8a4sm12135959wmo.27.2022.11.11.08.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 08:47:57 -0800 (PST)
Message-ID: <c17ec8e0-a0c9-dc18-dbbe-3844b4147437@linaro.org>
Date:   Fri, 11 Nov 2022 16:47:56 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v3 1/6] dt-bindings: nvmem: Fix example
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org,
        Robert Marko <robert.marko@sartura.hr>,
        Luka Perkov <luka.perkov@sartura.hr>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Michael Walle <michael@walle.cc>,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Christian Eggers <ceggers@arri.de>,
        Cory Tusar <cory.tusar@pid1solutions.com>
References: <20221104163833.1289857-1-miquel.raynal@bootlin.com>
 <20221104163833.1289857-2-miquel.raynal@bootlin.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20221104163833.1289857-2-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/11/2022 16:38, Miquel Raynal wrote:
> Despite not being listed nor required within the top level nvmem yaml
> file, the "compatible" property is mandatory and is actually enforced by
> all the nvmem provider bindings.
> 
> Unfortunately, the lack of compatible in the nvmem.yaml to level
> description file lead to the example not matching anything and thus not
> being checked at all.
> 
> Let's pick a compatible almost randomly (one which is already used with
> the qfprom label) to make the example at least valid on a semantic
> point of view and getting it checked.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Applied thanks

--srini
> ---
>   Documentation/devicetree/bindings/nvmem/nvmem.yaml | 1 +
>   1 file changed, 1 insertion(+)
> 
> diff --git a/Documentation/devicetree/bindings/nvmem/nvmem.yaml b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> index 1eb22dba364c..0455506fc30f 100644
> --- a/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> +++ b/Documentation/devicetree/bindings/nvmem/nvmem.yaml
> @@ -67,6 +67,7 @@ examples:
>         #include <dt-bindings/gpio/gpio.h>
>   
>         qfprom: eeprom@700000 {
> +          compatible = "qcom,msm8974-qfprom", "qcom,qfprom";
>             #address-cells = <1>;
>             #size-cells = <1>;
>             reg = <0x00700000 0x100000>;

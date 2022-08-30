Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD6235A6013
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 12:03:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229919AbiH3KCv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 06:02:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiH3KCA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 06:02:00 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C2C0647FD
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 03:00:26 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id z23so7923882ljk.1
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 03:00:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=DpqH2TpiaPFXK14Oex8+aiVrh9OCCpKJd77bM+zCeBQ=;
        b=mdVxEyB/7Oo9CMhulv8NnDF5/Q//NVLNdOJuB3r6lRDWF6RN/q8XPChY9TvYpilIFb
         2kAIp09nq9fv4OOfXs1x6MXEcIy1uxLtVuQdYkYw2sUPAVKi1H2rxnYRbI0fb1GLEEwd
         4wA7Vr7RA46fmiNwmLNKzHwPBeOFLcQ3FT0bx/QbG3OvqV6m9q6bzShNDB36FLlAl1kY
         /Pud1avUZjDydXO/3RvgjmJLoimRhlIix1fw7v9ya2x3Jq98dvxW4iptaLUHQZQsVIkI
         WQH3qirgFw/vMvBaRfdn2fmMzHy3hCg22JtDX4LqWZ1BXcE62mjOypXvkOeYofGRRw7y
         /xjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=DpqH2TpiaPFXK14Oex8+aiVrh9OCCpKJd77bM+zCeBQ=;
        b=MMB0rH4MYKbMCoFutpiVMPVvohW/1JkNhODKl9PQNUsxYKsh8GphRsUGAJX6999/eF
         nP/IyDqv4W9GLZo6QuE3v5VTUmCWgXrVOPjXlKPmGx7UtBwVyDnmhX4M2dKgZs6vqKpX
         vKF0HL8WIOpXr1DgKJep9hsj4MFXQuyuy47Gi3k2N9GKCKISj8K2Ie6AxuxHNpALRIvJ
         tUaP7Gxp377FZZdHybOf0T1bcEJjhDH9Kd4BcGT5I2pbv3ky6TYUluFfkLlfnC+KSWKF
         GEZy1Coguuh45QD291TPXXaiFsZBUPxCFyUV6MkKZswYH53kCYjWp0vdep+zTI2a6d7y
         bqSA==
X-Gm-Message-State: ACgBeo011HZYeat0ahTUKge9b9eZG43lyBzfKvDN6V1Zib24NHKvGPyc
        gy3RYzNPQxmPU/jDzNAmEfdRmg==
X-Google-Smtp-Source: AA6agR6dNBGiZLCWxCtISGA2AzCx+Ctg7OenNVoBsgC3U9xvglT0LwlEFfy7DRie6ER6ski7QrwMEw==
X-Received: by 2002:a05:651c:1993:b0:263:a41d:3d7b with SMTP id bx19-20020a05651c199300b00263a41d3d7bmr3483559ljb.63.1661853625175;
        Tue, 30 Aug 2022 03:00:25 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id 11-20020ac2482b000000b00492e2918a5asm544940lft.269.2022.08.30.03.00.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 03:00:24 -0700 (PDT)
Message-ID: <d9b5e312-4999-4410-03be-299e95bbe8b2@linaro.org>
Date:   Tue, 30 Aug 2022 13:00:23 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v4 1/4] dt-bindings: arm: qcom: update beryllium
 compatible property
Content-Language: en-US
To:     Joel Selvaraj <joelselvaraj.oss@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20220828205723.20834-1-joelselvaraj.oss@gmail.com>
 <20220828205723.20834-2-joelselvaraj.oss@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220828205723.20834-2-joelselvaraj.oss@gmail.com>
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

On 28/08/2022 23:57, Joel Selvaraj wrote:
> There are two panel variants of Xiaomi Poco F1. Tianma and EBBG panel.
> The previous beryllium dts supported the Tianma variant. In order to
> add support for EBBG variant, the common nodes from beryllium dts are
> moved to a new common dtsi and to make the variants distinguishable,
> sdm845-xiaomi-beryllium.dts is now named as
> sdm845-xiaomi-beryllium-tianma.dts. The board's model and compatible
> properties are also renamed to distinguish between the variants.
> So update the dt-bindings to reflect the new compatible value.
> 
> Signed-off-by: Joel Selvaraj <joelselvaraj.oss@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/qcom.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
> index fb1d00bcc847..e465ca45c07f 100644
> --- a/Documentation/devicetree/bindings/arm/qcom.yaml
> +++ b/Documentation/devicetree/bindings/arm/qcom.yaml
> @@ -666,7 +666,7 @@ properties:
>                - sony,akatsuki-row
>                - sony,apollo-row
>                - thundercomm,db845c
> -              - xiaomi,beryllium
> +              - xiaomi,beryllium-tianma

The board compatibles are not that important for ABI yet this creates
precedence, so I am against it. Simple renaming should not be a reason
to change compatibles.

Best regards,
Krzysztof

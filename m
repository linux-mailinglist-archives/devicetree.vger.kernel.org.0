Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8AA9562E86
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 10:39:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232029AbiGAIie (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 04:38:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235258AbiGAIic (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 04:38:32 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30A8713F5C
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 01:38:27 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id lw20so2757278ejb.4
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 01:38:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=EF1GL54dXXw6JNrSEoFzcDczH+/gTmva8sYi0O1rJ7A=;
        b=GPSEDjFabrFTP3ELcX/Mo2sbSgNrWCHxEzC3xpqQQDFHECCqXy7f2WPOcEwfM4I86K
         MrvABg8wvHcOV3Nfu7E1h4lgNmtoNI9N0RS890zh3UTBGxfDWYf/1TJHztbv5Hx18fW2
         z2EI7mjIzuMuTcVh7nhGbvQeOlIh/oM/BPhnMhCqJAYxlq9UmgvuM9bjHgXLHCCyW7PT
         z8h1nNz5AdhOHgHiZ9lPcF0SOPgXutn6tviQ/MfOeXqUdT+f28r26qbdwVF0u/7sAgUI
         EQ9RpEKMHpMWUceqd17/RJ2ki7Dym3LFR0Un+wW2SCJGWPAyFApro4C6yEYfklVBJ6lr
         YpGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=EF1GL54dXXw6JNrSEoFzcDczH+/gTmva8sYi0O1rJ7A=;
        b=DWrev/TdJtIw9+BzC6QlX9IuEvOcnW2R948YWEl7pnvQUI5jK8AhBomvrcn9W1CW3S
         9wiGU2XzN+3Ndo5L6m0jgK+XNCrLp5eeDHW/i7FCEaQh7A2vJ7OK4+14lIRGONUW+gPC
         6MTH1WLQMZxqH49ehVuv+Quc+buXslMVmj0NIIR2qFhbVvQ2PpCwrsBS62IEyPv4QHO8
         w0F/HidvSsdkBdL57P0UXgmsNOJ5Ng6Yp62dUcBwZsOIpAtfsIXCYpQJmjuwICoLNwyn
         NuC5fJQ84O90CpR33r3MONojXnqqHvnNpysAbRpzYBk1WSTHQ8o6Tmhq240vGewF4dVs
         r4IQ==
X-Gm-Message-State: AJIora/nPSowD2NAw60zg5PG1z9YHocu14EbS/1idYgeIuR60yC/WsNy
        EvbUymsV599k6rpMwiSy7/tVFQ==
X-Google-Smtp-Source: AGRyM1vpUdZc8ZDLchaR8hfdesvRZpS1c/YKgynNEjSbANOAaa9CU7hgWSkV9lUWcwOgsXT5PGu88Q==
X-Received: by 2002:a17:906:7386:b0:715:7024:3df7 with SMTP id f6-20020a170906738600b0071570243df7mr13228209ejl.543.1656664706407;
        Fri, 01 Jul 2022 01:38:26 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k18-20020a056402049200b0042dcbc3f302sm13163014edv.36.2022.07.01.01.38.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jul 2022 01:38:25 -0700 (PDT)
Message-ID: <63b8ec88-cb22-4644-e6dc-6878ad20c792@linaro.org>
Date:   Fri, 1 Jul 2022 10:38:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 05/10] dt-bindings: PCI: qcom: Add SA8540P to binding
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stanimir Varbanov <svarbanov@mm-sol.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        =?UTF-8?Q?Krzysztof_Wilczy=c5=84ski?= <kw@linux.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pci@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220629141000.18111-1-johan+linaro@kernel.org>
 <20220629141000.18111-6-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629141000.18111-6-johan+linaro@kernel.org>
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

On 29/06/2022 16:09, Johan Hovold wrote:
> SA8540P is a new platform related to SC8280XP but which uses a single
> host interrupt for MSI routing.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  Documentation/devicetree/bindings/pci/qcom,pcie.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> index a039f6110322..e9a7c8c783e7 100644
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie.yaml
> @@ -25,6 +25,7 @@ properties:
>        - qcom,pcie-ipq4019
>        - qcom,pcie-ipq8074
>        - qcom,pcie-qcs404
> +      - qcom,pcie-sa8540p
>        - qcom,pcie-sc7280
>        - qcom,pcie-sc8180x
>        - qcom,pcie-sc8280xp
> @@ -603,6 +604,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,pcie-sa8540p
>                - qcom,pcie-sc8280xp
>      then:
>        properties:
> @@ -720,6 +722,7 @@ allOf:
>                - qcom,pcie-ipq8064
>                - qcom,pcie-ipq8064-v2
>                - qcom,pcie-ipq8074
> +              - qcom,pcie-sa8540p

Alphabetical order please.

>                - qcom,pcie-qcs404
>      then:
>        properties:


Best regards,
Krzysztof

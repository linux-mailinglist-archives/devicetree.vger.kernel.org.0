Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DB52356229B
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 21:06:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236529AbiF3TFh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 15:05:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236823AbiF3TFg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 15:05:36 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDA6B3F888
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:05:34 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id n8so176218eda.0
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 12:05:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BI7o2m1di6Fxr92zjHH1ilkSrPXUQ3qpxAvHzx7wmus=;
        b=oz5ApcXuQDAXd2XbGxM/vUAHxUTjHoVRqVmbQpDAGZBK/V3aJSoBkM1iAUaCmkIjrF
         9DkHz+9N/kE5wrBdZj57M86eCbKM7BHq4kbVql4nHqKlOfuzzDgsD9BKDXBjjqplGuFY
         j0vjHDY+5E5yQl5GkwUFK8IrUt7VpKnnltcfgTlMvH4i0BxNwTFssXmKZHkleXE6JCAL
         Fd0wXL9kddD/oLQ/hh+kkcXtCb9nHlRhdpA5qFyIDKfyTv/QvwtM5i3oBytiNLqdrq0j
         Kyt6WavcwV7ExmnHbNfWovEEeXzby6bsrRS3pjWwL9k5wXPRDzmVIxCkjqcEjwPOnYKK
         6LEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BI7o2m1di6Fxr92zjHH1ilkSrPXUQ3qpxAvHzx7wmus=;
        b=7U2hYsPxjXOpMUPvYjBAAKhVQGh+xgmYlguoxQz5V4CWIq7dBrvJmBPoZEFgKtqYpg
         LIAOF6Syv/ZNGh75XbM0G56tOvCtJsJXGRyh5ySPlj9U3l0DD94NArfODscNGtrdF/Xb
         t9YhpVaeHsobcHQ4huMXWIz2qygBLd/2PnR7StE5EFsFcsb02X2i0dNU/trxTS9TbA5e
         4x+geSawNbhsOr6xO2EzyAlYiu/aqSedsXxR9VpyWJSzdMD42oysc8rvABvl2XHY4kG5
         OVdJ2QeTNIHkrHBl1k55CazyVk4XZe4h/hBnAWxMV9FyGSHA2PkST1u5XUIoN7/y3xFX
         /UTw==
X-Gm-Message-State: AJIora88Arkvin8Zw7+5NRNIG9ZIrfITV6zC9FcReO+5Ayt/o8a+BWeV
        pdcw3OYN8kkkoAlQ/OfQKiae+7TaNQP6xw==
X-Google-Smtp-Source: AGRyM1svQ2NWTOnGnICy5xYjN71LdS2ntjY8DixHgoD8DTC5FyP/Rb299CgUbEwsTQOXBlnU1iezpQ==
X-Received: by 2002:a05:6402:320f:b0:435:7236:e312 with SMTP id g15-20020a056402320f00b004357236e312mr13625868eda.115.1656615933507;
        Thu, 30 Jun 2022 12:05:33 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id pv1-20020a170907208100b00726abf9cd8esm5163144ejb.125.2022.06.30.12.05.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 12:05:32 -0700 (PDT)
Message-ID: <51e23956-08b3-d6f6-61e9-be4c5020831c@linaro.org>
Date:   Thu, 30 Jun 2022 21:05:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 6/7] dt-bindings: msm: dsi: Add missing clocks to 28nm DSI
 PHY YAML
Content-Language: en-US
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, dmitry.baryshkov@linaro.org,
        sean@poorly.run, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     quic_mkrishn@quicinc.com, swboyd@chromium.org,
        bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org
References: <20220630120845.3356144-1-bryan.odonoghue@linaro.org>
 <20220630120845.3356144-7-bryan.odonoghue@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630120845.3356144-7-bryan.odonoghue@linaro.org>
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

On 30/06/2022 14:08, Bryan O'Donoghue wrote:
> Add in missing clock and clock-names declarations to the 28nm DSI PHY.
> When converting from .txt to .yaml we missed these.
> 
> Fixes: 4dbe55c97741 ("dt-bindings: msm: dsi: add yaml schemas for DSI bindings")
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../bindings/display/msm/dsi-phy-28nm.yaml      | 17 +++++++++++++++++

You need to fix all your subject prefixes. It's confusing to see again
clocks being fixed for the DSI bindings.

 dt-bindings: msm: dsi-phy-28nm:

and similarly for other cases.


>  1 file changed, 17 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> index 3d8540a06fe22..9ecd513d93661 100644
> --- a/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dsi-phy-28nm.yaml
> @@ -19,6 +19,21 @@ properties:
>        - qcom,dsi-phy-28nm-lp
>        - qcom,dsi-phy-28nm-8960
>  
> +  clocks:
> +    minItems: 1
> +    maxItems: 2
> +
> +  clock-names:
> +    items:
> +      - const: iface
> +        description: AHB clock

Descriptions goes to clocks.

> +      - const: iface_clk
> +        description: AHB clock
> +      - const: ref
> +        description: Block reference clock
> +    minItems: 1
> +    maxItems: 2

Did you test it? Three items vs maxItems:2?

> +
>    reg:
>      items:
>        - description: dsi pll register set
> @@ -36,6 +51,8 @@ properties:
>  
>  required:
>    - compatible
> +  - clocks
> +  - clock-names
>    - reg
>    - reg-names
>    - vddio-supply


Best regards,
Krzysztof

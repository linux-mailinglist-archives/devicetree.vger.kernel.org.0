Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5D6426DC18C
	for <lists+devicetree@lfdr.de>; Sun,  9 Apr 2023 23:52:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229482AbjDIVwb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Apr 2023 17:52:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbjDIVwb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Apr 2023 17:52:31 -0400
Received: from mail-yb1-xb29.google.com (mail-yb1-xb29.google.com [IPv6:2607:f8b0:4864:20::b29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0749270E
        for <devicetree@vger.kernel.org>; Sun,  9 Apr 2023 14:52:29 -0700 (PDT)
Received: by mail-yb1-xb29.google.com with SMTP id z9so3033832ybs.9
        for <devicetree@vger.kernel.org>; Sun, 09 Apr 2023 14:52:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681077149;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=y/jGq0FSTDv2xs7Sa4DaEoj/KRSBV0zzZOnL8RRZyzs=;
        b=VRJKTFO0pTMrIZtoQtEXotwF56H4bqNgQ4Le2wiZ8tLwkVx/wFakYLYiDn/C7nmMNq
         U8Q2KEjl22QNLv8IgdK9N8PaOW3bW2XRrQFTpW65K9tgB6nDrg3uEaGJeYsK5UlSIhpy
         b9laQWz10lHkDLLhjR7UFOSimrQeDy/236NR8O+OiRBW5kPlqqyEplDwBbWQkWPY20oO
         YFRS4AWMOdKnShB/QbcG58U6YthHh414YeenLp79g0aAKh+G6gbh4S8yjynjIxLUk1gx
         R6vLUmfOZiirs/S5jxI2scBVJl5DjhzBeyQvd4+iprVLsOCIJFnTSbrLN5joF+0mrRXi
         uZzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681077149;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y/jGq0FSTDv2xs7Sa4DaEoj/KRSBV0zzZOnL8RRZyzs=;
        b=69ivwpFaXa97i4oIFCs3bXloloWum0GyB2bH9WVnFvHCJDdE4rwmcmrY9P+S7gOJhw
         +yp+8YN/8OUG5zLM7ZJ0EDPwQQIeEjWEWly+j4WyWCrKOq/YOvpmvubewnC23j/7dlUK
         st3xRqTHXyGjKnUMUeXbuVDDZ9yBgzi5wgd0Tk4r39NC2Cmy0Z/Q8PhsrZsttE3ufWmb
         d1bFEBzI4KZFUCwRAV+zrluOYAervhkzxaZ9jcy91njziWs2CUxp+vKg5RcVD2h4ACTV
         2IsFu2SOKAmAyG9IaNzxgN0cgJbkBoIFLo07qFiqgjMis2egCCFqVCyxiTbADjKAH9oI
         fesA==
X-Gm-Message-State: AAQBX9fnDbmtQxjIG7jqQpQOqlMZIGmUKF62bKb8G5tq+7izwnkZwF63
        VY/SXOtap3ATnaKYu5JdTJYZzkGbPu2XlYzuiWt1pQ==
X-Google-Smtp-Source: AKy350YNUGymoPDIvC+b0gHPeU80xXcrFegU+jP+3S0MjlIY6eHRoJ3nja98sEY/CKrzdBlcfdINW7cbB5v7w2/Dfvg=
X-Received: by 2002:a25:c905:0:b0:b86:92c0:6433 with SMTP id
 z5-20020a25c905000000b00b8692c06433mr5938891ybf.9.1681077148876; Sun, 09 Apr
 2023 14:52:28 -0700 (PDT)
MIME-Version: 1.0
References: <20230409200934.2329297-1-bhupesh.sharma@linaro.org> <20230409200934.2329297-2-bhupesh.sharma@linaro.org>
In-Reply-To: <20230409200934.2329297-2-bhupesh.sharma@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 10 Apr 2023 00:52:18 +0300
Message-ID: <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-phy@lists.infradead.org, agross@kernel.org,
        linux-kernel@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, konrad.dybcio@linaro.org, kishon@kernel.org,
        vkoul@kernel.org, krzysztof.kozlowski+dt@linaro.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 9 Apr 2023 at 23:09, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
>
> 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> nodes for USB QMP phy are being added to dtsi files by followup patches,
> move these bindings instead to the newer style
> 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
>
> Since no device trees use these bindings presently, so we have no ABI breakages
> with this patch.
>
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -----------
>  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 45 ++++++++++++++++---
>  2 files changed, 40 insertions(+), 32 deletions(-)
>
> diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> index e81a38281f8c..4c96dab5b9e3 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> @@ -23,14 +23,12 @@ properties:
>        - qcom,ipq8074-qmp-usb3-phy
>        - qcom,msm8996-qmp-usb3-phy
>        - qcom,msm8998-qmp-usb3-phy
> -      - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sc7180-qmp-usb3-phy
>        - qcom,sc8180x-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-phy
>        - qcom,sdm845-qmp-usb3-uni-phy
>        - qcom,sdx55-qmp-usb3-uni-phy
>        - qcom,sdx65-qmp-usb3-uni-phy
> -      - qcom,sm6115-qmp-usb3-phy
>        - qcom,sm8150-qmp-usb3-phy
>        - qcom,sm8150-qmp-usb3-uni-phy
>        - qcom,sm8250-qmp-usb3-phy
> @@ -248,29 +246,6 @@ allOf:
>              - const: phy
>              - const: common
>
> -  - if:
> -      properties:
> -        compatible:
> -          contains:
> -            enum:
> -              - qcom,qcm2290-qmp-usb3-phy
> -              - qcom,sm6115-qmp-usb3-phy
> -    then:
> -      properties:
> -        clocks:
> -          maxItems: 3
> -        clock-names:
> -          items:
> -            - const: cfg_ahb
> -            - const: ref
> -            - const: com_aux
> -        resets:
> -          maxItems: 2
> -        reset-names:
> -          items:
> -            - const: phy_phy
> -            - const: phy
> -
>    - if:
>        properties:
>          compatible:
> @@ -318,12 +293,10 @@ allOf:
>              enum:
>                - qcom,ipq6018-qmp-usb3-phy
>                - qcom,ipq8074-qmp-usb3-phy
> -              - qcom,qcm2290-qmp-usb3-phy
>                - qcom,sc7180-qmp-usb3-phy
>                - qcom,sc8180x-qmp-usb3-phy
>                - qcom,sdx55-qmp-usb3-uni-phy
>                - qcom,sdx65-qmp-usb3-uni-phy
> -              - qcom,sm6115-qmp-usb3-phy
>                - qcom,sm8150-qmp-usb3-uni-phy
>                - qcom,sm8250-qmp-usb3-phy
>      then:
> diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> index 16fce1038285..aa16d50c7c4e 100644
> --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> @@ -16,20 +16,20 @@ description:
>  properties:
>    compatible:
>      enum:
> +      - qcom,qcm2290-qmp-usb3-phy
>        - qcom,sc8280xp-qmp-usb3-uni-phy
> +      - qcom,sm6115-qmp-usb3-phy
>
>    reg:
>      maxItems: 1
>
>    clocks:
> +    minItems: 3
>      maxItems: 4
>
>    clock-names:
> -    items:
> -      - const: aux
> -      - const: ref
> -      - const: com_aux
> -      - const: pipe
> +    minItems: 3
> +    maxItems: 4
>
>    power-domains:
>      maxItems: 1
> @@ -71,6 +71,41 @@ required:
>
>  additionalProperties: false
>
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,qcm2290-qmp-usb3-phy
> +              - qcom,sm6115-qmp-usb3-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 3
> +        clock-names:
> +          items:
> +            - const: cfg_ahb
> +            - const: ref
> +            - const: com_aux

Doesn't it also need a pipe clock? It surely does: gcc_usb3_prim_phy_pipe_clk

> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,sc8280xp-qmp-usb3-uni-phy
> +    then:
> +      properties:
> +        clocks:
> +          maxItems: 4
> +        clock-names:
> +          items:
> +            - const: aux
> +            - const: ref
> +            - const: com_aux
> +            - const: pipe
> +
>  examples:
>    - |
>      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
> --
> 2.38.1
>


-- 
With best wishes
Dmitry

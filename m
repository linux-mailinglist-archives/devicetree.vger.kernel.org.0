Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C47936DC62A
	for <lists+devicetree@lfdr.de>; Mon, 10 Apr 2023 13:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjDJLMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 10 Apr 2023 07:12:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33002 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjDJLMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 10 Apr 2023 07:12:18 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 033BD619C
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 04:11:57 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id m8so16332695wmq.5
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 04:11:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681125112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5vw3rPx8qPoVV+ZCefrSXLLOTppZ03b9eO3gHDNkOlU=;
        b=WJ0n5aFqPN+jVAKQnNNajIqNjUgn3QltySN1k5WS3wSO6SaRKrAG75X9dQZmtwQspF
         RPADakqsOrWbFfVqdrer5RHhQu127EFf+WPNYCER/PJQ0kyO/apPCW7FLVtUAtWMnDjR
         IayL/cDymxMTPConEoTzW37L7FRQJuBXdpmM3VVYKYeK0+YkJOVw/Yoj8hcYF7iYDuJk
         eX5VCQ88869h/mSE5hv7NoJ+7ia4aHp8lLeHPsJI3/Q6HIh4d6msUaM+/s1wpU7mumHP
         cDAUVF+dAo4a9T+pSOnhoYXxlxPatZ6mu7jB1Dx/ScVlkbVlgbpi7YjcDboSwRfw3fdz
         L/yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681125112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5vw3rPx8qPoVV+ZCefrSXLLOTppZ03b9eO3gHDNkOlU=;
        b=VfTn363ORn4CShJEDdFUYxH1ID6yczgFaTx5A6799TLn6TQxxm0QVwhguX2uvv/UZC
         i0CYDrOQ2tDYyntABEWyiF44lP/wiHQlFGUV7fWAMmG6oYoh7GfouW2P7xeRqI9P1m7w
         8sXtMwMM3hQuAWERC7RLxmUG7eEzmR+qenlFn7ppQi+rrvCgs3KXd1FycDmhRm940x5z
         SbmFPkNIhqVld2Lg3r9HO54xRQ+UEVMAFtBJ4Y/xNspfRGBT6RaUHMra4fDPP6Vqpo9o
         vyvba0yK9E66diIujouASM1AEs3RymV2LTWrVst/Cox6dkNlNDhGIDx26Ap8r7OXoH5z
         YMFA==
X-Gm-Message-State: AAQBX9f2cu2aZpvnk9WA71hrpwkb/CrbfNC7DsRGuYdLKwe5l8iqbbOn
        TuoloOr25BplStEUcvz7XYMaMha2xuQRJE4Ye9zXfg==
X-Google-Smtp-Source: AKy350aOS7wP+kJ9LG8FW6aR97EAkthiZxJ1BEMkPVvCJ0CZeZCLC43rpwgUmeMLt7MRzbA3stZTNHEYWuHikX/td5Y=
X-Received: by 2002:a05:600c:ad4:b0:3ee:10fb:56f8 with SMTP id
 c20-20020a05600c0ad400b003ee10fb56f8mr2026954wmr.8.1681125112223; Mon, 10 Apr
 2023 04:11:52 -0700 (PDT)
MIME-Version: 1.0
References: <20230409200934.2329297-1-bhupesh.sharma@linaro.org>
 <20230409200934.2329297-2-bhupesh.sharma@linaro.org> <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
In-Reply-To: <CAA8EJpp8LMab+bXWd5p_8SZ_-Oa18WGYaqG0_6=phreL_LvteA@mail.gmail.com>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Mon, 10 Apr 2023 16:41:41 +0530
Message-ID: <CAH=2NtyMm5bDWZZBtbtzwvpq2gZEowDp--qfd-AnF2nvHuDaNg@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] dt-bindings: phy: qcom,qmp-usb: Drop legacy
 bindings and move to newer one (SM6115 & QCM2290)
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
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

On Mon, 10 Apr 2023 at 03:22, Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:
>
> On Sun, 9 Apr 2023 at 23:09, Bhupesh Sharma <bhupesh.sharma@linaro.org> wrote:
> >
> > 'qcom,msm8996-qmp-usb3-phy.yaml' defines bindings for several PHYs
> > which predate USB -> USB+DP migration. Since SM6115 and QCM2290
> > nodes for USB QMP phy are being added to dtsi files by followup patches,
> > move these bindings instead to the newer style
> > 'qcom,sc8280xp-qmp-usb3-uni-phy.yaml' file.
> >
> > Since no device trees use these bindings presently, so we have no ABI breakages
> > with this patch.
> >
> > Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> > ---
> >  .../phy/qcom,msm8996-qmp-usb3-phy.yaml        | 27 -----------
> >  .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 45 ++++++++++++++++---
> >  2 files changed, 40 insertions(+), 32 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > index e81a38281f8c..4c96dab5b9e3 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,msm8996-qmp-usb3-phy.yaml
> > @@ -23,14 +23,12 @@ properties:
> >        - qcom,ipq8074-qmp-usb3-phy
> >        - qcom,msm8996-qmp-usb3-phy
> >        - qcom,msm8998-qmp-usb3-phy
> > -      - qcom,qcm2290-qmp-usb3-phy
> >        - qcom,sc7180-qmp-usb3-phy
> >        - qcom,sc8180x-qmp-usb3-phy
> >        - qcom,sdm845-qmp-usb3-phy
> >        - qcom,sdm845-qmp-usb3-uni-phy
> >        - qcom,sdx55-qmp-usb3-uni-phy
> >        - qcom,sdx65-qmp-usb3-uni-phy
> > -      - qcom,sm6115-qmp-usb3-phy
> >        - qcom,sm8150-qmp-usb3-phy
> >        - qcom,sm8150-qmp-usb3-uni-phy
> >        - qcom,sm8250-qmp-usb3-phy
> > @@ -248,29 +246,6 @@ allOf:
> >              - const: phy
> >              - const: common
> >
> > -  - if:
> > -      properties:
> > -        compatible:
> > -          contains:
> > -            enum:
> > -              - qcom,qcm2290-qmp-usb3-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> > -    then:
> > -      properties:
> > -        clocks:
> > -          maxItems: 3
> > -        clock-names:
> > -          items:
> > -            - const: cfg_ahb
> > -            - const: ref
> > -            - const: com_aux
> > -        resets:
> > -          maxItems: 2
> > -        reset-names:
> > -          items:
> > -            - const: phy_phy
> > -            - const: phy
> > -
> >    - if:
> >        properties:
> >          compatible:
> > @@ -318,12 +293,10 @@ allOf:
> >              enum:
> >                - qcom,ipq6018-qmp-usb3-phy
> >                - qcom,ipq8074-qmp-usb3-phy
> > -              - qcom,qcm2290-qmp-usb3-phy
> >                - qcom,sc7180-qmp-usb3-phy
> >                - qcom,sc8180x-qmp-usb3-phy
> >                - qcom,sdx55-qmp-usb3-uni-phy
> >                - qcom,sdx65-qmp-usb3-uni-phy
> > -              - qcom,sm6115-qmp-usb3-phy
> >                - qcom,sm8150-qmp-usb3-uni-phy
> >                - qcom,sm8250-qmp-usb3-phy
> >      then:
> > diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > index 16fce1038285..aa16d50c7c4e 100644
> > --- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > +++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
> > @@ -16,20 +16,20 @@ description:
> >  properties:
> >    compatible:
> >      enum:
> > +      - qcom,qcm2290-qmp-usb3-phy
> >        - qcom,sc8280xp-qmp-usb3-uni-phy
> > +      - qcom,sm6115-qmp-usb3-phy
> >
> >    reg:
> >      maxItems: 1
> >
> >    clocks:
> > +    minItems: 3
> >      maxItems: 4
> >
> >    clock-names:
> > -    items:
> > -      - const: aux
> > -      - const: ref
> > -      - const: com_aux
> > -      - const: pipe
> > +    minItems: 3
> > +    maxItems: 4
> >
> >    power-domains:
> >      maxItems: 1
> > @@ -71,6 +71,41 @@ required:
> >
> >  additionalProperties: false
> >
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,qcm2290-qmp-usb3-phy
> > +              - qcom,sm6115-qmp-usb3-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 3
> > +        clock-names:
> > +          items:
> > +            - const: cfg_ahb
> > +            - const: ref
> > +            - const: com_aux
>
> Doesn't it also need a pipe clock? It surely does: gcc_usb3_prim_phy_pipe_clk

Ok, let me add it in v8.

Thanks.

> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - qcom,sc8280xp-qmp-usb3-uni-phy
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 4
> > +        clock-names:
> > +          items:
> > +            - const: aux
> > +            - const: ref
> > +            - const: com_aux
> > +            - const: pipe
> > +
> >  examples:
> >    - |
> >      #include <dt-bindings/clock/qcom,gcc-sc8280xp.h>
> > --
> > 2.38.1
> >
>
>
> --
> With best wishes
> Dmitry

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0801358F75
	for <lists+devicetree@lfdr.de>; Thu,  8 Apr 2021 23:51:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232488AbhDHVvP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Apr 2021 17:51:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232265AbhDHVvP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Apr 2021 17:51:15 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D3F7C061762
        for <devicetree@vger.kernel.org>; Thu,  8 Apr 2021 14:51:03 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id g15so3912342qkl.4
        for <devicetree@vger.kernel.org>; Thu, 08 Apr 2021 14:51:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=k+Wsi7GpVsKLxsjf0wCLA/6InU/eraQK7xtB6V/7xvY=;
        b=CcQkrP2akWpeGDSQyWsuIPtwDYQcrQF63dtU/b0poCiGi7XRucr8zY88+RpSbCHlBH
         tQ35FRtxexNToj6wr63DmmWwwZeFwluDGgG82QJWINri2GPkZNvT6XvrApSDUNMDnKb3
         0ikCWxFLjsX066d4aXdu2uGn4Ej2V8XlNeBYfG/Hsm6iRKMPUjZxctMq62SERwqPqbRD
         3ZEwqh2lI30D6Bs27ePDEQK/UatuF3Wnh/NoBEaiTJF8YJYnWjKJ65Y0XQv2OcURyb+T
         H9rCpPu1Fdj3ROTwgW+qom/BNy/ugvlLyYl13w4oxpyATaR8Ow5O673ZFbYJIl6LL5Bc
         +uuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=k+Wsi7GpVsKLxsjf0wCLA/6InU/eraQK7xtB6V/7xvY=;
        b=KlSpgfvkApc7C21m/QQkf1MZJmfN98BWS9d8HNS9zx5hxtXrnDkQ1XQor3GOJkkDgy
         rOMIYNaI/FM7norDeNfNqznBWc74Ym+r5EnflXtoZpAfzK6YU6uZ21ZVjBB+CCwt6ng0
         56AL2usV1GkudLnhogB4uPG7TF5zgbdgYgUTT5jpnqD1fdxgtTAkJaRqyamAhu01Khe9
         kgcmOy+Y3HVoiFOcF54ngvdakOpriAci67KAHu+V/HP+tDdiw7CnsEskN6iRBASQvaDx
         lt7KtEkRdehpz28dyiF5o136LU9MB/lM/Q+8k/bWReRn68ZIuSdMiMC75u66q1FbFk0V
         VVGQ==
X-Gm-Message-State: AOAM533md9qucfeo3WS3mzibycQ0uYkjuieJL09HRfRKMUWsyWoe/5e8
        FNtVrWx/xAK5ozdn4V6nJ5tI7QWLmOxf93/8i/bZbw==
X-Google-Smtp-Source: ABdhPJzM6WjaXDGzKu6COp/Zmi6FsjBlV/XmafidXKsKV8aq9TGMthF7mwVb1oJQGTk0WyLdkFGJ9vo2wfY79YeZ/7g=
X-Received: by 2002:a37:9e50:: with SMTP id h77mr10773244qke.138.1617918662408;
 Thu, 08 Apr 2021 14:51:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210408014737.955979-1-dmitry.baryshkov@linaro.org>
 <20210408014737.955979-2-dmitry.baryshkov@linaro.org> <20210408203849.GA1914405@robh.at.kernel.org>
In-Reply-To: <20210408203849.GA1914405@robh.at.kernel.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Fri, 9 Apr 2021 00:50:51 +0300
Message-ID: <CAA8EJpq5tLxXPNH=tkLu9FPr0AGcp3W9aphSkQTO-685Wxsrsw@mail.gmail.com>
Subject: Re: [PATCH v3 1/4] dt-bindings: clock: separate SDM845 GCC clock bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        "open list:DRM DRIVER FOR MSM ADRENO GPU" 
        <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:COMMON CLK FRAMEWORK" <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 8 Apr 2021 at 23:38, Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Apr 08, 2021 at 04:47:35AM +0300, Dmitry Baryshkov wrote:
> > Separate qcom,gcc-sdm845 clock bindings from the clock-less
> > qcom,gcc.yaml, so that we can add required clocks and clock-names
> > properties.
> >
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> > ---
> >  .../bindings/clock/qcom,gcc-sdm845.yaml       | 82 +++++++++++++++++++
> >  .../devicetree/bindings/clock/qcom,gcc.yaml   |  2 -
> >  2 files changed, 82 insertions(+), 2 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
> > new file mode 100644
> > index 000000000000..4099b09ee9dd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/qcom,gcc-sdm845.yaml
> > @@ -0,0 +1,82 @@
> > +# SPDX-License-Identifier: GPL-2.0-only
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/clock/qcom,gcc-sdm845.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Qualcomm Global Clock & Reset Controller Binding
> > +
> > +maintainers:
> > +  - Stephen Boyd <sboyd@kernel.org>
> > +  - Taniya Das <tdas@codeaurora.org>
> > +
> > +description: |
> > +  Qualcomm global clock control module which supports the clocks, resets and
> > +  power domains on SDM845
> > +
> > +  See also:
> > +  - dt-bindings/clock/qcom,gcc-sdm845.h
> > +
> > +properties:
> > +  compatible:
> > +    const: qcom,gcc-sdm845
> > +
> > +  clocks:
> > +    items:
> > +      - description: Board XO source
> > +      - description: Board active XO source
> > +      - description: Sleep clock source
> > +      - description: PCIE 0 Pipe clock source
> > +      - description: PCIE 1 Pipe clock source
> > +
> > +  clock-names:
> > +    items:
> > +      - const: bi_tcxo
> > +      - const: bi_tcxo_ao
> > +      - const: sleep_clk
> > +      - const: pcie_0_pipe_clk
> > +      - const: pcie_1_pipe_clk
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  '#reset-cells':
> > +    const: 1
> > +
> > +  '#power-domain-cells':
> > +    const: 1
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  protected-clocks:
> > +    description:
> > +      Protected clock specifier list as per common clock binding.
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - '#clock-cells'
> > +  - '#reset-cells'
> > +  - '#power-domain-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  # Example for GCC for MSM8960:
>
> I've lost my QCom decoder ring. Is 8960 and 845 the same thing?

No. Mea culpa.

>
> > +  - |
> > +    #include <dt-bindings/clock/qcom,rpmh.h>
> > +    clock-controller@100000 {
> > +      compatible = "qcom,gcc-sdm845";
> > +      reg = <0x100000 0x1f0000>;
> > +      clocks = <&rpmhcc RPMH_CXO_CLK>,
> > +               <&rpmhcc RPMH_CXO_CLK_A>,
> > +               <&sleep_clk>,
> > +               <&pcie0_lane>,
> > +               <&pcie1_lane>;
> > +      clock-names = "bi_tcxo", "bi_tcxo_ao", "sleep_clk", "pcie_0_pipe_clk", "pcie_1_pipe_clk";
> > +      #clock-cells = <1>;
> > +      #reset-cells = <1>;
> > +      #power-domain-cells = <1>;
> > +    };
> > +...
> > diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > index ee0467fb5e31..490edad25830 100644
> > --- a/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > +++ b/Documentation/devicetree/bindings/clock/qcom,gcc.yaml
> > @@ -32,7 +32,6 @@ description: |
> >    - dt-bindings/clock/qcom,gcc-mdm9615.h
> >    - dt-bindings/reset/qcom,gcc-mdm9615.h
> >    - dt-bindings/clock/qcom,gcc-sdm660.h  (qcom,gcc-sdm630 and qcom,gcc-sdm660)
> > -  - dt-bindings/clock/qcom,gcc-sdm845.h
> >
> >  properties:
> >    compatible:
> > @@ -52,7 +51,6 @@ properties:
> >        - qcom,gcc-mdm9615
> >        - qcom,gcc-sdm630
> >        - qcom,gcc-sdm660
> > -      - qcom,gcc-sdm845
> >
> >    '#clock-cells':
> >      const: 1
> > --
> > 2.30.2
> >



-- 
With best wishes
Dmitry

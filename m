Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7396C722EB2
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 20:30:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235077AbjFESas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 14:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234586AbjFESaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 14:30:46 -0400
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com [IPv6:2607:f8b0:4864:20::b2e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A51F6F4
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 11:30:45 -0700 (PDT)
Received: by mail-yb1-xb2e.google.com with SMTP id 3f1490d57ef6-bacfa9fa329so5325460276.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 11:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685989845; x=1688581845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=2bCD5PZj1At8yqhL4CYuYaQGs7kVSIn0/Mt/nLV2HXs=;
        b=c5a8KY3tXAcIgrvqx6pKcIyicw4mhKUoO7L6uvtT5vI+5nzchsky91+qaYZuDhZWgk
         loqPxlttSDTnongyVNVNRJw46CKmugZ4Q5VIalUbQjK5O9X9gCKOZn70yBFlBtwX5GgJ
         gySIHVqIxIpPzWsFxS1u+wOtokXml2HheNIg0+4LdlbaZuy/3n/GmU2iR5097ifqOFBZ
         9hyNiMEde/WN0CU5S8l8NNOmrYr2h5H4DbB4SrjtsHqqWGhMBtMD+Cu3SGuY4dIiwbo2
         q5mHLcwYphvgfbYJO9U/a2Ft+KsZX8f2RJhBOKsg8sTjvMvsGJqdQEPRWQCiwXIUojff
         qrNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685989845; x=1688581845;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2bCD5PZj1At8yqhL4CYuYaQGs7kVSIn0/Mt/nLV2HXs=;
        b=QnZwjadja2MrhZsX7CCIOzsP1iD2VnRmznUf6KFix88lGgGFG+hw4tEIpiqDycrXBq
         DRkaslAQJwHNusnCmg4axPFqmpWd6lrjHJb9XFnq96XVTthYzhMDfKXmAPZSXMDLQoWT
         KLXnXCFxLUdw8lTH/doy8sw16lqh3AU4VELEcnNJHPEZMP73CtOcPer1XeX69s/caxVf
         ND+bEumXZ0E/LfeNkBLjgWvFF/8SCaXJez4jGIhgsiY8J8jc/D84QNQMJkmvwW/RNu0h
         cNtAtdsqhg3btgecpeS/KkZDffEIvTLadjdj/PSNGp9fDuGgcWgL2acE3eT8GZxxCvV1
         awig==
X-Gm-Message-State: AC+VfDzHUqpplX4n9b9ymooPc4IDTxjWPsuUC6SNjXj2ewypY5IsctDx
        iuzbNXR/do7Z3yFAnO49P1yjBUdQ9LTwGIH2vyrYGQ==
X-Google-Smtp-Source: ACHHUZ6mF0HQB1db3oxZ/PWuW6L+XmF5rCHXz5idoZNIDLqw0b82MU/KjjtQYOFBLP++iwX0UEUHhBXI+vEEnCK+zB4=
X-Received: by 2002:a25:2413:0:b0:bad:1159:1aea with SMTP id
 k19-20020a252413000000b00bad11591aeamr11057933ybk.8.1685989844815; Mon, 05
 Jun 2023 11:30:44 -0700 (PDT)
MIME-Version: 1.0
References: <1685982557-28326-1-git-send-email-quic_rohiagar@quicinc.com> <1685982557-28326-8-git-send-email-quic_rohiagar@quicinc.com>
In-Reply-To: <1685982557-28326-8-git-send-email-quic_rohiagar@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Mon, 5 Jun 2023 21:30:34 +0300
Message-ID: <CAA8EJpogj0uzQdk-kDqm7Pju7Q5aXJg6FHswkJy+ugawqePWLw@mail.gmail.com>
Subject: Re: [PATCH v2 07/10] arm64: dts: qcom: Add support for GCC and RPMHCC
 for SDX75
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, rafael@kernel.org, viresh.kumar@linaro.org,
        tglx@linutronix.de, maz@kernel.org, will@kernel.org,
        robin.murphy@arm.com, joro@8bytes.org, mani@kernel.org,
        robimarko@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, Imran Shaik <quic_imrashai@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 5 Jun 2023 at 19:30, Rohit Agarwal <quic_rohiagar@quicinc.com> wrote:
>
> From: Imran Shaik <quic_imrashai@quicinc.com>
>
> Add support for GCC and RPMHCC clock nodes for SDX75 platform.
>
> Signed-off-by: Imran Shaik <quic_imrashai@quicinc.com>
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/sdx75.dtsi | 37 ++++++++++++++++++++++++++++++++++++-
>  1 file changed, 36 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sdx75.dtsi b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> index 3d1646b..f83eef8 100644
> --- a/arch/arm64/boot/dts/qcom/sdx75.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdx75.dtsi
> @@ -7,6 +7,7 @@
>   */
>
>  #include <dt-bindings/clock/qcom,rpmh.h>
> +#include <dt-bindings/clock/qcom,sdx75-gcc.h>
>  #include <dt-bindings/interrupt-controller/arm-gic.h>
>  #include <dt-bindings/soc/qcom,rpmh-rsc.h>
>
> @@ -22,7 +23,21 @@
>                 reg = <0 0x80000000 0 0>;
>         };
>
> -       clocks { };
> +       clocks {
> +               xo_board: xo_board {

No underscores in node names

> +                       compatible = "fixed-clock";
> +                       clock-frequency = <76800000>;
> +                       clock-output-names = "xo_board";

Why do you need this?

> +                       #clock-cells = <0>;
> +               };
> +
> +               sleep_clk: sleep_clk {

No underscores in node names

> +                       compatible = "fixed-clock";
> +                       clock-frequency = <32000>;
> +                       clock-output-names = "sleep_clk";

Why do you need this?

> +                       #clock-cells = <0>;
> +               };
> +       };
>
>         cpus {
>                 #address-cells = <2>;
> @@ -358,6 +373,18 @@
>                 ranges = <0 0 0 0 0x10 0>;
>                 dma-ranges = <0 0 0 0 0x10 0>;
>
> +               gcc: clock-controller@80000 {
> +                       compatible = "qcom,sdx75-gcc";
> +                       reg = <0x0 0x0080000 0x0 0x1f7400>;
> +                       clocks = <&rpmhcc RPMH_CXO_CLK>,
> +                                <&sleep_clk>;
> +                       clock-names = "bi_tcxo",
> +                                     "sleep_clk";

As this is a new platform, it should not be using clock-names to bind
gcc clocks. Please use clock indices instead.

> +                       #clock-cells = <1>;
> +                       #reset-cells = <1>;
> +                       #power-domain-cells = <1>;
> +               };
> +
>                 tcsr_mutex: hwlock@1f40000 {
>                         compatible = "qcom,tcsr-mutex";
>                         reg = <0x0 0x01f40000 0x0 0x40000>;
> @@ -520,6 +547,14 @@
>                         apps_bcm_voter: bcm_voter {
>                                 compatible = "qcom,bcm-voter";
>                         };
> +
> +                       rpmhcc: clock-controller {
> +                               compatible = "qcom,sdx75-rpmh-clk";
> +                               clocks = <&xo_board>;

> +                               clock-names = "xo";
> +                               #clock-cells = <1>;
> +                       };
> +
>                 };
>         };
>
> --
> 2.7.4
>


-- 
With best wishes
Dmitry

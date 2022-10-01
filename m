Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB9525F1A98
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 09:28:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229547AbiJAH2V (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 03:28:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiJAH2U (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 03:28:20 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36381A451
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 00:28:19 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-3573ed7cc15so19637777b3.1
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 00:28:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=SEE6ZLsU3EIgwfwI3tkOmqbv+2VDE09pQKT3XTU2+4E=;
        b=C1kHlBamYm09+shcK5APbb3aiCVa9DJyrWyqK8GnKCETd4z+soPQgFkiutb0b68Vzk
         Mv9oLqDvmPmKuYRwt/gxiUbuN5n7iQoX2lm/mATrkpz+fPim7sEntDcdMF+ob8KFZQHp
         Fys/c+7msHzj4Z8VbpclVTiUqyndooFChpYa87qsL2v7oJHTnIsVluMtULRq7pG52Hhh
         ULiK4dTeJnZ6j8tXZDgLNDZXN4RCSIwuq2AqpNIGyRm52HsWnRyR/yAdIbWNa1qFpW4W
         ODGg5ib8wlJmZJd9rZnhmMa8PEtaiiH/bKq8dlr1C56k6qlbFRB+56A1nZSrQVMKg8xK
         wwug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=SEE6ZLsU3EIgwfwI3tkOmqbv+2VDE09pQKT3XTU2+4E=;
        b=gNY1bojum/UZHEp4ltTH8RXKM0+q/58ntO7vg5Q6smT/wqXrZR0I2A6s57Dn2B4aCT
         Yvo8c5L+pjrrpicHaXovYb91XTmh92FIJt2T8e9enj0pupTGrSSfqJW2ZgyOTRP8l+5+
         TBqHlrwnE+8XjC2GgTnusN1p5uQY0+4owJ8lKOAarZQmCiBjzt9i9rNAzm84CS8DV9a5
         Mthw9A1fy81eBJQEaxnp6NHXRE9LPOrh48/Y21CqEQb1ctY3/qI8E0WY4r6E0bSaoAZi
         wzvf1qr3fwDjvGk7f1eTTcOFWlJGayogK8vaaid+J2kxpo4B6I7X0q2WzgIKkFjErOJF
         1YZA==
X-Gm-Message-State: ACrzQf0/1dYCHJKXfSlV+zpayLg9Wfjr/eQMrAs7LVvSNxVNH2Bk59R7
        pzFghMArSMfae3Yahc0VOjRJVypMOuZYLCk9JWj86A==
X-Google-Smtp-Source: AMsMyM4oz9MU/Da0aGb/3JFVcU6zuXNd4e4OUTiY3ppnKhXBoICpnqvALksm4sdqwqUodwQaU+bfcmCcnPjNtcG7ssI=
X-Received: by 2002:a0d:dbcd:0:b0:356:d169:5ff5 with SMTP id
 d196-20020a0ddbcd000000b00356d1695ff5mr4314939ywe.418.1664609298429; Sat, 01
 Oct 2022 00:28:18 -0700 (PDT)
MIME-Version: 1.0
References: <20221001030656.29365-1-quic_molvera@quicinc.com> <20221001030656.29365-3-quic_molvera@quicinc.com>
In-Reply-To: <20221001030656.29365-3-quic_molvera@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 1 Oct 2022 10:28:07 +0300
Message-ID: <CAA8EJpqS7pHpuXDeeD_TOus=WAJuFE5sWrjeGH0VQdyTJf2uhA@mail.gmail.com>
Subject: Re: [PATCH 02/19] arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs
To:     Melody Olvera <quic_molvera@quicinc.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 1 Oct 2022 at 06:09, Melody Olvera <quic_molvera@quicinc.com> wrote:
>
> Add DTs for Qualcomm IDP platforms using the QDU1000 and QRU1000
> SoCs.
>
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile        |  2 ++
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 30 ++++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qru1000-idp.dts | 30 ++++++++++++++++++++++++
>  3 files changed, 62 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qdu1000-idp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/qru1000-idp.dts
>
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 1d86a33de528..398920c530b0 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -152,3 +152,5 @@ dtb-$(CONFIG_ARCH_QCOM)     += sm8350-sony-xperia-sagami-pdx214.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sm8350-sony-xperia-sagami-pdx215.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sm8450-hdk.dtb
>  dtb-$(CONFIG_ARCH_QCOM)        += sm8450-qrd.dtb
> +dtb-$(CONFIG_ARCH_QCOM) += qdu1000-idp.dtb
> +dtb-$(CONFIG_ARCH_QCOM) += qru1000-idp.dtb

These two lines stand out. Please fix the indentation and move them to
the proper place.

> diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> new file mode 100644
> index 000000000000..0ecf9a7c41ec
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: BSD-3-Clause-Clear
> +/*
> + * Copyright (c) 2022 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "qdu1000.dtsi"
> +
> +/ {
> +       model = "Qualcomm Technologies, Inc. QDU1000 IDP";
> +       compatible = "qcom,qdu1000-idp", "qcom,qdu1000";
> +       qcom,board-id = <0x22 0x0>;
> +
> +       aliases {
> +               serial0 = &uart7;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +};
> +
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
> +&uart7 {
> +       status = "okay";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/qru1000-idp.dts b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> new file mode 100644
> index 000000000000..ddb4ea17f7d2
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> @@ -0,0 +1,30 @@
> +// SPDX-License-Identifier: BSD-3-Clause-Clear
> +/*
> + * Copyright (c) 2022 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +/dts-v1/;
> +
> +#include "qru1000.dtsi"
> +
> +/ {
> +       model = "Qualcomm Technologies, Inc. QRU1000 IDP";
> +       compatible = "qcom,qru1000-idp", "qcom,qru1000";
> +       qcom,board-id = <0x22 0x0>;
> +
> +       aliases {
> +               serial0 = &uart7;
> +       };
> +
> +       chosen {
> +               stdout-path = "serial0:115200n8";
> +       };
> +};
> +
> +&qupv3_id_0 {
> +       status = "okay";
> +};
> +
> +&uart7 {
> +       status = "okay";
> +};
> --
> 2.37.3
>


-- 
With best wishes
Dmitry

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F4B05F1A9F
	for <lists+devicetree@lfdr.de>; Sat,  1 Oct 2022 09:32:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229574AbiJAHcf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 1 Oct 2022 03:32:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229563AbiJAHce (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 1 Oct 2022 03:32:34 -0400
Received: from mail-yw1-x1136.google.com (mail-yw1-x1136.google.com [IPv6:2607:f8b0:4864:20::1136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40ADA24962
        for <devicetree@vger.kernel.org>; Sat,  1 Oct 2022 00:32:32 -0700 (PDT)
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-349c4310cf7so64291307b3.3
        for <devicetree@vger.kernel.org>; Sat, 01 Oct 2022 00:32:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=9mK1id1+567+NLv+i9DRmoYyCVK0YAwuwqrXlMQp2uQ=;
        b=ZhSZfV9VfbawKNZ7Yx85h6oddhx3mSKhIw63ZN3KAfJyBc3dVg8dgLn4i5uCNmrkly
         RIe+raTI1ui+vwQgtRscmYfVX4pdR6x1NOQcxSYWDGTogesVqUKdKu9wrpCtZwbFBB8+
         EOLN0ERDC9VsufkbtTpJVSB9glWBnElk2F7o8zuqR3S6IwZTZ7Rlx9+SEBf1Md7Dc5ox
         KO6oMgZhUlhQthdZgzQSuEooYv35E3ZXbNhUg1KRKBB4ODAhdWdYDoYUM1FJk2JWY0ZK
         xXL7jki5ujYp1rq5w9TRe7XHLaU5Mcj8VbCTVm00U8hUPGNRP2H39X7pCxhNKk4AmSQO
         pj6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=9mK1id1+567+NLv+i9DRmoYyCVK0YAwuwqrXlMQp2uQ=;
        b=sJkE3kdliUnjwu8Pyc5fgA6d+4ju3LrfuUFugR2DbkuHPZpfiJZp+sv7pCECuzHxu9
         VPu6B9uimxY7XsKmRNTdUjBN6RlJNizEiR1tkdjkLppBvYeTVU1Bz0d+3d0OSs/ERiEu
         uX3uty0lPaQyKe8tfVObpEJP8PO8fHl37CQc41L9rPmeduLBqDw2WDpSOfNxdiXgFpj5
         cjLe9TiyTvma/fAvvu7Aa+f3nT5TTH0HuiUBQ4mTN1UUNORFAzuqEAlx4OFvai87Kmhq
         fDZ0GYjf8pq+cLMruuW/FhpOCvQRCth784AETG8z+BJx+zSmTXqZ7vz4SmHAobSx4Uso
         CslQ==
X-Gm-Message-State: ACrzQf3TNK5IeatINZUyJzKDI5ApzF4Z8XvgjCC8DyqTSXYiTbfwdZla
        JR/vZnhgRl9jGyKesrL0RqHNP2BD7lzIZcXB7x+bXQ==
X-Google-Smtp-Source: AMsMyM7qo5p6RhMwwqHahFPmaOc+fd4nmHs1p5xW9xmsLXmiHp7UNq22he/pWo7vw+6bdixKDRYO4yu6SwM0T6c5/NI=
X-Received: by 2002:a0d:d68a:0:b0:350:a7f0:7b69 with SMTP id
 y132-20020a0dd68a000000b00350a7f07b69mr11876287ywd.132.1664609551499; Sat, 01
 Oct 2022 00:32:31 -0700 (PDT)
MIME-Version: 1.0
References: <20221001030656.29365-1-quic_molvera@quicinc.com>
In-Reply-To: <20221001030656.29365-1-quic_molvera@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 1 Oct 2022 10:32:20 +0300
Message-ID: <CAA8EJpr7i6iQ3PYzRbwHQP1-gS9oTGwuNkbJPVh0ieaD+7Jbpg@mail.gmail.com>
Subject: Re: [PATCH 00/19] Add base device tree files for QDU1000/QRU1000
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
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 1 Oct 2022 at 06:09, Melody Olvera <quic_molvera@quicinc.com> wrote:
>
> This series adds the base device tree files and DTS support for the
> Qualcomm QDU1000 and QRU1000 IDP SoCs, including the clocks, tlmm, smmu,
> regulators, mmc, interconnects, cpufreq, and qup.
>
> This patchset is based off of [1] which adds support for the PMIC arb used
> on these SoCs.
>
> The Qualcomm Technologies, Inc. Distributed Unit 1000 and Radio Unit
> 1000 are new SoCs meant for enabling Open RAN solutions. See more at
> https://www.qualcomm.com/content/dam/qcomm-martech/dm-assets/documents/qualcomm_5g_ran_platforms_product_brief.pdf
>
> [1] https://lore.kernel.org/all/20220914165212.3705892-3-vkoul@kernel.org/
>
> Melody Olvera (19):
>   arm64: dts: qcom: Add base QDU1000/QRU1000 DTSIs
>   arm64: dts: qcom: Add base QDU1000/QRU1000 IDP DTs

No need to split IDT commits too much. Splitting the main DT is fine
for me, it eases review. For IDT, I'd just squash them together.

>   arm64: dts: qcom: qdru1000: Add tlmm nodes
>   arm64: dts: qcom: qdu1000: Add reserved memory nodes
>   arm64: dts: qcom: qru1000: Add reserved memory nodes
>   arm64: dts: qcom: qdru1000: Add smmu nodes
>   arm64: dts: qcom: qdu1000-idp: Add RPMH regulators nodes
>   arm64: dts: qcom: qru1000-idp: Add RPMH regulators nodes
>   arm64: dts: qcom: qdru1000: Add interconnect nodes
>   arm64: dts: qcom: qdru1000: Add rpmhpd node
>   arm64: dts: qcom: qdru1000: Add spmi node
>   arm64: dts: qcom: qdu1000-idp: Include pmic file
>   arm64: dts: qcom: qru1000-idp: Include pmic file
>   arm64: dts: qcom: qdru1000: Add cpufreq support
>   arm64: dts: qcom: qdru1000: Add additional QUP nodes
>   arm64: dts: qcom: qdru1000: Add gpi_dma nodes
>   arm64: dts: qcom: qdru1000: Add I2C nodes for QUP
>   arm64: dts: qcom: qdru1000: Add SPI devices to QUP nodes
>   arm64: dts: qcom: qdru1000: Add additional UART instances
>
>  arch/arm64/boot/dts/qcom/Makefile        |    2 +
>  arch/arm64/boot/dts/qcom/qdru1000.dtsi   | 1499 ++++++++++++++++++++++
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts |  231 ++++
>  arch/arm64/boot/dts/qcom/qdu1000.dtsi    |  160 +++
>  arch/arm64/boot/dts/qcom/qru1000-idp.dts |  231 ++++
>  arch/arm64/boot/dts/qcom/qru1000.dtsi    |  155 +++
>  6 files changed, 2278 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/qdru1000.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/qdu1000-idp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/qdu1000.dtsi
>  create mode 100644 arch/arm64/boot/dts/qcom/qru1000-idp.dts
>  create mode 100644 arch/arm64/boot/dts/qcom/qru1000.dtsi
>
>
> base-commit: 987a926c1d8a40e4256953b04771fbdb63bc7938
> prerequisite-patch-id: 79eb132c9ff1a0feb653bef87e3e93f6841f81ee
> prerequisite-patch-id: e25ad91d89a9d4a24f1081e5c03cb20678c6e94b
> prerequisite-patch-id: e882ee6dbd8d55069a313e9c2b10a1ea7f6b80fb
> prerequisite-patch-id: 85c1f1845b2e69ef50e7e8391426e6cab6c66381
> prerequisite-patch-id: 5fd7e4f92a95a7dedc49fd39fdffd5e02c838190
> prerequisite-patch-id: c8d9475d6bb2d24102e5bfee65f74d2c0365db68
> prerequisite-patch-id: a03c3288ed927cbab6a42d3ad49df4347cfc9722
> prerequisite-patch-id: aa7ddf85d2a1c02e4d649632425910e44f73a567
> prerequisite-patch-id: 5e7a02607aecd3f5346a2f450982601cf6935e54
> --
> 2.37.3
>


-- 
With best wishes
Dmitry

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BA4E6CB641
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 07:47:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229527AbjC1Frs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 01:47:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38646 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjC1Frr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 01:47:47 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C67E9C
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 22:47:46 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id r11so10862459wrr.12
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 22:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679982465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6lh60Yr9juv2WyZOUdbsikkbVmvbDkOrRECq1Xjk8w0=;
        b=hKb91XV0j+RJ4xQ36slziJZbbxrhakQalwhvXw/O1Drrwsl7YnUUc7o0vth3A8ITyk
         d/OIgXcNEAfQqxyNySKuvhY3hO09+6CYQDdj42CQU0vUm7VXDlLREJAxRoOld+zbAmuG
         nK/+iJIDUkDB8oJuMEx8w3QWm2o7iEA5yJ2evUg+C+V93rVvy45DaYrrfuR5r44MuF2A
         vVrdRNcbBtEdlpcPXid7Re2+M2arNA8j1qJrKPu+O6BgjazpSadhfteRkDilxFRfTsn8
         lB+d68NWoNVT9vuLmItboCwop42GIB3LzD2zlSeXfzath1pP1mqIadKfMPNsS5qotGhm
         wEuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679982465;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6lh60Yr9juv2WyZOUdbsikkbVmvbDkOrRECq1Xjk8w0=;
        b=NPCfedG/ofsYLRgdPG91SN924qSiZ3hhLYOdj7oiWRCUEI/kBCsTm+O+d2EpfHuqsd
         12iyzTYCgKab5f278KDwSD06hFK6FVMHo4T128Ezf9e486qQqr+f1xrYovRskwYKpfSt
         18kHO3qApZLQeKW5eDRkGEL4lp8KDge8Z2oowJdgeNUQsEw2Je4jnAQ8dHfNHN3hvWnn
         A10MD9JAFS7sDJuekbS3JU/CxGLCKCuzlKTWiKI05YQLkyInpzMKFrvFUB5HVxd9HHaM
         Eo14qE3Kgg3Mi/ldno0c/9CrNlZHko5l6YZ+oHFRAlYEc7p4iHQKRAiXbQHvW5D/Bh2E
         w3tg==
X-Gm-Message-State: AAQBX9cB2sJpikg9UI77OMBMPVKv062i+j9RMSbbRQlzXQUkYJLi38BH
        5kWjyoeIpPE9IyeoyRW2eVB1Jt6lOZWaffPpSYc86Q==
X-Google-Smtp-Source: AKy350bY4T8hh+mpb40iWxB7Rw/cLU14ODPcs3MZGucuLndnUopjiDkmFHPtza0z2LvdN0b4qT1zE7f9jJlYW3hYhJk=
X-Received: by 2002:adf:ec4e:0:b0:2ce:817b:846d with SMTP id
 w14-20020adfec4e000000b002ce817b846dmr2908654wrn.4.1679982464773; Mon, 27 Mar
 2023 22:47:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org> <20230323233735.2131020-6-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20230323233735.2131020-6-vladimir.zapolskiy@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 28 Mar 2023 11:17:33 +0530
Message-ID: <CAH=2Ntz_boSOT2KKURt5eZK03urm8uJ_JVzOn5ZD_z_42Chaaw@mail.gmail.com>
Subject: Re: [PATCH 5/5] arm64: dts: qcom: sm8450: add description of Qualcomm
 Crypto Engine IP
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Mar 2023 at 05:07, Vladimir Zapolskiy
<vladimir.zapolskiy@linaro.org> wrote:
>
> Add description of QCE and its corresponding BAM DMA IPs on SM8450 SoC.
>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index ce4b7d0a09ab..228c26fb9003 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -4081,6 +4081,28 @@ ufs_mem_phy_lanes: phy@1d87400 {
>                         };
>                 };
>
> +               cryptobam: dma-controller@1dc4000 {
> +                       compatible = "qcom,bam-v1.7.0";
> +                       reg = <0x0 0x01dc4000 0x0 0x24000>;
> +                       interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +                       #dma-cells = <1>;
> +                       qcom,ee = <0>;
> +                       qcom,controlled-remotely;
> +                       num-channels = <8>;
> +                       qcom,num-ees = <2>;
> +                       iommus = <&apps_smmu 0x584 0x11>;
> +               };
> +
> +               crypto: crypto@1dfa000 {
> +                       compatible = "qcom,sm8450-qce", "qcom,sm8150-qce", "qcom,qce";
> +                       reg = <0x0 0x01dfa000 0x0 0x6000>;
> +                       dmas = <&cryptobam 4>, <&cryptobam 5>;
> +                       dma-names = "rx", "tx";
> +                       interconnects = <&aggre2_noc MASTER_CRYPTO 0 &mc_virt SLAVE_EBI1 0>;
> +                       interconnect-names = "memory";
> +                       iommus = <&apps_smmu 0x584 0x11>;
> +               };
> +
>                 sdhc_2: mmc@8804000 {
>                         compatible = "qcom,sm8450-sdhci", "qcom,sdhci-msm-v5";
>                         reg = <0 0x08804000 0 0x1000>;
> --
> 2.33.0

Already folded Neil's patch and sent via [1], which includes the
correct BAM DMA compatible list as well.

[1]. https://lore.kernel.org/linux-arm-msm/20230322114519.3412469-11-bhupesh.sharma@linaro.org/

Thanks.

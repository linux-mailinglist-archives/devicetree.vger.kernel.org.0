Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48166CB64A
	for <lists+devicetree@lfdr.de>; Tue, 28 Mar 2023 07:49:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229718AbjC1FtQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Mar 2023 01:49:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229452AbjC1FtP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Mar 2023 01:49:15 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 55A281FC9
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 22:49:14 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id l27so10892282wrb.2
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 22:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679982553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=aFb6jCvA/Zk6l+wzF82W1GR+M7bGGB2J/YapgmZBsKI=;
        b=So5uWOZX9LTKLQiCzuGbIY0dJxtE1Si95IeQfJTbUQ1aGyXdogSJOlSEkK0lCso9v8
         Tq3RfuOK5e1KNLD5PG21wAn5I5/7l0iCZ0cm6wC34sSCRbQ72aPCKWooz6T9jmGyeuGY
         18BLUjo8EO7428rhXAvRg5hJTkYNRS/v/ikZ9xkeeXwMn1Bf/NEqbBDPLw9myIH7dFV7
         995D8dv9xtx96eAVB8Ev8d2pG0ud7NiZeuhA2BLuruwI5UnvI4v+2P7r/owQiaFE9nd/
         bWkXz7wiMUIIQ5dEbTnw0U7u5vy9+7nG3a2MkTUUGD1UglGD5QsMnPmM/QpZUO99H9Tc
         Gkgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679982553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aFb6jCvA/Zk6l+wzF82W1GR+M7bGGB2J/YapgmZBsKI=;
        b=X05YLc8Q2N/glOFq+vOVsBVuteHc8l91xtljQYX30/hpK8k8IKpajQv1sCriFwdfIl
         Sd4SHOSGdLMuFnFViFW9D4qKyXy6+ZU4K7hzS/QJweFHs1SkZvTXb64Rkbli1i0Pu0Vy
         bArmMVOCN3HBy5cM/XRs6AUA/M+kdU2AubjE9A69zh5d8EopGa2HYJJwVYXZ+Y+zyK2M
         pGSK4EIA3jt+cIwf6z6jiPyHyn5qxBjqbqpALEFCe1pt3afF80ipMwD+T7HZ+4E8hNy+
         oOMtLX2xw86T4GK87Rj0iazi8wv1pQq/0RRE6snMj03tPhrWsLfaPoehBs5CzlnOPjSO
         1+5g==
X-Gm-Message-State: AAQBX9cu2JCZIuYx+dN/7RTdD7sUKhZvDO5M9FXRT2CABUxO84JQ7u7S
        OYs6iiyROmz5If0ZasTp8mgXQ4ONFd0kGla8PtGLOA==
X-Google-Smtp-Source: AKy350ZyujMUp7PiE8/Uc2qH1Dz3dYE/S/yYTUV8PF7LdkEhZbJ6E8LlJ69oHRTW+eGVH3GzqjQA2aLU2ayweHLNJFU=
X-Received: by 2002:a5d:6a12:0:b0:2ce:a3a6:79f6 with SMTP id
 m18-20020a5d6a12000000b002cea3a679f6mr2968544wru.4.1679982552790; Mon, 27 Mar
 2023 22:49:12 -0700 (PDT)
MIME-Version: 1.0
References: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org> <20230323233735.2131020-5-vladimir.zapolskiy@linaro.org>
In-Reply-To: <20230323233735.2131020-5-vladimir.zapolskiy@linaro.org>
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
Date:   Tue, 28 Mar 2023 11:19:01 +0530
Message-ID: <CAH=2NtxmprNb+yNAyAeGz-hHmAo57fDN-0-XdE=TXfmvRWSPgQ@mail.gmail.com>
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sm8250: add description of Qualcomm
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
> Add description of QCE and its corresponding BAM DMA IPs on SM8250 SoC.
>
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 24 ++++++++++++++++++++++++
>  1 file changed, 24 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 7b78761f2041..363818da792a 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2222,6 +2222,30 @@ ufs_mem_phy_lanes: phy@1d87400 {
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
> +                       iommus = <&apps_smmu 0x586 0x11>,
> +                                <&apps_smmu 0x596 0x11>;
> +               };
> +
> +               crypto: crypto@1dfa000 {
> +                       compatible = "qcom,sm8250-qce", "qcom,sm8150-qce", "qcom,qce";
> +                       reg = <0x0 0x01dfa000 0x0 0x6000>;
> +                       dmas = <&cryptobam 6>, <&cryptobam 7>;
> +                       dma-names = "rx", "tx";
> +                       interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
> +                       interconnect-names = "memory";
> +                       iommus = <&apps_smmu 0x586 0x11>,
> +                                <&apps_smmu 0x596 0x11>;
> +               };
> +
>                 tcsr_mutex: hwlock@1f40000 {
>                         compatible = "qcom,tcsr-mutex";
>                         reg = <0x0 0x01f40000 0x0 0x40000>;
> --
> 2.33.0

Already folded this patch (which includes your SoB) and sent via [1],
which includes the correct BAM DMA compatible list.

[1]. https://lore.kernel.org/linux-arm-msm/20230322114519.3412469-9-bhupesh.sharma@linaro.org/

Thanks.

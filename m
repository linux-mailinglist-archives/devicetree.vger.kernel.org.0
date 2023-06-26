Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 60E6673DD8E
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 13:32:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229725AbjFZLcL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 07:32:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjFZLcJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 07:32:09 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48F9AA0
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:32:08 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-988b204ce5fso395953966b.3
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 04:32:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1687779127; x=1690371127;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ndfzfcsjUka4AnwkvirKlt5NBE8AOPnlUgXPUv0HxPw=;
        b=dnRGK93bGYnGjkVwATj8flmAG92arzZyab6WqQRN5oa3xv8MIM5L6fpD85cksQtXHO
         G0yaID8rmZgEPZfRjXR79KtjOdNrNR9cyYx+UBfJElYkvFfXX3DjxCnE4RnAN2RQTdqA
         YnTNNp0jYbVB7K5aYX43EdeuiTk22FUTbbvBkltzmFpjj+4s9YlsBties+KOlnVaZEjN
         07LPySspp6bJUeJN3RIXC3cx7IGKwrUnSZcSFyCBzU+ktQoQ4S6I1/a11kqBSHWCZgt/
         JyVKwldjwZK26k1jcimiGoN+Se8Tf5e7sNvVMQa01oRPEH6uR50FzssJVqFExS12taXq
         HUQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687779127; x=1690371127;
        h=in-reply-to:references:to:from:subject:cc:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ndfzfcsjUka4AnwkvirKlt5NBE8AOPnlUgXPUv0HxPw=;
        b=IFafkNfjJvt5qqMNdI9HPm7r/bDnu//5kLh4gJ+UYUGSjP6412bxp3Cy5gKtcNCqRZ
         6carmbmJvY5ZzSFO+wKHYw/iX6BmKa69q9WR0caTRCaJb0IxDg5CWjPcJCJgtPR3gH8k
         ozGbqxG/ejX+SWFACQGyp+rG3rFwKJNN1VMBHQJKWrIMeRQyRYdld9Ji4SvlJq2H5FbY
         ztObYsJ6Ik5NZFBOLMdsW9r1L+mpLngwVv60O/R4kpeXfhHvAY+eVg+Hg4JtnDGNznna
         Y+pTpfkXRx2ZKcON/UHFnL15kugJLCpyu11g166MjatSteRKafiyxmu5AdzzVR0pgDg8
         0CIg==
X-Gm-Message-State: AC+VfDzRr6lfpN+CCFa0VtMh/Oaq3g8Obzpt9efT3I6Frhg1UQ+/Ws9T
        MLDi7FPYn9RAFeJ9Et06iG9fhw==
X-Google-Smtp-Source: ACHHUZ5c5Mkmov5zk/+/pODcO2qHMG954BP+zPgMlfk74aOv4LJg2R4RL0nv0wRCdcTCj0jepBblBg==
X-Received: by 2002:a17:906:fe4c:b0:977:e87c:e633 with SMTP id wz12-20020a170906fe4c00b00977e87ce633mr23056328ejb.23.1687779126713;
        Mon, 26 Jun 2023 04:32:06 -0700 (PDT)
Received: from localhost (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id ot6-20020a170906ccc600b0098df7d0e096sm2858994ejb.54.2023.06.26.04.32.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Jun 2023 04:32:06 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 26 Jun 2023 13:32:06 +0200
Message-Id: <CTMJRMN2K8AY.20TQJE584A453@otso>
Cc:     "Manivannan Sadhasivam" <manivannan.sadhasivam@linaro.org>
Subject: Re: [PATCH] arm64: dts: qcom: sm8350: fix BAM DMA crash and reboot
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Krzysztof Kozlowski" <krzysztof.kozlowski@linaro.org>,
        "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        "Konrad Dybcio" <konrad.dybcio@linaro.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Conor Dooley" <conor+dt@kernel.org>,
        "Bhupesh Sharma" <bhupesh.sharma@linaro.org>,
        <linux-arm-msm@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.15.1
References: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Krzysztof,

On Wed Jun 21, 2023 at 4:36 PM CEST, Krzysztof Kozlowski wrote:
> SM8350 HDK and MTP boards were silently dying and rebooting during BAM
> DMA probe:
>
>   [    1.574304] vreg_bob: Setting 3008000-3960000uV
>   [    1.576918] bam-dFormat: Log Type - Time(microsec) - Message -
>   Optional Info
>   Log Type: B - Since Boot(Power On Reset),  D - Delta,  S - Statistic
>   S - QC_IMAGE_VERSION_STRING=3DBOOT.MXF.1.0-00637.1-LAHAINA-1
>   S - IMAGE_VARIANT_STRING=3DSocLahainaLAA
>   S - OEM_IMAGE_VERSION_STRING=3Dcrm-ubuntu77
>   S - Boot Interface: UFS
>
> It seems that BAM DMA is locally controller (not by firmware) and
> requires proper initialization by the driver prior to use, at least on
> HDK8350 and MTP8350, but probably on all boards.

Are you sure that the bam (and subsequent the qce) actually probes with
this change? From reading the code I don't see how the bam should probe
without either qcom,controlled-remotely or qcom,powered-remotely but no
clocks supplied. I think the probe just fails with this change, right?

Regards
Luca

>
> Fixes: f1040a7fe8f0 ("arm64: dts: qcom: sm8350: Add Crypto Engine support=
")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>
> ---
>
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/q=
com/sm8350.dtsi
> index 88ef478cb5cc..b382ce66387e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -1741,7 +1741,6 @@ cryptobam: dma-controller@1dc4000 {
>  			interrupts =3D <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>  			#dma-cells =3D <1>;
>  			qcom,ee =3D <0>;
> -			qcom,controlled-remotely;
>  			iommus =3D <&apps_smmu 0x594 0x0011>,
>  				 <&apps_smmu 0x596 0x0011>;
>  		};


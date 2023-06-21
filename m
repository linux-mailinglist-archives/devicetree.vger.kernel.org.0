Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C65D5738A68
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 18:05:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230038AbjFUQFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 12:05:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231883AbjFUQFY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 12:05:24 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D75A61B4
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:05:21 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id 38308e7fff4ca-2b45bc83f26so86007811fa.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 09:05:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687363520; x=1689955520;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=L97xFUB/temtwy4P5WXSXI6EdGmq+W3P48s85yOFasc=;
        b=OhBo8mdY2EQb4doBeRjxfE/PCPaqhdve5qfzbO/LYFBLeEl3giTQiM/3gL1/ebNztJ
         Z+qflDHVyA8waw+OkfW8gyMa17G8CTA3qdijO4i5v0tm8PxAt4HJfQxaUIR1/8kG/ZEG
         NwlYOq1dyLDAt0Dl8rTKCa3WcyQtRV2H9/rMqm2SGE8mzNZDxreRcolNm0zsAVIMTI/h
         JCQdMLfeOasEsb57iCHZubEooCYGB2UBTewCGkh8XFHis+6j5rUFnaUUGLktLsJ58ijy
         Zo7twp4zxKjFXfj++JJ3L+aLdw65jAbo2kqa3L8TQ9+l4oZ0IdlvMGHgDvIMieBpW+sH
         JpMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687363520; x=1689955520;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=L97xFUB/temtwy4P5WXSXI6EdGmq+W3P48s85yOFasc=;
        b=H+B9OrbJabE8I3ale1YQYN++JJKFid40Ax21KjU6drWwGwr5goW1B/yTwU0uHeHorl
         nXbH/JSMHOH3JwSWqZK2mBNuhMF5mofWxSFjxxnoX2rY6QrotrJa2b0Xddu2DNeEPnAu
         pJqxsX7c05SMAgayh2nGn6QBVvyQrOvr/fUERbHlUWk/z0b+WwgcDIiMl9XxaZyzdSJa
         HaZgfPeQtfGkb8teP5d25pkKmRm7w64RwE4JfAvbCOXuiyKabr+LyMm2cXeZ8UcGCtUk
         SbYo9doaKZPFKRlNNC83FaqXCEcnYUTx3Cr7I6/Fty1I3459lgRi5rdZBJ7MM4yaALK2
         U3bA==
X-Gm-Message-State: AC+VfDzfSmO9J+/fGKErHXF/orySXktwp4ewPM1LrZTytZnVSc2Y5xsT
        oewi+P06z5cJ+1qSCLbsdtDmDQ==
X-Google-Smtp-Source: ACHHUZ5rCvUCzPIvEum9mq8ucBtspidgJe6E23DjJm1oYmWw/EALGwZQFr0w1VJsKrVexbtw+LoOlA==
X-Received: by 2002:a2e:b0e6:0:b0:2b4:78f6:d331 with SMTP id h6-20020a2eb0e6000000b002b478f6d331mr6371359ljl.32.1687363519916;
        Wed, 21 Jun 2023 09:05:19 -0700 (PDT)
Received: from [192.168.1.101] (abxj193.neoplus.adsl.tpnet.pl. [83.9.3.193])
        by smtp.gmail.com with ESMTPSA id y2-20020a2e7d02000000b002b4750c4db0sm942964ljc.49.2023.06.21.09.05.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Jun 2023 09:05:19 -0700 (PDT)
Message-ID: <faed77b0-d783-bbbb-313a-628cf32b4d22@linaro.org>
Date:   Wed, 21 Jun 2023 18:05:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] arm64: dts: qcom: sm8350: fix BAM DMA crash and reboot
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
References: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230621143627.189134-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21.06.2023 16:36, Krzysztof Kozlowski wrote:
> SM8350 HDK and MTP boards were silently dying and rebooting during BAM
> DMA probe:
> 
>   [    1.574304] vreg_bob: Setting 3008000-3960000uV
>   [    1.576918] bam-dFormat: Log Type - Time(microsec) - Message -
>   Optional Info
>   Log Type: B - Since Boot(Power On Reset),  D - Delta,  S - Statistic
>   S - QC_IMAGE_VERSION_STRING=BOOT.MXF.1.0-00637.1-LAHAINA-1
>   S - IMAGE_VARIANT_STRING=SocLahainaLAA
>   S - OEM_IMAGE_VERSION_STRING=crm-ubuntu77
>   S - Boot Interface: UFS
> 
> It seems that BAM DMA is locally controller (not by firmware) and
> requires proper initialization by the driver prior to use, at least on
> HDK8350 and MTP8350, but probably on all boards.
> 
> Fixes: f1040a7fe8f0 ("arm64: dts: qcom: sm8350: Add Crypto Engine support")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Tested-by: Konrad Dybcio <konrad.dybcio@linaro.org> # SM8350 PDX215

Konrad
> 
> Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index 88ef478cb5cc..b382ce66387e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -1741,7 +1741,6 @@ cryptobam: dma-controller@1dc4000 {
>  			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>  			#dma-cells = <1>;
>  			qcom,ee = <0>;
> -			qcom,controlled-remotely;
>  			iommus = <&apps_smmu 0x594 0x0011>,
>  				 <&apps_smmu 0x596 0x0011>;
>  		};

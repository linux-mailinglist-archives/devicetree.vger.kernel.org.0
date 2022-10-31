Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 05F81613200
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 09:55:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230010AbiJaIzT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 04:55:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38656 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230012AbiJaIzR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 04:55:17 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1BC7C65EA
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 01:55:16 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kt23so27598825ejc.7
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 01:55:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=07p05AvXxhhg9Ebj2EYm3CyzIzK358DNeUTZctR79PI=;
        b=GZQfWLfmnuI5l9MZYGnSAYveWIFMxE58j8f5hvgoMp7eyitHBtHWTEb+uZ+QCz7+D1
         ILQ/sB5+dYeaXHTh7U1MpS4agInDcsNNxKDXqNBhMAMVqf85Jgy6MMmIJvG52bbiCjbv
         PH0QEasMd1paHeqr/fkeziXfGflPhjGFgceyifgvZvHID29F1mypW/14MCuLRfr12/9b
         Sz5zXmuJu0ZS0d0uPHgdMrx+p/O5GJtXvtYatWNjBn8UM6BxBe3EJikeoa1Y72ueELZf
         rPWQz94f4GI2hM3DCJh7ko7IcmZU6PnxUiSLPfcvSJ597QgAGBAljb8dnx9hcIslfdet
         zTfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:references:cc:to:from:subject:message-id:date
         :content-transfer-encoding:mime-version:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=07p05AvXxhhg9Ebj2EYm3CyzIzK358DNeUTZctR79PI=;
        b=txyQh87IoGUbojbWsBBCXjwCLkynqkurXouaz/kKqPXcV1hx6O2R05tSZXn0h5Wh89
         30fI9jJ9IE5AMRhuX4/CRIX9Q/T9sW8IQ3h7G3wjp0+gRxo3G8WPMganBubilRNZeW5w
         6xWfoyQDW2wsbuco2bg33ZRzqrKFruClcdrhfHd4ie1xvMnhbwp8pj7/X18TOoMQuxWe
         Utw/lTCUiRxFLGGwOIG0qKCRANB9/xuBFrAUu/cQ0Oy8Atrfdo6BKE+eGggB20QVQH/3
         7g1RNAxdYy8JDZEi/rUKPTJTl5rRCYmx1AkWeBO2h3eboU7lN6DLu/VXKd8oA77Q4bHX
         u+Rg==
X-Gm-Message-State: ACrzQf3rPFKH0Md4vJ+NElP3RpM9hog9va2St0PgXQWbOME1x+yogKFI
        Op8Fkj+6hv4lu9HgqgzvkN/8WA==
X-Google-Smtp-Source: AMsMyM6Ls3q3a245kOnbwO75tFYa02f6fAzk6wJP3W3KapAsowgtoEDHccbyuuTIyj3GPqs4TX4UrQ==
X-Received: by 2002:a17:907:271b:b0:7ad:b748:63df with SMTP id w27-20020a170907271b00b007adb74863dfmr9258436ejk.639.1667206514690;
        Mon, 31 Oct 2022 01:55:14 -0700 (PDT)
Received: from localhost (31-151-115-246.dynamic.upc.nl. [31.151.115.246])
        by smtp.gmail.com with ESMTPSA id hw20-20020a170907a0d400b007aacfce2a91sm2713110ejc.27.2022.10.31.01.55.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Oct 2022 01:55:14 -0700 (PDT)
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8
Date:   Mon, 31 Oct 2022 09:55:13 +0100
Message-Id: <CNZZDUY2NAEQ.2MTXWFKUSHNA7@otso>
Subject: Re: [PATCH 01/10] arm64: dts: qcom: sm6350: Add resets for SDHCI
 1/2
From:   "Luca Weiss" <luca.weiss@fairphone.com>
To:     "Marijn Suijten" <marijn.suijten@somainline.org>,
        <phone-devel@vger.kernel.org>
Cc:     <~postmarketos/upstreaming@lists.sr.ht>,
        "AngeloGioacchino Del Regno" 
        <angelogioacchino.delregno@somainline.org>,
        "Konrad Dybcio" <konrad.dybcio@somainline.org>,
        "Martin Botka" <martin.botka@somainline.org>,
        "Jami Kettunen" <jami.kettunen@somainline.org>,
        "Andy Gross" <agross@kernel.org>,
        "Bjorn Andersson" <andersson@kernel.org>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Luca Weiss" <luca@z3ntu.xyz>, <linux-arm-msm@vger.kernel.org>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
X-Mailer: aerc 0.12.0
References: <20221030073232.22726-1-marijn.suijten@somainline.org>
 <20221030073232.22726-2-marijn.suijten@somainline.org>
In-Reply-To: <20221030073232.22726-2-marijn.suijten@somainline.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun Oct 30, 2022 at 8:32 AM CET, Marijn Suijten wrote:
> Make sure the SDHCI hardware is properly reset before interacting with
> it, to protect against any possibly indeterminate state left by the
> bootloader.
>
> Suggested-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>

Reviewed-by: Luca Weiss <luca.weiss@fairphone.com>
Tested-by: Luca Weiss <luca.weiss@fairphone.com> # sm7225-fairphone-fp4

Regards
Luca

> ---
>  arch/arm64/boot/dts/qcom/sm6350.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/q=
com/sm6350.dtsi
> index c39de7d3ace0..a3ae765d9781 100644
> --- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
> @@ -490,6 +490,7 @@ sdhc_1: mmc@7c4000 {
>  				 <&gcc GCC_SDCC1_APPS_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK>;
>  			clock-names =3D "iface", "core", "xo";
> +			resets =3D <&gcc GCC_SDCC1_BCR>;
>  			qcom,dll-config =3D <0x000f642c>;
>  			qcom,ddr-config =3D <0x80040868>;
>  			power-domains =3D <&rpmhpd SM6350_CX>;
> @@ -1068,6 +1069,7 @@ sdhc_2: mmc@8804000 {
>  				 <&gcc GCC_SDCC2_APPS_CLK>,
>  				 <&rpmhcc RPMH_CXO_CLK>;
>  			clock-names =3D "iface", "core", "xo";
> +			resets =3D <&gcc GCC_SDCC2_BCR>;
>  			interconnects =3D <&aggre2_noc MASTER_SDCC_2 0 &clk_virt SLAVE_EBI_CH=
0 0>,
>  					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_SDCC_2 0>;
>  			interconnect-names =3D "sdhc-ddr", "cpu-sdhc";
> --=20
> 2.38.1


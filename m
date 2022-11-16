Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7540D62BC8F
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:52:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233161AbiKPLwg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:52:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233397AbiKPLvp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:51:45 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EE98450A5
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:40:20 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id f27so43449296eje.1
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:40:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cRWmZWfn0nmHvOcCR0lEOr7I6yH2EAx1Ipi5ftHWUmE=;
        b=k7Su2A1LOIzMDv5Dh4mvUTVb+dMGRt8BjWIUirecClNhICR19nMMu+I8n4rDoNuCEb
         aYXLStNFJNpRwgvSb1WCmuO5aliX4NF7gPYi2QpDdKupOns0wpF13Hmu00Y2dG8fkgdM
         DhyCc3OTwAPd4etLwr0Juk2297dQFpn4rUQkFoeKCzVs1tRtmba00KrTAKgiy8Ylp9r7
         jWT5ImA8GxpvXi0uh9zwQfdZZ8QsUiIgJxCu/LGg+0Kum13rv5B4FLdUiWTy2IYa3oDf
         nQDeg4QkkIc7bc88iNXI/eDVlMij3wzw02p/9YGl41KBuEORUk+bIyvbCz/tf0j8MOI5
         5uZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=cRWmZWfn0nmHvOcCR0lEOr7I6yH2EAx1Ipi5ftHWUmE=;
        b=Vv57h+mFe+3W1dO2OMEXQRL5McsgHA1JwB1XMHlDNDlvgxhc58iPNLp+RyPbxa+LIp
         eZGXzDsPriTysW2g00S9CFCrqVrKtCyzAe8loZQIB3OOE1im3yOgkPHi09xZbvA9JkCF
         3yGXcwU8hMUID8WEvs13/7Fz04LBCTt9za9yQTOWq4sRTMQVSH1IBM2wRsazt1iSXq5z
         6aJ5gEgYxk6Pcpnde0ntDtl1UDbLlgY284KZ03mRqemjQS9mAItpb5ErKYQ3LpiUiErQ
         eeYpWomhvCuUhHGkB2rGs4W5v8SIJ3mS5G/QIp3Yytm9CaNBdogj2esO2IemA7k09QTi
         /QsQ==
X-Gm-Message-State: ANoB5pmKIui/EljQcXAlubMjPBlbbqf7lOIzVxYZgU0R8EyvmSijr5kg
        ZRdAgQ6U45Jnpn8Yd/W3vEYjUQ==
X-Google-Smtp-Source: AA0mqf5kjp+a4CZlvaxfTov153YvEQ32+RXUJ0ZZ0dQVjUGXl7+tuBqOVHjFlqEGhhvQOc0Rtl+lNQ==
X-Received: by 2002:a17:906:a1d3:b0:78d:9022:f146 with SMTP id bx19-20020a170906a1d300b0078d9022f146mr16714953ejb.656.1668598819150;
        Wed, 16 Nov 2022 03:40:19 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id v19-20020aa7cd53000000b0045bd14e241csm7382619edw.76.2022.11.16.03.40.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:40:18 -0800 (PST)
Message-ID: <27608e63-ddba-af6b-9c70-626cc01a2b04@linaro.org>
Date:   Wed, 16 Nov 2022 12:40:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH] soc: qcom: socinfo: Add SM8550 ID
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20221116112438.2643607-1-abel.vesa@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221116112438.2643607-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16/11/2022 12:24, Abel Vesa wrote:
> Add the ID for the Qualcomm SM8550 SoC.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>   drivers/soc/qcom/socinfo.c         | 1 +
>   include/dt-bindings/arm/qcom,ids.h | 1 +
>   2 files changed, 2 insertions(+)
> 
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 545934aead43..bf8d4e7dd7fc 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -335,6 +335,7 @@ static const struct soc_id soc_id[] = {
>   	{ qcom_board_id(IPQ6005) },
>   	{ qcom_board_id(QRB5165) },
>   	{ qcom_board_id(SM8450) },
> +	{ qcom_board_id(SM8550) },
>   	{ qcom_board_id(SM7225) },
>   	{ qcom_board_id(SA8295P) },
>   	{ qcom_board_id(SA8540P) },
> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
> index 8b1a0f43bd93..c2f7593c4fbb 100644
> --- a/include/dt-bindings/arm/qcom,ids.h
> +++ b/include/dt-bindings/arm/qcom,ids.h
> @@ -140,6 +140,7 @@
>   #define QCOM_ID_SC7280			487
>   #define QCOM_ID_SC7180P			495
>   #define QCOM_ID_SM6375			507
> +#define QCOM_ID_SM8550			519
>   #define QCOM_ID_QRU1000			539
>   #define QCOM_ID_QDU1000			545
>   #define QCOM_ID_QDU1010			587

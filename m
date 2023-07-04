Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F1DBF746F69
	for <lists+devicetree@lfdr.de>; Tue,  4 Jul 2023 13:08:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231358AbjGDLIH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jul 2023 07:08:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33254 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231309AbjGDLIH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jul 2023 07:08:07 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4118EFC
        for <devicetree@vger.kernel.org>; Tue,  4 Jul 2023 04:08:05 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fb9ae4cef6so8625218e87.3
        for <devicetree@vger.kernel.org>; Tue, 04 Jul 2023 04:08:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688468883; x=1691060883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=n58RrpSW1U0TfTmdU+mEdSX5ZyCqOOUPRufdxz6Ah+U=;
        b=qUKdrUhwH5SM2IOIL/ChXTtbBBJbX/CDyCikHGBzujVJ88Vq1q6tVGk+aQJXZgWekG
         JYNUdABwBtUx1EbdyO2vsMkzn7eQtIGVuwbP09gezAGThwiP4h+PD34HjdgBxCanTdF8
         edTvY/WXpaxA1FtLmJdwA4Gg7mGnAmd1GoN4vDcjMs4k2R4r8HWIPBRBjY8qfbyeo1t1
         d9c2d7ZPPOtrqRwRm5MjaNd/ot2eH9osnku0yTI6NmsGlve3fITHcXjqRe2Py34T8v0V
         3MMoYOzGHkjE3Yp8IM5kO5HCzY4gva6nvzUcBWyo4OvF2AJ/mdpYlgF0vSO01+/lZO/Y
         FeiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688468883; x=1691060883;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=n58RrpSW1U0TfTmdU+mEdSX5ZyCqOOUPRufdxz6Ah+U=;
        b=DfzcNQgRSkIzROU3EiTfC31VQadouMtz/AfoGwTl8PJi7ppWYtOUo6PeInAUTwn6AI
         y24SPpLxSUZVsJgxK94awHdRUckYYGDLIolgfBmPfYTnA0mF+h1tq2J/rlKRCm34NQcr
         Iu71bJZfFWKKOMuST6oiemBaRnjqZOzw42gUoqMoJteg84YuodiCQ7cu5Z174Xrf2l/D
         Hti9NdXlsgmGcsSC5xR3CEsa2C3v8lF788d1pvm1S6Ed2LCeEUfmjQ6BpEkjTxiEWu3h
         t77X+Bc0fgIU0VRxM0wgKONUF8Q+tC3qO3QvP0w/uEBvwn2d8Wq17xPYX3/bqQVAe4Uu
         yO+Q==
X-Gm-Message-State: ABy/qLanwx/clOco2/YToi+XkoQ6bNXvZ9k4OpfOlM2VY/ha7EbPXeHY
        pe/j7KsEh9+m9XRq38w9Wi5ISQ==
X-Google-Smtp-Source: APBJJlEcwPYnXgNFS2mOq2stIfo5Xyc7QpNuLiLqyTyLhDZTb8trbpXI8hpxX5TVL36CPexqJaaDpQ==
X-Received: by 2002:a19:6611:0:b0:4fb:8eec:ce47 with SMTP id a17-20020a196611000000b004fb8eecce47mr7844212lfc.58.1688468883487;
        Tue, 04 Jul 2023 04:08:03 -0700 (PDT)
Received: from [192.168.1.101] (abyj26.neoplus.adsl.tpnet.pl. [83.9.29.26])
        by smtp.gmail.com with ESMTPSA id z6-20020ac25de6000000b004f86aef886asm5050344lfq.54.2023.07.04.04.08.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 04 Jul 2023 04:08:03 -0700 (PDT)
Message-ID: <1c6bebd3-6799-5df5-fa46-25e1b7cfd60a@linaro.org>
Date:   Tue, 4 Jul 2023 13:08:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] arm64: dts: qcom: qdu1000: Add reserved gpio list
To:     Komal Bajaj <quic_kbajaj@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230704102224.25052-1-quic_kbajaj@quicinc.com>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230704102224.25052-1-quic_kbajaj@quicinc.com>
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

On 4.07.2023 12:22, Komal Bajaj wrote:
> Add reserved gpio list for QDU1000 and QRU1000 SoCs
> which will not be used by HLOS.
> 
> Signed-off-by: Komal Bajaj <quic_kbajaj@quicinc.com>
> ---
Generally such changes to board files are split into per-board
commits.

Can you explain why these GPIOs will be inaccessible? Some secure
I2C peripheral, I'd guess?

Konrad
>  arch/arm64/boot/dts/qcom/qdu1000-idp.dts | 4 ++++
>  arch/arm64/boot/dts/qcom/qru1000-idp.dts | 4 ++++
>  2 files changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> index 1d22f87fd238..0496e87ddfd5 100644
> --- a/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qdu1000-idp.dts
> @@ -471,6 +471,10 @@ &sdhc {
>  	status = "okay";
>  };
>  
> +&tlmm {
> +	gpio-reserved-ranges = <28 2>;
> +};
> +
>  &uart7 {
>  	status = "okay";
>  };
> diff --git a/arch/arm64/boot/dts/qcom/qru1000-idp.dts b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> index 2cc893ae4d10..80dadd2f30a3 100644
> --- a/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> +++ b/arch/arm64/boot/dts/qcom/qru1000-idp.dts
> @@ -448,6 +448,10 @@ &qupv3_id_0 {
>  	status = "okay";
>  };
>  
> +&tlmm {
> +	gpio-reserved-ranges = <28 2>;
> +};
> +
>  &uart7 {
>  	status = "okay";
>  };

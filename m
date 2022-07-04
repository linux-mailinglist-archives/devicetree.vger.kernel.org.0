Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C5C6565559
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 14:30:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232989AbiGDM3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 4 Jul 2022 08:29:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234337AbiGDM3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 4 Jul 2022 08:29:32 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6E4FCE65
        for <devicetree@vger.kernel.org>; Mon,  4 Jul 2022 05:29:31 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id i17so6120238ljj.12
        for <devicetree@vger.kernel.org>; Mon, 04 Jul 2022 05:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=1nQCfgVrwpM44S0eCJGjl8MSuhMxF5oJnBRF/NzpoMM=;
        b=bQZhnjvT10nmMuhCA7EO91a7Jj9Iykq0WupbN1KcJcsMLQsRzNL3AJDWXUoLT0Bta5
         lh7fBY1QHsQBQXNSUHmzTDT9JH4fAqSrC43zZZt+b+oWt3JhpDjX4ApONmM0X2AqtAWr
         vPGujc7UN+2BDzCIujG3+U2yuAs4eQCSvUTlxqGnzgHlMdUFj8GEHSN4aNQ8LAvWLwL2
         qjmr0+MHLGsJzEcCRGlm2jsH8mjXxqc39jD/C9r0gk9bv+El++ueyRRDvSzN7C87kI20
         IONxC8pSyVz7eu814WlS8BJVe4i3caEAAdJOcuMV+uvPhnjpT3YB2UhNtNYH7KlFDtEW
         xXGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1nQCfgVrwpM44S0eCJGjl8MSuhMxF5oJnBRF/NzpoMM=;
        b=kq6yXnWqIIEFQ88UtR85T3jX20QjkwTIkNhQccdgGe9OZM2KdY3CfmPqioAImU0Lxh
         KqRCopKMNrbVgmtbQz6FjQXRsS/KORQ6bSqw4j+BguL/opdbjkkfUeiijuG9k9j9DNhG
         szANHy2SfRf0NcJiRDYlvBeJZHwoUjAbJBqqNMeMPfGxROqvFuDlheyZjn84kK1/Q8Iu
         G4BRg0iTak9knio2ZGi/l2NN7D0tynmabOR6CtL3HQDKPJ47PIqp4jfwIzytKIgbFcRH
         Y8w9OhLzwWizTdeBeeKFVlusQcPRDHsLejCIRUCmpmcxeVKkLr7NHQnkd3zy/WBZQkWT
         3Giw==
X-Gm-Message-State: AJIora9cJO2VvmNh9eabUphfFMiaDAfF93oLnfrNq+q8HpG7b0+YUG8r
        uAEdcGT5INuG8uxaAPufhaVhIA==
X-Google-Smtp-Source: AGRyM1v/hMUL2v4KPS+C0bX5FafZxoWAa2zvTAoXDqkwpK0WV4Unrxe2+5q07sjrypul1juUv6lhbQ==
X-Received: by 2002:a2e:312:0:b0:25b:dc9f:9e7e with SMTP id 18-20020a2e0312000000b0025bdc9f9e7emr16605976ljd.57.1656937769836;
        Mon, 04 Jul 2022 05:29:29 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id p4-20020a056512328400b00477b6328a4fsm5101957lfe.158.2022.07.04.05.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Jul 2022 05:29:29 -0700 (PDT)
Message-ID: <7cb6fd46-ac80-fbc5-67f7-920934bb801c@linaro.org>
Date:   Mon, 4 Jul 2022 14:29:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] arm64: dts: ipq8074: add reset to SDHCI
Content-Language: en-US
To:     Robert Marko <robimarko@gmail.com>, agross@kernel.org,
        bjorn.andersson@linaro.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220704114430.625365-1-robimarko@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220704114430.625365-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/07/2022 13:44, Robert Marko wrote:
> Add reset to SDHCI controller so it can be reset to avoid timeout issues
> after software reset due to bootloader set configuration.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq8074.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq8074.dtsi b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> index ddafc7de6c5f..d685ca1969a3 100644
> --- a/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq8074.dtsi
> @@ -482,6 +482,7 @@ sdhc_1: mmc@7824900 {
>  				 <&gcc GCC_SDCC1_APPS_CLK>,
>  				 <&xo>;
>  			clock-names = "iface", "core", "xo";
> +			resets = <&gcc GCC_SDCC1_BCR>;

I looked at the bindings and they do not allow reset property, so does
it depend on anything?


Best regards,
Krzysztof

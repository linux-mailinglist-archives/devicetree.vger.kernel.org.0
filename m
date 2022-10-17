Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 111166004C0
	for <lists+devicetree@lfdr.de>; Mon, 17 Oct 2022 03:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230012AbiJQBMV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Oct 2022 21:12:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34212 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230004AbiJQBMT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Oct 2022 21:12:19 -0400
Received: from mail-qk1-x730.google.com (mail-qk1-x730.google.com [IPv6:2607:f8b0:4864:20::730])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 386FF2CDD6
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 18:12:17 -0700 (PDT)
Received: by mail-qk1-x730.google.com with SMTP id t25so5834422qkm.2
        for <devicetree@vger.kernel.org>; Sun, 16 Oct 2022 18:12:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LIpkj7PNl3x4kd8kCMZjcXTrj9dYxfRdONvhgTcQd9U=;
        b=NC9hMtO2yqx/uCHBnCPDIp/mwn6t9/xFP7apUMLbDuBpcc99gPP4KidJF7b/vpqXhy
         rfHR7rh/cL1tvcAWAGNmaTFwHZdsSE63FTkKL0pWZNnqqzKb+kmV6qKt2tRiZE90sACz
         4r131b2FGolg1iEtduVKU2cs4XCPFl3xfYTQltSk/sbeo5NQhT85NT9oxsH/DwkdtsPO
         W+XLMSEcSzD6VGk+98Yba+Mn/1ohZNZigzzLzr4rwg8lo9hwa+7+HP9dzrgKE6WodEzM
         aT92uioX9qByiZtCmXGpavskDagmnQdc4Brw2x0ersfFFxj89S2Ul+PMqTxJxKwFAPyT
         PIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LIpkj7PNl3x4kd8kCMZjcXTrj9dYxfRdONvhgTcQd9U=;
        b=kYx1ja9agRAVqaKLQjk3W4ULR+lrCB9TDcwMk+T5HPung11CaltQjczKfMgnG3/TUV
         Vwmt0K5pHJm68R54qOdfi8bS2B/tuXjSo45T/vVvotjZELCEFUMa2G3aE3JJrLNDrB2K
         Bs1iOemsphrTxMYpDeRrcWUlWrwLKtUMTwin4CTceTkuB2YX9B+ZcFCYtQlg2CfKWrWT
         Ir2+S9Mp9tyrOJsWDjvCkgz3mMU36m/LtZPPfdZyG+ubN1EKtbjxEJdxy1vfvK662jKe
         WKFRNQpG5KdAQPOE5tOJ1XEu9lmahr1uDIv2YzphAqRbgLoa04nd686ONUb+gp+G8N8Z
         QzOg==
X-Gm-Message-State: ACrzQf2oXDQNxi80bEpMJUpIE0CfHOiKUtiZF8rVjW6sBODBKHDOxsBF
        P2UWzqni7eObkeCVvmkS9ntY21vOut+y7A==
X-Google-Smtp-Source: AMsMyM4CiqXRkIRY/bHzhCVZzgzRQn8WphHd/0BNguFkJvwgOV6mHbNcwt+Rhwe2XuwrutSNQRdnvw==
X-Received: by 2002:a05:620a:12fb:b0:6ee:79f2:3716 with SMTP id f27-20020a05620a12fb00b006ee79f23716mr5969617qkl.348.1665969136380;
        Sun, 16 Oct 2022 18:12:16 -0700 (PDT)
Received: from ?IPV6:2601:42:0:3450:bb7d:1aa4:bef8:ec27? ([2601:42:0:3450:bb7d:1aa4:bef8:ec27])
        by smtp.gmail.com with ESMTPSA id l4-20020a37f904000000b006ced5d3f921sm8069960qkj.52.2022.10.16.18.12.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Oct 2022 18:12:15 -0700 (PDT)
Message-ID: <bf4db82c-aaba-0fc4-ed6c-4945193a4e92@linaro.org>
Date:   Sun, 16 Oct 2022 21:12:14 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [PATCH v2 1/3] arm64: dts: qcom: sdm845: commonize bluetooth UART
 pinmux
Content-Language: en-US
To:     Caleb Connolly <caleb@connolly.tech>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        devicetree@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
References: <20221016172944.1892206-1-kc@postmarketos.org>
 <20221016172944.1892206-2-kc@postmarketos.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221016172944.1892206-2-kc@postmarketos.org>
Content-Type: text/plain; charset=UTF-8
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

On 16/10/2022 13:29, Caleb Connolly wrote:
> From: Caleb Connolly <caleb@connolly.tech>
> 
> The 4-pin configuration for UART6 is used for all or almost all SDM845
> devices with built in Bluetooth. Move the pinmux configuration to
> sdm845.dtsi in preparation to be removed from individual devices in
> future patches.
> 
> Suggested-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> Signed-off-by: Caleb Connolly <caleb@connolly.tech>

(...)

> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index f0e286715d1b..55de40bea684 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2971,6 +2971,28 @@ pinmux {
>  				};
>  			};
>  
> +			qup_uart6_4pin: qup-uart6-4pin-state {
> +

No need for blank line here.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


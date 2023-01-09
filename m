Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C12536620F4
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 10:07:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236980AbjAIJHJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 04:07:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236618AbjAIJGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 04:06:36 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 93DA817421
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 00:59:20 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id bn6so8133901ljb.13
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 00:59:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LnxpkJHSu9AHA6FqNkcIvS8Ph1ZPb+/Qp4j/QW8WwF4=;
        b=Z0q1UK7HrD32jR/ewib9onm1tnd32wB1nlO3608KCJg/KHAG/KeR+oZgPSGrb1PDoq
         EV0jfQ9RklM+HIKE4V38YPhVxRbatz+xmFSHc+ZIq3/3xJ3yfjGKH2PK5yE/91QcT7TJ
         6AklR0IggCYhD7ATgmgg1eo8PuZeenfrQhpxZvRo6f1cudEeK4+WM0IOcgGsNCidmPck
         tuoUSk+S3TBZPJxaD9Z3AfIJjfG49ZD/z/kgcleu8M6ltOjOo9jrFkOro9ljUVrSHUFq
         B51MmNZkBJvaTwXO45epTGDU/qioaG7xWGqKThQ7wX7DZkeCR/qU/zCdfHRwgmvtZQaG
         +NLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LnxpkJHSu9AHA6FqNkcIvS8Ph1ZPb+/Qp4j/QW8WwF4=;
        b=7ycQ9Z53STe/Wh6uJdUB6qEAVjlpp4kUJ6x0q2gT1UvUOcEwEypxIBJMU+SKdGmfpR
         vJyhprRX+2qN9p7pwHG91eG92LzkkV+piqdpQobKXR0nLlD6m3KErKV79tWeTZU7N+d3
         qr4NeAUkZ2UhL6WTZxY6rLhtOalOyMZuhmE2u6xCEda+qnwgCkfohfnVwNds4Mie4FOa
         heQBMzcCDoSx+vMO9HHPiYlxG8Qw+Frq+LcsOp+/f56U3mfYlnx17p0jDGLV8h4QzUyf
         FEXTl7icUuQUNJiUipmr/wB3nHIgfbodyNovWe1f3nImqazeBKmudGJkR0Ox7zF7VBB2
         14Mw==
X-Gm-Message-State: AFqh2kq4+wtEUrUBADHMpvCEXoxae0ObhHedQegg3+9dUvZuC05E1SfH
        elrW9IGmQQle0BhQ1RA2gcIcmQ==
X-Google-Smtp-Source: AMrXdXsiltT106zZg3eibnMb7NPIVtuO1wJZmCurRVVQAaJKCv9zyy0laz7+GTBB4TJeDyVn/rQosQ==
X-Received: by 2002:a05:651c:201a:b0:27f:c822:256f with SMTP id s26-20020a05651c201a00b0027fc822256fmr11441848ljo.16.1673254758888;
        Mon, 09 Jan 2023 00:59:18 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id 17-20020a2eb951000000b0027fb4086834sm821519ljs.15.2023.01.09.00.59.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 00:59:18 -0800 (PST)
Message-ID: <3768f6de-8f5b-5e5b-5d2e-f5df8209c643@linaro.org>
Date:   Mon, 9 Jan 2023 09:59:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH] arm64: dts: qcom: msm8996-oneplus-common: drop
 vdda-supply from DSI PHY
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230109042406.312047-1-dmitry.baryshkov@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230109042406.312047-1-dmitry.baryshkov@linaro.org>
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



On 9.01.2023 05:24, Dmitry Baryshkov wrote:
> 14nm DSI PHY has the only supply, vcca. Drop the extra vdda-supply.
> 
> Fixes: 5a134c940cd3 ("arm64: dts: qcom: msm8996: add support for oneplus3(t)")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> index 20f5c103c63b..2994337c6046 100644
> --- a/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi
> @@ -179,7 +179,6 @@ &dsi0_out {
>  };
>  
>  &dsi0_phy {
> -	vdda-supply = <&vreg_l2a_1p25>;
>  	vcca-supply = <&vreg_l28a_0p925>;
>  	status = "okay";
>  };

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4F913717C1E
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 11:38:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235584AbjEaJis (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 05:38:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235576AbjEaJio (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 05:38:44 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8813018D
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:38:40 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-4f50470d77cso3610950e87.0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:38:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685525919; x=1688117919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=p/DR958QAU6rcuvcELBkyXrklyVpIj7nvf8xCSIPTUw=;
        b=o//569biVHWro/GJ6CxkKpCdbRa9EktbkVVgTl2DU7Y5KR1pa8dEQo8OZwMt5aY7ZQ
         n4O1S/uddL75YCUF3hrooNv91q+b7aylQf6NndGKSOY5+XxHugqaTxTjzHev4wMdGCz5
         JSCPSWxBpNv/p8X/9S4uc3YdhBFRNOX+qXFjQ0d3zNW/rcDO56zhBuhPjFXpQFFmLOFu
         Z5lSyB/2KNYFvC3/Ve3oSQ2pD50H4ed20ZSQnhqRO1o+FMPhcGBeFK29EeN8HgTvNU0g
         E6f9zoXKtWu2ThDKF3WRt6teDJWKnTUYl2prmE+RwKa8iPzDB5azwqLtqrPjENm8Lzam
         AMMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685525919; x=1688117919;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=p/DR958QAU6rcuvcELBkyXrklyVpIj7nvf8xCSIPTUw=;
        b=GbXkkqeGt+k0GkiOrO+JfCZu/DA9d2i927GucPhIV/kV/TctA1Ocq1HaU0nRsGlHAW
         i765xQwa9r3z6UuTBtH6kp1X6HDLCI7G8b9FkYnPyJqjU/686BkVs5X7JTOIXjfy41j4
         8oeX2v5Xccnvub4PLNlMwFGK4dPKccIVwA8yGxxBoavvn1f7Nr01FjPHqWPB88/U+toH
         R7xMHCOXMUlvVrJpNdnDVJRJ1wutC5UhwEhLTIAaKeFGI5xz48E2QM3jjCqh1XN4LkpZ
         eG1TGRGRb+7cLUqm6YytpmGtu7JfhSt8au9+G7/7dLtmMs7RXzatgnJ6PYxb4SvdCvuR
         H2ig==
X-Gm-Message-State: AC+VfDy9ZflSMdaaqK/tlmLc2PDKYi+lKfhsKHi5m8Q5jiA4LGHW5T7r
        Bf31BRXOjZr40kXxDkgletVnug==
X-Google-Smtp-Source: ACHHUZ5CjRBHMoQH2PTvhrQDXzCa2yCUrRb6dyEP0KS00Hl9Pe7qDvuj+pZe2wacO0ZpSTGqzR0RyQ==
X-Received: by 2002:ac2:46d0:0:b0:4f1:866d:9b01 with SMTP id p16-20020ac246d0000000b004f1866d9b01mr2276557lfo.3.1685525918799;
        Wed, 31 May 2023 02:38:38 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id v16-20020a197410000000b004f3b2d3fc25sm652700lfe.10.2023.05.31.02.38.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 02:38:38 -0700 (PDT)
Message-ID: <ea599cfe-5aca-5c94-6219-667729f1ae5b@linaro.org>
Date:   Wed, 31 May 2023 11:38:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 02/14] arm64: dts: qcom: sm8350-hdk: remove useless
 enablement of mdss_mdp
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
 <20230531011623.3808538-3-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230531011623.3808538-3-dmitry.baryshkov@linaro.org>
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



On 31.05.2023 03:16, Dmitry Baryshkov wrote:
> The MDP/DPU device is not disabled by default, so there is not point in
> enabling it in the board DTS file.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 4 ----
>  1 file changed, 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> index d3788bd72ac3..61dd9663fabe 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> @@ -424,10 +424,6 @@ mdss_dp0_out: endpoint {
>  	};
>  };
>  
> -&mdss_mdp {
> -	status = "okay";
> -};
> -
>  &mpss {
>  	status = "okay";
>  	firmware-name = "qcom/sm8350/modem.mbn";

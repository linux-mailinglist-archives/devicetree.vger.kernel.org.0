Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 56038739C34
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 11:10:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231678AbjFVJKv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 05:10:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232408AbjFVJKT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 05:10:19 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D3463AA4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:01:13 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-4f865f0e16cso7547294e87.3
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 02:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687424471; x=1690016471;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S3ultwgZVQ1MfvB3VgAwhjguMxX6kRgIS6xIizSazGQ=;
        b=DILVYRGLmK4mfxtP7iEIdVge7ZL6CiE6TfKIJUi0VsACdFFI7scX9NZoxtsDli2CjS
         XT3lxO801X0fC/PZy3urkUxaUPIpidbvATLaQ0+jnQhZjsgwcmCfnB0qj0ARhvmBBs/8
         pUA5EEHgTmWWCfIMS3/SIkvAgy31P02Aj4akc8eYdQ9L+A/aAUs9DVUF59/0Qr6yWWyJ
         GUHdoMmt7wppDE0hMBCrzTYEDStXihnHkGjxw3YqSesXEByd94hX+OHKLPuWDvcknkmN
         7bFztf7JHSA6C+vfsbia3gdbyOYFhybbPRsEqlVDNB5LKbAZ/oDaFZDzG/o0L+U/jvIy
         B6Ng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687424471; x=1690016471;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S3ultwgZVQ1MfvB3VgAwhjguMxX6kRgIS6xIizSazGQ=;
        b=TBROPa86DlYQcEwGj1dZGwTQlLy+1bIBW26Zkew5kH/iNLZ55iTgTHhdYmLyIj02hC
         QuFScHT3SikB/ZnkgmTCsaZHMHgUEMH8Gxhwa6dUZLUx/qD5XvFfjjKmeaGKPHzZ8GPu
         VaDYuFYtpNR/krW7Xwr8hmc1sXoKizcKOzdsseh86IY3MFISzMywFJI/oJUu7VsMt3lE
         b8OK5emErZgTCoE4HMEYcNb2/BJPjGMXDaQMYcr40beOpTfRI74PPTFOcMj1pMH63gUQ
         iQPBG4Ph4/DNC2ZAOuh2MgfG3DqEulQefxc45HWP+dKPTGOZX9lgcmT4GqQZA3e3p6zp
         0DDw==
X-Gm-Message-State: AC+VfDyosP2RQ9RF2zI5wGR5V/MeZn77/9wPtpLsF0sqp60SZ+pCjbhd
        Y7Zvk27gU2LcQOCboQxZU3T24w==
X-Google-Smtp-Source: ACHHUZ7o8LP3qGZozWgkQFPZiEJaIv6IZFkpmRsNnS0pTkM76MiqCWRf/xai2I/ouihD2czAvdzbdQ==
X-Received: by 2002:a05:6512:224d:b0:4f9:5d3b:6a38 with SMTP id i13-20020a056512224d00b004f95d3b6a38mr2823393lfu.45.1687424471089;
        Thu, 22 Jun 2023 02:01:11 -0700 (PDT)
Received: from [192.168.1.101] (abyl165.neoplus.adsl.tpnet.pl. [83.9.31.165])
        by smtp.gmail.com with ESMTPSA id c3-20020ac244a3000000b004f63d35d396sm1018291lfm.250.2023.06.22.02.01.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Jun 2023 02:01:10 -0700 (PDT)
Message-ID: <c1861fb1-cd51-96aa-777f-ba9a3c4fcc13@linaro.org>
Date:   Thu, 22 Jun 2023 11:01:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 3/5] arm64: dts: qcom: sm8[1234]50-hdk: add chassis-type
 property
Content-Language: en-US
To:     Neil Armstrong <neil.armstrong@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230622-topic-sm8x50-upstream-chassis-type-v1-0-13f676eb71f3@linaro.org>
 <20230622-topic-sm8x50-upstream-chassis-type-v1-3-13f676eb71f3@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230622-topic-sm8x50-upstream-chassis-type-v1-3-13f676eb71f3@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22.06.2023 10:57, Neil Armstrong wrote:
> Qualcomm's Hardware Development Kits devices are embedded platforms,
> set the chassis-type property to 'embedded'.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm8150-hdk.dts | 1 +
>  arch/arm64/boot/dts/qcom/sm8250-hdk.dts | 1 +
>  arch/arm64/boot/dts/qcom/sm8350-hdk.dts | 1 +
>  arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 1 +
>  4 files changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> index c0200e7f3f74..bb161b536da4 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8150-hdk.dts
> @@ -15,6 +15,7 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. SM8150 HDK";
>  	compatible = "qcom,sm8150-hdk", "qcom,sm8150";
> +	chassis-type = "embedded";
>  
>  	aliases {
>  		serial0 = &uart2;
> diff --git a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
> index 0aee7f8658b4..1bbb71e1a4fc 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8250-hdk.dts
> @@ -14,6 +14,7 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. SM8250 HDK";
>  	compatible = "qcom,sm8250-hdk", "qcom,sm8250";
> +	chassis-type = "embedded";
>  
>  	aliases {
>  		serial0 = &uart12;
> diff --git a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> index 61dd9663fabe..a43e153e2a65 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8350-hdk.dts
> @@ -11,6 +11,7 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. SM8350 HDK";
>  	compatible = "qcom,sm8350-hdk", "qcom,sm8350";
> +	chassis-type = "embedded";
>  
>  	aliases {
>  		serial0 = &uart2;
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> index bc4c125d1832..984e3960a3f3 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
> @@ -19,6 +19,7 @@
>  / {
>  	model = "Qualcomm Technologies, Inc. SM8450 HDK";
>  	compatible = "qcom,sm8450-hdk", "qcom,sm8450";
> +	chassis-type = "embedded";
>  
>  	aliases {
>  		serial0 = &uart7;
> 

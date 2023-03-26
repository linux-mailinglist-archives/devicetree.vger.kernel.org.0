Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 990736C9340
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 10:57:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231956AbjCZI5S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 04:57:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56706 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231946AbjCZI5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 04:57:16 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D6A183DB
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 01:57:14 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id r11so24184494edd.5
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 01:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679821032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=haByDw2ZsXbIypKEhzwfh640WDCMnzWZK+oka80e358=;
        b=lE5zvDOJ/1GA6UjU7E+BE8z5EqJ2LsiXHmktoVmRn6LXHkT7i1Zy8Ixt1RFhvO1/PY
         tu73L7O4F2v2Z7IveHKvGlkRTsDfU+LNiw9u6UtrH0GoQ+8EQKe/3QRgb8L7GNIolMOk
         jroEK6csvDKAFu7CnTrou//eXl4PrGg9fPLLJeam73aG4M7CC6VjXhxXWjB7Xt+VXgts
         86r1jhqcu14zU1ZAD5pAfOuyb+os7lg4E1pFa9PKAoxNPcYDrlXxK2taJ7q9gyihjtdX
         dJhJ/OYAR/wKCZMszpgZB9tmjse4bqtqFYmY7FtgEIQjJQvq5NxDv15Or8C3vGi2WrJh
         iTHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679821032;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=haByDw2ZsXbIypKEhzwfh640WDCMnzWZK+oka80e358=;
        b=70+RwM63cyn7SdMtPw69kKtG7UJ99VPIcRUlm8ubCuk4qu28jCLKcQGArzCeupvj1i
         Bak0Amilrk7qYXjZW0Z00GTf9+MU2Q5in+cr0Zz9BGpkMnkVoZSL5D3ij8112jL/i40y
         0cV0uFspgP91AjSqAEJRWx9TpCFbjn3EtUbtT29vAV1u2FlJFuNOIAZ4VGnOJBgy8mbl
         JF3BLctUqa+ALV+djJLVgjC9xm7Nxm16JSeauqR5Gmsuixqti3YoV5KKtcAC2G+N3EKF
         0fjxTcdOthRi80gHklQbGRDtl9Jc7Bj/Fr4bJyXKcgKN2ZDrm0taiC4LNJgmKdLRN0WU
         aWEg==
X-Gm-Message-State: AAQBX9e6d+U8EpAyt+xk3iC+/KGv23LlTQbbL4sgbX9Oiz3AUSSaatgj
        LFHL3JkgSqwtuds+O2Gi3wGF3w==
X-Google-Smtp-Source: AKy350Ypvdo2Nwz42dnQKIceTHf5T2rt5NDKbziDNDf344b3tj8NggDMR8GO91iEtHMDf18x6F0+aw==
X-Received: by 2002:a17:906:7243:b0:932:4cbf:5bbb with SMTP id n3-20020a170906724300b009324cbf5bbbmr9081359ejk.19.1679821032556;
        Sun, 26 Mar 2023 01:57:12 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:6cac:926d:a4f2:aa09? ([2a02:810d:15c0:828:6cac:926d:a4f2:aa09])
        by smtp.gmail.com with ESMTPSA id zc14-20020a170906988e00b00927f6c799e6sm12815656ejb.132.2023.03.26.01.57.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 01:57:12 -0700 (PDT)
Message-ID: <b18f1c76-7293-ca59-cec3-f6868083f666@linaro.org>
Date:   Sun, 26 Mar 2023 10:57:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 4/4] dts: arm64: qcom: sdm845-shift-axolotl: enable SLPI
Content-Language: en-US
To:     Dylan Van Assche <me@dylanvanassche.be>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org
References: <20230325135114.21688-1-me@dylanvanassche.be>
 <20230325135114.21688-5-me@dylanvanassche.be>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230325135114.21688-5-me@dylanvanassche.be>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/03/2023 14:51, Dylan Van Assche wrote:
> Enable the SLPI DSP on the SHIFTPHONES SHIFT6mq phone with a
> Qualcomm SDM845 SoC.
> 
> Signed-off-by: Dylan Van Assche <me@dylanvanassche.be>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> index b54e304abf71..66d1cac6c515 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-shift-axolotl.dts
> @@ -501,6 +501,11 @@ &ipa {
>  	status = "okay";
>  };
>  
> +&slpi_pas {
> +	status = "okay";
> +	firmware-name = "qcom/sdm845/axolotl/slpi.mbn";
> +};

Same comments as previous patch.

Best regards,
Krzysztof


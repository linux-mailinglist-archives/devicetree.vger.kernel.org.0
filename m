Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF14463AB88
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 15:47:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230460AbiK1OrQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 09:47:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37326 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232210AbiK1Oqb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 09:46:31 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 96D7924BD5
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 06:46:00 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id be13so17726774lfb.4
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 06:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=O3XOI8aagEXjvz3ZIFWEleJahhUT3rHSOr/3d1Pis4w=;
        b=OQGXazctgO495vx3GkjHDyUyrY92OtXrh1WGOo34zc756/xBv6COpNjGT4Gn+GL1Tv
         IhsSys34UMRv21BoqVfSuhlkOCgQy3GzqribJYKK80xP50U8SUjo6/rY5HJwU2jXPVhn
         a/GhC53Ig8WHMyVkWNZiwka8dLUB701NjmTDv+GiXdDZ8RvXa1MD2PxYPwjIyX4DSfnq
         1Kuu8sd4l5KegB81zcBBeKH3+SWVNPLsYoqTI9jCJlYBU9IdrmfwunOqq51HO/jr3jqh
         7T57W92MvnErGtvVnV2Lza79+nQiHHaYKBaOO7XhjuIYsKpgII1A4cTjBOOMl/9VlOtw
         b3yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O3XOI8aagEXjvz3ZIFWEleJahhUT3rHSOr/3d1Pis4w=;
        b=rAK+SqjvjZdIGhP8Zhf7mvGDyLJMOmtSDf2MMLpZcJlypAbw30rqnMT0oh88et7lxP
         ajWuC9qHtkPJyadQte/uHAhaNsbsdDIcA4UDc4vuA63oAI9gyD6ihEN/uI4bt7hFFX25
         o0cjDPZCkr46c/4Rlxp7+rRcHppqYijJOx7zL8/k9YCTYRYhY9GVaoiqJb8k0tWtU6yP
         nk79QuR3QPDtv+vjqW4XVq2Df2ofOCZF0wrcZ+f/J6VfhOFgINt2IiMVeitYWFgWFutH
         rUm6s0LSdGseKh2hLoQsi7J+cWMY8xDzsNKAhTn9jzNqJRGBbh4af5ifDHJGCPG/rXQl
         0RiQ==
X-Gm-Message-State: ANoB5pkXJvCXk7FxSkzjzwDMSjrdLVy0eTqButda2yyu1B4ceqQkoKQI
        ZHYLbBiyWMkchhTl85Sm6JxPzQ==
X-Google-Smtp-Source: AA0mqf4DIUCr9hdSQputkw9RS3YWWU2CI9QYtMI6yFdaIVG0D4YpUCkL5wOnFcI154jrb/4Hd3W9NA==
X-Received: by 2002:ac2:4ed4:0:b0:4a2:c701:b330 with SMTP id p20-20020ac24ed4000000b004a2c701b330mr12364964lfr.307.1669646758963;
        Mon, 28 Nov 2022 06:45:58 -0800 (PST)
Received: from [192.168.1.101] (95.49.125.236.neoplus.adsl.tpnet.pl. [95.49.125.236])
        by smtp.gmail.com with ESMTPSA id a13-20020a056512374d00b004a05767bc07sm1754389lfs.28.2022.11.28.06.45.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Nov 2022 06:45:58 -0800 (PST)
Message-ID: <5ef6c52f-6a24-f403-f8df-6bc103b1c1f3@linaro.org>
Date:   Mon, 28 Nov 2022 15:45:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 2/2] arm: dts: qcom: use qcom,msm8974pro for pro
 devices
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20221128131550.858724-1-dmitry.baryshkov@linaro.org>
 <20221128131550.858724-2-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221128131550.858724-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 28.11.2022 14:15, Dmitry Baryshkov wrote:
> Use new qcom,msm8974pro compatible string instead of qcom,msm8974 to
> clearly mark that the device is using the Pro version of the SoC.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dts             | 2 +-
>  arch/arm/boot/dts/qcom-msm8974pro-samsung-klte.dts              | 2 +-
>  .../arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dts b/arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dts
> index 38e69ed4fd1b..6523257815a0 100644
> --- a/arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dts
> +++ b/arch/arm/boot/dts/qcom-msm8974pro-fairphone-fp2.dts
> @@ -8,7 +8,7 @@
>  
>  / {
>  	model = "Fairphone 2";
> -	compatible = "fairphone,fp2", "qcom,msm8974";
> +	compatible = "fairphone,fp2", "qcom,msm8974pro", "qcom,msm8974";
>  	chassis-type = "handset";
>  
>  	aliases {
> diff --git a/arch/arm/boot/dts/qcom-msm8974pro-samsung-klte.dts b/arch/arm/boot/dts/qcom-msm8974pro-samsung-klte.dts
> index 38a95430c7d4..52ece17986e4 100644
> --- a/arch/arm/boot/dts/qcom-msm8974pro-samsung-klte.dts
> +++ b/arch/arm/boot/dts/qcom-msm8974pro-samsung-klte.dts
> @@ -7,7 +7,7 @@
>  
>  / {
>  	model = "Samsung Galaxy S5";
> -	compatible = "samsung,klte", "qcom,msm8974";
> +	compatible = "samsung,klte", "qcom,msm8974pro", "qcom,msm8974";
>  	chassis-type = "handset";
>  
>  	aliases {
> diff --git a/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts b/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> index 8265a0ff7857..07131db2e35d 100644
> --- a/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> +++ b/arch/arm/boot/dts/qcom-msm8974pro-sony-xperia-shinano-castor.dts
> @@ -8,7 +8,7 @@
>  
>  / {
>  	model = "Sony Xperia Z2 Tablet";
> -	compatible = "sony,xperia-castor", "qcom,msm8974";
> +	compatible = "sony,xperia-castor", "qcom,msm8974pro", "qcom,msm8974";
>  	chassis-type = "tablet";
>  
>  	aliases {

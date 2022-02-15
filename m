Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0266D4B6CD0
	for <lists+devicetree@lfdr.de>; Tue, 15 Feb 2022 13:59:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237945AbiBOM7N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Feb 2022 07:59:13 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:51844 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233460AbiBOM7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Feb 2022 07:59:13 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 553FC7F6F4
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 04:59:03 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id d27so28196165wrb.5
        for <devicetree@vger.kernel.org>; Tue, 15 Feb 2022 04:59:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=zCpn2JXq0VskflvQH2SSx8I9uTFbNRNFydiZKPnDvhI=;
        b=lDOFr/XxJeC0Y/42M08O7MvgoGf2FhswQUQpb+D1iRzw+/MCqXjZyDN32KSXivqcP6
         3FBgZILaDnjuOZgwIzIzZcObKk6UmZhc/Fa0tBVi7aLeWjLmh99S8enRwY8dE4VeOyBW
         elAzCU/6enOMQFl15N1Tgg1v7JDAPXYbP1W1iS1YkcanoBEbu0hzkPdqblqU3FEkaPgt
         AmbgkacxfeuhcI9Vg9u8r924SDfc0q7H8zX6+mBCu9aebjIKFPaCxnugvp1a63s04FEW
         yC/Pe5igxodlc4AKf6Tas1Q8fPsPMxVUpYcjPziF7yDdtWqU7NREx5gUtBdizd1nRYxy
         9XsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=zCpn2JXq0VskflvQH2SSx8I9uTFbNRNFydiZKPnDvhI=;
        b=AolGLOGoXRcDiU/dZr4AxjnV9RWDu4UW9zCuUQ/6WDM2+IAkPQ466zkjksovxJvKyf
         dFaajHBW+a0D+FcSytQF2l9y/CQF+ucEKzi67MjikaDZCuPsBEAxV5mD4epf8BVrhypL
         UmY9rHy+n8G2tYfBeVOk/lPka2FWGWFF1qAlwzopyGuhp0KQGTdNaCJlvNjGXjtbQOE8
         hnUTGKcGl2JsZsfJDY9pOZBvQFUV+sce7/VPmuE/KbfaCZOd/PIhvQdSwgPoHsWdO8jx
         OnQArPB7XtsF42iHXnfoO95t6O113U85D8eSYLiMmqjFDHd4Lmjc40poXmPa+eLyokw9
         DDGA==
X-Gm-Message-State: AOAM531UlHm2REfBVhnfGzYgkG9KLvImxqD0OmCNgXlVxn+HXQfWLVqW
        9al/uuayDU7s5QCeu9iVZKiHTQ==
X-Google-Smtp-Source: ABdhPJzR05gOWEzqqC2fldn5T2nllYrHfwlb4CSV4AZs7n55qc988hVFpstMdBCmyRZ47NemCaA44w==
X-Received: by 2002:adf:f803:: with SMTP id s3mr3237755wrp.660.1644929941843;
        Tue, 15 Feb 2022 04:59:01 -0800 (PST)
Received: from google.com (cpc155339-bagu17-2-0-cust87.1-3.cable.virginm.net. [86.27.177.88])
        by smtp.gmail.com with ESMTPSA id bg23sm20081554wmb.5.2022.02.15.04.59.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Feb 2022 04:59:01 -0800 (PST)
Date:   Tue, 15 Feb 2022 12:58:59 +0000
From:   Lee Jones <lee.jones@linaro.org>
To:     Luca Weiss <luca@z3ntu.xyz>
Cc:     linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/15] dt-bindings: mfd: qcom,tcsr: Document msm8953
 compatible
Message-ID: <YgujkzAezfFBNRDP@google.com>
References: <20220112194118.178026-1-luca@z3ntu.xyz>
 <20220112194118.178026-4-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220112194118.178026-4-luca@z3ntu.xyz>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Jan 2022, Luca Weiss wrote:

> Document the compatible for tcsr found in msm8953.
> 
> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
> Acked-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> ---
>  Documentation/devicetree/bindings/mfd/qcom,tcsr.txt | 1 +
>  1 file changed, 1 insertion(+)

Doesn't seem to apply.

Could you please rebase.

> diff --git a/Documentation/devicetree/bindings/mfd/qcom,tcsr.txt b/Documentation/devicetree/bindings/mfd/qcom,tcsr.txt
> index c5f4f0ddfcc3..add61bcc3c74 100644
> --- a/Documentation/devicetree/bindings/mfd/qcom,tcsr.txt
> +++ b/Documentation/devicetree/bindings/mfd/qcom,tcsr.txt
> @@ -10,6 +10,7 @@ Required properties:
>  		"qcom,tcsr-ipq8064", "syscon" for IPQ8064
>  		"qcom,tcsr-apq8064", "syscon" for APQ8064
>  		"qcom,tcsr-msm8660", "syscon" for MSM8660
> +		"qcom,tcsr-msm8953", "syscon" for MSM8953
>  		"qcom,tcsr-msm8960", "syscon" for MSM8960
>  		"qcom,tcsr-msm8974", "syscon" for MSM8974
>  		"qcom,tcsr-apq8084", "syscon" for APQ8084

-- 
Lee Jones [李琼斯]
Principal Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

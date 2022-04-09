Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8F414FA0D9
	for <lists+devicetree@lfdr.de>; Sat,  9 Apr 2022 02:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237296AbiDIA6f (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 20:58:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbiDIA6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 20:58:34 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F805C8BEA
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 17:56:29 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id a5so8793282qvx.1
        for <devicetree@vger.kernel.org>; Fri, 08 Apr 2022 17:56:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WfKf4vWBXKVDkSg0ucXtRl5Rm+zrC4yREy0YOeH4gUc=;
        b=SbsoGlrpPOxq5eVe2RHS6Fc2qgezVsfsWAPBrsqFY083kKppljMcyKNxf6fxtiQmea
         aBzJD0kBJmjb9PdSYNfNWWUXkxV+z3QetqTr0i2f2Fa0luv9QMmI1KsRSQjDGw4Q7pjE
         /budDdH0oHlvN2fFVV1vBrZh76rPZ30eYwy2OzDUOFI8R/MHqD9g9N37iSvkqQH1rLki
         ldD0q+7NaDD0+d4L47sogdRrZ6h8Mt0wcAP+WMJn0TOE8HP8JqQ6p7V9OzmOB/bw6iZf
         c8vHR4EgzGWHybFWEv3zUnRTSJpUnqzU2XrHxjaUip7gvbhqT+BxayqhtVHq+PpsKWd2
         dfbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WfKf4vWBXKVDkSg0ucXtRl5Rm+zrC4yREy0YOeH4gUc=;
        b=XIlkSfePKU/nsg4sBOAHpVtNIr9aSl2EqGkgl/J/Z4VCG6bKLRyyyzCdJAXtlmvSA+
         rbl/wR3pGSwEfNV2iD35wUZYrqk8vPeizbQ1b5T0qczvyQrT9k0eT/MceRgXB+X8jtyX
         prsjoFi0tHNbhTjdJfr53Gsv9M96JljcaHZ8Tae+B4OmFeGx07AO2552d5wPAT6NDMXu
         C7kO4mZtuzKI8y+1CKQbUFVYbwR5MyYUKzcaEofYTyPyAX3UxmusLLggSLsMyb2RfYD8
         uHfahGKXWxOyFHwu1+CYeHjjatmmi/q0tAUesYDNjKZG3joIje9TcXdY9a9zqgkGae1E
         cLUw==
X-Gm-Message-State: AOAM5324xCq1ZAlf9TUPGFaTgXY2BfZlQfSq2O3zttOBlNnTeRGwIb4m
        pYZR8rHQ8J+DeDlO1cQvmUhmtEtcWCCbe3GBafcNMw==
X-Google-Smtp-Source: ABdhPJz2DL14RUrS2mQs5G+BjceWY6DRGwYs2DVp88o7IspvTzBgIYnGmtDqdeyP0EjlFaN1l+8GZzgWVN/EFJ3XOaE=
X-Received: by 2002:a05:6214:2aae:b0:440:f701:e8df with SMTP id
 js14-20020a0562142aae00b00440f701e8dfmr18782301qvb.55.1649465788483; Fri, 08
 Apr 2022 17:56:28 -0700 (PDT)
MIME-Version: 1.0
References: <20220408213336.581661-1-bjorn.andersson@linaro.org> <20220408213336.581661-3-bjorn.andersson@linaro.org>
In-Reply-To: <20220408213336.581661-3-bjorn.andersson@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date:   Sat, 9 Apr 2022 03:56:17 +0300
Message-ID: <CAA8EJpo4cRh64T_dCiOZFVQWt18h74x3avBRLtSRvHy=ybxk_g@mail.gmail.com>
Subject: Re: [PATCH 3/3] soc: qcom: llcc: Add MODULE_DEVICE_TABLE()
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Sai Prakash Ranjan <quic_saipraka@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 9 Apr 2022 at 00:31, Bjorn Andersson <bjorn.andersson@linaro.org> wrote:
>
> The llcc-qcom driver can be compiled as a module, but lacks
> MODULE_DEVICE_TABLE() and will therefore not be loaded automatically.
> Fix this.
>
> Fixes: a3134fb09e0b ("drivers: soc: Add LLCC driver")
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

> ---
>  drivers/soc/qcom/llcc-qcom.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/soc/qcom/llcc-qcom.c b/drivers/soc/qcom/llcc-qcom.c
> index a76d58195637..918bfd0df0e2 100644
> --- a/drivers/soc/qcom/llcc-qcom.c
> +++ b/drivers/soc/qcom/llcc-qcom.c
> @@ -809,6 +809,7 @@ static const struct of_device_id qcom_llcc_of_match[] = {
>         { .compatible = "qcom,sm8450-llcc", .data = &sm8450_cfg },
>         { }
>  };
> +MODULE_DEVICE_TABLE(of, qcom_llcc_of_match);
>
>  static struct platform_driver qcom_llcc_driver = {
>         .driver = {
> --
> 2.35.1
>


-- 
With best wishes
Dmitry

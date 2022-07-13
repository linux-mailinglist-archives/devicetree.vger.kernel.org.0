Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC6DF573DF4
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 22:44:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237077AbiGMUoO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 16:44:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38486 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237159AbiGMUoF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 16:44:05 -0400
Received: from mail-oa1-x36.google.com (mail-oa1-x36.google.com [IPv6:2001:4860:4864:20::36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5C1B23BE9
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:44:04 -0700 (PDT)
Received: by mail-oa1-x36.google.com with SMTP id 586e51a60fabf-fe023ab520so3167fac.10
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KVS1rLxFQi7QW8ID3uPP6KXeOfQ6Lda5rD0/u3hAFso=;
        b=GmjvS1yoQk0PvjFORFOgEtrO8GY6OC7Q/gRLkByvki/KnPww4g4p2qOHu0cKN12nMf
         VqZLpcjc7zaoaDcaP0tVhMPOAA9TgCUawl/2lczu2KBx2EWvQHG1Y9fMYMJYDQKORdQ9
         LeinQ7rHi1KXbCVaFzNM8fqypMRu5uWBhah7a3H0baongP4if5LKcS9O1mTjoiGhS/H6
         6QudbHxe4ipC0msR4Xt8HO5Psd2Y8el1u1jMZajRT0WP52URWxjYP4/ResRZ1kmpaMoT
         JHcIvL6LG3vyfYrvaAVi/xj4TprAEcoghDYrSZ+svevMpJmB1UHAcp0ToVGDdBHEndJ5
         Qlxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KVS1rLxFQi7QW8ID3uPP6KXeOfQ6Lda5rD0/u3hAFso=;
        b=fPvsHKLslkvJOy4COrVcEBnRB0vlz+Y571TqSmIcV8ZdhF9nUPq7ewOxOw5x9p8CW+
         xovJ45SfALFf8QJYoR8fZWDYK6h8XvINTDHI4NVCGRu1R7Y0tRHdQGu/jr+HbqsFDLcX
         cZNng8SQRpuocmW87Go28iVUa7FS4Tv4qPwCFxwzJFEDXVapfkEIu8Gw5qgtkY+GilHi
         Wv2MZ+mXTmk4XU9P7IYhmJdNgmEYwHMIgzEn5rZB1z4wAV7GqymZW7YC3yh9mDHvfnhI
         FusNCs8QdK4MM7PElDllMX/x5sml1CbUWRGpEZi4pVm61L+QepjUeBAA56wKU4nbviHx
         A2QA==
X-Gm-Message-State: AJIora/qjUXd15VirocV7E52l7sieImLAYO+hOMkfqFj6ccLrRr8QP3F
        ImgCR/uVmO31G6QVWqqN6eASxQ==
X-Google-Smtp-Source: AGRyM1s1KAomO0GSYFQ9oLF4S8Yes4pX7IcO56EhCIySAuiPlr0qGMjs0WtTAlBpSQIRRtwudJ1Peg==
X-Received: by 2002:a05:6870:a90a:b0:10c:9d2d:f9a with SMTP id eq10-20020a056870a90a00b0010c9d2d0f9amr2773007oab.41.1657745043994;
        Wed, 13 Jul 2022 13:44:03 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id e12-20020a05680809ac00b0033a1c24effasm2073727oig.22.2022.07.13.13.44.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 13:44:03 -0700 (PDT)
Date:   Wed, 13 Jul 2022 15:44:01 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, konrad.dybcio@somainline.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v6 2/4] mailbox: qcom-apcs-ipc: add IPQ8074 APSS clock
 controller support
Message-ID: <Ys8ukbAbrxwLG0XH@builder.lan>
References: <20220707173733.404947-1-robimarko@gmail.com>
 <20220707173733.404947-2-robimarko@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707173733.404947-2-robimarko@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 07 Jul 12:37 CDT 2022, Robert Marko wrote:

> IPQ8074 has the APSS clock controller utilizing the same register space as
> the APCS, so provide access to the APSS utilizing a child device like
> IPQ6018 does as well, but just by utilizing the IPQ8074 specific APSS
> clock driver.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
> Changes in v6:
> * Adjust max_register value using match data instead of globally
> 
> Changes in v5:
> * Use lower case hex for max_register
> * Update the APSS clock name to match the new one without commas
> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 8 +++++++-
>  1 file changed, 7 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> index c05f3276d02c..5d6b41fa6256 100644
> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> @@ -34,6 +34,12 @@ static const struct qcom_apcs_ipc_data ipq6018_apcs_data = {
>  	.offset = 8, .clk_name = "qcom,apss-ipq6018-clk"
>  };
>  
> +static const struct qcom_apcs_ipc_data ipq8074_apcs_data = {
> +	.offset = 8,
> +	.max_register = 0x5ffc,
> +	.clk_name = "qcom-apss-ipq8074-clk"
> +};
> +
>  static const struct qcom_apcs_ipc_data msm8916_apcs_data = {
>  	.offset = 8, .clk_name = "qcom-apcs-msm8916-clk"
>  };
> @@ -148,7 +154,7 @@ static int qcom_apcs_ipc_remove(struct platform_device *pdev)
>  /* .data is the offset of the ipc register within the global block */
>  static const struct of_device_id qcom_apcs_ipc_of_match[] = {
>  	{ .compatible = "qcom,ipq6018-apcs-apps-global", .data = &ipq6018_apcs_data },
> -	{ .compatible = "qcom,ipq8074-apcs-apps-global", .data = &msm8994_apcs_data },
> +	{ .compatible = "qcom,ipq8074-apcs-apps-global", .data = &ipq8074_apcs_data },
>  	{ .compatible = "qcom,msm8916-apcs-kpss-global", .data = &msm8916_apcs_data },
>  	{ .compatible = "qcom,msm8939-apcs-kpss-global", .data = &msm8916_apcs_data },
>  	{ .compatible = "qcom,msm8953-apcs-kpss-global", .data = &msm8994_apcs_data },
> -- 
> 2.36.1
> 

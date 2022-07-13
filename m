Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B85E8573DF0
	for <lists+devicetree@lfdr.de>; Wed, 13 Jul 2022 22:43:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236812AbiGMUnq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jul 2022 16:43:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236396AbiGMUno (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jul 2022 16:43:44 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4348265F8
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:43:40 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id p132so8035oif.9
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 13:43:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=KyGgu7C9+fRm2ADCAgt+Fbwrs6cnQcRAcXl1tzTw7kU=;
        b=zf1H/tMruuyBeuv7h7OXqeAxgPP4r+iHG75l/BPPZFfh8inX46JOM10fCkKKhTSck3
         ZXbXms33ifDCmgSAh7uFtobu0BZYnWA8V6Ae450q4kpbI5+z7fuM8SDS/FlC8t8l4/bo
         n2HIk/Ywfs+ZCAYMV4b6kAIywECnydhEc1ExX4/OHtXV/IEzW8gab+W459UYcdgZV2da
         vbrvN83OLXFch+16Tf0AM08lykoixTZ+W1SNq+aeCOC+7JDAWEWp7wTxacpz+Ug8cXSa
         hqN1pJc7VMty6v0Jv3X8Ij1IlBug6Tn9PFwLrjN3lrNKEhoraoCzzEmwekFyHYvUOhiq
         SV1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=KyGgu7C9+fRm2ADCAgt+Fbwrs6cnQcRAcXl1tzTw7kU=;
        b=YXBbikDpPAU0z2iRblULGbtBIAIApb7k4neEpKTwUTcrAyN6ken8yYlaSztiJUwmcf
         /7KKpOSbEfcw+s2Iqluh3UIvgFfVQri3g4KcT9vZ1L/FIYDw3Qu1rX9QRJpivrvIGEyJ
         iU/wu9Mrgv3g86ok8hrCsAdTQwJcYdpHDZkbr+1NrKewKkjqgGP6QAQa/6VLu0utMXPT
         yxr45StXv4gPtyEi5f4tYuQadmKsDb8r3NELzjDez+qIAD939Nfe4UuJ7hSRxtAs7x/h
         FCl62SIb84iNjQwOKj9orNsbBE6eNGCw7wkEfaHFVfOLSQYnS+3tTYSU80lJ/wCoc94f
         oR1w==
X-Gm-Message-State: AJIora8WHsoyITJt//ShDmHaQ4K/7IbYy84WZFdDRfOMTMD+TpC24GSg
        yTQNX6KkFqmoi3kqAy/XRdz3Pw==
X-Google-Smtp-Source: AGRyM1tw2waAcoFmFyUJZc6NQdSIgEH/42t01G/WXEaFODPCZP9fl8aD/XxkiU0xnxwFtBvESa3lmQ==
X-Received: by 2002:a05:6808:1444:b0:335:be7f:3466 with SMTP id x4-20020a056808144400b00335be7f3466mr6015025oiv.24.1657745019644;
        Wed, 13 Jul 2022 13:43:39 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w65-20020aca6244000000b00325cda1ff99sm5698831oib.24.2022.07.13.13.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 13:43:38 -0700 (PDT)
Date:   Wed, 13 Jul 2022 15:43:37 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Robert Marko <robimarko@gmail.com>
Cc:     agross@kernel.org, konrad.dybcio@somainline.org,
        jassisinghbrar@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v6 1/4] mailbox: qcom-apcs-ipc: make regmap max_register
 configurable
Message-ID: <Ys8ueXn77ZjRTt25@builder.lan>
References: <20220707173733.404947-1-robimarko@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220707173733.404947-1-robimarko@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 07 Jul 12:37 CDT 2022, Robert Marko wrote:

> APCS register space in IPQ8074 is 0x6000 so regmap max_register needs to
> be 0x5ffc.
> 
> Instead of making it global, make max_register configurable via match data.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/mailbox/qcom-apcs-ipc-mailbox.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/mailbox/qcom-apcs-ipc-mailbox.c b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> index 80a54d81412e..c05f3276d02c 100644
> --- a/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> +++ b/drivers/mailbox/qcom-apcs-ipc-mailbox.c
> @@ -27,6 +27,7 @@ struct qcom_apcs_ipc {
>  struct qcom_apcs_ipc_data {
>  	int offset;
>  	char *clk_name;
> +	unsigned int max_register;
>  };
>  
>  static const struct qcom_apcs_ipc_data ipq6018_apcs_data = {
> @@ -53,7 +54,7 @@ static const struct qcom_apcs_ipc_data sdx55_apcs_data = {
>  	.offset = 0x1008, .clk_name = "qcom-sdx55-acps-clk"
>  };
>  
> -static const struct regmap_config apcs_regmap_config = {
> +static struct regmap_config apcs_regmap_config = {
>  	.reg_bits = 32,
>  	.reg_stride = 4,
>  	.val_bits = 32,
> @@ -91,12 +92,17 @@ static int qcom_apcs_ipc_probe(struct platform_device *pdev)
>  	if (IS_ERR(base))
>  		return PTR_ERR(base);
>  
> +	apcs_data = of_device_get_match_data(&pdev->dev);
> +	if (!apcs_data)
> +		return -ENODATA;
> +
> +	if (apcs_data->max_register)
> +		apcs_regmap_config.max_register = apcs_data->max_register;
> +
>  	regmap = devm_regmap_init_mmio(&pdev->dev, base, &apcs_regmap_config);
>  	if (IS_ERR(regmap))
>  		return PTR_ERR(regmap);
>  
> -	apcs_data = of_device_get_match_data(&pdev->dev);
> -
>  	apcs->regmap = regmap;
>  	apcs->offset = apcs_data->offset;
>  
> -- 
> 2.36.1
> 

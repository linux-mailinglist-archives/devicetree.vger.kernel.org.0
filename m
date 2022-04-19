Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C66A85075E1
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 19:03:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1355598AbiDSRF7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 13:05:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1355627AbiDSRFT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 13:05:19 -0400
Received: from mail-oa1-x29.google.com (mail-oa1-x29.google.com [IPv6:2001:4860:4864:20::29])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC50E46B21
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 09:56:02 -0700 (PDT)
Received: by mail-oa1-x29.google.com with SMTP id 586e51a60fabf-deb9295679so18131121fac.6
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 09:56:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=cU3PsQ96m2bacgHlDzTdRKjnECW2W3GiF9D36CqZr/s=;
        b=Q1S+yCPs7SupLovMDFM3IQDosMFLbgc8WIsAM+J8qB90YWYU8VHVuB6N/G1ECvL8g4
         L0uxwo9lBC7+JxEuwKqpSEMAOGShHgjf/p+nLbhjP6Lje8tJzyu05YRZm0m1dtkqQKDn
         /HU2+grMoR6gH1AgaIZ4Yb7lgK7RhHMNM5TQMQN4LbcKlH2DEHGm4QEq/sZkeSBIKw29
         TMkUY3a+eyIl5KkCkTMk2E0Zmt8inqxI43pO/VnkQMCAhJRUfEMPceHZmuenV62nEUYg
         n8sgrwGe5DQrG8zaTMbEOyDmOSOE8iXobUOGiCoOYlj3W1TlhgCM2AUVLogdcEDHBKBP
         e+JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=cU3PsQ96m2bacgHlDzTdRKjnECW2W3GiF9D36CqZr/s=;
        b=cZHRL29fMOH2g61Tox1cjcAWiWLPqqEMkJP11mhllbit0/qwSa8y4RpBT8BPEFwQXB
         bAdKn/EX0kCfj8jz6o/Nt7QzlnrIg4TdUUxI7IOffbP2ZG3kye6TCW+YN81CQ6Nguv5c
         0N8LWrs28y+O0IlCnIZJpv3ptytZxHVJfeXq3PLTu1vlLEcNQ6sXcStG8JS1qlgXuqrc
         KcPLg03T9lkNUZ94VPYCcnBJT4kxdB4xxGfLbK2ysqrRbv9sF0zFKToZEWu7r2znQt9X
         e3JSptt1RTtK79vM9D1MDFgfPBR55YFm/UrLRBLCougxOO8CrQAic+vzzvQAOgsM8zkt
         C5tw==
X-Gm-Message-State: AOAM530fpUJjaK1YQLxlJvzEw7HXlo2UT4T/6GCvqrTZLZxPUJ67IvKw
        wDPTp9Rjj3If5LMuufncFtKN+qZMR4c0Tdax
X-Google-Smtp-Source: ABdhPJxL2k0eDg181dJAp/Ef9UPRdb4j02W0Eb0mz77zIlm9opQ+gz1vRosQYbLVU7nl3PKWo1i46w==
X-Received: by 2002:a05:6870:208:b0:e6:134b:1b04 with SMTP id j8-20020a056870020800b000e6134b1b04mr2615508oad.85.1650387359485;
        Tue, 19 Apr 2022 09:55:59 -0700 (PDT)
Received: from ripper ([2600:1700:a0:3dc8:205:1bff:fec0:b9b3])
        by smtp.gmail.com with ESMTPSA id h26-20020a9d799a000000b00604d35aa374sm4482447otm.35.2022.04.19.09.55.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 09:55:58 -0700 (PDT)
Date:   Tue, 19 Apr 2022 09:58:04 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, alsa-devel@alsa-project.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 1/2] ASoC: qcom: lpass: Fix apq8016 compat string to
 match yaml
Message-ID: <Yl7qHEIBrZhLzgfH@ripper>
References: <20220419113734.3138095-1-bryan.odonoghue@linaro.org>
 <20220419113734.3138095-2-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220419113734.3138095-2-bryan.odonoghue@linaro.org>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue 19 Apr 04:37 PDT 2022, Bryan O'Donoghue wrote:

> The documented yaml compat string for the apq8016 is
> "qcom,apq8016-lpass-cpu" not "qcom,lpass-cpu-apq8016". Looking at the other
> lpass compat strings the general form is "qcom,socnum-lpass-cpu".
> 
> We need to fix both the driver and dts to match.
> 
> Fixes: dc1ebd1811e9 ("ASoC: qcom: Add apq8016 lpass driver support")
> Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  sound/soc/qcom/lpass-apq8016.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sound/soc/qcom/lpass-apq8016.c b/sound/soc/qcom/lpass-apq8016.c
> index 3efa133d1c64..10edc5e9c8ef 100644
> --- a/sound/soc/qcom/lpass-apq8016.c
> +++ b/sound/soc/qcom/lpass-apq8016.c
> @@ -292,7 +292,7 @@ static struct lpass_variant apq8016_data = {
>  };
>  
>  static const struct of_device_id apq8016_lpass_cpu_device_id[] __maybe_unused = {
> -	{ .compatible = "qcom,lpass-cpu-apq8016", .data = &apq8016_data },

Removing this will break existing MSM8916 DTBs, so please retain this
entry with a comment that it's the deprecated compatible.

Regards,
Bjorn

> +	{ .compatible = "qcom,apq8016-lpass-cpu", .data = &apq8016_data },
>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, apq8016_lpass_cpu_device_id);
> -- 
> 2.35.1
> 

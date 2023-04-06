Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B732A6DA189
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 21:37:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229845AbjDFThl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 15:37:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbjDFThj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 15:37:39 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ED765243
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 12:37:38 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id x17so52247893lfu.5
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 12:37:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680809857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=AVrj91JOYjY3hAFrZAL/kcyqybYrG/DGOnhw/RRHkaI=;
        b=Mkmj2vweanOvQBtLj9UOGRZsgeHf+wtaCnpbc7I3tJH4lwGhaxp12YUnEURq3mB8WE
         A6rbzxWR+ldp9g8HB8K3YQKriM7Z/86xaVa+SmbxWSg1kNHiu/M/qhnGw4TjK35hbkNh
         CfC9V0lPMWovKZOhFPsg1/COfgwLF1m2ULVL8gumrk28wWlO0nTT7ZIRbZRAInWH9EYZ
         96cctk+Y70stmAnYa8S36VPT4A0RbUEg/wrN/pKf7uVF38bDmv5CWQtM4UJqlydAySgB
         mkPViCjnso9ZcWmdcDDKzyYNnlOlsk3MxKZRSdaFrhxZk1LtKmif96Wgrl1aSudwd+Ua
         HOWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680809857;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=AVrj91JOYjY3hAFrZAL/kcyqybYrG/DGOnhw/RRHkaI=;
        b=ZXJiPe5kG3xSdZvesln3zumGvzWTF9HQ6KCnqkOpuvGyyYAh9T025p4tQWYxYROGEg
         Z4ObP3OMRmRwRz3betcAu00E9/rfSAnkC1uXGA9tWjket+RGgl9W5mI8hBv59AL0HX6L
         3kZ0qF4eoXqt17TaaseNt40HfcbMvgWsIP6lfFqrmJUhOJyi+66lBE0IShLE7InRomNj
         IBzpgW8qO0A5FixfQjyT1jBkp/rrl1Brg27Gzz3Ss51PNxWFNgYd2sg7MHDbroFOY1/A
         JnwAxR+4YKrkNNhp0xZRRc7GeoBkw0esTqBehoxAVQ8tXb36nBV0QiAvPnKgxZVzynXO
         CI2w==
X-Gm-Message-State: AAQBX9c8u0MMFdzr/a12P3y3DOYcMqrsw0dogislqVEg+jVAbjDpYgds
        PXZFLrc36ePTMcva2J5UkpCmRA==
X-Google-Smtp-Source: AKy350YPRGU8VUZ0qLdwGc70EWtrLRXHD4lCe1c8NHW+6flul3O6sFrfGmJEN1mF+nEC47fdCQHUYw==
X-Received: by 2002:a05:6512:239b:b0:4e8:5c66:e01e with SMTP id c27-20020a056512239b00b004e85c66e01emr2089892lfv.21.1680809856696;
        Thu, 06 Apr 2023 12:37:36 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id f7-20020a2e9e87000000b002a6168181d7sm409441ljk.7.2023.04.06.12.37.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 12:37:35 -0700 (PDT)
Message-ID: <714f4c97-d157-1402-1217-19e43daf645f@linaro.org>
Date:   Thu, 6 Apr 2023 21:37:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V3 2/5] regulator: qcom_smd: Add MP5496 S1 regulator
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, lgirdwood@gmail.com, broonie@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com, quic_ipkumar@quicinc.com
References: <20230406070032.22243-1-quic_devipriy@quicinc.com>
 <20230406070032.22243-3-quic_devipriy@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230406070032.22243-3-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6.04.2023 09:00, Devi Priya wrote:
> Adding support for MP5496 S1 regulator on IPQ9574 SoC.
> 
> Co-developed-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
>  Changes in V3:
> 	- No change
> 
>  drivers/regulator/qcom_smd-regulator.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/regulator/qcom_smd-regulator.c b/drivers/regulator/qcom_smd-regulator.c
> index 6f722b2d682e..cb77b3bd1723 100644
> --- a/drivers/regulator/qcom_smd-regulator.c
> +++ b/drivers/regulator/qcom_smd-regulator.c
> @@ -749,6 +749,15 @@ static const struct regulator_desc pms405_pldo600 = {
>  	.ops = &rpm_smps_ldo_ops,
>  };
>  
> +static const struct regulator_desc mp5496_smpa1 = {
> +	.linear_ranges = (struct linear_range[]) {
> +		REGULATOR_LINEAR_RANGE(600000, 0, 127, 12500),
> +	},
> +	.n_linear_ranges = 1,
> +	.n_voltages = 128,
> +	.ops = &rpm_mp5496_ops,
> +};
> +
As far as I can tell, this is identical to struct mp5496_smpa2, so
this patch could come down to:

- static const struct regulator_desc mp5496_smpa1 = {
+ static const struct regulator_desc mp5496_smps = {



+	{ "s1", QCOM_SMD_RPM_SMPA, 1, &mp5496_smps, "s1" },
-  	{ "s2", QCOM_SMD_RPM_SMPA, 2, &mp5496_smpa2, "s2" },
+	{ "s2", QCOM_SMD_RPM_SMPA, 2, &mp5496_smps, "s2" },

Konrad
>  static const struct regulator_desc mp5496_smpa2 = {
>  	.linear_ranges = (struct linear_range[]) {
>  		REGULATOR_LINEAR_RANGE(600000, 0, 127, 12500),
> @@ -794,6 +803,7 @@ struct rpm_regulator_data {
>  };
>  
>  static const struct rpm_regulator_data rpm_mp5496_regulators[] = {
> +	{ "s1", QCOM_SMD_RPM_SMPA, 1, &mp5496_smpa1, "s1" },
>  	{ "s2", QCOM_SMD_RPM_SMPA, 2, &mp5496_smpa2, "s2" },
>  	{ "l2", QCOM_SMD_RPM_LDOA, 2, &mp5496_ldoa2, "l2" },
>  	{}

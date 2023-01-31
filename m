Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D787E682904
	for <lists+devicetree@lfdr.de>; Tue, 31 Jan 2023 10:37:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231912AbjAaJhu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 Jan 2023 04:37:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35790 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232146AbjAaJhq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 Jan 2023 04:37:46 -0500
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6BC8D41B65
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 01:37:38 -0800 (PST)
Received: by mail-ej1-x631.google.com with SMTP id hx15so20276997ejc.11
        for <devicetree@vger.kernel.org>; Tue, 31 Jan 2023 01:37:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OD7XGDv2KxphkB7RKHdi18VA1OrEATdEVb4Xqu3ljXI=;
        b=sDHQCupikeKKp8TKGc3h0zG38YF3g16GDGBLuAJ067k7cn74z7VyLz1l9ExAe2IjEU
         8FQ9WA83qmyUIclvYHtmZ9tADHXjYqDJnWIW5r5yJawZ/5LKqPxXV9JYoBb9Ks79IGVg
         C6Ro1Gmj/oh3mogBGJpp/Mo0WNLUJTdQUswgGQUDqYvQrdZ5VXp/AL6iQV0k3jQZkIbN
         +M4tisiX+nkxUtLibZQtB8BRFWDpjyfKQwaRZsoflGWuXhhSAPYMZxnhbwy2S//9ZZwt
         qecdG8vGjFi6hbLK5SIJH6iON7oiuP1CGAEANlsxwhahNjHlikwYDtx5jpqYmyabTiAW
         kj+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OD7XGDv2KxphkB7RKHdi18VA1OrEATdEVb4Xqu3ljXI=;
        b=N4J+yTxuwRxR+F6cz4i5FIKJuPlAckFQewegRZoH+PWSWYLmx6c7qpOdfk+JZ+LyyQ
         WgY1XczNYHbZMOgfSqm+JZKy/SE5IrfoTkX7fH0+G/oAdCmpWQ4QRKgl1J+BtiIh/kk0
         pFcDj23ipuuSiUbPmkijAvHOnbch+1dgSaCiYcbu+3qdmdFbf60jd5MU5Hcb09WjnzX4
         wbvOLCTy9mXxPUtJIGG1gLpAwB9nX8HMBwBJA5E9lo9t9qbAJAQ7U/t/snrgmGYCGte9
         tVCQutP6GDsf2idnFPSQxiutclLy62ibWhTdi2woWGYIl8HlqE3ecgN+1mc8VWb/5+j6
         F9Sw==
X-Gm-Message-State: AO0yUKXkp24fUEfGB3eJctzVcm2rxBUPK8k7wsodZFfq6wEhuYdd1u1H
        kW0ktGHSXOgYNEzsjIsxMokD0g==
X-Google-Smtp-Source: AK7set+Ur+1jFhf3cQKjyDZW0knZ3vKYTjCUuqEnWcmp3+BZdR/2r2TdHRbfsZU2YQ4/OcXEPTHl8g==
X-Received: by 2002:a17:907:9054:b0:878:6519:c740 with SMTP id az20-20020a170907905400b008786519c740mr11015916ejc.44.1675157856950;
        Tue, 31 Jan 2023 01:37:36 -0800 (PST)
Received: from ?IPV6:2001:14ba:a085:4d00::8a5? (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id a4-20020a170906274400b0088224df181asm5285585ejd.224.2023.01.31.01.37.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Jan 2023 01:37:36 -0800 (PST)
Message-ID: <3813f262-8d36-2b1c-2230-cbb5a161d4c1@linaro.org>
Date:   Tue, 31 Jan 2023 11:37:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 6/6] regulator: qcom_smd: Add support to define the bootup
 voltage
Content-Language: en-GB
To:     devi priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org,
        lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_poovendh@quicinc.com
References: <20230113150310.29709-1-quic_devipriy@quicinc.com>
 <20230113150310.29709-7-quic_devipriy@quicinc.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20230113150310.29709-7-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/01/2023 17:03, devi priya wrote:
> Kernel does not know the initial voltage set by the bootloaders.
> During regulator registration, the voltage variable is just declared
> and it is zero. Based on that, the regulator framework considers current
> the voltage as zero and tries to bring up each regulator to minimum
> the supported voltage.
> 
> This introduces a dip in the voltage during kernel boot and gets
> stabilized once the voltage scaling comes into picture.
> 
> To avoid the voltage dip, adding support to define the
> bootup voltage set by the boodloaders and based on it, regulator
> framework understands that proper voltage is already set
> 
> Co-developed-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: Praveenkumar I <quic_ipkumar@quicinc.com>
> Signed-off-by: devi priya <quic_devipriy@quicinc.com>
> ---
>   drivers/regulator/qcom_smd-regulator.c | 6 +++++-
>   1 file changed, 5 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/regulator/qcom_smd-regulator.c b/drivers/regulator/qcom_smd-regulator.c
> index 1eb17d378897..49a36b07397c 100644
> --- a/drivers/regulator/qcom_smd-regulator.c
> +++ b/drivers/regulator/qcom_smd-regulator.c
> @@ -800,6 +800,7 @@ struct rpm_regulator_data {
>   	u32 id;
>   	const struct regulator_desc *desc;
>   	const char *supply;
> +	int boot_uV; /* To store the bootup voltage set by bootloaders */
>   };
>   
>   static const struct rpm_regulator_data rpm_mp5496_regulators[] = {
> @@ -809,7 +810,7 @@ static const struct rpm_regulator_data rpm_mp5496_regulators[] = {
>   };
>   
>   static const struct rpm_regulator_data rpm_ipq9574_mp5496_regulators[] = {
> -	{ "s1", QCOM_SMD_RPM_SMPA, 1, &ipq9574_mp5496_smpa1, "s1" },
> +	{ "s1", QCOM_SMD_RPM_SMPA, 1, &ipq9574_mp5496_smpa1, "s1", 875000 },

I think this is a peculiarity of the particular board that than a 
property of the PMIC. Please describe this in the board or SoC DTS if 
the value can not be read using the software .

>   	{}
>   };
>   
> @@ -1394,6 +1395,9 @@ static int rpm_regulator_init_vreg(struct qcom_rpm_reg *vreg, struct device *dev
>   	vreg->type	= rpm_data->type;
>   	vreg->id	= rpm_data->id;
>   
> +	if (rpm_data->boot_uV)
> +		vreg->uV = rpm_data->boot_uV;
> +
>   	memcpy(&vreg->desc, rpm_data->desc, sizeof(vreg->desc));
>   	vreg->desc.name = rpm_data->name;
>   	vreg->desc.supply_name = rpm_data->supply;

-- 
With best wishes
Dmitry


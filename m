Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF65162BC82
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 12:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231985AbiKPLu5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 06:50:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230343AbiKPLu2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 06:50:28 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AAE3132A
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:38:12 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id x2so26153282edd.2
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 03:38:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akqu6xTjLAKVzAh95j3xNOPZ5btLhn/0APMDXshXYxc=;
        b=Js10U3aUg4PyK5p4fvjfKjQji79An0gmFIGAmh57/w5aXE4LKvRjHC9r5uwnM/boPJ
         Q9rzeG8fILuJ0UdH6UYxnsBMlYVI8561KbHfUPNDLTsj2Nb0JtA97EsUO6I1bAKNp4tX
         VsZWixZtYsxKUdPsv09at5rLt9GRzFvuwO/sTe33RcAQVVYFplsbRtIoQlpJ+GqqEzVF
         Zx233gzcnwzbqMp326x4QSvNlM4SdpuvatdsfodLHeyV7OanLMm2hQFFIGu5kjEAQO98
         t88sWbdFQBnogpT8KqdtXgkjZLICVSfg23Kc9cC94m6HE3WYT5auVoOvmwqD2vaRtPTS
         r/yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=akqu6xTjLAKVzAh95j3xNOPZ5btLhn/0APMDXshXYxc=;
        b=couZJq9qGBiHXAsYpOs114ZR6bRIhW3/AvexigGnKp8/vx9SeX5j1A1XSVIB1/McjP
         zryT/9uTeLt07uFa/ArjRKAilDbGnlLo1M4xFFKmcdbJzwTLlcqdseP9rf8MVnuRnqsH
         fiefUJpqfrjaC3jkaEXwr3iwJX/gqKmfQA7Q2FOPh2TP3Q6cetkrh7uz6lc78k5ysU+S
         ZicDjVgwG1V1b1f//JU9aDTLNHqi+68WLN9T2jJ+5XKqKYca/sMgcIa+O1h5W9RIU2Rj
         3HZsAv4TL5JFX2bCn0eDSDw49DhKDOKlNuRnO2qxgBe8+8zFJGKz8ffNc1+FcYuLLLEf
         EXLA==
X-Gm-Message-State: ANoB5pkZzJKXf7MqoJXpp2W7NiR1WMs/Nje3uHb9/qbmc4cuSS501Lk1
        BINDzPcrK4PL4wLypfjO2UhpEWlh2Ni1LpR1
X-Google-Smtp-Source: AA0mqf5q7lATwX9WC9MhCKUl2GXNzmOlUCph4bJ4ZaEnsbvmMc1JlUPpRA+qVVyMGYZ/Y8zqI/WGpA==
X-Received: by 2002:aa7:db85:0:b0:463:f3a:32ce with SMTP id u5-20020aa7db85000000b004630f3a32cemr18976664edt.366.1668598691246;
        Wed, 16 Nov 2022 03:38:11 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id c1-20020a17090618a100b0077d6f628e14sm6684136ejf.83.2022.11.16.03.38.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 03:38:10 -0800 (PST)
Message-ID: <e9f08af0-4360-1b92-5dcd-f1b8f3a8a4ee@linaro.org>
Date:   Wed, 16 Nov 2022 12:38:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] regulator: qcom-rpmh: Add support for PM8550
 regulators
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20221116110515.2612515-1-abel.vesa@linaro.org>
 <20221116110515.2612515-3-abel.vesa@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221116110515.2612515-3-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16/11/2022 12:05, Abel Vesa wrote:
> Add the rpmh regulators found in PM8550 PMIC.
It's a bit more than just PM8550..

The changes look good though, so with the commit message rectified:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
> They contain FT-SMPS 525s, so add their configuration as well.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>   drivers/regulator/qcom-rpmh-regulator.c | 81 +++++++++++++++++++++++++
>   1 file changed, 81 insertions(+)
> 
> diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
> index 4158ff126a67..42c42d17335b 100644
> --- a/drivers/regulator/qcom-rpmh-regulator.c
> +++ b/drivers/regulator/qcom-rpmh-regulator.c
> @@ -731,6 +731,24 @@ static const struct rpmh_vreg_hw_data pmic5_ftsmps520 = {
>   	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
>   };
>   
> +static const struct rpmh_vreg_hw_data pmic5_ftsmps525_lv = {
> +	.regulator_type = VRM,
> +	.ops = &rpmh_regulator_vrm_ops,
> +	.voltage_range = REGULATOR_LINEAR_RANGE(300000, 0, 267, 4000),
> +	.n_voltages = 268,
> +	.pmic_mode_map = pmic_mode_map_pmic5_smps,
> +	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
> +};
> +
> +static const struct rpmh_vreg_hw_data pmic5_ftsmps525_mv = {
> +	.regulator_type = VRM,
> +	.ops = &rpmh_regulator_vrm_ops,
> +	.voltage_range = REGULATOR_LINEAR_RANGE(600000, 0, 267, 8000),
> +	.n_voltages = 268,
> +	.pmic_mode_map = pmic_mode_map_pmic5_smps,
> +	.of_map_mode = rpmh_regulator_pmic4_smps_of_map_mode,
> +};
> +
>   static const struct rpmh_vreg_hw_data pmic5_hfsmps515 = {
>   	.regulator_type = VRM,
>   	.ops = &rpmh_regulator_vrm_ops,
> @@ -987,6 +1005,57 @@ static const struct rpmh_vreg_init_data pm8450_vreg_data[] = {
>   	{}
>   };
>   
> +static const struct rpmh_vreg_init_data pm8550_vreg_data[] = {
> +	RPMH_VREG("ldo1",   "ldo%s1",  &pmic5_pldo,    "vdd-l1-l4-l10"),
> +	RPMH_VREG("ldo2",   "ldo%s2",  &pmic5_pldo,    "vdd-l2-l13-l14"),
> +	RPMH_VREG("ldo3",   "ldo%s3",  &pmic5_nldo,    "vdd-l3"),
> +	RPMH_VREG("ldo4",   "ldo%s4",  &pmic5_nldo,    "vdd-l1-l4-l10"),
> +	RPMH_VREG("ldo5",   "ldo%s5",  &pmic5_pldo,    "vdd-l5-l16"),
> +	RPMH_VREG("ldo6",   "ldo%s6",  &pmic5_pldo_lv, "vdd-l6-l7"),
> +	RPMH_VREG("ldo7",   "ldo%s7",  &pmic5_pldo_lv, "vdd-l6-l7"),
> +	RPMH_VREG("ldo8",   "ldo%s8",  &pmic5_pldo_lv, "vdd-l8-l9"),
> +	RPMH_VREG("ldo9",   "ldo%s9",  &pmic5_pldo,    "vdd-l8-l9"),
> +	RPMH_VREG("ldo10",  "ldo%s10", &pmic5_nldo,    "vdd-l1-l4-l10"),
> +	RPMH_VREG("ldo11",  "ldo%s11", &pmic5_pldo,    "vdd-l11"),
> +	RPMH_VREG("ldo12",  "ldo%s12", &pmic5_pldo,    "vdd-l12"),
> +	RPMH_VREG("ldo13",  "ldo%s13", &pmic5_pldo,    "vdd-l2-l13-l14"),
> +	RPMH_VREG("ldo14",  "ldo%s14", &pmic5_pldo,    "vdd-l2-l13-l14"),
> +	RPMH_VREG("ldo15",  "ldo%s15", &pmic5_pldo,    "vdd-l15"),
> +	RPMH_VREG("ldo16",  "ldo%s16", &pmic5_pldo,    "vdd-l5-l16"),
> +	RPMH_VREG("ldo17",  "ldo%s17", &pmic5_pldo,    "vdd-l17"),
> +	RPMH_VREG("bob1",   "bob%s1",  &pmic5_bob,     "vdd-bob1"),
> +	RPMH_VREG("bob2",   "bob%s2",  &pmic5_bob,     "vdd-bob2"),
> +	{}
> +};
> +
> +static const struct rpmh_vreg_init_data pm8550vs_vreg_data[] = {
> +	RPMH_VREG("smps1",  "smp%s1",  &pmic5_ftsmps525_lv, "vdd-s1"),
> +	RPMH_VREG("smps2",  "smp%s2",  &pmic5_ftsmps525_lv, "vdd-s2"),
> +	RPMH_VREG("smps3",  "smp%s3",  &pmic5_ftsmps525_lv, "vdd-s3"),
> +	RPMH_VREG("smps4",  "smp%s4",  &pmic5_ftsmps525_lv, "vdd-s4"),
> +	RPMH_VREG("smps5",  "smp%s5",  &pmic5_ftsmps525_lv, "vdd-s5"),
> +	RPMH_VREG("smps6",  "smp%s6",  &pmic5_ftsmps525_mv, "vdd-s6"),
> +	RPMH_VREG("ldo1",   "ldo%s1",  &pmic5_nldo,   "vdd-l1"),
> +	RPMH_VREG("ldo2",   "ldo%s2",  &pmic5_nldo,   "vdd-l2"),
> +	RPMH_VREG("ldo3",   "ldo%s3",  &pmic5_nldo,   "vdd-l3"),
> +	{}
> +};
> +
> +static const struct rpmh_vreg_init_data pm8550ve_vreg_data[] = {
> +	RPMH_VREG("smps1", "smp%s1", &pmic5_ftsmps525_lv, "vdd-s1"),
> +	RPMH_VREG("smps2", "smp%s2", &pmic5_ftsmps525_lv, "vdd-s2"),
> +	RPMH_VREG("smps3", "smp%s3", &pmic5_ftsmps525_lv, "vdd-s3"),
> +	RPMH_VREG("smps4", "smp%s4", &pmic5_ftsmps525_lv, "vdd-s4"),
> +	RPMH_VREG("smps5", "smp%s5", &pmic5_ftsmps525_lv, "vdd-s5"),
> +	RPMH_VREG("smps6", "smp%s6", &pmic5_ftsmps525_lv, "vdd-s6"),
> +	RPMH_VREG("smps7", "smp%s7", &pmic5_ftsmps525_lv, "vdd-s7"),
> +	RPMH_VREG("smps8", "smp%s8", &pmic5_ftsmps525_lv, "vdd-s8"),
> +	RPMH_VREG("ldo1",  "ldo%s1", &pmic5_nldo,   "vdd-l1"),
> +	RPMH_VREG("ldo2",  "ldo%s2", &pmic5_nldo,   "vdd-l2"),
> +	RPMH_VREG("ldo3",  "ldo%s3", &pmic5_nldo,   "vdd-l3"),
> +	{}
> +};
> +
>   static const struct rpmh_vreg_init_data pm8009_vreg_data[] = {
>   	RPMH_VREG("smps1",  "smp%s1",  &pmic5_hfsmps510, "vdd-s1"),
>   	RPMH_VREG("smps2",  "smp%s2",  &pmic5_hfsmps515, "vdd-s2"),
> @@ -1314,6 +1383,18 @@ static const struct of_device_id __maybe_unused rpmh_regulator_match_table[] = {
>   		.compatible = "qcom,pm8450-rpmh-regulators",
>   		.data = pm8450_vreg_data,
>   	},
> +	{
> +		.compatible = "qcom,pm8550-rpmh-regulators",
> +		.data = pm8550_vreg_data,
> +	},
> +	{
> +		.compatible = "qcom,pm8550ve-rpmh-regulators",
> +		.data = pm8550ve_vreg_data,
> +	},
> +	{
> +		.compatible = "qcom,pm8550vs-rpmh-regulators",
> +		.data = pm8550vs_vreg_data,
> +	},
>   	{
>   		.compatible = "qcom,pm8998-rpmh-regulators",
>   		.data = pm8998_vreg_data,

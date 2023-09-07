Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 874BD79797A
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 19:15:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234817AbjIGRPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 13:15:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38338 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240105AbjIGRPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 13:15:40 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4A24BE6B
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 10:15:17 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9a645e54806so149445066b.0
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 10:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nexus-software-ie.20230601.gappssmtp.com; s=20230601; t=1694106857; x=1694711657; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3bdZT/P5i9roSR1VJ+gDQAVNmAdt/Lg6cRS5QQmxk30=;
        b=H6t8ucCepaQLmCvA6jfK1gfVyD8CzU3rTG6gERfEjmBM7aZKO/Qfmy0AogjpS3HRpv
         mTs+IgNA6gIljVAlKOfQvMv+k4FZnUkOjlEeE+3gf5YuFkxAa8GMbJuxmRxmIVuAWXTQ
         ztYJJHAd6KA/dP4NfolD7hBGI9vzRqX+WYudfNo/ayZIyLhwzJRmn3raEFBJg9sYp3TR
         Py9ACV0aR4PUsZPkad0GfIH8f33jzKA4XqqJ68/WDbXGziJfgt8OagmIVzUfefuTT0n4
         Ez0IJps3aqwiYUZ3bv5KRK/xtnbLt6DlFF9QpBB+QBst1yNd5CcHvwMtvk0DsnlZ4lUm
         Ei2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694106857; x=1694711657;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3bdZT/P5i9roSR1VJ+gDQAVNmAdt/Lg6cRS5QQmxk30=;
        b=gm2ncp1aRl1UBL0cRAmgOeBHeNQbroM6VK3aXjGLAmbykQIpvhiFNu5CkybNiQEUrN
         FugbP0jn922xC2Hb0z3N6vYHEvB0h3z4UmHRtG7qtXfMqoUQ8mf49FAntV1uGUOXbqsc
         U4/sEmkaZXrrQhSEOOJhF7dAtizCsR6wRuWfxtUqH/lJMCRGDr0XDbiZ+YnFGZXBdm9o
         ik5Paw6WGWwWT2lygTQJgLdJQ24WxWSUTVdH+OUKsAd0VcuqwBHiyHaMf25rHju3iYrK
         ptTGAmpJE9BDT/IbKyvVexGrLwV/wuAVWsac2nAC3frLSISYuRUNkbcFQmJSakqsGasz
         qNAg==
X-Gm-Message-State: AOJu0YwasHqsK7MFbfosAL8395nFM7yT2b9l/rnKMlhpT1I2CBdj6nyC
        OeldHplUMjHNCIDr1uEy1jLOZQvAuR+4A4KoT6M=
X-Google-Smtp-Source: AGHT+IH1TORyo9IVD8YJbPjark9XxX164XsbE1Fj1Er0RV9L0lX3ZrqKV8Iz1cdwRYWEAf8bPv+06g==
X-Received: by 2002:adf:fe0d:0:b0:31a:e89a:df0a with SMTP id n13-20020adffe0d000000b0031ae89adf0amr5196749wrr.45.1694101581068;
        Thu, 07 Sep 2023 08:46:21 -0700 (PDT)
Received: from [192.168.0.163] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id a3-20020a056000050300b003179d5aee67sm23560976wrf.94.2023.09.07.08.46.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 07 Sep 2023 08:46:19 -0700 (PDT)
Message-ID: <8eed8cb9-9034-4162-b7bc-958811fb9056@nexus-software.ie>
Date:   Thu, 7 Sep 2023 16:46:18 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 06/10] cpufreq: qti: Enable cpufreq for ipq53xx
Content-Language: en-US
To:     Varadarajan Narayanan <quic_varada@quicinc.com>,
        ilia.lin@kernel.org, agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@linaro.org, rafael@kernel.org,
        viresh.kumar@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        quic_kathirav@quicinc.com, linux-pm@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
References: <cover.1693996662.git.quic_varada@quicinc.com>
 <558c6b70090ea7220bfb0b6e7d81828025018376.1693996662.git.quic_varada@quicinc.com>
From:   Bryan O'Donoghue <pure.logic@nexus-software.ie>
In-Reply-To: <558c6b70090ea7220bfb0b6e7d81828025018376.1693996662.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2023 06:21, Varadarajan Narayanan wrote:
> IPQ53xx have different OPPs available for the CPU based on
> SoC variant. This can be determined through use of an eFuse
> register present in the silicon.
> 
> Added support for ipq53xx on nvmem driver which helps to
> determine OPPs at runtime based on the eFuse register which
> has the CPU frequency limits. opp-supported-hw dt binding
> can be used to indicate the available OPPs for each limit.
> 
> nvmem driver also creates the "cpufreq-dt" platform_device after
> passing the version matching data to the OPP framework so that the
> cpufreq-dt handles the actual cpufreq implementation.
> 
> Signed-off-by: Kathiravan T <quic_kathirav@quicinc.com>
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
>   drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
>   drivers/cpufreq/qcom-cpufreq-nvmem.c | 15 +++++++++++++++
>   2 files changed, 16 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 02ec58a..f0c45d4 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -178,6 +178,7 @@ static const struct of_device_id blocklist[] __initconst = {
>   	{ .compatible = "ti,am625", },
>   	{ .compatible = "ti,am62a7", },
>   
> +	{ .compatible = "qcom,ipq5332", },
>   	{ .compatible = "qcom,ipq8064", },
>   	{ .compatible = "qcom,apq8064", },
>   	{ .compatible = "qcom,msm8974", },
> diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> index 84d7033..49d21b0 100644
> --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
> +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
> @@ -146,6 +146,20 @@ static int qcom_cpufreq_kryo_name_version(struct device *cpu_dev,
>   		return PTR_ERR(speedbin);
>   
>   	switch (msm_id) {
> +	case QCOM_ID_IPQ5332:
> +	case QCOM_ID_IPQ5322:
> +	case QCOM_ID_IPQ5312:
> +	case QCOM_ID_IPQ5302:
> +	case QCOM_ID_IPQ5300:
> +		/* Fuse Value    Freq    BIT to set
> +		 * ---------------------------------
> +		 *   2’b00     No Limit     BIT(0)
> +		 *   2’b01     1.5 GHz      BIT(1)
> +		 *   2’b10     1.2 Ghz      BIT(2)
> +		 *   2’b11     1.0 GHz      BIT(3)
> +		 */
> +		drv->versions = 1 << (unsigned int)(*speedbin);
> +		break;

I like that you've included a comment however, the switch is an ordered 
list and these values should come after QCOM_ID_APQ8096SG

#define QCOM_ID_MSM8996                 246
#define QCOM_ID_APQ8096                 291
#define QCOM_ID_MSM8996SG               305
#define QCOM_ID_APQ8096SG               312
#define QCOM_ID_IPQ5332                 592
...
#define QCOM_ID_IPQ5300                 624

>   	case QCOM_ID_MSM8996:
>   	case QCOM_ID_APQ8096:
>   		drv->versions = 1 << (unsigned int)(*speedbin);


> @@ -359,6 +373,7 @@ static const struct of_device_id qcom_cpufreq_match_list[] __initconst = {
>   	{ .compatible = "qcom,apq8096", .data = &match_data_kryo },
>   	{ .compatible = "qcom,msm8996", .data = &match_data_kryo },
>   	{ .compatible = "qcom,qcs404", .data = &match_data_qcs404 },
> +	{ .compatible = "qcom,ipq5332", .data = &match_data_kryo },
>   	{ .compatible = "qcom,ipq8064", .data = &match_data_krait },
>   	{ .compatible = "qcom,apq8064", .data = &match_data_krait },
>   	{ .compatible = "qcom,msm8974", .data = &match_data_krait },

Other than that.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>

---
bod

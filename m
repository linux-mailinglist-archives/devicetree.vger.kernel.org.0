Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C01A666531
	for <lists+devicetree@lfdr.de>; Wed, 11 Jan 2023 22:02:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229701AbjAKVCN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Jan 2023 16:02:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234808AbjAKVBQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Jan 2023 16:01:16 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D7A540847
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 13:00:48 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id d30so20512860lfv.8
        for <devicetree@vger.kernel.org>; Wed, 11 Jan 2023 13:00:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P+FEYa5A43HJ7rZTnQDz0W84xSMPLC4UM+3bxM7GYho=;
        b=lpaJk2TUZba/MLPUvHHoDau6THbNh1d5bjdpmYzQ35O+SBzudmck0X4TOyRvc4f1Sf
         bBvdRNZDGuC3RXWUTaqcF5c/+4jM+g2VjC/tGrJsPYAbZaGg+XxGGmwPhoKm+F3HaBCv
         nqaB4EJ+N0I7+7NnuaCDzBgDBsR0DzFpb1KBpTegIm6pti1Z46EA0iyLI9EFIO7uMi7K
         AFPaV49TFih7PWEvl3EULEBt3uUsNvP16LaQu95Hshj1+9NOBIrRPRdXsLbsZtQEYLKy
         9zK0iXne1ec1jGYWl9Gt9CsLMsmL4mMqZ1A6X5NQa96tS2hTK+sJNHImWKLTLR79McjH
         CYtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P+FEYa5A43HJ7rZTnQDz0W84xSMPLC4UM+3bxM7GYho=;
        b=4DaBdoPznCZSIX9FQiqNS62jSN251MZ4K/tSztm55Iy5Y3UJqdh0e64aDvnU6wcy6o
         LiNvf6UzRLcvPD/ouFycrmAi334lHHqTSiNIZ4xMnBnTekqBpme9UzFexF9OLgu2/Xtk
         UtIJy1Fo+NntEi6BoNrf7S6Js96qrT/4T7h3DkOJPXRzEPu/0zZ/tDv00DXaHUIb8P6o
         o/LwVkQSFP04MFtbVjICGncEDoML9QwTvs/A3QAC8DPVoJ0bAAWnVNhVQTW+vqmloLOc
         Q+GFvGmOxvKhN4wiIvgCqjt5P4nIz4QGUqJgNxzIo2VA34HuSJRUmAZhgwFMT/ok+FCo
         JYsw==
X-Gm-Message-State: AFqh2kqHlqb9Y2h5hd/LFsund2FjKw53y6GEeR8Y27FPlLWNLSBEXHV0
        hYv/Oi6KfcpodcofK4ZmtX9ySw==
X-Google-Smtp-Source: AMrXdXujM6ioALTRzo1fch/2JOYe+Tqh339nUxaHB91lZzf+u39xeByeK6onh9fwy6/0awLC8KQVqQ==
X-Received: by 2002:a05:6512:220c:b0:4cc:7140:7de3 with SMTP id h12-20020a056512220c00b004cc71407de3mr3095333lfu.8.1673470846930;
        Wed, 11 Jan 2023 13:00:46 -0800 (PST)
Received: from [192.168.1.101] (abym53.neoplus.adsl.tpnet.pl. [83.9.32.53])
        by smtp.gmail.com with ESMTPSA id n26-20020a05651203fa00b0049464d89e40sm2887510lfq.72.2023.01.11.13.00.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 11 Jan 2023 13:00:44 -0800 (PST)
Message-ID: <e3c3449c-dd20-05fd-fd7d-b863d9f66426@linaro.org>
Date:   Wed, 11 Jan 2023 22:00:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH 05/13] clk: qcom: cpu-8996: skip ACD init if the setup is
 valid
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230111192004.2509750-1-dmitry.baryshkov@linaro.org>
 <20230111192004.2509750-6-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230111192004.2509750-6-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 11.01.2023 20:19, Dmitry Baryshkov wrote:
> Check whether L2 registers contain correct values and skip programming
> if they are valid. This follows the code present downstream.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Once again, my random local msm-3.18 doesn't do this, can you show
me the downstream source for this?

Konrad
>  drivers/clk/qcom/clk-cpu-8996.c | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/drivers/clk/qcom/clk-cpu-8996.c b/drivers/clk/qcom/clk-cpu-8996.c
> index 0e0c00d44c6f..7e5246ca7e7f 100644
> --- a/drivers/clk/qcom/clk-cpu-8996.c
> +++ b/drivers/clk/qcom/clk-cpu-8996.c
> @@ -472,10 +472,15 @@ static void __iomem *base;
>  static void qcom_cpu_clk_msm8996_acd_init(void __iomem *base)
>  {
>  	u64 hwid;
> +	u32 val;
>  	unsigned long flags;
>  
>  	spin_lock_irqsave(&qcom_clk_acd_lock, flags);
>  
> +	val = kryo_l2_get_indirect_reg(L2ACDTD_REG);
> +	if (val == 0x00006a11)
> +		goto out;
> +
>  	hwid = read_cpuid_mpidr() & CPU_AFINITY_MASK;
>  
>  	kryo_l2_set_indirect_reg(L2ACDTD_REG, 0x00006a11);
> @@ -492,6 +497,7 @@ static void qcom_cpu_clk_msm8996_acd_init(void __iomem *base)
>  		writel(0xf, base + PERFCL_REG_OFFSET + SSSCTL_OFFSET);
>  	}
>  
> +out:
>  	spin_unlock_irqrestore(&qcom_clk_acd_lock, flags);
>  }
>  

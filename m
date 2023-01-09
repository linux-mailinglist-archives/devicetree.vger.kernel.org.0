Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BAD7E662779
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 14:44:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232809AbjAINoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Jan 2023 08:44:46 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237383AbjAINny (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Jan 2023 08:43:54 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B05063AA95
        for <devicetree@vger.kernel.org>; Mon,  9 Jan 2023 05:43:33 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id g13so13013668lfv.7
        for <devicetree@vger.kernel.org>; Mon, 09 Jan 2023 05:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ed8fh8WAClMFGv44FOKHg3vKLOHR3QsSfFjWFDv4P08=;
        b=DXjmOp1i+dmSgXHIpv5nXhWeZdGlFj6UyRZN+TADdSilKKtSe3Zd2akOYBbjONWcVZ
         VDtu1k+2CD9d0dowKCypPzFfEI2q4n0xUHrTuu5Pke0KhZzDVCwiW0wq/9bWFqAMBjRk
         K7YWfS83cDKf6jfvwj8o/8xTe0Iyajd48NPSMRGClYPGe5NT4SFR9GdxgzmpVAlcKiFe
         vs+dn0eLVUskNgW/QKUEiHuFwNJR3LBsbz8TEvDufcK4VdF7LO51JQKCqitDcaMqybGR
         sVjQbk1u3OIY5jHDThpuye8u0uCe4vvcPvlpOEe/5Lf5WUK7cas+DwAsXKyXZHuDUo9R
         U4RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ed8fh8WAClMFGv44FOKHg3vKLOHR3QsSfFjWFDv4P08=;
        b=gdBgEHfk+SP5M8P9AGPxM/d9moajPTcDWcIFGUMH1ZKTCKMEjOpnzHKJaW6QE6wg8n
         DtY7iQ83H1X+H+Hsh7AKnUspfmf/aQ97mNXp2qlh/3DfGnnLx8KtbfLeXxZ6yladPSEG
         EIGFq09EfkQ51aWD0iWvypbM3SgCine9QzI/zdjLmTQfk24lYQjjLUk7h2xlMns+M9t7
         IJTTRfynw0htJom7Xz4DuujiDdMdjrQ/upa4F13bt+U7mai2O8QtILskIgkXCSNymTIG
         sezee1M9nOb3eUJfo/Z7S0MxIu2lAiYAVl4JcXMO/LXxqbmLus/wga7xX8fAnj+DXB/T
         6vxw==
X-Gm-Message-State: AFqh2kr6R4X2YM5bAnCMqvwzm9Ynt5B5V0c0m9R4tTdA2YLbp7JoKJsE
        NgX8t1ku11tL2ZdZicft+e9/0A==
X-Google-Smtp-Source: AMrXdXsHbMYxf7SOINAAOhUzLfg3DTw/M7uwwicfxMZdrylyNuN+EfytEK/HhdWZDVv/jlQkKnbGxw==
X-Received: by 2002:a05:6512:3083:b0:4cb:4326:682e with SMTP id z3-20020a056512308300b004cb4326682emr133363lfd.21.1673271812052;
        Mon, 09 Jan 2023 05:43:32 -0800 (PST)
Received: from [192.168.1.101] (abxi45.neoplus.adsl.tpnet.pl. [83.9.2.45])
        by smtp.gmail.com with ESMTPSA id a23-20020a056512201700b004cb2a786cc6sm1627914lfb.105.2023.01.09.05.43.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Jan 2023 05:43:31 -0800 (PST)
Message-ID: <e3ea2a24-e7a5-1e04-a98d-c707e1153c83@linaro.org>
Date:   Mon, 9 Jan 2023 14:43:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v3 01/12] interconnect: qcom: sdx55: drop IP0 remnants
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     Georgi Djakov <djakov@kernel.org>, Alex Elder <elder@linaro.org>,
        Johan Hovold <johan@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230109002935.244320-1-dmitry.baryshkov@linaro.org>
 <20230109002935.244320-2-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230109002935.244320-2-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 9.01.2023 01:29, Dmitry Baryshkov wrote:
> Drop two defines leftover from the commit 2fb251c26560 ("interconnect:
> qcom: sdx55: Drop IP0 interconnects"), which dropped handling of the IP0
> resource in favour of handling it in the clk-rpmh driver.
> 
> Fixes: 2fb251c26560 ("interconnect: qcom: sdx55: Drop IP0 interconnects")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/interconnect/qcom/sdx55.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/interconnect/qcom/sdx55.h b/drivers/interconnect/qcom/sdx55.h
> index deff8afe0631..46cbabec8aa1 100644
> --- a/drivers/interconnect/qcom/sdx55.h
> +++ b/drivers/interconnect/qcom/sdx55.h
> @@ -6,7 +6,7 @@
>  #ifndef __DRIVERS_INTERCONNECT_QCOM_SDX55_H
>  #define __DRIVERS_INTERCONNECT_QCOM_SDX55_H
>  
> -#define SDX55_MASTER_IPA_CORE			0
> +/* 0 was used by MASTER_IPA_CORE, now represented as RPMh clock */
>  #define SDX55_MASTER_LLCC			1
>  #define SDX55_MASTER_TCU_0			2
>  #define SDX55_MASTER_SNOC_GC_MEM_NOC		3
> @@ -28,7 +28,7 @@
>  #define SDX55_MASTER_QDSS_ETR			19
>  #define SDX55_MASTER_SDCC_1			20
>  #define SDX55_MASTER_USB3			21
> -#define SDX55_SLAVE_IPA_CORE			22
> +/* 22 was used by SLAVE_IPA_CORE, now represented as RPMh clock */
>  #define SDX55_SLAVE_EBI_CH0			23
>  #define SDX55_SLAVE_LLCC			24
>  #define SDX55_SLAVE_MEM_NOC_SNOC		25

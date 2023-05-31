Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B9936717E21
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 13:35:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234599AbjEaLfM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 07:35:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234750AbjEaLfI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 07:35:08 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95EF910B
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 04:35:06 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f3a873476bso6352774e87.1
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 04:35:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685532905; x=1688124905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=QPRDeF0p6jjgy8Cpp4ceEkzLB7scPmbiIq5qjOGIjjo=;
        b=VYCmJDBRYFEOj56gIq2jrRiT4F3B4rzZkLlwDmSJ9ByaZt8r0VR+vao0bUjsgPzJiu
         sYVAN6nMXsaXlyomkUwqr9u1EmifqPFVpFlUOSMu6h2M+i9bNGa753BAZC4q/q6VntKf
         7tNf1kh8nt2VYF7HDfX8SOIDjsoLuXMa7cdflsuwN8wDss4z5tsMIteaVTjpnDHDfLRn
         Ha7TAzhMI3ur3u8Qclwz4JMsJKyaKJAbWExR7GItTfnX05tG5d44CpyAy+jZsUNJK/Eo
         MvqsCk4CJZ7qBEEHf/bRs4QmWMO+Q1clGkSK6lpaVRLsf6UuLzQqL2TJzuoRGU0bZP0T
         Bw/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685532905; x=1688124905;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QPRDeF0p6jjgy8Cpp4ceEkzLB7scPmbiIq5qjOGIjjo=;
        b=VCFZDUG7tyYn+U5sD/uk4ShV8B/I1tp9cqKXWOeWUqnlFqalNiz0zjU76UHEfqLgGZ
         RcmQV3YE20yjJ3A08sS/1haedJFe2uEyOqsLhjdurA0kOQpsIfNa2+GasbsK2UUy3D/6
         TTWaqJ/XllNE51r628ZX47ZICOvknWSmczhrJs+BKVKMuLEfOGdfmYs5kol5a8tCpzbO
         GsmqEckn4FrbW1LK8VL98Eo/w4hPjc98DxDfcYvr4ggaS2D1uj44elsQrxtFrI3lvLSs
         5jWN5mH7rGcy7yBPCh0A3X5iql1/de4NBvUwPnWKYIPxbaG43+3r62x1kJSakQ51/CdK
         8c1A==
X-Gm-Message-State: AC+VfDwJKjNuTLivOWGUew9zbOvwP3rCYn0e6vbf+qf4Bwc+GZxydh0g
        hWoh4hmIaZGAMrRH8cFZltWRNw==
X-Google-Smtp-Source: ACHHUZ70sJc6ybTTIokCpbnGoWd1JdQvvd+Ap4+thRAo1gvRi4CCNyEyjdF4UkwlI1k6t4G2qvaDyA==
X-Received: by 2002:a19:ac45:0:b0:4f3:b1e6:4b46 with SMTP id r5-20020a19ac45000000b004f3b1e64b46mr2426890lfc.12.1685532904838;
        Wed, 31 May 2023 04:35:04 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id l9-20020ac24309000000b004f3b520e0adsm681777lfh.107.2023.05.31.04.35.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 04:35:04 -0700 (PDT)
Message-ID: <47e84a3c-b457-7aff-ad6a-809178c08b62@linaro.org>
Date:   Wed, 31 May 2023 13:35:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v3 2/5] phy: qcom-qmp-combo: add support for the USB+DP
 PHY on SM8150 platform
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org
References: <20230531023415.1209301-1-dmitry.baryshkov@linaro.org>
 <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230531023415.1209301-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31.05.2023 04:34, Dmitry Baryshkov wrote:
> SM8150 and SC8180X are close relatives. Reuse sc8180x data to support
> USB+DP combo PHY on SM8150 platform.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
I'm not sure this is right. Downstream reuses SA8195 USB seq.

Konrad
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index 33cc99d9c77d..2bff1bbb8610 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -3614,6 +3614,10 @@ static const struct of_device_id qmp_combo_of_match_table[] = {
>  		.compatible = "qcom,sm6350-qmp-usb3-dp-phy",
>  		.data = &sm6350_usb3dpphy_cfg,
>  	},
> +	{
> +		.compatible = "qcom,sm8150-qmp-usb3-dp-phy",
> +		.data = &sc8180x_usb3dpphy_cfg,
> +	},
>  	{
>  		.compatible = "qcom,sm8250-qmp-usb3-dp-phy",
>  		.data = &sm8250_usb3dpphy_cfg,

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CBCA36C9D2A
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 10:07:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232884AbjC0IHL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 04:07:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232827AbjC0IG7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 04:06:59 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 264F14EF4
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 01:06:57 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id l12so7668219wrm.10
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 01:06:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679904415;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=LCJcvP+Z4ipSD+J7U51SrtRIHsD/1ZhEytJGf8KjspM=;
        b=y/y6Aip6tlP3sH1PyS+K4slVCHdZZFJVn9ifd9b6Te8PiwQWs2cCKdk5CWdYVZoMlc
         nj/yJA+uzsIfrQwWhSoOwdRbRTkLo/VimDsvrqJTi3uycajujMKXKM4MZlCk84Pc/Zde
         5eQXgVEUSRdjcNZzuAymM7obApkM+QD31Fr664EwHXoJ3ZoZ7OpW4X68S6KHvc39CEOr
         iaNmVrJYeFVqYkabXeON4amUtktTavn3ZV0B8Ra9mAHuo4G4mo3t/i2smH2Skh2QNrJH
         1dDpZNsNQUtYCBu7EyBPWhsoBQCRyFGg+kzm9hdBZun5uNerAPf1MgWRLQ0aB50rriwl
         m8uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679904415;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCJcvP+Z4ipSD+J7U51SrtRIHsD/1ZhEytJGf8KjspM=;
        b=pb5ybO/MR33OLcVppujcR5nh27oX39rLiPAlOJe1oAs4iqaurBdOong0WJjo8sE3B2
         g4w3at15TAVjPZrPlfNLo5v7iG3ypwOwi2lz28FgHsazSQxpw0cZdi7ho+oNqOXOmX41
         r/fSuCQD2Lq9sIKh+BF1NuQ2ginnk4BoGlowF+k33rjyMnTOo0sc7bD/ydlLTSE+OMLO
         jydW3N7UyD61T8b/lgZZYK2AvkJ9MdB3y0z0Pre21UYSFeR579FO+RMZiKFwK6zUw5Ih
         3+XH/3N5RG6jusof/pn66QxVUzADWauMbyZIpBXrNLC2WIUvIL8P+3SFSdX7DVxvKY2x
         vj6w==
X-Gm-Message-State: AAQBX9c/24VUxibvUeqnQnYrNMTeCOCkbniP4u/aHkTcxdrXQcjKsPZf
        wybu0VXAU+QoZSvFJVrcn/N5zA==
X-Google-Smtp-Source: AKy350Z7dkpIBV7tNUgIFdtosN7C1SLklf4nt4lOUZl6M28PqUTxlh6WahG6AT5SqI3fTizZj2xlQQ==
X-Received: by 2002:adf:dc47:0:b0:2c5:5d21:7d4c with SMTP id m7-20020adfdc47000000b002c55d217d4cmr8222977wrj.43.1679904415395;
        Mon, 27 Mar 2023 01:06:55 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id o39-20020a05600c512700b003edddae1068sm7971591wms.9.2023.03.27.01.06.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 01:06:55 -0700 (PDT)
Message-ID: <812947ee-4b43-4abf-2b1f-2aa4dc5418db@linaro.org>
Date:   Mon, 27 Mar 2023 10:06:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v2 3/9] phy: qcom-qmp-combo: populate offsets for all
 combo PHYs
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        Johan Hovold <johan+linaro@kernel.org>,
        devicetree@vger.kernel.org
References: <20230326005733.2166354-1-dmitry.baryshkov@linaro.org>
 <20230326005733.2166354-4-dmitry.baryshkov@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326005733.2166354-4-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 01:57, Dmitry Baryshkov wrote:
> In order to support newer style bindings for combo PHYs, populate
> offsets for all Combo QMP PHY configurations.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 8 ++++++++
>   1 file changed, 8 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> index d35d80f2a4f4..5ce68d211998 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-combo.c
> @@ -1407,6 +1407,8 @@ static const struct qmp_combo_offsets qmp_combo_offsets_v5 = {
>   };
>   
>   static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
>   	.tx_tbl			= qmp_v3_usb3_tx_tbl,
> @@ -1450,6 +1452,8 @@ static const struct qmp_phy_cfg sc7180_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= qmp_v3_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(qmp_v3_usb3_serdes_tbl),
>   	.tx_tbl			= qmp_v3_usb3_tx_tbl,
> @@ -1493,6 +1497,8 @@ static const struct qmp_phy_cfg sdm845_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sc8180x_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
>   	.tx_tbl			= sm8150_usb3_tx_tbl,
> @@ -1625,6 +1631,8 @@ static const struct qmp_phy_cfg sm6350_usb3dpphy_cfg = {
>   };
>   
>   static const struct qmp_phy_cfg sm8250_usb3dpphy_cfg = {
> +	.offsets		= &qmp_combo_offsets_v3,
> +
>   	.serdes_tbl		= sm8150_usb3_serdes_tbl,
>   	.serdes_tbl_num		= ARRAY_SIZE(sm8150_usb3_serdes_tbl),
>   	.tx_tbl			= sm8250_usb3_tx_tbl,

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

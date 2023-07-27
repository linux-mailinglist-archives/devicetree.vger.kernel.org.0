Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2804376475D
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 08:57:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232519AbjG0G5d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 02:57:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232558AbjG0G5a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 02:57:30 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 218C026A8
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:57:29 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-99bc0a20b54so76385866b.1
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 23:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690441047; x=1691045847;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UQYN/VzzVNnuXjJRSrV1QLMFprNIFXz06CrdAkh42wk=;
        b=FtrP2ijNIQKJFvFUwnyA62PndsAg6LMHWQwfDuA7WC5Vf+VlPaWp+E7X7tl9BjHM3K
         DKOaAJQC7mNaC4BLbWO4lxTY4nIhymoy7YE95Vvuwo1ZrKIkwoA/tvf5K19/KBQlqDus
         6bcvwSSdn3EBY5+b1SGIeDOTZw1VgrUGUznhst/Lgb4eook2/oIkrb9PO0BzaahfJoJ3
         1n59wSNuNsfXm9Z0bgHUgWpgT1dnCnW3VjEKHjDc4pju32Ml5kaMi9hNm0K04wbC4twL
         4YZ3Gp3cWr3qsnQ0lSCFTV4A295vONWF6OiACqSLYbhEWUpNUBJYG9tRdsha92ZMZvxn
         NXTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690441047; x=1691045847;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UQYN/VzzVNnuXjJRSrV1QLMFprNIFXz06CrdAkh42wk=;
        b=YmHTxL3L2yisafkS9AOwPT42ajGmyA5hhvT8T8lYfxfRLq35JwEc0XNgt3RKOYe3C7
         GuErjQ6HX+Dqzyc/hPX/M/mdSfvYCNm9SbTkvGonU4FTyNqYEjo6DZ6+v78cQh2obNa8
         oiGxMiSI9ZSgEvyu2BzFYuZ1pjzkZrjXk3wXEKNLSOLuYOxgIGGrs/rApCF8OaJTedbG
         OePXqWCiOsVNK0RzWKE20oLmRvLDfsGYzRZZTHfhmJN6y27Nbx2bGcfA0RT5MjQwR8Pc
         U0ZgPAiUZTdzNJvqm7reP6tVJPXWKbRLg6hcIB3o/yCAEN11uLuRZa6/BK45FYNNtDVV
         wIzA==
X-Gm-Message-State: ABy/qLZIBDpYrkoQ9SEQU+ppL5zSlsPwbF0KfQzL3/ExpL6CFpDjmD8G
        c8uQfsEmskDX8VEmThw61nZEeQ==
X-Google-Smtp-Source: APBJJlEkbRc+QPuAO42qpDIaHAWqTfEy8Uwpj4POZqFapsFaVinOKDMUklUrgjoWXa1XZ4HDJ1X3KA==
X-Received: by 2002:a17:907:7745:b0:99b:605b:1f49 with SMTP id kx5-20020a170907774500b0099b605b1f49mr1156807ejc.36.1690441047729;
        Wed, 26 Jul 2023 23:57:27 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id si15-20020a170906cecf00b00992e265495csm396008ejb.212.2023.07.26.23.57.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 23:57:27 -0700 (PDT)
Message-ID: <8b43115b-150c-bada-f847-1544bccc28c6@linaro.org>
Date:   Thu, 27 Jul 2023 08:57:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 6/6] soc: qcom: socinfo: add SM4450 ID
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230727023508.18002-1-quic_tengfan@quicinc.com>
 <20230727023508.18002-7-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727023508.18002-7-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 04:35, Tengfei Fan wrote:
> Add the ID for the Qualcomm SM4450 SoC.
> 
> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
> ---
>  drivers/soc/qcom/socinfo.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 4d49945b3a35..ca3c08d67a32 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -406,6 +406,7 @@ static const struct soc_id soc_id[] = {
>  	{ qcom_board_id(QRU1000) },
>  	{ qcom_board_id(QDU1000) },
>  	{ qcom_board_id(QDU1010) },
> +	{ qcom_board_id(SM4450) },

Neither here...

Best regards,
Krzysztof


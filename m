Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC924768C84
	for <lists+devicetree@lfdr.de>; Mon, 31 Jul 2023 09:01:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230346AbjGaHBH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jul 2023 03:01:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230339AbjGaHBE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jul 2023 03:01:04 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 588021A5
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:01:03 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-52256241b76so5453249a12.1
        for <devicetree@vger.kernel.org>; Mon, 31 Jul 2023 00:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690786862; x=1691391662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IojnIhTxwDoiGRw6GG+eJSBPl+3xl09aBo0KzjuVzS0=;
        b=y92FC5VXdhua39Bvi2YYw0TJQ3RslJfgj861rXTaO3rRDZiCx9T36d5fdH0+agT8KD
         FfrjgYTqM+0CUrzaRMDzvRRMMkLcTOBxk9eNr1CXqkArnNEu0yLyubQm3tc2nyWrtdHv
         1woha1MQysXdIBbVweZQTK+wCLj27t5s/B3fHNnUxK3V+sJtUdG6J0z5VIohFDilwzr+
         UZpscQDlPgaXxW5TGxpOkPVqe8mZ2xSyNHnerIdSgDVKjdsq0f/gS02KDyx3IfJo94OZ
         Vq3pzgwa5g3SLVsMvgO+dXkfq3YnKz+6o+LYZPDbj+xwpgVXvWAArLvTIyQdoKrxom//
         yZGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690786862; x=1691391662;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IojnIhTxwDoiGRw6GG+eJSBPl+3xl09aBo0KzjuVzS0=;
        b=QFf8zEdOxv0GjTkck3o5JLMjFrxFbD0XsGBCMS2/X0AZqemwHGccz7Amvqqo5suk7D
         1LGpXSN0CczR/avjZ/Mm7QaZOn5Zt3E/tWupUOv90RqcEwSNdxwI4bO/eLuDg9A7SVSt
         nzxZkxebxsWgXKJcxxU8vGkLFt+Ef0VWlhbdIp0Qx8v34x/6EReCYyfCfK1nyaAyPfLO
         XnhTkAvliQ5CdEW11Z00MQZtCH9d2dsdiuw40uYXoqgcjGP8FOYAz6LhS2Sf9S6KfCYr
         aBd7tf5zbgzhAPi2iL9UFnX/Z/hevNvBtdy6FwTIEhQRMwvVXuBX+sG+bS2ffsMzpLlX
         h/rw==
X-Gm-Message-State: ABy/qLa0kruG9VPJYoCtrhrGVrNLo3DaeWV5MGSyqRgAExhZbCMcV9j0
        VRxV2Qi0dCmoMqllFtbOsA+QP5pwqijp3w5Y0jg=
X-Google-Smtp-Source: APBJJlH3FTTDgMYbDFJtYuSq2IGsUBxUZNnUhWxs0tXcd+LbJGecLN+M+i5aP2q+etOOS7MVfh6UtA==
X-Received: by 2002:a05:6402:1a27:b0:522:45db:48e1 with SMTP id be7-20020a0564021a2700b0052245db48e1mr7521041edb.31.1690786841216;
        Mon, 31 Jul 2023 00:00:41 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.183])
        by smtp.gmail.com with ESMTPSA id u18-20020aa7d0d2000000b0051e0f21c43fsm5128339edo.31.2023.07.31.00.00.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 31 Jul 2023 00:00:40 -0700 (PDT)
Message-ID: <a037a8d3-9ba4-80ee-b34e-9a795ebb6e5b@linaro.org>
Date:   Mon, 31 Jul 2023 09:00:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.1
Subject: Re: [PATCH v3 6/8] soc: qcom: socinfo: adjust the position of QDU1010
Content-Language: en-US
To:     Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230731061325.26431-1-quic_tengfan@quicinc.com>
 <20230731061325.26431-7-quic_tengfan@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230731061325.26431-7-quic_tengfan@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/07/2023 08:13, Tengfei Fan wrote:
> Adjust the position of QDU1010, so that QDU1010 have
> same sequence with QCOM_ID_QDU1010 in bindings file.
> 
> Change-Id: I86d46eca55e877aaa1fd948db99b41ae138a3129

Please run scripts/checkpatch.pl and fix reported warnings. Some
warnings can be ignored, but the code here looks like it needs a fix.
Feel free to get in touch if the warning is not clear.

> ---
>  drivers/soc/qcom/socinfo.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 4d49945b3a35..ad7699b401a8 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -405,8 +405,8 @@ static const struct soc_id soc_id[] = {
>  	{ qcom_board_id(SA8775P) },
>  	{ qcom_board_id(QRU1000) },
>  	{ qcom_board_id(QDU1000) },
> -	{ qcom_board_id(QDU1010) },
>  	{ qcom_board_id(IPQ5019) },

Same comment as on previous patch.

> +	{ qcom_board_id(QDU1010) },

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0959662792C
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 10:40:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236899AbiKNJkD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 04:40:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236891AbiKNJj4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 04:39:56 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 210771DF0F
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:39:50 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id bp15so18258257lfb.13
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 01:39:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+TL86IkJGfXR2W5yilJqkGWhXAZUDk1Sq62leqV0tyk=;
        b=ube9SxXoGEV55f59QaAYLHVfPnPArxvDUpL4mHNmPCvPRvOGJDVp+Ibu5cicH111u3
         arkuuC90pMhhmUqcPHQtD94SBXy7ApkUXv0cDun9TXq55jJM/Yit7A8sInp9GtMX35Ga
         ioLw9CBM6s3Vhrox2Pttq4DT+zsFtCUTJ5cnB1biXo5DJQZDk+m88uoLPQGMicPF4Khq
         noZH8r7O8yyjsFkcB2JgM4NQZQJO8ZAvaUlTY8wFA2sbzRoOW00HeuPWsrCSnBOmlwfq
         lyig/mYxH2UyupgnKt790fHjHFlkvpKx7F/XRHr7eDMm3pzcy0Y4wLs+tHEfu+nweZrX
         xuPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=+TL86IkJGfXR2W5yilJqkGWhXAZUDk1Sq62leqV0tyk=;
        b=kXUUbZfHG5ZTA+0K6sGqb94/ZF6xhGwJdWSEXZZD9TjBbCClmRX9rV5qbrFH/mPPCs
         OzmtdUoeLaeXlGhu0Ing3/NkzCMERPCBzQn/38cTpwSTXCjfqDKwYnCt1XgcSvAJ4wyv
         jVIpRfxD1veBipwniuTOzsZDCgxobEo9yLaJ+kdjrqZHZXydgKIDXTEKjosebnS85fcN
         eSWiybN9M/v6d33WTZx0NzKJzhimoNa2JMKtkJswju02BXJDpm1FDwb79+iFp2f6DwjH
         WVD6UlUE2uzpgQpF1beRDf2lG4VdPJfsHBbpL5XfDLYgNvBUNuNabTrGJOisMXMH5h0J
         5gwA==
X-Gm-Message-State: ANoB5pmD1vxvx+78azEcU4kl4p9VYWgp53Bvoy8cyaE7mxs0cRJ7lgw5
        7Ixo7bASZvDWxNKquD6UPUdR2Q==
X-Google-Smtp-Source: AA0mqf5o3WF2RymMGPFzIZRUo/4Axy3tf5zinq7Bcmb1N+7mNktuDvNvQFpFVloIRJ0l1xLSHTSdeg==
X-Received: by 2002:a19:6719:0:b0:4a2:3955:e460 with SMTP id b25-20020a196719000000b004a23955e460mr4439383lfc.217.1668418788496;
        Mon, 14 Nov 2022 01:39:48 -0800 (PST)
Received: from [192.168.31.208] ([194.29.137.22])
        by smtp.gmail.com with ESMTPSA id c2-20020a056512074200b004979e1ff641sm1746299lfs.115.2022.11.14.01.39.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 01:39:47 -0800 (PST)
Message-ID: <1591878f-2fff-2571-a5f5-a2a712d87592@linaro.org>
Date:   Mon, 14 Nov 2022 10:39:44 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:102.0)
 Gecko/20100101 Thunderbird/102.4.2
Subject: Re: [PATCH v2 07/11] soc: qcom: socinfo: Add MSM8956/76 SoC IDs to
 the soc_id table
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, agross@kernel.org
Cc:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jassisinghbrar@gmail.com,
        srinivas.kandagatla@linaro.org, jic23@kernel.org, lars@metafoo.de,
        keescook@chromium.org, tony.luck@intel.com, gpiccoli@igalia.com,
        evgreen@chromium.org, gregkh@linuxfoundation.org,
        a39.skl@gmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-hardening@vger.kernel.org,
        marijn.suijten@somainline.org, kernel@collabora.com, luca@z3ntu.xyz
References: <20221111120156.48040-1-angelogioacchino.delregno@collabora.com>
 <20221111120156.48040-8-angelogioacchino.delregno@collabora.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221111120156.48040-8-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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


On 11/11/2022 13:01, AngeloGioacchino Del Regno wrote:
> Add SoC ID table entries for MSM8956 and MSM8976 chips.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>


Konrad

>   drivers/soc/qcom/socinfo.c | 2 ++
>   1 file changed, 2 insertions(+)
>
> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
> index 545934aead43..b2f73e9cba9f 100644
> --- a/drivers/soc/qcom/socinfo.c
> +++ b/drivers/soc/qcom/socinfo.c
> @@ -250,6 +250,8 @@ static const struct soc_id soc_id[] = {
>   	{ qcom_board_id(MSM8926) },
>   	{ qcom_board_id(MSM8326) },
>   	{ qcom_board_id(MSM8916) },
> +	{ qcom_board_id(MSM8956) },
> +	{ qcom_board_id(MSM8976) },
>   	{ qcom_board_id(MSM8994) },
>   	{ qcom_board_id_named(APQ8074PRO_AA, "APQ8074PRO-AA") },
>   	{ qcom_board_id_named(APQ8074PRO_AB, "APQ8074PRO-AB") },

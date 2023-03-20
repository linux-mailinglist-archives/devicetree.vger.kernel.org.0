Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D893F6C0FCC
	for <lists+devicetree@lfdr.de>; Mon, 20 Mar 2023 11:55:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229484AbjCTKzQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Mar 2023 06:55:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52934 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230365AbjCTKya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Mar 2023 06:54:30 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 89A452686A
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:51:05 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id h17so9858831wrt.8
        for <devicetree@vger.kernel.org>; Mon, 20 Mar 2023 03:51:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679309439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=k16MUxzAr7So06ek3jaPuSWRMbCu5blX7yixTU1VOIo=;
        b=TUjCPRxVhQuoSawmdT/2OKkR4iUiPflMVWDGo2wYLEp0WZg3xNzlxz1faeUHkKAFCk
         HJWl9xVQRQZfCsWug46ErVo50fe2uV36sJ5JTq7tbjJ5acEuJYAmFuhav1dikwrrwAZ8
         OYPpKM6t7tkHZF2+9o4ftn4oedpp5AJkaWi24nBQIcmxau3X2JmuF5GHhXJL9g9gGzYt
         lYvcfutBWP57axCnPHdGLBt3wxtpL4JnigXRbLEb+KqJVEGlVQD0RIZMwFrJpLZwWUgO
         spqaVnbZyPhEn13GYGaA+BnFYmJg+lpLr+c89XUZzc0NCVpFHw2YcYCtUWIBRcfOHmaL
         LHNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679309439;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=k16MUxzAr7So06ek3jaPuSWRMbCu5blX7yixTU1VOIo=;
        b=vAkt3E/gsKasYmrJw7XHx/OICTJdWd7Ux8PANCWiRlq/NeFQ6gm/k6sEujSi0aVbbS
         ow6Q+2WRE3L5oxf3J1r15aovREiCxiclNbshKj6OVvYaKieAFK4Nanw0MaV0rGKw5ukE
         BovIiQGA6++AkLVEyGYIoflKrmgtF0fdyiB5DMJymYGK1mM/Pp5MWdCX3+AF52BAmUub
         W5hsgvOwWNNHfe9X9C4TVFLU/4EhU9S07dRHMzeYvz0W/9KH0Cq1pW1yyFrjmSF6+ItK
         Ksyt2NxbyqkLwYK04dw6CA1MzprRLlgUUYZWwWRbWTIHtCtLBNPdPqeRP4Wo7zG02uQ4
         tNbA==
X-Gm-Message-State: AO0yUKWKxDQ+uJogInmYzcRgvhNbEx+8vqOFsyFf2prksm2GbPseylZX
        hWpZSfk6uA0KdludIoTl9qakH2AXbDfjDkdhlhY=
X-Google-Smtp-Source: AK7set8rHwqmHn+7sNRobBB28oMLRWp7yGgCfY/k3lB8f0Hw3GPmtlFfnPKnKWQkObtFPzP1JQGv4Q==
X-Received: by 2002:ac2:5097:0:b0:4b5:2ef3:fd2a with SMTP id f23-20020ac25097000000b004b52ef3fd2amr7744823lfm.47.1679308926377;
        Mon, 20 Mar 2023 03:42:06 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id r8-20020a19ac48000000b004e8b90e14a8sm1659531lfc.25.2023.03.20.03.42.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 03:42:06 -0700 (PDT)
Message-ID: <0a8fcd57-94dc-61e6-0ba0-b1591e05e6f2@linaro.org>
Date:   Mon, 20 Mar 2023 11:42:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] dmaengine: qcom: bam_dma: Add support for BAM engine
 v1.7.4
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        dmaengine@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        andersson@kernel.org, bhupesh.linux@gmail.com, vkoul@kernel.org,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        vladimir.zapolskiy@linaro.org
References: <20230320071211.3005769-1-bhupesh.sharma@linaro.org>
 <20230320071211.3005769-2-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230320071211.3005769-2-bhupesh.sharma@linaro.org>
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



On 20.03.2023 08:12, Bhupesh Sharma wrote:
> Qualcomm SoCs SM6115 and  QRB2290 support BAM engine version
> v1.7.4.
> 
> Add the support for the same in driver. Since the reg info of
> this version is similar to version v1.7.0, so reuse the same.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
>  drivers/dma/qcom/bam_dma.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/dma/qcom/bam_dma.c b/drivers/dma/qcom/bam_dma.c
> index 1e47d27e1f81..153d189de7d2 100644
> --- a/drivers/dma/qcom/bam_dma.c
> +++ b/drivers/dma/qcom/bam_dma.c
> @@ -1228,6 +1228,7 @@ static const struct of_device_id bam_of_match[] = {
>  	{ .compatible = "qcom,bam-v1.3.0", .data = &bam_v1_3_reg_info },
>  	{ .compatible = "qcom,bam-v1.4.0", .data = &bam_v1_4_reg_info },
>  	{ .compatible = "qcom,bam-v1.7.0", .data = &bam_v1_7_reg_info },
> +	{ .compatible = "qcom,bam-v1.7.4", .data = &bam_v1_7_reg_info },
The compatible is meaningless as of today (it uses the exact same driver
data as v1.7.0), so I'd say going with:

compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";

is what we want.

Konrad
>  	{}
>  };
>  

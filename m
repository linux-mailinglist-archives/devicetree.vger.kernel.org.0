Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A66A700D77
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 18:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237636AbjELQ4J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 May 2023 12:56:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237331AbjELQ4I (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 May 2023 12:56:08 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3737FA5E8
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:56:07 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-965ab8ed1fcso1868251566b.2
        for <devicetree@vger.kernel.org>; Fri, 12 May 2023 09:56:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683910565; x=1686502565;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=suX4ljN6TT9vWPOjBky8bn6EkRHPUJHWnDvLQ8/sunA=;
        b=qUvZ4iSN+/nuZr/gEfqzXvKAg3k4sRsE3hVr3KvPgnxO2BfCzWC5vs9VfYDE90QRYb
         R+4q2HYtpuqrHlQIfhce0d3tD4GUzSDxZyUbu9Y0xSQHSP+2bGQN4ua6WCg8RsG9XnIT
         hCHumiyMOWtx3/RRQjh7WYLETtmUkynC/91u6e52UTCRZfnm4SkysU2PBYnP6O0Fzfh9
         b7ZLPRmscdzrniXhnoSVtHM0Ym1ZM54zzWBFoTstqnewOy+iFnnhElVWbr5Ls+KLrPtt
         /63UKfrNAZ58QsAxUrO2Oooe6hLqp6cx1eRkTuUBozg0KINaE6xcboOdqEmgcnZJkfyW
         W0Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683910565; x=1686502565;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=suX4ljN6TT9vWPOjBky8bn6EkRHPUJHWnDvLQ8/sunA=;
        b=S1WJtYgyNUiwchGhVBZcamzriRqWz5zLHO8MTaxeWyqDL3znQ0s4mqFpPRAmQeEVqb
         f4mF+Yg6QpprQWbQM9IBlUcqqHNemMiVJfO6UjMH1l8J6W2SHVokGcTApgPT6gEiDlj7
         3sYq1CeKCEQIwzi43LM42lvV5PJsEWn2jux/Useq0ChLVwytSo7r/JHetUGOnUMaAY0U
         ob9MUp9jMiPSB/vwFDxK5+vbiykDJ67fn8iisP4kUtVTmHMkrizAaURRCE/2T4Sq/AP1
         5Nt4l1Jt6wyyFszRZk/BtSvMQNecAoHNLqf1SUm9fjg8IEigwB/wunpXy9z5Zn8C2Y6Q
         XsgQ==
X-Gm-Message-State: AC+VfDys8w9CKJtEE5Ov4bsmGdfXIpK6TOG7Iu4TC8A7wRHvABSQzo0r
        89aumbWF2p+TI8u6fsHgOez6gw==
X-Google-Smtp-Source: ACHHUZ5sU2Ig5ag2rw1cnDi01IztL76mzl6zu0t0F94CQC0TUOK5O6hC6AbCcH6KqT4S63XD+HAeLA==
X-Received: by 2002:a17:906:dc8c:b0:96a:6723:da48 with SMTP id cs12-20020a170906dc8c00b0096a6723da48mr6916218ejc.75.1683910565653;
        Fri, 12 May 2023 09:56:05 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:7ede:fc7b:2328:3883? ([2a02:810d:15c0:828:7ede:fc7b:2328:3883])
        by smtp.gmail.com with ESMTPSA id ka11-20020a170907990b00b0096602a5ab25sm5607012ejc.92.2023.05.12.09.56.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 May 2023 09:56:05 -0700 (PDT)
Message-ID: <240a88b9-3102-1d7b-30ed-9f1ddc37936f@linaro.org>
Date:   Fri, 12 May 2023 18:56:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH v3 00/10] soc: qcom: llcc: Add support for QDU1000/QRU1000
Content-Language: en-US
To:     Komal Bajaj <quic_kbajaj@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230512122134.24339-1-quic_kbajaj@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230512122134.24339-1-quic_kbajaj@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/05/2023 14:21, Komal Bajaj wrote:
> This patch series does the following -
>  * Add support for reading secure fuse region in qfprom driver
>  * Add support for qfprom on QDU1000 and QRU1000 SoCs
>  * Refactor LLCC driver to support multiple configuration
>  * Add support for multi channel DDR configuration in LLCC
>  * Add LLCC support for the Qualcomm QDU1000 and QRU1000 SoCs
> 
> Changes in v3-
>  - Addressed comments from Krzysztof and Mani.

Please be more specific, what exactly changed.

Best regards,
Krzysztof


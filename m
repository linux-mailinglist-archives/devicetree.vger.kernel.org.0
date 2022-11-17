Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1F1462DE6B
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 15:40:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240580AbiKQOke (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 09:40:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239739AbiKQOkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 09:40:09 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83940769ED
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 06:37:32 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id g7so3114931lfv.5
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 06:37:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fCEfq9NH8Txd9KLNPQmonzMnmxQCy2ftLPqDjx0d1XM=;
        b=EmA3sjBz5H2yR99JeTN6Vh9iaQ0D5PN7CVH/ibKMUtO5ukBkhdnzTlYizblHm+DJA3
         JEXolL/JVcfEIaXGpoCPsckYqHMbIkddPZNz8yNhBMOPSQyNDembs5wGkLV+U78ZNo6C
         qNuS/EC2vCFiqmbuh8/kF1RGpWYdzFntpCyDoNY69pmuKPBNkqF6mF5xwsmdtO90D+M+
         JXRJlIFtkBRR7i+/PLyYWaVk6z2H1M24zgHhh/IhaKGJ96PBFdjAuDUyqjALa8gXM7bx
         NdpYk+s8e9vpWIITuX0idcB0/GN0m6VOnpC7n1QHExdvx5W3re5Y2wnj8QVASpSDbKvH
         0ElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fCEfq9NH8Txd9KLNPQmonzMnmxQCy2ftLPqDjx0d1XM=;
        b=SZIA+Fp74Ihj5OFKDi6YihBo3EmTeX/4KK/uhm5Q2d2fEeHioMVoSBCCCcvDuTWh9B
         +SyN8E8zG1Qa5eWey3VQKJoNkVFnlkkvsliBQ9dMEf2sKb3DKyZZQhY9fJCrcGczz2Sx
         MEWu+ILk9T+Occb7AF8YauZOx0VQDRiWNZsq7gRc8O7p3L4LS48IhgrasxZiVwTP/4aI
         GZT22ykMoYVFldWwwVVyv0lQmVyw9PJa5DrEYnhVJZhU9ZoOK8QXLi2TNECzpPjJHH9z
         TlngSVE7b8vrlMj8WGjo0JDjIL9tIoiexJhVeLUIZECZTdrbkTxU+k+eMqFjpRsTjMlb
         a14w==
X-Gm-Message-State: ANoB5pnY6xvSoUQpbw7tSprbvtNu/e9Q7toP3DYf4jXV1jJnu7aovMP3
        wYfSCjixriuKNSGC9akUXK3raGDic2ksFQ==
X-Google-Smtp-Source: AA0mqf5IJJ3sM0gyU/Jp9vmJNg3hEnBRN2frLqi3Q2A3yjXYzyZexvnUPndedP1iVI8Kkux+1VRGtw==
X-Received: by 2002:ac2:4119:0:b0:4b4:6ca6:c658 with SMTP id b25-20020ac24119000000b004b46ca6c658mr1105944lfi.359.1668695850947;
        Thu, 17 Nov 2022 06:37:30 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id c12-20020ac244ac000000b004b4b5bde0c2sm170860lfm.279.2022.11.17.06.37.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Nov 2022 06:37:30 -0800 (PST)
Message-ID: <5215dacb-40b9-c4ff-0768-ba26e486adfd@linaro.org>
Date:   Thu, 17 Nov 2022 16:37:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH v4 2/2] soc: qcom: Add Qualcomm Ramp Controller driver
Content-Language: en-GB
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, agross@kernel.org
Cc:     andersson@kernel.org, konrad.dybcio@somainline.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, marijn.suijten@somainline.org,
        kernel@collabora.com
References: <20221117132956.169432-1-angelogioacchino.delregno@collabora.com>
 <20221117132956.169432-3-angelogioacchino.delregno@collabora.com>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221117132956.169432-3-angelogioacchino.delregno@collabora.com>
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

On 17/11/2022 16:29, AngeloGioacchino Del Regno wrote:
> The Ramp Controller is used to program the sequence ID for pulse
> swallowing, enable sequence and linking sequence IDs for the CPU
> cores on some Qualcomm SoCs.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>   drivers/soc/qcom/Kconfig           |   9 +
>   drivers/soc/qcom/Makefile          |   1 +
>   drivers/soc/qcom/ramp_controller.c | 342 +++++++++++++++++++++++++++++
>   3 files changed, 352 insertions(+)
>   create mode 100644 drivers/soc/qcom/ramp_controller.c

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


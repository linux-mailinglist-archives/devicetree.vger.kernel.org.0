Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CE177592EF
	for <lists+devicetree@lfdr.de>; Wed, 19 Jul 2023 12:27:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231422AbjGSK1Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jul 2023 06:27:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231383AbjGSK1L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jul 2023 06:27:11 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CE9D92119
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:26:07 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2b703caf344so99073861fa.1
        for <devicetree@vger.kernel.org>; Wed, 19 Jul 2023 03:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689762366; x=1692354366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KLSLLfLfGkyZH0yjoTyn6PJy/RUjV1d8qkkgDc6QU+s=;
        b=JybiC/o3rXPgzagAEAnnN2dmY0GnVZAjHjAdu05xYkFxYMFmn7mKyKBvGd/2nRmjW2
         Vq660C4pMeIQyXqLwv0XIyzhYVyqtMfQ/GZux+LOrLLPM7pxhQq+XKkUthHCXuWBHrqg
         fIFHO1FMOkxuqiRJ2DHm/VCEvp2QUlqS9mIbO6kcmoeyKagXbKGRt9wKUeNNvEJnM+WR
         6A8jMiHTVTTRYVnGS6b7zS4khwDLJvz6yRbuTLYUQC9pTzvo/gs0ECBdnC8/TPc7Jtdp
         WlDbwM4i/VvYAo4rGHMc7pAArPMtFsDgMONMx5zZxzDXLjT8Ri01Wmec2nAbva9cqAaN
         +iMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689762366; x=1692354366;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KLSLLfLfGkyZH0yjoTyn6PJy/RUjV1d8qkkgDc6QU+s=;
        b=Di9sbeEq9545jbLDqwpIydPfgcxXAE4fpu15HE0WZSJTBtY/BtNXedWqAR58FuepAj
         nOYyDcBvOflup/f8tX5QedUdFOd/RHwokX+o1dbKmRKy1ZKfyF+0BgBLqiMBpQGFlVEH
         OsguLk1lX5o3ulKjXgJ0iBcTBBR5yzKtPj5t/CLCO87s/VoBaNS/VDPod7xUa/dc4F9h
         OpYtI/+Bgtez00u8aihwsQNSM8xxbvBGZF3M6QQuT9N+yWZ+31AxJFNJIF3HCasKP7xp
         PYthWpgmRNr9weCoVzA8xvE/I5ZknM5RyWtAqhOhdbR76GOmsu3W/RX5L6z5/aKexvGO
         K+Hg==
X-Gm-Message-State: ABy/qLYXtpuUyC15oHbx5cHJ3N0XuE1C/2ezbJ9YvXmNEegEW9l5zx2W
        k480OtErdiAvQoPhu3JWFXx+kQ==
X-Google-Smtp-Source: APBJJlHeac+wBpkb+738ruf1UYkUyJ9pvySpiPwn4PRRxb52jswHUAR/7akNbkpM/QEo4HQZpm7Vlg==
X-Received: by 2002:a05:651c:85:b0:2b5:7f93:b3b0 with SMTP id 5-20020a05651c008500b002b57f93b3b0mr3881840ljq.17.1689762365727;
        Wed, 19 Jul 2023 03:26:05 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id r22-20020a170906351600b00992f8110a2bsm2129419eja.150.2023.07.19.03.26.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Jul 2023 03:26:05 -0700 (PDT)
Message-ID: <3d544c17-7aa9-bc68-c56d-6b6fad1c7b66@linaro.org>
Date:   Wed, 19 Jul 2023 12:26:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 5/5] soc: qcom: socinfo: add SM4450 ID
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Tengfei Fan <quic_tengfan@quicinc.com>, andersson@kernel.org,
        konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     quic_tsoni@quicinc.com, quic_shashim@quicinc.com,
        quic_kaushalk@quicinc.com, quic_tdas@quicinc.com,
        quic_tingweiz@quicinc.com, quic_aiquny@quicinc.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230719100135.21325-1-quic_tengfan@quicinc.com>
 <20230719100135.21325-6-quic_tengfan@quicinc.com>
 <185cb945-4c4e-1697-060e-602a3af2fe50@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <185cb945-4c4e-1697-060e-602a3af2fe50@linaro.org>
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

On 19/07/2023 12:15, Dmitry Baryshkov wrote:
> On 19/07/2023 13:01, Tengfei Fan wrote:
>> Add the ID for the Qualcomm SM4450 SoC.
>>
>> Signed-off-by: Tengfei Fan <quic_tengfan@quicinc.com>
>> ---
>>   drivers/soc/qcom/socinfo.c         | 1 +
>>   include/dt-bindings/arm/qcom,ids.h | 2 ++
>>   2 files changed, 3 insertions(+)
>>
>> diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
>> index 4d49945b3a35..fa5e4c54207a 100644
>> --- a/drivers/soc/qcom/socinfo.c
>> +++ b/drivers/soc/qcom/socinfo.c
>> @@ -415,6 +415,7 @@ static const struct soc_id soc_id[] = {
>>   	{ qcom_board_id(IPQ5312) },
>>   	{ qcom_board_id(IPQ5302) },
>>   	{ qcom_board_id(IPQ5300) },
>> +	{ qcom_board_id(SM4450) },
>>   };
>>   
>>   static const char *socinfo_machine(struct device *dev, unsigned int id)
>> diff --git a/include/dt-bindings/arm/qcom,ids.h b/include/dt-bindings/arm/qcom,ids.h
>> index bcbe9ee2cdaf..6201bfb1405e 100644
>> --- a/include/dt-bindings/arm/qcom,ids.h
>> +++ b/include/dt-bindings/arm/qcom,ids.h
>> @@ -2,6 +2,7 @@
>>   /*
>>    * Copyright (c) 2015, The Linux Foundation. All rights reserved.
>>    * Copyright (c) 2022 Linaro Ltd
>> + * Copyright (c) 2023, Qualcomm Innovation Center, Inc. All rights reserved.
> 
> I wonder whether a single define is copyrightable.

If you carefully choose a place, like out of order, then probably it is
a creative work. :)

Best regards,
Krzysztof


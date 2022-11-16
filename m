Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC2962BFDC
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:44:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230205AbiKPNom (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:44:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58782 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230025AbiKPNok (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:44:40 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78D0FDC8
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:44:39 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id s8so12421075lfc.8
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:44:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=T4hKgCUbtIPYjvVJAsADYYX8s/YK6qYyIv7lDakUgf8=;
        b=VEpHCajPnZPUJLRco749jMCXFFhg782fTkosk19Hh810S9HfCFZbYVa89+BKWbfCiw
         v18IVTUIDjAcwJhGRBjDSVHMkRtW+DDvpJIm5mE5Xyc/4pbwbjim76LHflGT/BI62wJE
         Sj2GF90+/GY5ORLy0WC3sS8SCCSAltu/jzJIfH8LCJObnkFsIxsVMV/Wo6WNXvJGp7s3
         uLNLRVFZyu8Yva2Z7r+6Qt4KW+uo5nLWYzUu6zvSnvQFZ2BiDnkZahqAUPo8IHxhOBc4
         t/4EAjR3UwVGd2OrESj+Le4aIBAIcmJqjO6SMlw+gXsHRPHupZ1MpzpUKBO7r//NaRU9
         Mqww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=T4hKgCUbtIPYjvVJAsADYYX8s/YK6qYyIv7lDakUgf8=;
        b=X4M9tcaGqsB/CiI5n4el6/2wbtN2IdD5hMFGjDzlGOTd/xg0jDvLahw20Zf8jjiOOX
         bzn4CwkPhneKHCpGI8c0reFBtyVDRkTJoc1khTXN0gaL36aBaaMKDTsfRMq4Bo56iG4X
         yGdaENYidMN7Pf7egVUGHezl1dRHHcHVuv0UnAKsOFU3sxd9lOSNHdH8Y1y9BtrgB2Kr
         Qb3kneOQe56dV5jIoD2wdihbizK7QTNr637YNi/TvN3OX9itNTw9YnNv92j1dAdKXw/N
         wyPIfo66/rWSyO/nNLLAVFzruSzQNLOTklm+DYrJs79QMuPj177K5fC+zsSaqWl8p1eN
         M6wA==
X-Gm-Message-State: ANoB5pnUdBZLtA0u5MfErPuy/Oq3Cv3P99gwQpl7+IdkH4YXYNlVaNgu
        ZVrbdkZKtkaJ2h+7Oihs1DLltQ==
X-Google-Smtp-Source: AA0mqf4qxnBJQnusEl1jH0gWmrzCYd1V8WQA6irfSbtpCNBUcZZxXbdSiHGfJ7EwX8Bojl0FHdcK0A==
X-Received: by 2002:a05:6512:5ce:b0:4aa:dd27:46ea with SMTP id o14-20020a05651205ce00b004aadd2746eamr6772533lfo.520.1668606277805;
        Wed, 16 Nov 2022 05:44:37 -0800 (PST)
Received: from [10.10.15.130] ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id u12-20020ac258cc000000b0049f87fb416dsm2623550lfo.12.2022.11.16.05.44.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Nov 2022 05:44:37 -0800 (PST)
Message-ID: <de34d22d-cf56-0d1a-719d-2168b84d2ade@linaro.org>
Date:   Wed, 16 Nov 2022 16:44:36 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.1
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8450: Use defines for power
 domain indices
Content-Language: en-GB
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org, krzysztof.kozlowski@linaro.org
Cc:     patches@linaro.org, Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221115130936.6830-1-konrad.dybcio@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20221115130936.6830-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/11/2022 16:09, Konrad Dybcio wrote:
> Use the defines from qcom-rpmpd.h instead of bare numbers for
> readability.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8450.dtsi | 4 ++--
>   1 file changed, 2 insertions(+), 2 deletions(-)

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry


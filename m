Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE395649068
	for <lists+devicetree@lfdr.de>; Sat, 10 Dec 2022 20:36:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229661AbiLJTgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 10 Dec 2022 14:36:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36400 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229560AbiLJTgL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 10 Dec 2022 14:36:11 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D456167F7
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 11:36:09 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id cf42so12221326lfb.1
        for <devicetree@vger.kernel.org>; Sat, 10 Dec 2022 11:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=hN5e2h5jjZD22h6mnCmU/7nCNx2frLPUlpkgwdunLXo=;
        b=aGhMPG9KYoyuoA0IIMUPvuEPOolEfxanAHb427IjI0ImlU/bkqmYOWL76PsWLiAwr5
         5/h21lnbuKmUH+b9BTRraDkfYB214Ka0hF/vDTqUIANy1wSMVFxQFdCnEW3VOPPHj3Me
         BvcuBTwzPMMY/+9KtL4d6dHf7RVpLjXp3s81X8YLyjDdE6gLN2EKPOaThOt/iXXG3TW+
         1cOt+NI8/0/m096oaQL30Xb6n0CqInFyuFOQgmAK0FwC8XMFPaZEeXmt1Tn2/Wfsxai3
         +lMl4qa/S6R1EjDKv7zRVF3gW+8xBFl8FkNnaaDU+1YTqE7H0YOQ6l26I63XIr98/mFm
         BLhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hN5e2h5jjZD22h6mnCmU/7nCNx2frLPUlpkgwdunLXo=;
        b=AedJ3Br2Bq7AY3zd7vkIsjT5zalN4gDRBd3Vv+oZKWqOzpwzGZXLTQJsIvDafqGVQ8
         K5WsWwWmIct0jACPzkQqTiPdSEokx/EavkCweR/ouJcmfCRKvj2XZYf0HbE8YGde1VV9
         0NTb9jvsGSWYpoNHxLElAXCATBcVtvlrtWDntet5Rbd/ZBeKRlUCwAt/vz8pSekrX76F
         agsjI0OqBr2n4JKvKWMKTaTv1QT7uwLSFY2WdbbKPiWG2HteqiCwCCn2RQSvP3XC19HN
         B/8s2887Y3JmPp8pSBFsIIluD65ipsZ2OBSvYULtToBnzES0VtVKM46McfbDW40Doath
         prlg==
X-Gm-Message-State: ANoB5pk1eGaxooP969DuR1DA+fM4GNJdP9OWSMHYmk+nEe9Ws5m5E5j9
        XxXUWyqOdpXQh0MMODpaR65ZKQ==
X-Google-Smtp-Source: AA0mqf5xnd2L7KlpFp7n4YpL6YNyI1O7K2y3EhXQuzW2w1GroVIpT5MCWgKbSQhNVYL85wE8dGDU8A==
X-Received: by 2002:ac2:47f9:0:b0:4b5:abe3:c63d with SMTP id b25-20020ac247f9000000b004b5abe3c63dmr2502005lfp.42.1670700967779;
        Sat, 10 Dec 2022 11:36:07 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id f10-20020ac251aa000000b004a44ffb1050sm829358lfk.171.2022.12.10.11.36.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Dec 2022 11:36:07 -0800 (PST)
Message-ID: <3672bc8b-926d-1020-aff5-3753affac4a6@linaro.org>
Date:   Sat, 10 Dec 2022 20:36:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH] arm64: dts: bullhead: add memory hole region
Content-Language: en-US
To:     Dominik Kobinski <dominikkobinski314@gmail.com>,
        linux-arm-msm@vger.kernel.org
Cc:     pevik@seznam.cz, agross@kernel.org, alexeymin@postmarketos.org,
        quic_bjorande@quicinc.com, bribbers@disroot.org,
        devicetree@vger.kernel.org, petr.vorel@gmail.com
References: <20221210134059.342423-1-dominikkobinski314@gmail.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221210134059.342423-1-dominikkobinski314@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 10.12.2022 14:40, Dominik Kobinski wrote:
> Add region for memory hole present on bullhead in order to
> fix a reboot issue on recent kernels
> 
> Reported-by: Petr Vorel <petr.vorel@gmail.com>
> Signed-off-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> ---
It'd be better if the commit title said msm8992-bullhead instead of
just -bullhead.

>  arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi b/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> index 71e373b11de9d8..3cf40d8cfdf6eb 100644
> --- a/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8992-lg-bullhead.dtsi
> @@ -2,6 +2,7 @@
>  /* Copyright (c) 2015, LGE Inc. All rights reserved.
>   * Copyright (c) 2016, The Linux Foundation. All rights reserved.
>   * Copyright (c) 2021, Petr Vorel <petr.vorel@gmail.com>
> + * Copyright (c) 2022, Dominik Kobinski <dominikkobinski314@gmail.com>
>   */
>  
>  /dts-v1/;
> @@ -50,6 +51,11 @@
>  			reg = <0 0x03400000 0 0x1200000>;
>  			no-map;
>  		};
> +
> +		removed_region: memory@5000000 {
The memory node should not be named "memory", but something more
specific, "reserved" would fit this case. I know most DTs have
them as "memory", but that turned out to be just what we *aren't*
supposed to do :P

Konrad
> +			reg = <0 0x05000000 0 0x2200000>;
> +			no-map;
> +		};
>  	};
>  };

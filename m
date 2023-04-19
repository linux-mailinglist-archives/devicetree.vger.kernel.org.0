Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B7F736E77D5
	for <lists+devicetree@lfdr.de>; Wed, 19 Apr 2023 12:55:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232453AbjDSKzc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Apr 2023 06:55:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231214AbjDSKza (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Apr 2023 06:55:30 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50BB413C3D
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 03:55:01 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-4ec81436975so2802622e87.0
        for <devicetree@vger.kernel.org>; Wed, 19 Apr 2023 03:55:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681901700; x=1684493700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lh/sqHL3qHKRy6dQR9+KQaAuRIDGOMEf4MBRJHiB854=;
        b=N5fsIoDmgtEt/kcUKU0QATGP7wRO0N11y0zOW5T0Yg/sEWU0itWCnApN8KjjAMbJ4H
         UzpUmzhkgUkI5YoWZfKAhnGC9ZlN1K7h+V9rYKUdmh6VG8drZXpIuQdiW4Yl0e9bW7kv
         KcIOzhLrfnws8zkxXZRbc5Fs/hXR+rdLUTj3ighFEs90DZqUGK1SAUZgbWBy3rqGuLhQ
         eA7ovAOYp0/UXNxbl0cLAOvECynlzfdOKHj2GwTdJmbKQsIesQVODgcYrVMkakn+OXyp
         ZInZYY442RScnrYcIw/0pA0sBdTRlTDHWMwKPz1wLBTHCAKDxpJpPc+C6yGrm6XoNnMi
         OGrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681901700; x=1684493700;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lh/sqHL3qHKRy6dQR9+KQaAuRIDGOMEf4MBRJHiB854=;
        b=FvxMFh7+a9JE2SVrYN0OuDBYypLdXzsEbVzB7LvwyJCjQCexurM2WI0WzZrMPFZW89
         pazgr6GT0d4lAWnU4KUZIkv2Lk/actrPNUC6zAc6rHsIOjPQxtHBV89V5gWD8p7nF9U6
         q8ogZZZelQ/863Wdm6/pLtk1Kw0GjAS/xOKkYBhaqy0D7qZyZjXVh2e0oEk2u9uOFNyo
         z64tVISplg7NSRfyia9CL7TqtOLIWJq5ynvLE6hBqFjK1ctfe3zcohb1cuLY+ffghOhC
         jEu7dLTN9Nd57NlWLTQ6IYTGMllMXxA8N2sVhYhD/MAFutdswrbOCtjKpvvXNQ7gXCF8
         eVeg==
X-Gm-Message-State: AAQBX9fcAry6I9dtIQKrepZ70xFrukiWD2SDOJfPpZm+PRN6L6oWPrYP
        RNpiSpUerZa1s9GINblIENhTDQ==
X-Google-Smtp-Source: AKy350Z6ikEpiz+UqB2/wfMi4ArQIxiTpGKOyPcyl4zyXnvhdgCwOAbXSMbb9famVCg8NVkkDb/ZBQ==
X-Received: by 2002:a05:6512:204:b0:4db:d97:224d with SMTP id a4-20020a056512020400b004db0d97224dmr3921802lfo.19.1681901699942;
        Wed, 19 Apr 2023 03:54:59 -0700 (PDT)
Received: from [192.168.1.101] (abyj144.neoplus.adsl.tpnet.pl. [83.9.29.144])
        by smtp.gmail.com with ESMTPSA id e7-20020ac25467000000b004edc20b8929sm1243763lfn.69.2023.04.19.03.54.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Apr 2023 03:54:59 -0700 (PDT)
Message-ID: <65e285d0-e3a8-030d-ee9e-28b875526288@linaro.org>
Date:   Wed, 19 Apr 2023 12:54:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH V2 4/4] arm64: dts: qcom: ipq9574: rename al02-c7 dts to
 rdp433
Content-Language: en-US
To:     Devi Priya <quic_devipriy@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
Cc:     quic_srichara@quicinc.com, quic_sjaganat@quicinc.com,
        quic_kathirav@quicinc.com, quic_arajkuma@quicinc.com,
        quic_anusha@quicinc.com, quic_poovendh@quicinc.com
References: <20230417053355.25691-1-quic_devipriy@quicinc.com>
 <20230417053355.25691-5-quic_devipriy@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230417053355.25691-5-quic_devipriy@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.04.2023 07:33, Devi Priya wrote:
> Rename the dts after Reference Design Platform(RDP) to adopt
> standard naming convention.
> 
> Signed-off-by: Devi Priya <quic_devipriy@quicinc.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  Changes since V9:
> 	- Renamed the Board Device Tree Source to use the RDP numbers
> 
>  arch/arm64/boot/dts/qcom/Makefile                               | 2 +-
>  .../boot/dts/qcom/{ipq9574-al02-c7.dts => ipq9574-rdp433.dts}   | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>  rename arch/arm64/boot/dts/qcom/{ipq9574-al02-c7.dts => ipq9574-rdp433.dts} (97%)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index e0e2def48470..f926e7e1aa7d 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -9,7 +9,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq6018-cp01-c1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk01.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c1.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq8074-hk10-c2.dtb
> -dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-al02-c7.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp433.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-acer-a1-724.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-alcatel-idol347.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= msm8916-asus-z00l.dtb
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> similarity index 97%
> rename from arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
> rename to arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> index 2c8430197ec0..2ce8e09e7565 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574-al02-c7.dts
> +++ b/arch/arm64/boot/dts/qcom/ipq9574-rdp433.dts
> @@ -1,6 +1,6 @@
>  // SPDX-License-Identifier: (GPL-2.0+ OR BSD-3-Clause)
>  /*
> - * IPQ9574 AL02-C7 board device tree source
> + * IPQ9574 RDP433 board device tree source
>   *
>   * Copyright (c) 2020-2021 The Linux Foundation. All rights reserved.
>   * Copyright (c) 2023 Qualcomm Innovation Center, Inc. All rights reserved.

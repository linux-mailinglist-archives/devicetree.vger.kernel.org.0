Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7409279E6E3
	for <lists+devicetree@lfdr.de>; Wed, 13 Sep 2023 13:35:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240269AbjIMLe7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Sep 2023 07:34:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240567AbjIMLes (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Sep 2023 07:34:48 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A2083C0D
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 04:34:05 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99357737980so839710366b.2
        for <devicetree@vger.kernel.org>; Wed, 13 Sep 2023 04:34:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694604843; x=1695209643; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wM5SIUdq9q8lGvXrXs9VMWSQTu6Zcs1sHBlGbNl1KLk=;
        b=x/Am8EON2gkt1A/n8jVWiPwZOJjSM3hm/+eTcUR2VrrMDUfLCXlPdh1/LccfVnOCp2
         VsH2Q8+fWHzvxyaua4hVFciVCl9pr5qhdq5tI5Zs91rYI5pQbVLhABlrEKhnQv1sdhV+
         1GEiQLx3b1KodHiQEmP68xzq15KFDkCfvkA6EzHyJLk6bPE4/7MWSfSE3rDFgCp53jLc
         yzcF2cp+UbdNfHjLC+oRK3DTc33J4PaISBSuAwwdK7ZVJViKbjB0wvceh0ehsArG9Bmx
         e9cffcO8QwllBlQXOz6wcWBX+mQvIp9ZdFrNHsWBFWFJKS2P9CDfK9NG8Ixa+OsvkzGf
         OaZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694604843; x=1695209643;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wM5SIUdq9q8lGvXrXs9VMWSQTu6Zcs1sHBlGbNl1KLk=;
        b=GmzhQ2F3+Tbwvkr61Cy+JcTlm3WNlOuMcAjtK8ThVsVQP+Z9qV1eaiInUahlJi6bZR
         JaL/vn5Tihs0L5EziSAIjj7fmEcEMnCCWBT1GA3z9aNxA0j6xpNVaN5v9jfu3K0wU+zp
         HieSu+/9QNbe3jh8jHKirgx0LMpE3Lzxv2cY6EYsUocHDc4UQsrI3V35sy+WV/Xkwudr
         3wsFoJ7JWmt8X/ZDrz5/JjomWbpJY1J8Bqm3r2rm6UQv8G8ElIe5jMJWnzdBRmwJYhdE
         bitNmYTjRuPnqj7aK7s9gAfvwQmwXzRq0S5dc8VjK256dPYaGczikGatTSsRykSfcbBu
         3QRQ==
X-Gm-Message-State: AOJu0YzzWUlf7PE/ZD7At48gtQizSRPzoWfwL3udfRdF0vxsA+Ab+9I+
        cQmfPICH3DgL8xdf/sI4ztqXPQ==
X-Google-Smtp-Source: AGHT+IFpLPaGgHkHb7TWz2h534XTfQQkS800fp8I2bYQFpK202UNLN0lz7T7mWJfEwkv5Wc31F2IBA==
X-Received: by 2002:a17:906:32c3:b0:9a1:f5b1:c85d with SMTP id k3-20020a17090632c300b009a1f5b1c85dmr1827996ejk.12.1694604843481;
        Wed, 13 Sep 2023 04:34:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a22-20020a1709064a5600b00992ca779f42sm8288599ejv.97.2023.09.13.04.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Sep 2023 04:34:02 -0700 (PDT)
Message-ID: <32e308fa-1118-e17a-8038-c28cb2484c92@linaro.org>
Date:   Wed, 13 Sep 2023 13:34:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v6 2/4] remoteproc: k3: Split out data structures common
 with M4 driver
Content-Language: en-US
To:     Hari Nagalla <hnagalla@ti.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, p.zabel@pengutronix.de,
        martyn.welch@collabora.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230913111644.29889-1-hnagalla@ti.com>
 <20230913111644.29889-3-hnagalla@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230913111644.29889-3-hnagalla@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/09/2023 13:16, Hari Nagalla wrote:
> From: Martyn Welch <martyn.welch@collabora.com>
> 
> We will be adding the M4F driver which shares a lot of commonality
> with the DSP driver. Common data structures are introduced here.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>
> Signed-off-by: Hari Nagalla <hnagalla@ti.com>
> ---
> Changes in v6:
>  - Created a separate patch for data structures to ease review
> 
>  drivers/remoteproc/ti_k3_common.h | 103 ++++++++++++++++++++++++++++++
>  1 file changed, 103 insertions(+)
>  create mode 100644 drivers/remoteproc/ti_k3_common.h
> 
> diff --git a/drivers/remoteproc/ti_k3_common.h b/drivers/remoteproc/ti_k3_common.h
> new file mode 100644
> index 000000000000..5e1f27741183
> --- /dev/null
> +++ b/drivers/remoteproc/ti_k3_common.h
> @@ -0,0 +1,103 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +/*
> + * TI K3 Remote Processor(s) driver common code
> + *
> + * Refactored from ti_k3_dsp_remoteproc.c.
> + *
> + * ti_k3_dsp_remoteproc.c:
> + * Copyright (C) 2018-2022 Texas Instruments Incorporated - https://www.ti.com/
> + *	Suman Anna <s-anna@ti.com>
> + */
> +
> +#ifndef REMOTEPROC_TI_K3_COMMON_H
> +#define REMOTEPROC_TI_K3_COMMON_H
> +
> +#define KEYSTONE_RPROC_LOCAL_ADDRESS_MASK	(SZ_16M - 1)
> +
> +/**
> + * struct k3_rproc_mem - internal memory structure
> + * @cpu_addr: MPU virtual address of the memory region
> + * @bus_addr: Bus address used to access the memory region
> + * @dev_addr: Device address of the memory region from DSP view
> + * @size: Size of the memory region
> + */
> +struct k3_rproc_mem {
> +	void __iomem *cpu_addr;
> +	phys_addr_t bus_addr;
> +	u32 dev_addr;
> +	size_t size;

Where is the split? I see only addition here.

Where is the usage of this header? This is basically dead code. Don't
add dead code, but instead actually move the structures here! Move is
cut and paste, not just paste.

Best regards,
Krzysztof


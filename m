Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3E76B723010
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 21:47:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235816AbjFETrj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 15:47:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235839AbjFETre (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 15:47:34 -0400
Received: from mail-il1-x134.google.com (mail-il1-x134.google.com [IPv6:2607:f8b0:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B69EF10B
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 12:47:33 -0700 (PDT)
Received: by mail-il1-x134.google.com with SMTP id e9e14a558f8ab-33be5dbb90cso16400605ab.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 12:47:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685994453; x=1688586453;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id:from:to
         :cc:subject:date:message-id:reply-to;
        bh=bVGBckaA7wE6e493eXPHGBBhjES3HSRY4YnjclwMy0M=;
        b=oPb/liL2dnCPXJ+aq609ulXPSS7MhnMeZYIvpomIXCi48dvg0nv7n7rQYXjJb6T+Xk
         8ndEoEDQmBHSm0HnUQvCXNUOm2m2wcZVn4wkTXl9SXWvgjZvOzXeeCrWX189Tw2uTT1L
         YWcjrSsdcxZGvi4g7OcJt+BxzAUYIADfTLi5zGgAq3Q/o63EEiOxJDgasXeT/ngZIy1V
         IBNMSsOtQlj/8pebFacrfCXYV1SBuOdGUiFPHr89bkumhNEdFGcdB74rscUo5hhnA4n3
         zjjd4BvgCY1Xvfxyq01upslMZZu6E9LTRdFkLgUsTTMM1PrPlk45Jq+vgkZnBAEvMgtq
         sGmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685994453; x=1688586453;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :cc:to:subject:from:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=bVGBckaA7wE6e493eXPHGBBhjES3HSRY4YnjclwMy0M=;
        b=Ibhm27xTW5hT7xq3ohwF4u7axRQwhf2hd+Hwv3Ba84c5CvMhQ+GJwIAdzxvy1DdqW3
         lAzyFPqx5YXXh9TEYT+Bub/MghYzAgN3kh3IETI3cO70XdaQgUYzSJBGofQ552t8Pjv3
         DnDKQDyduPtgYsgmXuehjXhK9zyJaX7ZPu1RUJhAnHzKE06oPHh/x5zM0JA8BEo830FG
         5lV/5hxzHpD4L3Ss+8Tyo9O1gj7SY8vmzHNRb4p4C2Zrch0O80uZ/Wz95H3zUBJSVlTc
         yFFT6hkSZrvPC4aH1Vq3d4xIoFTo8JFxnb/cjrPgsaN04whlUb6fD2+JhY6OUHut2eZW
         tlUQ==
X-Gm-Message-State: AC+VfDxrT4e7ZeokYxdIJaeVMLVhqMJyPUDCp8gqC/QJKEltYc0eZ9Ph
        pQSJrjkEglLRNXCa/rKfqSzZpw==
X-Google-Smtp-Source: ACHHUZ5S5FAwRue5DB46jNBpsQ3adpRdYQqVkzJ4peXKhPdRgVGnScJxm0uoXwr3sF+m3ANKF1Xmdg==
X-Received: by 2002:a92:d847:0:b0:338:6ace:dd62 with SMTP id h7-20020a92d847000000b003386acedd62mr63176ilq.14.1685994453041;
        Mon, 05 Jun 2023 12:47:33 -0700 (PDT)
Received: from [172.22.22.28] ([98.61.227.136])
        by smtp.gmail.com with ESMTPSA id g6-20020a0566380c4600b0041669a9fb62sm2278801jal.131.2023.06.05.12.47.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Jun 2023 12:47:32 -0700 (PDT)
Message-ID: <483e396b-9094-ed3a-e545-6c500e5d4ea2@linaro.org>
Date:   Mon, 5 Jun 2023 14:47:31 -0500
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
From:   Alex Elder <elder@linaro.org>
Subject: Re: [PATCH v13 03/24] virt: gunyah: Add hypercalls to identify Gunyah
To:     Elliot Berman <quic_eberman@quicinc.com>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>
Cc:     Murali Nalajala <quic_mnalajal@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>,
        Srivatsa Vaddagiri <quic_svaddagi@quicinc.com>,
        Carl van Schaik <quic_cvanscha@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Jonathan Corbet <corbet@lwn.net>,
        Bagas Sanjaya <bagasdotme@gmail.com>,
        Andy Gross <agross@kernel.org>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230509204801.2824351-1-quic_eberman@quicinc.com>
 <20230509204801.2824351-4-quic_eberman@quicinc.com>
Content-Language: en-US
In-Reply-To: <20230509204801.2824351-4-quic_eberman@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 5/9/23 3:47 PM, Elliot Berman wrote:
> Add hypercalls to identify when Linux is running a virtual machine under
> Gunyah.
> 
> There are two calls to help identify Gunyah:
> 
> 1. gh_hypercall_get_uid() returns a UID when running under a Gunyah
>     hypervisor.
> 2. gh_hypercall_hyp_identify() returns build information and a set of
>     feature flags that are supported by Gunyah.
> 
> Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>

I have a suggestion below.  But whether or not you choose to
incorporate it:

Reviewed-by: Alex Elder <elder@linaro.org>

> ---
>   arch/arm64/Kbuild                    |  1 +
>   arch/arm64/gunyah/Makefile           |  3 ++
>   arch/arm64/gunyah/gunyah_hypercall.c | 56 ++++++++++++++++++++++++++++
>   drivers/virt/Kconfig                 |  2 +
>   drivers/virt/gunyah/Kconfig          | 13 +++++++
>   include/linux/gunyah.h               | 31 +++++++++++++++
>   6 files changed, 106 insertions(+)
>   create mode 100644 arch/arm64/gunyah/Makefile
>   create mode 100644 arch/arm64/gunyah/gunyah_hypercall.c
>   create mode 100644 drivers/virt/gunyah/Kconfig
> 
> diff --git a/arch/arm64/Kbuild b/arch/arm64/Kbuild
> index 5bfbf7d79c99..e4847ba0e3c9 100644
> --- a/arch/arm64/Kbuild
> +++ b/arch/arm64/Kbuild
> @@ -3,6 +3,7 @@ obj-y			+= kernel/ mm/ net/
>   obj-$(CONFIG_KVM)	+= kvm/
>   obj-$(CONFIG_XEN)	+= xen/
>   obj-$(subst m,y,$(CONFIG_HYPERV))	+= hyperv/
> +obj-$(CONFIG_GUNYAH)	+= gunyah/
>   obj-$(CONFIG_CRYPTO)	+= crypto/
>   
>   # for cleaning
> diff --git a/arch/arm64/gunyah/Makefile b/arch/arm64/gunyah/Makefile
> new file mode 100644
> index 000000000000..84f1e38cafb1
> --- /dev/null
> +++ b/arch/arm64/gunyah/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +
> +obj-$(CONFIG_GUNYAH) += gunyah_hypercall.o
> diff --git a/arch/arm64/gunyah/gunyah_hypercall.c b/arch/arm64/gunyah/gunyah_hypercall.c
> new file mode 100644
> index 000000000000..2166d5dab869
> --- /dev/null
> +++ b/arch/arm64/gunyah/gunyah_hypercall.c
> @@ -0,0 +1,56 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) 2022-2023 Qualcomm Innovation Center, Inc. All rights reserved.
> + */
> +
> +#include <linux/arm-smccc.h>
> +#include <linux/module.h>
> +#include <linux/gunyah.h>
> +#include <linux/uuid.h>
> +
> +/* {c1d58fcd-a453-5fdb-9265-ce36673d5f14} */
> +static const uuid_t GUNYAH_UUID =
> +	UUID_INIT(0xc1d58fcd, 0xa453, 0x5fdb, 0x92, 0x65, 0xce, 0x36, 0x67, 0x3d, 0x5f, 0x14);
> +
> +bool arch_is_gh_guest(void)
> +{
> +	struct arm_smccc_res res;
> +	uuid_t uuid;
> +
> +	arm_smccc_1_1_hvc(ARM_SMCCC_VENDOR_HYP_CALL_UID_FUNC_ID, &res);
> +
> +	((u32 *)&uuid.b[0])[0] = lower_32_bits(res.a0);
> +	((u32 *)&uuid.b[0])[1] = lower_32_bits(res.a1);
> +	((u32 *)&uuid.b[0])[2] = lower_32_bits(res.a2);
> +	((u32 *)&uuid.b[0])[3] = lower_32_bits(res.a3);

I think I'd rather see this more like:

	u32	*up = (u32 *)&uuid.b;

	/* The lower bytes of the four result fields encode the UUID */
	*up++ = lower_32_bits(res.a0);
	*up++ = lower_32_bits(res.a1);
	*up++ = lower_32_bits(res.a2);
	*up = lower_32_bits(res.a3);

Basically I think casting the assigned-to value makes things
harder to read.  So doing that cast just once seems simpler.
But it's not a big deal.

> +
> +	return uuid_equal(&uuid, &GUNYAH_UUID);
> +}
> +EXPORT_SYMBOL_GPL(arch_is_gh_guest);

. . .

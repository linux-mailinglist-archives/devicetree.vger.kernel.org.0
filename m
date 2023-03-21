Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A26476C3424
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 15:25:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229826AbjCUOZV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 10:25:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230506AbjCUOZH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 10:25:07 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A9D6509B8
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 07:24:35 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id eh3so60338473edb.11
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 07:24:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679408674;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=P2N7HOyTMan8aohfwKI6BXAWpRIQI2QyRgOjl9UhlGQ=;
        b=buelsAInYUz592Ha3E+qlaF/e1fvGmSSWMuCMxJCENWh6BWLQv3/mSmHBxZUlb56Jz
         IyX2XhtQVThmv6XidPvdwNeVj+9dz45oT8lY1Ei0eAiFTLNuOGnnQFtOVl/BUjPnyKIC
         wjYS3d32q/xQB2VZVJxHAXCFd4wiCiJKxi1vC8ODnT2VSVqTT2FJ8BpYcpRZKppMAwo2
         8cOqjs5uKj8Oaz0OWrBZZU9spzC+C+qFfjewXk01TQ9BAI0RKWifBOs49UwSh8kRlBWP
         egzsnkVWrKvJmKr7ukSy/69Qidp/kCj+wlRi+qrBBTpfYWjwzSKJ+oxq7oWipdyG2Ojr
         iYjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679408674;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=P2N7HOyTMan8aohfwKI6BXAWpRIQI2QyRgOjl9UhlGQ=;
        b=UjScHSFhRoVJjjMnmWeUR0gE+HRR1Rt+CbcDK+r4l5YT+zR6HI/hs+F6Y9FoYunjUV
         Wm4uAfZgnGJw0QTqrRjkqYRegFEZ2/zOI5ALxmpJCsRHNQKvS/7NUPY5nV2Glc1te/s3
         n9+N5uoR10duQB6lkceIuPN6YHNh70+DILE2rph2B5SNcN+jrPUM1K7z5EukZEc5kDXY
         Vqfjs84i7Skr5wGbcXetoxH312ub0ZSGVD8S9KcAV7LZNxmoaIgVcskcjEChIXtSzbT8
         6plzHa6V/QDCJKhcOzTBMeh2zwlaIeWU8mKWoK6e2yJ0RNg/D35od5iSgRe80Is7Vj1t
         HiUg==
X-Gm-Message-State: AO0yUKURh2m7JaGOouiuCs1UvSOB420QxLV2bem3DQOHzdvw+uXDbXJk
        yLoShPEq86oz+EhDERYhXbhkRw==
X-Google-Smtp-Source: AK7set/6NWk0Yycxy5H9S15Knlom2d0dHGQeEF66ACxI8O98OmUTqIAWOCBFyeJfne7ZH9AczGL6KQ==
X-Received: by 2002:aa7:d748:0:b0:4fb:4fc2:e600 with SMTP id a8-20020aa7d748000000b004fb4fc2e600mr2993633eds.42.1679408674570;
        Tue, 21 Mar 2023 07:24:34 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.googlemail.com with ESMTPSA id u25-20020a50c2d9000000b004faf34064c8sm6332860edf.62.2023.03.21.07.24.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 07:24:34 -0700 (PDT)
Message-ID: <fa073ce7-a9ef-9e8e-8791-71578a0834bc@linaro.org>
Date:   Tue, 21 Mar 2023 14:24:32 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v11 13/26] gunyah: vm_mgr: Add ioctls to support basic
 non-proxy VM boot
Content-Language: en-US
To:     Elliot Berman <quic_eberman@quicinc.com>,
        Alex Elder <elder@linaro.org>,
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
        Will Deacon <will@kernel.org>, Andy Gross <agross@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230304010632.2127470-1-quic_eberman@quicinc.com>
 <20230304010632.2127470-14-quic_eberman@quicinc.com>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
In-Reply-To: <20230304010632.2127470-14-quic_eberman@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 04/03/2023 01:06, Elliot Berman wrote:
> Add remaining ioctls to support non-proxy VM boot:
> 
>   - Gunyah Resource Manager uses the VM's devicetree to configure the
>     virtual machine. The location of the devicetree in the guest's
>     virtual memory can be declared via the SET_DTB_CONFIG ioctl.
>   - Trigger start of the virtual machine with VM_START ioctl.
> 
> Co-developed-by: Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>
> Signed-off-by: Prakruthi Deepak Heragu <quic_pheragu@quicinc.com>
> Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
> ---
>   drivers/virt/gunyah/vm_mgr.c    | 243 ++++++++++++++++++++++++++++++--
>   drivers/virt/gunyah/vm_mgr.h    |  10 ++
>   drivers/virt/gunyah/vm_mgr_mm.c |  23 +++
>   include/linux/gunyah_rsc_mgr.h  |   6 +
>   include/uapi/linux/gunyah.h     |  13 ++
>   5 files changed, 282 insertions(+), 13 deletions(-)
> 

...

> diff --git a/include/uapi/linux/gunyah.h b/include/uapi/linux/gunyah.h
> index a19207e3e065..d6abd8605a2e 100644
> --- a/include/uapi/linux/gunyah.h
> +++ b/include/uapi/linux/gunyah.h
> @@ -49,4 +49,17 @@ struct gh_userspace_memory_region {
>   #define GH_VM_SET_USER_MEM_REGION	_IOW(GH_IOCTL_TYPE, 0x1, \
>   						struct gh_userspace_memory_region)
>   
> +/**
> + * struct gh_vm_dtb_config - Set the location of the VM's devicetree blob
> + * @guest_phys_addr: Address of the VM's devicetree in guest memory.
> + * @size: Maximum size of the devicetree.
> + */
> +struct gh_vm_dtb_config {
> +	__u64 guest_phys_addr;
> +	__u64 size;
> +};
> +#define GH_VM_SET_DTB_CONFIG	_IOW(GH_IOCTL_TYPE, 0x2, struct gh_vm_dtb_config)
> +
> +#define GH_VM_START		_IO(GH_IOCTL_TYPE, 0x3)
A comment here that this is going to *ONLY* start an un-authenticated VM 
would be useful to the users.

with that fixed,

Reviewed-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>


--srini


> +
>   #endif

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E939709DC4
	for <lists+devicetree@lfdr.de>; Fri, 19 May 2023 19:20:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231268AbjESRUw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 May 2023 13:20:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230101AbjESRUt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 May 2023 13:20:49 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 269E61A8
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:20:43 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4f14468ef54so4028046e87.0
        for <devicetree@vger.kernel.org>; Fri, 19 May 2023 10:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684516841; x=1687108841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aI4Ct9ZNbQ/SUl5JzXHU1ru0q3U69oZVlCThA9I8H3I=;
        b=lBSmxER24QeX7xwpniQr4N70VZBB0FbHwfoJ1IdDtkGHPUnW/6jPw6qRbVa590f0cs
         9RaAUk9JZOvoET83pb5t7t/QgZaQtKmsWNQWHeBtxkY+x3Sclu1C098f262ugb7UQ5WC
         0tVCs+mMTOBdPBJA56fycgDyyoQyEeOnyPaPv1HcXuU1NHjJVdnfEJdtGfTcawzXv+wn
         Z3QXMf19Z7mo8jhHJsBSwzZARvKANsjpu1KLCXexbascw+RUV37bNc7yS1kgfx0KV9LY
         yY8f21Uv5yn/YSKfggdhGYWuil7v+hR4Z3ZE4ZwHPFzvpnf+r8tKSW94hpfC+4YU1OVm
         Mc6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684516841; x=1687108841;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aI4Ct9ZNbQ/SUl5JzXHU1ru0q3U69oZVlCThA9I8H3I=;
        b=J35V2JqPfwt1NdTPQG1mIPARNo5BgTqM7Xj4n7f3KTU9lkmGn81kFFXb8a0v9osRt3
         iNZdjBGgW5qBk7BPWMj7TPpFw0zqqSuaAXqrLdVacY4k90Jm9EwLJfdSCFNULzZJDUZD
         c6t/8slul/OFet+0fC5wrdKSnYcny3nDP709aXjxZ8MhBz6j2BEKC97Y2PoYkxX+iYhT
         j6+uMJxeZW6ELnkNY9pRDWRZd+KdxvBDYNGc6hVDedr/p0wOVsET+r2uf1lPkbOyvsqk
         HKTN9IE0uCEUtIDNlI5FX2vssfOR0Dgq3zLOpR/4p6QDC+HXZOU/Oo4VnSRZBGRlvsKk
         6o9g==
X-Gm-Message-State: AC+VfDzMAUkOAHuH4xySh3F10OEDH8WgOQEipe3W+j5Jxng6KWnUAhKX
        XHXLH2K5ugiA9vkQCMebpy3rXg==
X-Google-Smtp-Source: ACHHUZ4ZtY87AlYLqMzZMI/H+YwCz8aUIUg1BGHjMQhVZ85fHr9UboDnwYj4WsgHwUHkUQsLv0exag==
X-Received: by 2002:ac2:4182:0:b0:4f3:93d6:377b with SMTP id z2-20020ac24182000000b004f393d6377bmr843159lfh.37.1684516841069;
        Fri, 19 May 2023 10:20:41 -0700 (PDT)
Received: from [192.168.1.101] (abxi58.neoplus.adsl.tpnet.pl. [83.9.2.58])
        by smtp.gmail.com with ESMTPSA id y19-20020ac24473000000b004eff0bcb276sm670552lfl.7.2023.05.19.10.20.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 19 May 2023 10:20:40 -0700 (PDT)
Message-ID: <470651fb-e4d1-2576-df6c-ded60d0b1242@linaro.org>
Date:   Fri, 19 May 2023 19:20:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH 1/2] scsi: ufs: ufs-qcom: add basic interconnect support
Content-Language: en-US
To:     Brian Masney <bmasney@redhat.com>, andersson@kernel.org
Cc:     agross@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, jejb@linux.ibm.com,
        martin.petersen@oracle.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
References: <20221117104957.254648-1-bmasney@redhat.com>
 <20221117104957.254648-2-bmasney@redhat.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221117104957.254648-2-bmasney@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.11.2022 11:49, Brian Masney wrote:
> The firmware on the Qualcomm platforms expects the interconnect votes to
> be present. Let's add very basic support where the maximum throughput is
> requested to match what's done in a few other drivers.
> 
> This will not break boot on systems where the interconnects and
> interconnect-names properties are not specified in device tree for UFS
> since the interconnect framework will silently return.
> 
> Signed-off-by: Brian Masney <bmasney@redhat.com>
> ---
Hi everyone!

This was never merged, but it's actually strictly necessary!

For example UFS dies on SM8450 if we add sync_state to its interconnect
driver, as there's no votes cast.

Can we look into this again?

Konrad
>  drivers/ufs/host/ufs-qcom.c | 25 +++++++++++++++++++++++++
>  1 file changed, 25 insertions(+)
> 
> diff --git a/drivers/ufs/host/ufs-qcom.c b/drivers/ufs/host/ufs-qcom.c
> index 8ad1415e10b6..55bf8dd88985 100644
> --- a/drivers/ufs/host/ufs-qcom.c
> +++ b/drivers/ufs/host/ufs-qcom.c
> @@ -7,6 +7,7 @@
>  #include <linux/time.h>
>  #include <linux/clk.h>
>  #include <linux/delay.h>
> +#include <linux/interconnect.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/platform_device.h>
> @@ -936,6 +937,22 @@ static const struct reset_control_ops ufs_qcom_reset_ops = {
>  	.deassert = ufs_qcom_reset_deassert,
>  };
>  
> +static int ufs_qcom_icc_init(struct device *dev, char *pathname)
> +{
> +	struct icc_path *path;
> +	int ret;
> +
> +	path = devm_of_icc_get(dev, pathname);
> +	if (IS_ERR(path))
> +		return dev_err_probe(dev, PTR_ERR(path), "failed to acquire interconnect path\n");
> +
> +	ret = icc_set_bw(path, 0, UINT_MAX);
> +	if (ret < 0)
> +		return dev_err_probe(dev, ret, "failed to set bandwidth request\n");
> +
> +	return 0;
> +}
> +
>  /**
>   * ufs_qcom_init - bind phy with controller
>   * @hba: host controller instance
> @@ -991,6 +1008,14 @@ static int ufs_qcom_init(struct ufs_hba *hba)
>  			err = dev_err_probe(dev, PTR_ERR(host->generic_phy), "Failed to get PHY\n");
>  			goto out_variant_clear;
>  		}
> +
> +		err = ufs_qcom_icc_init(dev, "ufs-ddr");
> +		if (err)
> +			goto out_variant_clear;
> +
> +		err = ufs_qcom_icc_init(dev, "cpu-ufs");
> +		if (err)
> +			goto out_variant_clear;
>  	}
>  
>  	host->device_reset = devm_gpiod_get_optional(dev, "reset",

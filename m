Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1C8D2FA6B9
	for <lists+devicetree@lfdr.de>; Mon, 18 Jan 2021 17:52:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393536AbhARQvH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jan 2021 11:51:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2393589AbhARQvD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jan 2021 11:51:03 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB0C9C061574
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 08:50:22 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id y17so17108092wrr.10
        for <devicetree@vger.kernel.org>; Mon, 18 Jan 2021 08:50:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=M9bVC0D29PiLP3SooWshnzjodDmaOHzWL9fgwIDTFtE=;
        b=NrUZFBbOrp+MV6hCesD9V21DcHAX2TDzjSa4H5fIA2WP7yuAHlHnHVgsuqfj9/Ar4B
         xhm/DSf/WJys9Z+rHzrtvDRGvpeN7gAadWoywSUrKmyGjNsAu8032PWZAkoJ67pkQaQX
         CCm4IZ6+7tb8VapRAjoc07ZZgXEte6nRi3xkK2mfMxqhP7b2C3WxXJhXSnN7z7q3mmPl
         uc7quskK2T8hBe4SyJglQAzk8zyBlTbbIx7mjG6DQT5zMff7GAhfPaWcczVbYA2MpQRo
         tRJStZBla6/xWEO0wwWfsi9jIbfsbJBVlE9WO+Su+tIX4JoGaLC7XX7jhlCw0yzw1ue9
         sGOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=M9bVC0D29PiLP3SooWshnzjodDmaOHzWL9fgwIDTFtE=;
        b=nx4L1YMz0bY/UmehmtfyD3wShrWs0FFWC6gg0LiFj4SK0N/Vev3Zn48hxKH2T3n5mQ
         BXzOwmhX8pbypJ7jB8nRdstGOmnCe5WSR6mLcfug3b4sGQNiJr4BTdHxERFUz1DEy9IH
         NWkgcE4b1FTTsIGFJejLmgMnpGfMscp/Z55VEExWPBObgGpUYsikQ+lc0dxg9MXA9oGi
         uCBNjdHKQAY8BrOM9MqRXdXrSIR+wnfPf1PvtUoFsfGcAWeZDIy6bSGJrSP8YZwCe2hs
         +MEg9GglhYn4MCR+0xiCbtO+7FN+HnThTKH9OW+DUugBmQLAyEwJFmAxvmYbAMkyglcN
         q2pw==
X-Gm-Message-State: AOAM530nztn/29fAzKeEm9u1YAOPiGC9qD9BPBE4ehLJMZ9wzjZ6kyND
        BSQEwTtdC4rtfxV789tbjd4hWw==
X-Google-Smtp-Source: ABdhPJw2g9byjlOuPcRSObz4o40FaDhPEf7OhIi+GNChZIesXRE+MPNBuJiYipRn8nsrRLQdNDN3LQ==
X-Received: by 2002:adf:c387:: with SMTP id p7mr358073wrf.95.1610988621672;
        Mon, 18 Jan 2021 08:50:21 -0800 (PST)
Received: from [192.168.86.34] (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.googlemail.com with ESMTPSA id v14sm28797342wru.8.2021.01.18.08.50.20
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Jan 2021 08:50:21 -0800 (PST)
Subject: Re: [PATCH v3 0/5] Expose RPi4's bootloader configuration
To:     Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        linux-kernel@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, linux@armlinux.org.uk,
        catalin.marinas@arm.com, will@kernel.org,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        robh+dt@kernel.org, bcm-kernel-feedback-list@broadcom.com,
        tim.gover@raspberrypi.com, phil@raspberrypi.com
References: <20210112142342.7290-1-nsaenzjulienne@suse.de>
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Message-ID: <e8ca9365-a1f2-1f9d-377c-13bf97883cce@linaro.org>
Date:   Mon, 18 Jan 2021 16:50:20 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20210112142342.7290-1-nsaenzjulienne@suse.de>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 12/01/2021 14:23, Nicolas Saenz Julienne wrote:
> Soon to be released versions of RPi4's firmware will take of care
> passing their bootloader's configuration[1] to the OS by copying it into
> memory and creating a reserved memory node in the board's DT. By
> modeling this reserved memory node as an nvmem device using
> 'nvmem-rmem', which this series introduces, user-space applications will
> be able to query this information through nvmem's sysfs interface.
> 
> An alternative approach, less nice IMO, would be to create a
> platform-specific 'soc' driver.
> 
> Regards,
> Nicolas
> 
> [1] https://www.raspberrypi.org/documentation/hardware/raspberrypi/bcm2711_bootloader_config.md
> 
> ---
> 
> Changes since v2:
>   - Fix DT bingins
> 
> Changes since v1:
>   - Avoid the reserved-memory indirection by integrating the nvmem driver
>     into the reserved memory node.
> 
> Nicolas Saenz Julienne (5):
>    dt-bindings: nvmem: Add bindings for rmem driver
>    nvmem: Add driver to expose reserved memory as nvmem
>    ARM: dts: bcm2711: Add reserved memory template to hold firmware
>      configuration
>    arm64: defconfig: Enable nvmem's rmem driver
>    ARM: multi_v7_defconfig: Enable nvmem's rmem driver
> 


Thanks Applied (1/5) and (2/5), rest of patches should go via arm-soc tree!

--srini

>   .../devicetree/bindings/nvmem/rmem.yaml       | 49 ++++++++++
>   arch/arm/boot/dts/bcm2711-rpi-4-b.dts         | 17 ++++
>   arch/arm/configs/multi_v7_defconfig           |  1 +
>   arch/arm64/configs/defconfig                  |  1 +
>   drivers/nvmem/Kconfig                         |  8 ++
>   drivers/nvmem/Makefile                        |  2 +
>   drivers/nvmem/rmem.c                          | 97 +++++++++++++++++++
>   drivers/of/platform.c                         |  1 +
>   8 files changed, 176 insertions(+)
>   create mode 100644 Documentation/devicetree/bindings/nvmem/rmem.yaml
>   create mode 100644 drivers/nvmem/rmem.c
> 

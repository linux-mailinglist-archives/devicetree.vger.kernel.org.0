Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12EA257D2D1
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 19:55:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229862AbiGURzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 13:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbiGURzM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 13:55:12 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E58D61183C
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 10:55:10 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id d16so3319118wrv.10
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 10:55:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=i4cDjf1Cjd0yOw7f6RDaSHI7QfV0U03RCOe+RqMOiHM=;
        b=3qp8L6iiIFbNgY8Rq98TiLMJtgEeK9PLQueSkCCCniUVIFRzRd3VeBgwjF2ImnbvUe
         EjJR2YZjDpOWrBDJDiOt8F7sl31tDvPqK5i7IukZn/PjA9ReRA49ZFS9/9nDSke6h+be
         6bAsjgLFoydTT9tMfVavkXWZKxoN17M/rRz7M40i+XyR/cJGlO0kqvNOYiEmtdqtmkl7
         3YrZU1P7uYpor6t7vdI7R4eBuBigOAj+QdP/KoDFeXsa+AhjSBbGHGSr2t9bFOgwYRvx
         cQ9am5xCxqAWtUyXHTwmqF8N/ofbev+U0BD+Fzfyp73vn0PCYywygtDefUOFSFDS83NC
         9P9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=i4cDjf1Cjd0yOw7f6RDaSHI7QfV0U03RCOe+RqMOiHM=;
        b=foWkDWh+VYtuow3l4a6YCj6Vn9M8JekBmnL8rqhUNTspilP+JP9h23doLgao42A05G
         mTeIt2zA0LGCo1O7EoA1hnT+PeOJ0bH+nRkMisedF7eB9IHQaYGnpKUmDSkYcUatQlM6
         ARY0Ihz8FW/nnyY9sXDM4yhO+b6uhKoZu6dln86Y3V47r/K2FpUk4foQH+ciANpSxmPv
         4z5pxeFBm/dh4MfxjD85z7eCvkGDRpc6G+hA+d2Lhqjqdv0IwiTC8p2B+VWGEZHwiPo/
         HvYv7mAtmEIAQHUVhDdtDgLGu57Lu2+49Yz2r6yunp8E3gDKc/QROJUL9sOfGYaKXtmY
         dzwg==
X-Gm-Message-State: AJIora8mKafyriqLbO8oswPbxA+byodO4YEI8MPoaCVYXReJpex6uJ0+
        3u8SW2dZIy450Jz5FN8Uh91li5p2mwJ6xw==
X-Google-Smtp-Source: AGRyM1uOfbxXgRLwmkYBzhfykIJonAAq54TnBmhDotxBZ3VtXs9L7VXTSL/Xz0+Yps7lwWlsRIooHw==
X-Received: by 2002:a5d:47aa:0:b0:216:9eff:342b with SMTP id 10-20020a5d47aa000000b002169eff342bmr37601684wrb.356.1658426109168;
        Thu, 21 Jul 2022 10:55:09 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:4c23:a5d2:f5f6:4cd7? ([2a01:e0a:982:cbb0:4c23:a5d2:f5f6:4cd7])
        by smtp.gmail.com with ESMTPSA id r13-20020a05600c35cd00b003a046549a85sm6804613wmq.37.2022.07.21.10.55.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Jul 2022 10:55:04 -0700 (PDT)
Message-ID: <44f1117c-3e9a-e9d0-6d88-0f4a233f19e1@baylibre.com>
Date:   Thu, 21 Jul 2022 19:55:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH] Add MagicBox M16S support
Content-Language: en-US
To:     Zhang Ning <zhangn1985@qq.com>
Cc:     robh+dt@kernel.org, linux-amlogic@lists.infradead.org,
        devicetree@vger.kernel.org
References: <tencent_5FC75850BB8ECD9374E98461C38C41CAC506@qq.com>
 <050c3f94-5c65-d745-ffe7-6035e55a372f@baylibre.com>
 <tencent_C06302ED0F3660D25A133B0D4506EC17B908@qq.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <tencent_C06302ED0F3660D25A133B0D4506EC17B908@qq.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/07/2022 16:37, Zhang Ning wrote:
> On Mon, Jul 18, 2022 at 10:02:32AM +0200, Neil Armstrong wrote:
> 
> Thank you for review.
>> Hi,
>>
>> On 12/07/2022 16:24, Zhang Ning wrote:
>>> MagicBox M16S or MagicBox 3Pro is popular Tv box in China.
>>>
>>> it's gxm_q201_v1 according u-boot log.
>>> and it's almost same as Q201 reference design.
>>>
>>> add a simple dts to support this Tv box.
>>>
>>> Signed-off-by: Zhang Ning <zhangn1985@qq.com>
>>> ---
>>>    arch/arm64/boot/dts/amlogic/Makefile          |  1 +
>>>    .../dts/amlogic/meson-gxm-magicbox-m16s.dts   | 20 +++++++++++++++++++
>>>    2 files changed, 21 insertions(+)
>>>    create mode 100644 arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
>>>
>>> diff --git a/arch/arm64/boot/dts/amlogic/Makefile b/arch/arm64/boot/dts/amlogic/Makefile
>>> index 8773211df50e..e0907fb41829 100644
>>> --- a/arch/arm64/boot/dts/amlogic/Makefile
>>> +++ b/arch/arm64/boot/dts/amlogic/Makefile
>>> @@ -44,6 +44,7 @@ dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-libretech-cc.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-nexbox-a95x.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxl-s905x-p212.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxm-khadas-vim2.dtb
>>> +dtb-$(CONFIG_ARCH_MESON) += meson-gxm-magicbox-m16s.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxm-mecool-kiii-pro.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxm-minix-neo-u9h.dtb
>>>    dtb-$(CONFIG_ARCH_MESON) += meson-gxm-nexbox-a1.dtb
>>> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts b/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
>>> new file mode 100644
>>> index 000000000000..be543d65a529
>>> --- /dev/null
>>> +++ b/arch/arm64/boot/dts/amlogic/meson-gxm-magicbox-m16s.dts
>>> @@ -0,0 +1,20 @@
>>> +// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>>> +/*
>>> + * Copyright (c) 2022 Zhang Ning <zhangn1985@qq.com>
>>> + */
>>> +
>>> +/dts-v1/;
>>> +
>>> +#include "meson-gxm.dtsi"
>>> +#include "meson-gx-p23x-q20x.dtsi"
>>> +#include <dt-bindings/input/input.h>
>>> +#include <dt-bindings/leds/common.h>
>>> +
>>> +/ {
>>> +	compatible = "magicbox,m16s", "amlogic,s912", "amlogic,meson-gxm";
>>> +	model = "MagicBox M16S";
>>> +};
>>
>> The compatible should be documented in the DT bindings in:
>> Documentation/devicetree/bindings/arm/amlogic.yaml
> 
> I will update this part next version.
>>
>>> +&ethmac {
>>> +        phy-mode = "rmii";
>>> +        phy-handle = <&internal_phy>;
>>> +};
>>
>> Is the sd_emmc_a change incompatible with the M16S ?
> 
> sd_emmc_a is used as SDIO for wifi/bt. and wifi/bt works with this dtb.
> I checked mrvl-sd8997 DT bindings,  missing a lot of properties need
> by mrvl-sd8997.
> 
> I don't have schematics to fill these properties, need more time to
> check vendor OS or try each GPIO.

Ok fine no problem, you can push it later when you figure out the properties.

>>
>> Neil

Neil

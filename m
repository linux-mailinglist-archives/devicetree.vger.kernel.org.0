Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04CC45EBE93
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 11:28:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231366AbiI0J25 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 05:28:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbiI0J2h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 05:28:37 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52275AF0CC
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 02:28:35 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v28so1204580wrd.3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 02:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date;
        bh=3X71jgPXg+1alqFPpU+/3mDimmf52ETp0ZJlAFk/E/o=;
        b=z6KgShAv0W1DLcY21kMpPukJgMWCcit/PbW4j6VHqp/qWPb+h5E343lQva1WuYrac2
         phVMC3GXswSvrpWz9+wv9VpgN2954EShNpTAtzbANmXn6KVfbIo18gR+AqgyUbc2RIZW
         bfn06/ibQ/J7VKYWCuPLT6+nrSdrifxWymf0QQnzK9igyRdFvcIiMvTHQGNfwp6RZOlW
         J321TvZPI0BKX0yxuNjZnMzkTuwT1/bpoN9F9jt1toro8Y7sJ181X94TyleVounyy/E7
         UEaqg85sNuRosNWfDdDp2dQmix+3JDgU9tdf0AMhWk9B9Vv54Lk1cC7gltyjjdIisUNi
         AwAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date;
        bh=3X71jgPXg+1alqFPpU+/3mDimmf52ETp0ZJlAFk/E/o=;
        b=PV0g6tp0AN5iReDfkXEg7YZNQMXhzhtTAl9otMDW0Ew1zJl7OsrQQsxMN0QK2Dirl0
         t+iUt/A0C79v0RD6pVbaa66ynDIEFIgefQosWUbT9n81BQTONJh6eFxAtQhSD2V+bxMy
         i4/0sNpCGOOJLKlCV2i5vljWke+i8+nVyc8iYnxNUrst7oLt3zEyB9ZCuAY/jHF06reg
         wGCiO31kZrOaYIDpKgYJl9RvaoDFMN/WoWM3CmOqaIv2k6mqArwsaNaTSAp+CnNfRbH0
         fzGbU7/Ckj4vw/M25h8Se1FcF/UNGP7j6/S4I9624juvpXPNensnWW9p8PaR3zw2YdTC
         5zjA==
X-Gm-Message-State: ACrzQf2/aiSc7KmLsoXmW/5aAMYeO7iUbsBXJpawBPC4uOHbTf01UeDp
        cvUH0McqTSBqTQZ2BUHw6khkDQ==
X-Google-Smtp-Source: AMsMyM4W0H079weu2O9TWS4Qz8MrGzq0EJNtemPEv5s8UWQrTYaDAo6b7Bn36YZ4qCZAO8MIjyA4kw==
X-Received: by 2002:a5d:5944:0:b0:22a:c2d1:e3fe with SMTP id e4-20020a5d5944000000b0022ac2d1e3femr15788612wri.261.1664270913882;
        Tue, 27 Sep 2022 02:28:33 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:b771:c77b:f889:9833? ([2a01:e0a:982:cbb0:b771:c77b:f889:9833])
        by smtp.gmail.com with ESMTPSA id e18-20020adffd12000000b0022878c0cc5esm1246484wrr.69.2022.09.27.02.28.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Sep 2022 02:28:33 -0700 (PDT)
Message-ID: <6fe2be1b-faaf-86cd-8fcc-a919d30d65c6@linaro.org>
Date:   Tue, 27 Sep 2022 11:28:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH v8 1/4] perf/amlogic: Add support for Amlogic meson G12
 SoC DDR PMU driver
Content-Language: en-US
To:     Jiucheng Xu <jiucheng.xu@amlogic.com>,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Will Deacon <will@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Chris Healy <cphealy@gmail.com>,
        Jianxin Pan <jianxin.pan@amlogic.com>,
        Kelvin Zhang <kelvin.zhang@amlogic.com>
References: <20220916020320.2455580-1-jiucheng.xu@amlogic.com>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20220916020320.2455580-1-jiucheng.xu@amlogic.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Will, Mark,

On 16/09/2022 04:03, Jiucheng Xu wrote:
> This patch adds support Amlogic meson G12 series SoC
> DDR bandwidth PMU driver framework and interfaces.
> 
> The PMU not only can monitor the total DDR bandwidth,
> but also the bandwidth which is from individual IP module.
> 
> Example usage:
> 
>   $ perf stat -a -e meson_ddr_bw/total_rw_bytes/ -I 1000 sleep 10
> 
> - or -
> 
>   $ perf stat -a -e \
>     meson_ddr_bw/total_rw_bytes/,\
>     meson_ddr_bw/chan_1_rw_bytes,arm=1/ -I 1000 \
>     sleep 10
> 
> g12 SoC support 4 channels to monitor DDR bandwidth
> simultaneously. Each channel can monitor up to 4 IP modules
> simultaneously.
> 
> For Instance, If you want to get the sum of DDR bandwidth
> from CPU, GPU, USB3.0 and VDEC. You can use the following
> command parameters to display.
> 
>   $ perf stat -a -e \
>     meson_ddr_bw/chan_2_rw_bytes,arm=1,gpu=1,usb3_0=1,nna=1/ -I 1000 \
>     sleep 10
> 
> Other events are supported, and advertised via perf list.
> 
> Signed-off-by: Jiucheng Xu <jiucheng.xu@amlogic.com>
> ---
> Changes v7 -> v8:
>    - Add linux-amlogic@lists.infradead.org maillist for MAINTAINERS
>    - Change driver name from "amlogic,g12-ddr-pmu" to "meson-g12-ddr-pmu"
> 
> Changes v6 -> v7:
>    - Drop the Reported-by tag
> 
> Changes v5 -> v6:
>    - Add const for driver data
> 
> Changes v4 -> v5:
>    - Remove error message
>    - Use smp_processor_id() instead of raw_smp_processor_id()
>    - Remove EXPORT_SYMBOL()
>    - Use variant specific driver data for compatible
>    - Use module_platform_driver for modules_init/exit
>    - Change location of driver structures from .h  to .c
> 
> Changes v3 -> v4:
>    - No change
> 
> Changes v2 -> v3:
>    - Fix sh GCC 12.1.0 compiling warning
>    - Rename prefix aml to meson for files and code
> 
> Changes v1 -> v2:
>    - Remove inline to let GCC make the decisions
>    - Remove spinlock
>    - Remove ddr_cnt_accumulate()
>    - Remove the message which only indicate a bug
>    - Remove all dev_warn() message
>    - Use hweight64() helper instead of whole loop
>    - Remove setting of hwc
>    - Use for_each_set_bit() helper for bit loop
>    - Use sysfs_emit() in sysfs show
>    - Remove checking for bugs
>    - Replace irq_set_affinity_hint() to irq_set_affinity()
>    - Remove #ifdef CONFIG_OF
>    - Use devm_platform_ioremap_resource() instead of
>      platform_get_resource()&ioremap()
>    - Use platform_get_irq() instead of platform_get_resource()&ioremap()
>    - Replace IRQF_SHARED to IRQF_NOBALANCING
>    - Remove meaningless log like "init ok"
>    - Use compatible instead of creating new property to distinguish
>      different platform.
>    - Use the is_visible callback to avoid exposing unsupported fmt_attr
>    - Use module_platform_driver_probe() instead of module_init/exit

<snip>

Gentle ping, it seems all previous review comments were addressed, could you do another review round on this v8 ?

Thanks,
Neil

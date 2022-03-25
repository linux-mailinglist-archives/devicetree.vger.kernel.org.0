Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D3D824E7DEF
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:23:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230088AbiCYTbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 15:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229949AbiCYTbb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 15:31:31 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 020861E7A41
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:26:32 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id d7so12134250wrb.7
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 12:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=SrJbbfaddWfhMen20qeE+m66y7c5UtFQj6CzeAj6OjI=;
        b=pAIGj8V93uiAJjTlmDfKIrNSPI5B0Swb21IxwxtA2OT1fWA9xoWtkiYuFGd2YtrLzY
         EjVkBD6B6OmrGKVrwniwjA1oOEDGBS2ZdjYabLeHtK2EfbWaVmShnewTbHkTHXrSSYL+
         zsslkO+p6tDLQHUkKUSIEvBJmfH8l56kmYFnCYL+37Ra2wHkcGueG3Y1B2ViljRc+EuM
         LrWrAcCel0AEqINM6IG63ovAPuQyRjmPzK5ZvYVhbdJ8sD2TPyL0OQZO3Ub+DCq6kmvZ
         RY6L2ECQHMrKu293svlvJKkVFag++e46e2Y2UXlaiZ+38x9wz6VkDlGmuYNZuRiOv7Jz
         +kNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:organization:in-reply-to
         :content-transfer-encoding;
        bh=SrJbbfaddWfhMen20qeE+m66y7c5UtFQj6CzeAj6OjI=;
        b=ooiqFpadzdhmemjIEZG4KKOmaO+IdWzLXZ9YmVQDhB7OpWGIeRiMZxm3WBqKPyu1b4
         E8H1x5TX29h9/6oIAIf9gZ7IYXQbCfSww3kBQuUgcjJJuUDjrpDS0iPJ3RW14E4Qb+LZ
         zPWY0nkcQSsJ4AZbc/1+FblzvqRYuCAPBuvjGYxfR7vyG/iyjuXnHwgoTitd4KZgwwFh
         63RrLjQ65TMX00XsnSYBNA8HTbQBwMpy1/ULhEwapuvCn76FKmH1nwJm4WGlJBpkb13T
         9bzuFIsgmEHZpAU6AZYnfCsLCe26XVX9GquMQqbEo9GLMsVBQQPzshc+J0gmnlPRgbaI
         wG+Q==
X-Gm-Message-State: AOAM531ZEUTaMNBPqCUZlfTfe9eKBG5JFwpKzotIbsVaNQYB17nNd9iV
        Wx06JqJmgwEEsG0xFAc2hm8hL6pLNihWKaXQ
X-Google-Smtp-Source: ABdhPJwUgBLSDvNV1NlBzs98fMN9ijZv4koUdOJmoiCaJvLygneQGawLQNsV+XEZue+1J6bM2ic1iw==
X-Received: by 2002:a05:6000:1a8d:b0:204:39fa:d21c with SMTP id f13-20020a0560001a8d00b0020439fad21cmr9858181wry.9.1648229580850;
        Fri, 25 Mar 2022 10:33:00 -0700 (PDT)
Received: from ?IPV6:2001:861:44c0:66c0:d3b0:47bd:8485:31cd? ([2001:861:44c0:66c0:d3b0:47bd:8485:31cd])
        by smtp.gmail.com with ESMTPSA id 11-20020a05600c26cb00b0037ff53511f2sm8544986wmv.31.2022.03.25.10.32.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 10:33:00 -0700 (PDT)
Message-ID: <e32a02a0-1f09-3038-81cb-54c632329dfa@baylibre.com>
Date:   Fri, 25 Mar 2022 18:32:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/3] arm64: meson: add dts bluetooth node for JetHub H1
Content-Language: en-US
To:     Vyacheslav Bocharov <adeep@lexina.in>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Vyacheslav Bocharov <devel@lexina.in>
References: <20220325165501.81551-1-adeep@lexina.in>
 <20220325165501.81551-2-adeep@lexina.in>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
In-Reply-To: <20220325165501.81551-2-adeep@lexina.in>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 25/03/2022 17:54, Vyacheslav Bocharov wrote:
> From: Vyacheslav Bocharov <devel@lexina.in>
> 
> Add bluetooth node for RTL8822CS uart to JetHub H1 dts file.
> 
> Signed-off-by: Vyacheslav Bocharov <adeep@lexina.in>
> ---
>   .../boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts  | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> index 6eafb908695f..a5ee7ed17efa 100644
> --- a/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> +++ b/arch/arm64/boot/dts/amlogic/meson-gxl-s905w-jethome-jethub-j80.dts
> @@ -213,6 +213,11 @@ &uart_A {
>   	pinctrl-0 = <&uart_a_pins>, <&uart_a_cts_rts_pins>;
>   	pinctrl-names = "default";
>   	uart-has-rtscts;

Please add a blank here to match other DT files.

> +	bluetooth {
> +		compatible = "realtek,rtl8822cs-bt";
> +		enable-gpios  = <&gpio GPIOX_17 GPIO_ACTIVE_HIGH>;
> +		host-wake-gpios = <&gpio GPIOX_18 GPIO_ACTIVE_HIGH>;
> +       };
>   };
>   
>   &uart_C {


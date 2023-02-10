Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4E12D691973
	for <lists+devicetree@lfdr.de>; Fri, 10 Feb 2023 08:59:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231139AbjBJH7T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Feb 2023 02:59:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231126AbjBJH7S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Feb 2023 02:59:18 -0500
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29CB5367C0
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 23:59:17 -0800 (PST)
Received: by mail-wm1-x32d.google.com with SMTP id o36so3195779wms.1
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 23:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=+XjYK20Z08CMJ61Ae3bO9K0sPsABFePhKjoRZaxPj0w=;
        b=FwTQagCqHZBABtqT7c2YOwFGXCN4n/i8P6ss2C3cdcne9PvIgZ/n8RNBzfdYdd5Si8
         Pv0dZMkhvEzjYq1/ZvR5aM17Wa8lfkRaxx+zKN31zB6lqcxxvx/ghEx7UXpyKE07uVYd
         R5jmmUgGvEP21U38aEB7bWT/JGCDAF/YywEOCMtkVkloY+NC0nZJXF4GxE141qiTx8iB
         hdSn7Irwyzgwpsqw9CppmGO7ctpmJqS1jxRHQxDtGxr4Whih4Pt1j0nJ95qemacPqyq/
         AJCkDQXp+PGRV1RlvHdcfWXRnP+C6+GFFvrwm8q3B8xBUqKhJoJr/TcKZ2ckVA6UODnE
         MamQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:organization:references:cc:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+XjYK20Z08CMJ61Ae3bO9K0sPsABFePhKjoRZaxPj0w=;
        b=E7iAicMv/v5gHBMdIOhXFIKLnQR1gbupJ3DL/HaEd4piJ4bArI4PFgudFjLXU7MuTu
         PW3ae19BHk6ULmEB191XXZ+MZLiyhBMNXrWB/M9qY2w3qfYRcRRQF1A3pPjY8zvcpEkO
         3CZQwaVI8rs2BWxgpWNa5u4FddhtkskuobP4oznnVG9jOkAm/b2LVZZ6dzyd2cSrwmqf
         kvihiGNhxOwXssy4jPXbDBOenVgLvE7bXtpnFD5Qrpd5oFISqSFBHYCQredFIi8TWOHN
         UDQe0dA/hjR51sItYSGPhxonQyukE+yIbbW2AIgZmEsXqsBWnVIW+1qCfbNb4CNbSPL3
         jl7Q==
X-Gm-Message-State: AO0yUKXt9+uI+ZWccymSd/B22y4dZ+a/Ni8NSlgiqyVcYgBgxkoCBUxE
        q+nijoJLBkAPMzmUjdNOwGT4TQ==
X-Google-Smtp-Source: AK7set/m1cnuBqZci0vEZGzyB1pxqMFjdCFZt8wrHM88utT0HRNglMauCq2td0Bpzoz6YabJk2s4iw==
X-Received: by 2002:a05:600c:1819:b0:3dc:58a2:3900 with SMTP id n25-20020a05600c181900b003dc58a23900mr11965948wmp.29.1676015955694;
        Thu, 09 Feb 2023 23:59:15 -0800 (PST)
Received: from ?IPV6:2a01:e0a:982:cbb0:5a65:5553:55cf:3027? ([2a01:e0a:982:cbb0:5a65:5553:55cf:3027])
        by smtp.gmail.com with ESMTPSA id o41-20020a05600c512900b003dc4aae4739sm8320580wms.27.2023.02.09.23.59.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 23:59:15 -0800 (PST)
Message-ID: <b3d972c8-6230-c818-7e80-968996985ac3@linaro.org>
Date:   Fri, 10 Feb 2023 08:59:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 0/3] arm64: dts: amlogic: Make mmc host controller
 interrupts level-sensitive
Content-Language: en-US
To:     Heiner Kallweit <hkallweit1@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     "open list:ARM/Amlogic Meson..." <linux-amlogic@lists.infradead.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Nan Li <nan.li@amlogic.com>,
        Vyacheslav Bocharov <adeep@lexina.in>
References: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
Organization: Linaro Developer Services
In-Reply-To: <8a99341b-8546-8f90-c9a5-087d927cac48@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2023 21:09, Heiner Kallweit wrote:
> The usage of edge-triggered interrupts lead to lost interrupts under load,
> see [0]. This was confirmed to be fixed by using level-triggered
> interrupts.
> The report was about SDIO. However, as the host controller is the same
> for SD and MMC, apply the change to all mmc controller instances.
> 
> [0] https://www.spinics.net/lists/linux-mmc/msg73991.html
> 
> This series replaces the prior "TEST"-annotated patch.
> 
> Heiner Kallweit (3):
>    arm64: dts: meson-axg: Make mmc host controller interrupts
>      level-sensitive
>    arm64: dts: meson-g12-common: Make mmc host controller interrupts
>      level-sensitive
>    arm64: dts: meson-gx: Make mmc host controller interrupts
>      level-sensitive
> 
>   arch/arm64/boot/dts/amlogic/meson-axg.dtsi        | 4 ++--
>   arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 6 +++---
>   arch/arm64/boot/dts/amlogic/meson-gx.dtsi         | 6 +++---
>   3 files changed, 8 insertions(+), 8 deletions(-)
> 

For whole serie:
Acked-by: Neil Armstrong <neil.armstrong@linaro.org>

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE84F74F87D
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 21:42:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229884AbjGKTmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 15:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjGKTmn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 15:42:43 -0400
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0564719B
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 12:42:42 -0700 (PDT)
Received: by mail-wm1-x336.google.com with SMTP id 5b1f17b1804b1-3fbc59de009so63807395e9.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 12:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1689104560; x=1691696560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lJ1RcdZZpyuRe9pXtS8WaVk1380uBjtjgX9+u1Db7bQ=;
        b=QL8XSJmObvBcStejF/c4TJQUctXrCvwpkjpGpc2swgM4DKSileh/RlG15b5uK12GDp
         1+zvrZ5ab1IwQ+eRz4cdJRsSYYOlqiHn5xtYlqBl9TYknaJsdfF88rd7LH/PCUCibUsM
         oqE4aEcPYnvjbsvuUlD6E7ElBAE4IS11iN9RuBM/7YPuZh+PryWc/ljxQCBMwzD3Vwu+
         3zUWhRgaUbToLOUIFVvUOk1H2ObLrkFYodMUflBuG2lVrbC6MNRho4VJ0Z6jsbAWbIji
         8HgfdtKalm9qJ7iohnz3M8MP4ZayK+VMOCuKJLheScDx9Q7fLMxfflrbKcjc2BqdvOhq
         y3eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689104560; x=1691696560;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lJ1RcdZZpyuRe9pXtS8WaVk1380uBjtjgX9+u1Db7bQ=;
        b=lSiFvUiXDvS82/r6s9c/eYdWlrtUPflfN28suBkHsNEv3hbB97Ariw4iWl8ZY5ij2s
         UFziIkIdMHMpa+P0lbQNIg2AEnjFIZy7MQgClaJNfF96uZ0ZPRMM+Sn0G3tjF6Y7Ds66
         sGeMNnwSOmn6oNbJ49OWA0yrzpGkeuTHv395SS2LVf51Gm0Aupd76Q2Ek841Wc3NSXGZ
         gkWXi5w2yaAgEOcy0HWTqKm2RiAMV+aI5RYvKa8c7dAUgEvkY7SLH+BEHk+FutMVIB2S
         36NjctxuSd0nN2nZqx+ogYulsGtvfMKXqeZpTqNLwWS3Oq6nygPfVWLQOojROdAqrCIt
         l6AQ==
X-Gm-Message-State: ABy/qLb/Q6ZCcBEXfDWRgXCdDwAyaXqFGcQU+EEHMFjt1wnOQSdpEu4d
        31YUdg+sDwiEUZCTFV5Uei4=
X-Google-Smtp-Source: APBJJlEtvhLTfkFit8PHcMh/RDUC+a2TIMlcIRhIhVWtCdQhfcne4p8i9P6A/o56BMYWMYQJOn+4Pw==
X-Received: by 2002:a05:600c:220b:b0:3fc:85c:5ef7 with SMTP id z11-20020a05600c220b00b003fc085c5ef7mr9682597wml.22.1689104560109;
        Tue, 11 Jul 2023 12:42:40 -0700 (PDT)
Received: from jernej-laptop.localnet (82-149-1-233.dynamic.telemach.net. [82.149.1.233])
        by smtp.gmail.com with ESMTPSA id u18-20020a05600c211200b003fbbe41fd78sm3325137wml.10.2023.07.11.12.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 12:42:39 -0700 (PDT)
From:   Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Felix Moessbauer <felix.moessbauer@siemens.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Quirin Gylstorff <quirin.gylstorff@siemens.com>,
        manuel.matzinger@siemens.com, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev,
        Felix Moessbauer <felix.moessbauer@siemens.com>
Subject: Re: [PATCH 1/1] arm: dts: Enable device-tree overlay support for sun8i-h3 pi
 devices
Date:   Tue, 11 Jul 2023 21:42:38 +0200
Message-ID: <1830379.atdPhlSkOF@jernej-laptop>
In-Reply-To: <20230627133703.355893-1-felix.moessbauer@siemens.com>
References: <20230627133703.355893-1-felix.moessbauer@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Dne torek, 27. junij 2023 ob 15:37:03 CEST je Felix Moessbauer napisal(a):
> Add the '-@' DTC option for the sun8i-h3 pi-class devices. This option
> populates the '__symbols__' node that contains all the necessary symbols
> for supporting device-tree overlays (for instance from the firmware or
> the bootloader) on these devices.
> 
> These devices allow various modules to be connected and this enables
> users to create out-of-tree device-tree overlays for these modules.
> 
> Please note that this change does increase the size of the resulting DTB
> by ~30%. For example, with v6.4 increase in size is as follows:
> 
> 22909 -> 29564 sun8i-h3-orangepi-lite.dtb
> 24214 -> 30935 sun8i-h3-bananapi-m2-plus.dtb
> 23915 -> 30664 sun8i-h3-nanopi-m1-plus.dtb
> 22969 -> 29537 sun8i-h3-nanopi-m1.dtb
> 24157 -> 30836 sun8i-h3-nanopi-duo2.dtb
> 24110 -> 30845 sun8i-h3-orangepi-plus2e.dtb
> 23472 -> 30037 sun8i-h3-orangepi-one.dtb
> 24600 -> 31410 sun8i-h3-orangepi-plus.dtb
> 23618 -> 30230 sun8i-h3-orangepi-2.dtb
> 22170 -> 28548 sun8i-h3-orangepi-zero-plus2.dtb
> 23258 -> 29795 sun8i-h3-nanopi-neo-air.dtb
> 23113 -> 29699 sun8i-h3-zeropi.dtb
> 22803 -> 29270 sun8i-h3-nanopi-neo.dtb
> 24674 -> 31318 sun8i-h3-nanopi-r1.dtb
> 23477 -> 30038 sun8i-h3-orangepi-pc.dtb
> 24622 -> 31380 sun8i-h3-bananapi-m2-plus-v1.2.dtb
> 23750 -> 30366 sun8i-h3-orangepi-pc-plus.dtb
> 
> Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> ---
> Please note that I only tested the overlay on the sun8i-h3-nanopi-neo
> device. However, the devices are quite similar and in general the
> change to add symbols should be pretty safe. Similar patches have been
> applied to various other devices in the past without any negative
> effect (except for the increased size).

I'm not a fan of this approach. What's wrong with letting kernel builders 
specify this flag on their own at compile time? That way size is still 
completely in domain of builder.

Best regards,
Jernej

> 
> Felix Moessbauer
> Siemens AG
> 
>  arch/arm/boot/dts/allwinner/Makefile | 19 +++++++++++++++++++
>  1 file changed, 19 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/allwinner/Makefile
> b/arch/arm/boot/dts/allwinner/Makefile index 589a1ce1120a..eebb5a0c873a
> 100644
> --- a/arch/arm/boot/dts/allwinner/Makefile
> +++ b/arch/arm/boot/dts/allwinner/Makefile
> @@ -179,6 +179,25 @@ dtb-$(CONFIG_MACH_SUN7I) += \
>  	sun7i-a20-pcduino3-nano.dtb \
>  	sun7i-a20-wexler-tab7200.dtb \
>  	sun7i-a20-wits-pro-a20-dkt.dtb
> +
> +# Enables support for device-tree overlays for all pis
> +DTC_FLAGS_sun8i-h3-orangepi-lite := -@
> +DTC_FLAGS_sun8i-h3-bananapi-m2-plus := -@
> +DTC_FLAGS_sun8i-h3-nanopi-m1-plus := -@
> +DTC_FLAGS_sun8i-h3-nanopi-m1 := -@
> +DTC_FLAGS_sun8i-h3-nanopi-duo2 := -@
> +DTC_FLAGS_sun8i-h3-orangepi-plus2e := -@
> +DTC_FLAGS_sun8i-h3-orangepi-one := -@
> +DTC_FLAGS_sun8i-h3-orangepi-plus := -@
> +DTC_FLAGS_sun8i-h3-orangepi-2 := -@
> +DTC_FLAGS_sun8i-h3-orangepi-zero-plus2 := -@
> +DTC_FLAGS_sun8i-h3-nanopi-neo-air := -@
> +DTC_FLAGS_sun8i-h3-zeropi := -@
> +DTC_FLAGS_sun8i-h3-nanopi-neo := -@
> +DTC_FLAGS_sun8i-h3-nanopi-r1 := -@
> +DTC_FLAGS_sun8i-h3-orangepi-pc := -@
> +DTC_FLAGS_sun8i-h3-bananapi-m2-plus-v1.2 := -@
> +DTC_FLAGS_sun8i-h3-orangepi-pc-plus := -@
>  dtb-$(CONFIG_MACH_SUN8I) += \
>  	sun8i-a23-evb.dtb \
>  	sun8i-a23-gt90h-v4.dtb \





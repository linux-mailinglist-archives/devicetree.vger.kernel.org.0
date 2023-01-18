Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA763672478
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 18:07:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230413AbjARRHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 12:07:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40434 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229901AbjARRHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 12:07:53 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB954ABCE
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:07:51 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id l8so8079379wms.3
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 09:07:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/yFy8KCBDkivXTsc037TVfu+xpAhAeGSdUN2o0NSQbQ=;
        b=kEKoTicM2490dvrih0L67d9qgTL6WjFGof1+p/XpMA1Brx09Ml+8+pdigM3QG768vn
         fLsywnFO1nhIaZ8lUnhEluMJIoY69jeFxxmV//OpfEIpn5aiL9FcyQhjXYQRR9RDx2Et
         y5SYsON8Drw9dEaQckmluMfZf3tPtoMBJqqbV1q2mfRJyFfIJxDcfV7OH/DCL/PzQ0Ea
         dgSnwv4lAM973PsRxVl356KQHiwpvuNbXBB/RHus6VfpGgniSmlQYCKTKJEU0MWzuPjM
         SnWNYDui9C6pzg37zkBhI2JrphKUVMO7deHmDtzcSvphnINQwUXJCX0f68QIkQpZjF2z
         obQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/yFy8KCBDkivXTsc037TVfu+xpAhAeGSdUN2o0NSQbQ=;
        b=AkQLX0P62gP2GbUrzdDN0Q3MzLbf/XeswyoguWRO4Zzrtx5+yvY+DBHTYBPAp2QfEd
         WYeZYWsX1e81CWK4CC8UMESYBERQ0mGygdKp66mRiv/3RKGzQmEwUJQeUBi8oeBMIDUs
         kTUxrTUr/spUOa4IoOdu3M6Omn0eLhpwdrjt+Hq6BibLLhOKn1xl1uui2ZLsLK3QCPcK
         ooifphghslrEMCf5Cgu4NC2KsOus/I12YWz/0NjnSzhd3P5+f4F+aRMb28P+oVflVLPC
         zCtRQ7vch/tHHbtCYOZxTaMJLguvMHVxY6KMvxWHsI9PI9FN0lumofXsHubWvQbGJijq
         yJzQ==
X-Gm-Message-State: AFqh2kqJqnwfAZnrpcgl7UEIsMNkNbjQgw8vSCwRy8RZPOseQhmn1uuZ
        Y6pR02RW7zAwnf8UdCj/mHbxRw==
X-Google-Smtp-Source: AMrXdXuJxET6y4/IjToh8EiBp+HlqhHTYbthvsdR+drFWhaPazgTyEQXysWCb3omvuNjlh1aEkHPtQ==
X-Received: by 2002:a05:600c:2116:b0:3d6:10e:68a8 with SMTP id u22-20020a05600c211600b003d6010e68a8mr3463680wml.0.1674061670163;
        Wed, 18 Jan 2023 09:07:50 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id b19-20020a05600c4e1300b003db0647645fsm2502769wmq.48.2023.01.18.09.07.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Jan 2023 09:07:49 -0800 (PST)
Message-ID: <cc820b4b-d3b7-9972-a07f-0c9f94f8d175@linaro.org>
Date:   Wed, 18 Jan 2023 18:07:47 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH 3/3] arm64: dts: ti: iot2050: Add support for M.2 variant
Content-Language: en-US
To:     Jan Kiszka <jan.kiszka@siemens.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Bao Cheng Su <baocheng.su@siemens.com>,
        Chao Zeng <chao.zeng@siemens.com>
References: <cover.1674059300.git.jan.kiszka@siemens.com>
 <fe57b923d3f290dceea4f54724459015a7bad899.1674059300.git.jan.kiszka@siemens.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <fe57b923d3f290dceea4f54724459015a7bad899.1674059300.git.jan.kiszka@siemens.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2023 17:28, Jan Kiszka wrote:
> From: chao zeng <chao.zeng@siemens.com>
> 
> The M.2 variant comes with 2 slots, one B-keyed and another one E-keyed.
> They are configured by the firmware during startup. Also the device tree
> will be adjusted according to the detect or manually configured
> interface mode by the firmware. The kernel only carries a single
> configuration as base device tree. It has to be built with a symbols
> node so that the firmware can apply overlays for the connector modes.
> 
> Signed-off-by: chao zeng <chao.zeng@siemens.com>
> [Jan: refactored to a single DT]
> Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
> ---
>  arch/arm64/boot/dts/ti/Makefile               |   3 +
>  .../dts/ti/k3-am6548-iot2050-advanced-m2.dts  | 122 ++++++++++++++++++
>  2 files changed, 125 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/ti/k3-am6548-iot2050-advanced-m2.dts
> 
> diff --git a/arch/arm64/boot/dts/ti/Makefile b/arch/arm64/boot/dts/ti/Makefile
> index cf7c509538a4..13e79bf7e804 100644
> --- a/arch/arm64/boot/dts/ti/Makefile
> +++ b/arch/arm64/boot/dts/ti/Makefile
> @@ -11,6 +11,9 @@ dtb-$(CONFIG_ARCH_K3) += k3-am6528-iot2050-basic.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am6528-iot2050-basic-pg2.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced.dtb
>  dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-pg2.dtb
> +dtb-$(CONFIG_ARCH_K3) += k3-am6548-iot2050-advanced-m2.dtb

This does not look like proper order.

> +
> +DTC_FLAGS_k3-am6548-iot2050-advanced-m2 += -@
>  

Best regards,
Krzysztof


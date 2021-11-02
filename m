Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B14AA4428E6
	for <lists+devicetree@lfdr.de>; Tue,  2 Nov 2021 08:53:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230460AbhKBH4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Nov 2021 03:56:02 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:41592
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229505AbhKBH4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Nov 2021 03:56:01 -0400
Received: from mail-lf1-f72.google.com (mail-lf1-f72.google.com [209.85.167.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 02BEC3F1A9
        for <devicetree@vger.kernel.org>; Tue,  2 Nov 2021 07:53:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1635839606;
        bh=4VeAqz3jSwIuxpiAMz+s1A17LIRDINxx7QefFsdrbvc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=dXLOIFMaXAXbTMRtdnrvPvHTBhT5jwubiU3Ji7+s7klvWbEsE1AlHCtdw8lbTTQpV
         CNbcrJ4ttJLlH0KmyGy7seQEBx/qQANlwbaazb9Vfp+zitt7kNEuEqHnMgOFY6D9S9
         Qs4nUdz+WpP8bJdpfZ1k13MtYHCyvJ5GB9hZGZ9uFigNc5BGzCXhr/agM40GxtniEr
         UhECjT0k4H4BCKaGUIklxvYD5ZpBDQWSjT4tGi3gsrIla72HusJdiQ/CN2dsFOHdTf
         QzxO927IZ/3RfyBxFLugzxieiNGJQUSVoTFTHxjr/XHfVXU7A62FO/wPFAq2YtJTyg
         VRKMyyYdsSnLg==
Received: by mail-lf1-f72.google.com with SMTP id i1-20020a056512318100b003ffd4e89eb9so6067145lfe.19
        for <devicetree@vger.kernel.org>; Tue, 02 Nov 2021 00:53:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4VeAqz3jSwIuxpiAMz+s1A17LIRDINxx7QefFsdrbvc=;
        b=cr7ObTGjXgaanpHJB3XEUhb/p2hylALnapUh8Q0FoQClA9mjWTdayIynxz4fI+6YnI
         JWbmD3hhlcKH1go2T2BxyXRGPzyNgm4icE+1xwLmgJ/0+fko74wovrUlFXgnldYg403a
         FSZQRu0wNH32AUvhI/tqP+DT47DvNeiHVg0Ejt0M+QH401ovwt1P7Z+lIb7Z2OeugLZ1
         kWxpOevEj9TEKvXRNSsi15GMWRZWsZY189Ge+6A+vYZscedOnIZzcQ9Z4w1WfZd1vsu3
         KOi30za6BsLrPBO/n7VVXcvXgzcQrfBL3FzHhZIRio4W+48drdbtJbLu1D8CY4yIcTMG
         CsUA==
X-Gm-Message-State: AOAM533/Rws2yBpptAllZRCuGi/JfKAMZolDFOe3ybe5W8s8p1EkneVK
        4LJbwFg2+m3zMBXAwtAy/6ebaR0ThaXD39RzRQtK2DPJ0tGeWAFlU/3qzaDQH3oxhozmpfGYEIh
        TY/LGh6Dmx9yx5MPZMuRBdvJMZsfHbRsHmKBupzo=
X-Received: by 2002:a2e:391b:: with SMTP id g27mr37424588lja.126.1635839605405;
        Tue, 02 Nov 2021 00:53:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJywtLecTXbvt/DmqUThsqiYEapd5wq5piKqf14nTC+WAQVrWN89kNfMyfjFoZlxRCLA8cq3fg==
X-Received: by 2002:a2e:391b:: with SMTP id g27mr37424575lja.126.1635839605264;
        Tue, 02 Nov 2021 00:53:25 -0700 (PDT)
Received: from [192.168.3.67] (89-77-68-124.dynamic.chello.pl. [89.77.68.124])
        by smtp.gmail.com with ESMTPSA id z17sm687463ljk.97.2021.11.02.00.53.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Nov 2021 00:53:24 -0700 (PDT)
Message-ID: <59b76525-079d-f672-5355-20d92ecd4d98@canonical.com>
Date:   Tue, 2 Nov 2021 08:53:24 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.1.2
Subject: Re: [PATCH v2 1/2] ARM: dts: exynos/i9100: Fix BCM4330 Bluetooth
 reset polarity
Content-Language: en-US
To:     Paul Cercueil <paul@crapouillou.net>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
References: <20211031234137.87070-1-paul@crapouillou.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20211031234137.87070-1-paul@crapouillou.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/11/2021 00:41, Paul Cercueil wrote:
> The reset GPIO was marked active-high, which is against what's specified
> in the documentation. Mark the reset GPIO as active-low. With this
> change, Bluetooth can now be used on the i9100.
> 
> Fixes: 8620cc2f99b7 ("ARM: dts: exynos: Add devicetree file for the Galaxy S2")
> Cc: stable@vger.kernel.org
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  arch/arm/boot/dts/exynos4210-i9100.dts | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Looks good, thanks. I'll take it after the merge window.


Best regards,
Krzysztof

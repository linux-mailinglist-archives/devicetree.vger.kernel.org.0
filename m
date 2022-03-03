Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E49AE4CC03F
	for <lists+devicetree@lfdr.de>; Thu,  3 Mar 2022 15:47:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234161AbiCCOsi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Mar 2022 09:48:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233688AbiCCOsi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Mar 2022 09:48:38 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA1754CD7E
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 06:47:51 -0800 (PST)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7EB243F5F1
        for <devicetree@vger.kernel.org>; Thu,  3 Mar 2022 14:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646318870;
        bh=CxzFP3tGzxrqCnnX51QcUCT9fYSeSWG8X2huDv3i2u4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=lHDG6IhfiNPmuzwUvILD8Tq9ZMew4wdjNyK6bdMx+r4gnfmYCV7m4wFjS0Lyht8ww
         bXWb6BF2Vw0t7QUL0OHaGb+AwI3K+09uiO/xthho4Jgoav4TgCSHxKk4PXBSIWslJD
         NmVffffIdf4W8dBJ0GytiwILq5tArZOp9t8UAQiJDI3JPC4DbTAFxkeSF3vFiQGvaj
         l4d/jOlPoFDisVyq7yBEuEVsV5IRKpeZ9DYWdIaQmUiblljQdbizlMuJE0Zc8VmGTZ
         iDJZBhKnyxwAdEpdUXXC0wdZKmQf0g3XHVR/ero2atkHGiZJsirVNddsxe6fMD579/
         a9fYvYOkXUrKA==
Received: by mail-ej1-f69.google.com with SMTP id y5-20020a1709060a8500b006da9258a34cso1080506ejf.21
        for <devicetree@vger.kernel.org>; Thu, 03 Mar 2022 06:47:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CxzFP3tGzxrqCnnX51QcUCT9fYSeSWG8X2huDv3i2u4=;
        b=IqtTGkBcqnlFFR2TmXt9T07dY6EghOb4Y/CvLy/Kgl/sM6QvEFxnkOfaGwBt1vchmt
         r4F1zHtdUhGBxMw3LNMNvlfRQvFOEer9UvqWCLcF5FCvAZOR6lOivJbd+9wNjcTNDEc3
         5LyvicM6W3iRi+vZ+YFD8ND+mqv8H0ZflIM9wDCtTOwH3z5Ek6MpYmytyMyGGe+F2OE3
         W07zHAxg3jw831A+gjQRZN/vmXsRAxM1S6gAea2CuWxAuBasEgHUI06U2i31gcRHcpUM
         KxJZkb2WdAVMNBr0XHRSqy63KxFWrrwNxqK4wOK9IrlVs6c3HGPwYIyerUBcsJIMvKa0
         NZaw==
X-Gm-Message-State: AOAM5329j4A8buePZPU1DgrN2B2nXuzhufVRwKeIi0GC4uzcUu8bbwss
        oDOPSqLY+2PQj9JiPsuwnKHZXMfgrj+7HvoYZ6XPok1vEbNe6YO1m3qAVtDFah7O2WN/yduLuHu
        VPER2IGWSABRAd+VLlT5lHfzeM0gaetMz6A+nLxQ=
X-Received: by 2002:a50:da4b:0:b0:40f:28f0:c2c0 with SMTP id a11-20020a50da4b000000b0040f28f0c2c0mr34599587edk.374.1646318869543;
        Thu, 03 Mar 2022 06:47:49 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzgdcMT370bTQ0EzwypM8MzX+F1/sOFiaay++W+IjgNwLT95VAPst9y79sRHA7O5pCw2Q1isA==
X-Received: by 2002:a50:da4b:0:b0:40f:28f0:c2c0 with SMTP id a11-20020a50da4b000000b0040f28f0c2c0mr34599577edk.374.1646318869389;
        Thu, 03 Mar 2022 06:47:49 -0800 (PST)
Received: from [192.168.0.137] (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id gs39-20020a1709072d2700b006d3ed4f51c6sm818854ejc.0.2022.03.03.06.47.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Mar 2022 06:47:48 -0800 (PST)
Message-ID: <be111013-a726-629e-2ce8-fcab9d26a3a2@canonical.com>
Date:   Thu, 3 Mar 2022 15:47:48 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 3/5] ARM: dts: at91: Use the generic "rtc" node name
 for the rtt IPs
Content-Language: en-US
To:     Sergiu Moga <sergiu.moga@microchip.com>, a.zummo@towertech.it,
        alexandre.belloni@bootlin.com, robh+dt@kernel.org,
        nicolas.ferre@microchip.com, claudiu.beznea@microchip.com
Cc:     linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220303140626.38129-1-sergiu.moga@microchip.com>
 <20220303140626.38129-4-sergiu.moga@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220303140626.38129-4-sergiu.moga@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/03/2022 15:06, Sergiu Moga wrote:
> As the DT specification recommends, the node names should be of a
> generic nature. Thus, the most appropriate generic node name for
> the at91 rtt IPs is the "rtc" node name.
> 
> Signed-off-by: Sergiu Moga <sergiu.moga@microchip.com>
> ---
>  arch/arm/boot/dts/sam9x60.dtsi | 2 +-
>  arch/arm/boot/dts/sama7g5.dtsi | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

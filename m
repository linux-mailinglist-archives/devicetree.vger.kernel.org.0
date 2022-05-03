Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D943D518707
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 16:44:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234369AbiECOrx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 10:47:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41586 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235719AbiECOrx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 10:47:53 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF26B38DAA
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 07:44:20 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id p4so20189674edx.0
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 07:44:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=aY4s82XwSrqXdVrj1Gg/ZPd4J9t1Ccsavp0PTdRcSPw=;
        b=etVEBmTj3fnk5cOi9G+OhkVYOhQUkUlnSMAJFU4KyxOD0KIU41vOb98UqDOZuQ3E9E
         oZC8hEg0hnEhxDxjjvDrcwQqS5/ZFuwz1ewdeRmHJpG20jN5D4MZJsAKGR+hnsFenmjj
         MVRJD6cfM+TF0oCgDJhEXCbVmTqTnQNALopxxnQt1fD+1ieXzBeLiMsPcW38cf8T/alh
         Q8jsNkwqVL+20us+HSrr0+LuUTftNoNMoXcByfYbqGOXgcNe25Q83B8Fa+YYNQmcJ8Cr
         Y5qPow+KWvn4Y6D+NXrRRoFCa+djW6rMcybwXjP11sNwEUhM80xeqJAkEXgZd5/SzJyf
         rqlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=aY4s82XwSrqXdVrj1Gg/ZPd4J9t1Ccsavp0PTdRcSPw=;
        b=TqBbl6/va8SDoobU9uWwxgQQYY+z8RGSlfwYmX+hOZ3x2vwGXeDKHIgrZdKwkxuG9m
         8yWOqLgO3tw60uG8QguVmQf8REIy0l7SKMacwz8UVvvDMTouqQA8/qGnJFBocKTPnBqv
         UbVoDRkdk/zu6HX9ZKm5xabfv/FIYXPpUV/TZKJ05Uk1SYBvbWDrStc7UY7MyJN6GsVz
         OgZFfbtClgmWsd7xcRvxb3+bgxc+vcgBZfixnLtTO7QOOGFP8h/xAHNq2OtSjY4I4+se
         Mm+OEHRZETD43aOR/tioFg0wvVMJoS0Ngcr4CEeGDp17uJ9KP/75AG61n+M7pOTdmAYa
         OO9w==
X-Gm-Message-State: AOAM533zGC31cKbHdjA2iFbqWStb7xUlt2HJeM1CrsabmtNxM9q0pr37
        mhSnXE5pCiEfWrO3t53aH6PRMQ==
X-Google-Smtp-Source: ABdhPJxpfh0y/LqVlOfJQR1BB3AT0qQiNxhOj7CgucuGZhv207wHkqq8MYHox38zzpF8jJTWjtV2mQ==
X-Received: by 2002:aa7:d9d6:0:b0:425:dafc:2fc6 with SMTP id v22-20020aa7d9d6000000b00425dafc2fc6mr17994605eds.340.1651589059417;
        Tue, 03 May 2022 07:44:19 -0700 (PDT)
Received: from [192.168.0.203] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id gv26-20020a1709072bda00b006f3a8b81ff7sm4682592ejc.3.2022.05.03.07.44.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 07:44:17 -0700 (PDT)
Message-ID: <d91eaef9-562b-27ff-9164-518b0666d7a5@linaro.org>
Date:   Tue, 3 May 2022 16:44:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 1/2] dt-bindings: power: Add MediaTek Helio X10 MT6795
 power domains
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com,
        chun-jie.chen@mediatek.com, weiyi.lu@mediatek.com,
        mbrugger@suse.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com,
        nfraprado@collabora.com
References: <20220503141441.125852-1-angelogioacchino.delregno@collabora.com>
 <20220503141441.125852-2-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220503141441.125852-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/05/2022 16:14, AngeloGioacchino Del Regno wrote:
> Add power domains dt-bindings for MediaTek Helio X10 (MT6795).
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../power/mediatek,power-controller.yaml         |  2 ++
>  include/dt-bindings/power/mt6795-power.h         | 16 ++++++++++++++++
>  2 files changed, 18 insertions(+)
>  create mode 100644 include/dt-bindings/power/mt6795-power.h

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

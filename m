Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 04DC3676D72
	for <lists+devicetree@lfdr.de>; Sun, 22 Jan 2023 15:12:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229749AbjAVOMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Jan 2023 09:12:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229867AbjAVOMR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Jan 2023 09:12:17 -0500
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95CE0CDC0
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:12:15 -0800 (PST)
Received: by mail-wr1-x42e.google.com with SMTP id y1so4125901wru.2
        for <devicetree@vger.kernel.org>; Sun, 22 Jan 2023 06:12:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YG82L0RoEBAvkltMsCip5Uv53LK3ZaD/OzuanIsLGzc=;
        b=oXUQUoarmRTmP7vaRoOwyhSrzmYp3QQO0fVTByZ6lud8A6irRP0pzeIHRyAVs4yVwh
         /jrD4AMx57gGWwnSe5nTETmuicG2MVhkwSQQDMalK6XP+QpQKh3Z0QN9GnWMLpYyQecX
         s4mcLwiEJgh4Znn60LbwUY8CZaXADGKQ5aAabyTI89hOUyNrweJXHeKGjSXFNHr7blvt
         s3lRRTOKXkACittc9Vtb8ad46I6CNou25WwlwJl8Bj4ZDRkhSLhyaJnpnDhGBb6m7nsA
         is5yYqmPToYRcBQj4UpiYWxXR1uEN4Uy2/GAP+ucQI0qWmXlehihZYlnBwM2S4eBsu2t
         dR6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YG82L0RoEBAvkltMsCip5Uv53LK3ZaD/OzuanIsLGzc=;
        b=lf/jqRHbAD8MaBgQOieiCPiFhrew7BED0Ql6WuvfllchG1ps346RQzScc54szBPQ4K
         Q9dnf4zLtsT7zXRhyx58ZgQxqqScPdzTxWdNcD+dN22wE78NH47faqrthq3UQZGytC64
         WLAwAXnkvVtP9YqPceRzBRWK2TcCpZHj+E4SIt2+Gay9BGsk9fTC78+y9vBxnZfy+eeA
         b5dULS65A9Qy8zZBjNPFj2jVQZg+b57p/U8aCCXxMcgIw9Rq+siXzWb96pGXSx2MICZc
         JJAOgzBMesIToqNnGQaRaHhBrSmGW1/VF3c4T/8SYprIeAHc93va5lIpWbxmD/ARO+qB
         KgOQ==
X-Gm-Message-State: AFqh2krPpiz+WXnuHQLYVbup9JvNqoNKAYTBtHf82mvNxhkpxOS6QI51
        Onlx6puuWtwMZr5EgH3NoOnryA==
X-Google-Smtp-Source: AMrXdXtP3kYC9dpWUzgvePrlB30mdVsNjEDJzvwK+nxEqcGfoGJ5bi/j79Lmf6xodVcOshi/xTHmsw==
X-Received: by 2002:a05:6000:1f14:b0:2bd:eb6b:173a with SMTP id bv20-20020a0560001f1400b002bdeb6b173amr19355346wrb.36.1674396734144;
        Sun, 22 Jan 2023 06:12:14 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id n9-20020adf8b09000000b00241d21d4652sm2273703wra.21.2023.01.22.06.12.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Jan 2023 06:12:13 -0800 (PST)
Message-ID: <2b9622b9-1bd5-0cf0-0f7a-89d33d62c706@linaro.org>
Date:   Sun, 22 Jan 2023 15:12:11 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.0
Subject: Re: [PATCH V5 1/5] dt-bindings: usb: tegra-xudc: Add dma-coherent for
 Tegra194
Content-Language: en-US
To:     Jon Hunter <jonathanh@nvidia.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-tegra@vger.kernel.org
References: <20230119104208.28726-1-jonathanh@nvidia.com>
 <20230119104208.28726-2-jonathanh@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230119104208.28726-2-jonathanh@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/01/2023 11:42, Jon Hunter wrote:
> DMA operations for XUSB device controller are coherent for Tegra194 and
> so update the device-tree binding to add this property.
> 
> Signed-off-by: Jon Hunter <jonathanh@nvidia.com>
> ---


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


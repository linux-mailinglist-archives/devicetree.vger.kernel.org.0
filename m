Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE9F05EA887
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 16:36:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234189AbiIZOgF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 10:36:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55576 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234286AbiIZOfU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 10:35:20 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4770863DB
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:53:53 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id u18so10659991lfo.8
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 05:53:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=KPl0iZ8UJ/1m2XFqRX6CcPv1FA94Z/SXP+4+rwUaEt4=;
        b=okYgA7/fhQd/sJcE5Csrik9zW3/Hnaye5ECrYiYq9YA9uUAV9FsLvBNkgEGADsMOUj
         4pm1cfNUE1O03WSbQdhIcfGGK3J2rih116RjHzdQrPSmL7ToUF62/nixY1m+0moZYyV1
         M4zb8jH4miF+eYX/QOWMIAPvAZp02C2QFrMbrAIaioOJqzUymMMwX6j6ZAiweFRRS4cD
         dy5XNtiD10cW+Vg2o6+IDPzBkBTzX4daGuUVN6vXv/EiGc0j+rnfXwkkE9E4x3PVDfGs
         ELn+h+6Ia4UOBT2vJ8kQm2haPJIZEf1fIYTCwIXYPaZYxakhLxXWYPvpXvF61YGbkdeY
         WjUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=KPl0iZ8UJ/1m2XFqRX6CcPv1FA94Z/SXP+4+rwUaEt4=;
        b=G7SoDizqhqruH0XD4JKZd1X4wWakB8ba/Z9/XnbTpS8+LIAWMcQL6THnSYFAd7lEr4
         c7Jhb6fdPicsCKwN7CBdoiKwsjZJlnGq9QcllIhjhFNSQtaHh3rbM+YnJAmFPRHcAnnF
         qc9FJr4iqmPHUtXm4wFhH0VngCcaOB2HR+UYlJsn/H3ZMoAm8Uq7eCcsJfx5a+2qYJSz
         xwchMLDM5/++iFk3lbDa2Y3lWtNEfdIMf3/qfp6BqL7WSPqT9P3iCtMePxu8VHdXRxiO
         b1YFtpz/LNbUjXBQ5ZxT7yh0KXQYU/Qs2bbZBF9PYqleOI+bdc3j47XCgqPOE2Hs3j6c
         Db1g==
X-Gm-Message-State: ACrzQf3u92vGeMxEuoakkeqkujSsqlh62nIpM/QNLWVZvcI9UvxUB4Nr
        g8W+gk6WiMbAEC/lkYOO5YYwlQ==
X-Google-Smtp-Source: AMsMyM6NPR1Z1lf+hIqSHf67SlXWTj8N+5LXIQx2GNuLCwamoBGT6tKw9asfm7mmpcNlVuaCelsAoA==
X-Received: by 2002:ac2:51b8:0:b0:497:ac71:736a with SMTP id f24-20020ac251b8000000b00497ac71736amr9488729lfk.510.1664196831611;
        Mon, 26 Sep 2022 05:53:51 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s29-20020a05651c201d00b0026c12b9b329sm2362563ljo.70.2022.09.26.05.53.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 05:53:49 -0700 (PDT)
Message-ID: <fea0d8b3-f9e2-d081-e0c0-d81c9ca405d2@linaro.org>
Date:   Mon, 26 Sep 2022 14:53:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH] dt-bindings: display: mediatek: dpi: Add compatible for
 MediaTek MT8188
Content-Language: en-US
To:     "liangxu.xu" <liangxu.xu@mediatek.com>, chunkuang.hu@kernel.org,
        p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        matthias.bgg@gmail.com, jitao.shi@mediatek.com
Cc:     dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220923014227.6566-1-liangxu.xu@mediatek.com>
 <33e9babb-0492-2f41-d055-45ed32d55906@linaro.org>
 <ff6020d05962e202e917644b06eaa2cff7b2bb99.camel@mediatek.com>
 <8cc90559-6e83-1b6d-2718-d26ceace6362@linaro.org>
 <023b0a09a65042e6fee6b668d3df506f7d8178fd.camel@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <023b0a09a65042e6fee6b668d3df506f7d8178fd.camel@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 14:12, liangxu.xu wrote:
> 
> Can I modify it to the following form:
> properties:
>   compatible:
>     oneOf:
>       - enum:
>         - mediatek,mt2701-dpi
>         - mediatek,mt7623-dpi
>         - mediatek,mt8173-dpi
>         - mediatek,mt8183-dpi
>         - mediatek,mt8186-dpi
>         - mediatek,mt8192-dpi
>         - mediatek,mt8195-dp-intf
>       - items:
>           - enum:
>               - mediatek,mt8188-dp-intf
>           - const: mediatek,mt8195-dp-intf
> 
> This means that mt8188 reuses mt8195, so there is no need to add
> compatible to the driver.

I am now confused. You send some bindings which do not match DTS and driver?

This has to stop... please post the bindings with the user - DTS and
optionally driver.

Best regards,
Krzysztof


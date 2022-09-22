Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E62925E5C48
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:22:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230474AbiIVHW6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:22:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230266AbiIVHW5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:22:57 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A4394CBAF0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:22:55 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id k10so13206066lfm.4
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:22:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JDY3wyLD4djHNv21bBZZzvFe5rrOQU/pLSj/gQsk7Ps=;
        b=XwHK0QxbkukB+0pfeLp3iJq83T4xdeHh69DQgP8mfmueJLRE765/q+ase9/sNnJs21
         gef4QcYwhvGMJ5I1rOMv4c8iBQEkec5oCScXqe7tEEAh1hYgL/KDHOgUqd+Y2D7/j3qh
         ZQ4uIoPTMlwg/4tS9A7ZZFfoIDVQ2RJjSyPcTigutEkwRe1QNvQ7h9X83DJcBahprX+J
         dZNgSRwzevigqAap02exRBv78XIlWrdN6evViK4G4y3mTDz+ei4bVP1lYTyUF1vdPNZA
         0xD8F3pll7zdcIu5IlxU0TFQmobM5M56Pr+dXMaCNQmKgBXoiyoGaTwzgD0iXpKJUQQ8
         OP0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JDY3wyLD4djHNv21bBZZzvFe5rrOQU/pLSj/gQsk7Ps=;
        b=eBvlh0ok7c9G4ELkZhabZE18JKP5Q69paF+1ArxB/r37QMjw2IMNCLfnJ0T1ylQnMh
         Im6pWwDe+0Lmi18TukZ/ehIzUpgwZS2Wd6aTtvpn2cNBkAgrQ/s4rQrj8Myyb2zl5uw4
         bb5XWK5igFAllUfdd6CUxGWbgbCAoE6e8O+KiEQBjb66NDv+aTIg2gteZifOE/VnLXlf
         I0p3drZyINlmg1clmo42l4E0xaLnpOf90ytP0xb6Q9RDHbWFqNl9dl0F958HK4FVlgdZ
         bId/u0Ki2ZU+DUPV7UpLe9dCzadFrzS0reo9YuY5D/F9c6mnSVOswCoMb5GUQY5oCj+g
         Qunw==
X-Gm-Message-State: ACrzQf1og/UJLibI1m4y+4aUsjP3hDZJlEzzkCwccFqxIoq9fXDgC8i/
        SEc0pz+eXyZcn/WszndQ34bS4w==
X-Google-Smtp-Source: AMsMyM5+A2X0Idpf2Cy8iDaQZo+BvsjA2Xr5j4lwWyGuafVss0uDTPYm+TtzlvtHMoansllc4Ccy/w==
X-Received: by 2002:a05:6512:b9a:b0:499:b537:fe60 with SMTP id b26-20020a0565120b9a00b00499b537fe60mr785618lfv.319.1663831373857;
        Thu, 22 Sep 2022 00:22:53 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id i20-20020a198c54000000b004946c3cf53fsm804450lfj.59.2022.09.22.00.22.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:22:53 -0700 (PDT)
Message-ID: <11592bcd-eec7-7cc0-86c6-8f440b6af447@linaro.org>
Date:   Thu, 22 Sep 2022 09:22:52 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver
Content-Language: en-US
To:     Guillaume Ranquet <granquet@baylibre.com>,
        Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
References: <20220919-v1-0-4844816c9808@baylibre.com>
 <20220919-v1-16-4844816c9808@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-16-4844816c9808@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add the DPI1 hdmi path support in mtk dpi driver
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_dpi.c b/drivers/gpu/drm/mediatek/mtk_dpi.c
> index 630a4e301ef6..91212b7610e8 100644
> --- a/drivers/gpu/drm/mediatek/mtk_dpi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dpi.c
> @@ -15,7 +15,10 @@
>  #include <linux/of_graph.h>
>  #include <linux/pinctrl/consumer.h>
>  #include <linux/platform_device.h>
> +#include <linux/reset.h>
>  #include <linux/types.h>
> +#include <linux/regmap.h>
> +#include <linux/mfd/syscon.h>

Why do you need these headers in this patch?

Best regards,
Krzysztof


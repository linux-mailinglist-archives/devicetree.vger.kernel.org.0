Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A48205E5C3F
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231186AbiIVHVB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:21:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231153AbiIVHU5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:20:57 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5870E7DF5F
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:20:51 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id z25so13225564lfr.2
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TPd1M8oBjHnNozp05d671P5pFiuRlsalsS4w6miNryU=;
        b=DEJqWRMQjOJQ8++nLzN9KbMQNg31pNbXrNYPjUYeHJxeulmWbiO3uwjEydrBT8enpx
         5sS2fPSXu9nqh8I/U4KFSjfV3G927s/rv1tqmj11Z2hF3kMbAnVU2AD+yP09o57fyrB4
         3cJUgnwaYKiaus3XEQp1bZ/IX9OrFDM730VMEIsL18ne6cBc8bpe+z91516vR0rgCpTP
         AiRjBaf+dMkrbqac4f8myV0JWSpk4Ag1fPfLQclSe47PPYVhP9hqgVE/2t3wrtFREca9
         Dd1w0tMisqyJRSHK931fl/LPYRhJH7/SXY2e8WeY+Ypjx66EOWYGyniBFn6hR7Q3Zlzw
         uVSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TPd1M8oBjHnNozp05d671P5pFiuRlsalsS4w6miNryU=;
        b=7SnHEAx9RmeJK7891sqpf/MzpruVFEE58hqSGHvcQ6LEUGZ4xGFv9Y+VCKrYT5XegD
         PY8xzbh6/1IftNW6s/Ev4nRbLLDR6iGz7MZ7Xln7Vv3r6U6ND6NQwaOoaQoZD5p+Lw8b
         QIKsIIB9K4a83e2WSoi9RMaQp6uwP1pnjbEsz83ujC8AEc2Yj4bL2/dKGRmqPJ9FchRt
         YljBWDgRy7TLpSY8eNxAV90i64Dlids9h0YqkBq2Jn8bla6Ghx/vDdDmG0d5aAUx1y/k
         DxGXJWF7hLVC9fA/lsj3JVJ2wRw+KmoR230QMt90BN0WQJ2h8HOXpUL0joB8PXi6NzUz
         Xpmw==
X-Gm-Message-State: ACrzQf07hNvrDiZl4xsxatDWHqUwbjgbgdEe+McD5HpSS0kjrbrs2V+0
        2muZ3/IIFEgyksCX8k8InbDE0Q==
X-Google-Smtp-Source: AMsMyM55t1rNZFbd9M//L345bj9ZqSPstb512C/ND5LsTPVxSfYeiy0p88QI81OjW4xD1dRYCtEUEg==
X-Received: by 2002:a05:6512:3187:b0:49e:6607:3a75 with SMTP id i7-20020a056512318700b0049e66073a75mr681890lfe.28.1663831249033;
        Thu, 22 Sep 2022 00:20:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u9-20020a199209000000b00492e570e036sm801300lfd.54.2022.09.22.00.20.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:20:48 -0700 (PDT)
Message-ID: <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
Date:   Thu, 22 Sep 2022 09:20:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
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
 <20220919-v1-17-4844816c9808@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220919-v1-17-4844816c9808@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/09/2022 18:56, Guillaume Ranquet wrote:
> Add dpi support to enable the HDMI path.
> 
> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
> 
> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> index 72049a530ae1..27f029ca760b 100644
> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>  	  .data = (void *)MTK_DPI },
>  	{ .compatible = "mediatek,mt8192-dpi",
>  	  .data = (void *)MTK_DPI },
> +	{ .compatible = "mediatek,mt8195-dpi",
> +	  .data = (void *)MTK_DPI },

It's compatible with the others. You don't need more compatibles.

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 371096E1E30
	for <lists+devicetree@lfdr.de>; Fri, 14 Apr 2023 10:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230310AbjDNI1J (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Apr 2023 04:27:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230218AbjDNI0w (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Apr 2023 04:26:52 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E50F293E4
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:26:33 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id c9so4864644ejz.1
        for <devicetree@vger.kernel.org>; Fri, 14 Apr 2023 01:26:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681460790; x=1684052790;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PFWS76R3h9QsLpCttf9/B+rEP4aR/9nRNw2d0vU0q/Q=;
        b=EcASPij0WvVh/rYuXhVEmf5faAZloZE2t4UYU0BXcdl4gTgSUptbQsLFtLsc7ugH/A
         VrkIrW84WOgQuStS05zVMJHWUe4c60KIWeP898ib604lbZIJHMhzk5zWw4XBD/U4cQNp
         /nBpe9QZNg4yyQvy9MF1YgjjAcfNJT534gqGHyCdC+lWaH9RtX65VLbIwaBnz3VhFIh7
         EwLo7mMECzYoatF6jbhVPpS5Jkdcp6WJ5nQaEUGBI9hXYcudDyP5AIP1lCG6Ax/q+qTm
         b9atbsfLXC9G8dlgmHO2tRxUmC/H+Phz/2AEgStkivf3dXs0wmFVuQsDGtp5K3HWDeQ3
         KKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681460790; x=1684052790;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PFWS76R3h9QsLpCttf9/B+rEP4aR/9nRNw2d0vU0q/Q=;
        b=iQlpLPZV+ZJkI/myJ0sIrIEuojMwlGP06V51mIt/jJEIgD5T+HG+fHu4/byRsWsfTV
         5rWyHm188jDGIJx1rwRKGcmreHpd+0/vzyf/7KLr7Gl3GyNeaCsxjSp8g3ZCBw0lVop9
         DLaJ6obzAHu3UX/7IoZrd4qyGWxQfSiDQ/i2rouenk/yRaO2P1lbtN83wzkDqj4ivvq7
         SyAeH6hN/UyPy44qIgfjZrg1f1hueZigEuxU11rZ8gR8Lzuf1UM7JKB15QYngiNXS3+J
         mKi5T+cNKZG1UsZ9jDjUe+XzUknIfgd5UscebUHsJK3tz8nMDTcdfadLX7kHN6M9rhlr
         s80A==
X-Gm-Message-State: AAQBX9ev9TzgOvosQLqS9f2ZxRdnXofiSV4gf3jdxZB4YGi1hXD4Ik8c
        exr58LWGE3zGxSzMgEwhZ7WN0A==
X-Google-Smtp-Source: AKy350aXAAH9oxumIB0VCkKQ6X1tv2Gkk4qCEQ1975WV1xW90sQ4HbH3w6xNPv+SaTTgdUMIba9+kA==
X-Received: by 2002:a17:906:e096:b0:90b:53f6:fd8a with SMTP id gh22-20020a170906e09600b0090b53f6fd8amr6544095ejb.10.1681460790073;
        Fri, 14 Apr 2023 01:26:30 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:8a60:6b0f:105a:eefb? ([2a02:810d:15c0:828:8a60:6b0f:105a:eefb])
        by smtp.gmail.com with ESMTPSA id gz1-20020a170907a04100b0094a6ba1f5ccsm2125915ejc.22.2023.04.14.01.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 14 Apr 2023 01:26:29 -0700 (PDT)
Message-ID: <5b6b5a21-1dcc-0b96-b4c7-01622af7e64a@linaro.org>
Date:   Fri, 14 Apr 2023 10:26:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH 08/27] dt-bindings: display: mediatek: wdma: Add
 compatible for MediaTek MT6795
Content-Language: en-US
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, matthias.bgg@gmail.com
Cc:     p.zabel@pengutronix.de, airlied@gmail.com, daniel@ffwll.ch,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        jassisinghbrar@gmail.com, chunfeng.yun@mediatek.com,
        vkoul@kernel.org, kishon@kernel.org, thierry.reding@gmail.com,
        u.kleine-koenig@pengutronix.de, chunkuang.hu@kernel.org,
        ck.hu@mediatek.com, jitao.shi@mediatek.com,
        xinlei.lee@mediatek.com, houlong.wei@mediatek.com,
        dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, linux-pwm@vger.kernel.org,
        kernel@collabora.com, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
References: <20230412112739.160376-1-angelogioacchino.delregno@collabora.com>
 <20230412112739.160376-9-angelogioacchino.delregno@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230412112739.160376-9-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/04/2023 13:27, AngeloGioacchino Del Regno wrote:
> Add a compatible string for MediaTek Helio X10 MT6795's WDMA block: this
> is the same as MT8173.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,wdma.yaml    | 3 +++

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


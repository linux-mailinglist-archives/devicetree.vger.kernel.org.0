Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34A8E5EC387
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 15:04:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231855AbiI0NEQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 09:04:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59584 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232008AbiI0NEP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 09:04:15 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6726817CA05
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:04:13 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id c24so9033576plo.3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:04:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=5A9tE5XjShKgk0dp4mGM6QaE+oB3gw3GtO9g42ZRvK8=;
        b=K6t+GiDMxCE5PqXx9M7wnOxrmVe8RhMGvnDnBYG8NOKa2YssCusIkZAF4W4yvOQESA
         grgJhoRBvxxax0+eCuPKh8p2W5rWUX6HXDrfWlnt3QOGcvz2Z0pKWEx5bc2keTzCKDPA
         EFNonbeyTfJxCD6F40ovXsaSvZaA6ciUzimvjumUgzudbGcVF+jQjdL0HxEI5YO8kDxR
         uaL+FNOyGJVlqjEpMvpc2MXt9w63j7o81b3Y3ky55r6MbLY0d+jh1dOdyFrtP5/68Jsh
         ZON8Od6QdsueW9v6KQ7nfWtM/RdVCng56yDGIVeLLVpq3zbI72tvF/vuGVGpBIBmWRps
         bqHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=5A9tE5XjShKgk0dp4mGM6QaE+oB3gw3GtO9g42ZRvK8=;
        b=HWsyE+BYkSVD2eoNhFT+s3FiaPL5aupy1BOYH1SPmFTsIFMywuZ+a4gEG+mRkizJtd
         fImRAq/6p38ks+CdgiCaHN+84jGsZ6t0JMAucH/C4gg1XI3vMeiJmOyGfifEbq7IOUeB
         tT6AT8c/h0b9DLuxxECA+dLStklnRU/Np7hHllEF2fdg/WkJXDmD6qaV+sTFg0kXC4/n
         KoYk4l332bMFOUfrNjJqW3lJA4FCrrNZzW67X3p2ulgajuifwCfs/ZY+gvKPbmxX9Wev
         vzuQFlc8WgQuUIYi4mb18LRVUMvqQZ1bO9Oqt5zZX+Mgqq8xLrikpdhUXe4iIJ4fx7Cj
         Is8g==
X-Gm-Message-State: ACrzQf0d0u87dau4ieJ3lxzbnoS/mxotoAbjGXRTmDNJ4myFCwX9Ogip
        E0mfdDBqWhJEPu/h22ADYAfRiUOfhxMvpyFUq83T9Q==
X-Google-Smtp-Source: AMsMyM5gawCoKKBTAHhXh48htU73+kqaFhoDJNb7qglhir+j3HxUZ0tCej0iXrKwzR9+MRTcHiP7gPgmwpcjXrYibm8=
X-Received: by 2002:a17:90b:33c9:b0:200:a0ca:e6c8 with SMTP id
 lk9-20020a17090b33c900b00200a0cae6c8mr4481943pjb.147.1664283852916; Tue, 27
 Sep 2022 06:04:12 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:04:12 -0700
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
In-Reply-To: <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org>
MIME-Version: 1.0
Date:   Tue, 27 Sep 2022 06:04:11 -0700
Message-ID: <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
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
        Kishon Vijay Abraham I <kishon@ti.com>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 19/09/2022 18:56, Guillaume Ranquet wrote:
>> Add dpi support to enable the HDMI path.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> index 72049a530ae1..27f029ca760b 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>  	  .data = (void *)MTK_DPI },
>>  	{ .compatible = "mediatek,mt8192-dpi",
>>  	  .data = (void *)MTK_DPI },
>> +	{ .compatible = "mediatek,mt8195-dpi",
>> +	  .data = (void *)MTK_DPI },
>
>It's compatible with the others. You don't need more compatibles.

Hi Krzysztof,

It's a bit confusing, because this compatible is used in both
mtk_drm_drv.c and in mtk_dpi.c

Albeit it's entirely the same thing regarding the mtk_drm_drv module,
it's pretty different
regarding the mtk_dpi module.

Thx,
Guillaume.
>
>Best regards,
>Krzysztof
>

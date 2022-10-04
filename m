Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 231B85F426F
	for <lists+devicetree@lfdr.de>; Tue,  4 Oct 2022 13:55:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229688AbiJDLzU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Oct 2022 07:55:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229832AbiJDLzO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Oct 2022 07:55:14 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1458B11A18
        for <devicetree@vger.kernel.org>; Tue,  4 Oct 2022 04:55:12 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 25so10493886lft.9
        for <devicetree@vger.kernel.org>; Tue, 04 Oct 2022 04:55:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=AVHgfeK+0yXNwYMJqLB3RuEuq3zMmGUnN/V4RFLasQ8=;
        b=HCraqwA4dmNVerhXpmAuHLH4r2VSVcfXCEXH9CybnppQCmsY4LWHa0k0aB34ps+YJh
         D0FCBE7aw2MjUV0uur4XGgPoQ+QSzmM9HHhfdqDSG1s+xvs4O3W5qunm3BtDzZJSuY0u
         atHJpYrSENjx/q+LeBwFD/q3EUd4D6MtToFTnDGC56yykmwQKeCUxnfhgeJSRsusknmk
         5QTgbwRmJsAEpECIgtW2tn0jLsRksRyDmpr40kHA82vkMhu4WLJVFFVVO3Ek9nYL7w0v
         jv4ujvhJiLhHm6GueGGupHX7HtNZhEaqeHSwTAdwcPOlX/QIGWXNIJtMftYwAj5M+A49
         V8VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=AVHgfeK+0yXNwYMJqLB3RuEuq3zMmGUnN/V4RFLasQ8=;
        b=yJUg3FHBVSThdIA53tKmtH09QeRs5trcOwrzWtnmPZUJD86eI/FMEYtSzSaoNv7Xam
         lhdrv/nTz2aNeypEnhqmheqEtTzlXRvpm3oqNMVjISmIp1OvCvav9xmb9JFg1Pvn9pBj
         F3UD3zFk4esPRgA7ZRhBAgSr45HVMfnN605gFmCb74kkXIrGHAYyrbn91g+hCxm2J/rq
         qGf8cEwlJkXsL4REkF6uihWfYUgrmgH7xsE6AFnNKAkEnVldjBjA7czuWzMb5M9hL6ig
         HsyjFPPRI+Te623CgLNXtP+h3kvBH+JwrvaDE8YG42EaC2vu7HTdZGv0g+Zo4kcUJ6+1
         So8A==
X-Gm-Message-State: ACrzQf1tDkSqgU1/JXl89pqHPxMt51FgAUwu6u6RdoheHGXVZxIZx0UI
        FHWMxvas2IzKoim1rAnBnOmMRjKws7zqUQCuxii9cA==
X-Google-Smtp-Source: AMsMyM7T5HmFHtYzBToQIDw740pyxsyZD3CK3phoCdY5v6/uoVZEM5zyMYJH17SMmdaDtr3rE0uxWHutyCOz+oUYcFU=
X-Received: by 2002:ac2:44b6:0:b0:4a2:5084:6163 with SMTP id
 c22-20020ac244b6000000b004a250846163mr1242968lfm.446.1664884510269; Tue, 04
 Oct 2022 04:55:10 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 4 Oct 2022 04:55:07 -0700
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-17-4844816c9808@baylibre.com>
 <a0a3c427-c851-ae5d-4010-e94740bf9f6e@linaro.org> <CABnWg9s3N_Ua9g0S3x0uj8PN4FtOX6DO+zQcBzGFqoLTL1J24A@mail.gmail.com>
 <bc64b69d-3d65-f5ca-a688-2ad1a055ba4b@linaro.org> <CABnWg9sJFBAXi1bu_yHDppFOmg=H=G7QTn9Bzqkr-t7qm5vUFw@mail.gmail.com>
 <db1abf9d-ba40-f71c-0d37-c3912ac1bd8e@linaro.org>
In-Reply-To: <db1abf9d-ba40-f71c-0d37-c3912ac1bd8e@linaro.org>
MIME-Version: 1.0
Date:   Tue, 4 Oct 2022 04:55:07 -0700
Message-ID: <CABnWg9vOHWpdLPAFdXAG3GNgsxpbzgh2gTq_tm72Tk2uR54LaQ@mail.gmail.com>
Subject: Re: [PATCH v1 17/17] drm/mediatek: Add mt8195-dpi support to drm_drv
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, Stephen Boyd <sboyd@kernel.org>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        CK Hu <ck.hu@mediatek.com>, Jitao shi <jitao.shi@mediatek.com>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>
Cc:     linux-mediatek@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        Pablo Sun <pablo.sun@mediatek.com>, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 04 Oct 2022 12:49, Krzysztof Kozlowski
<krzysztof.kozlowski@linaro.org> wrote:
>On 03/10/2022 17:29, Guillaume Ranquet wrote:
>> On Tue, 27 Sep 2022 16:28, Krzysztof Kozlowski
>> <krzysztof.kozlowski@linaro.org> wrote:
>>> On 27/09/2022 15:04, Guillaume Ranquet wrote:
>>>> On Thu, 22 Sep 2022 09:20, Krzysztof Kozlowski
>>>> <krzysztof.kozlowski@linaro.org> wrote:
>>>>> On 19/09/2022 18:56, Guillaume Ranquet wrote:
>>>>>> Add dpi support to enable the HDMI path.
>>>>>>
>>>>>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>>>>>
>>>>>> diff --git a/drivers/gpu/drm/mediatek/mtk_drm_drv.c b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>>> index 72049a530ae1..27f029ca760b 100644
>>>>>> --- a/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>>> +++ b/drivers/gpu/drm/mediatek/mtk_drm_drv.c
>>>>>> @@ -820,6 +820,8 @@ static const struct of_device_id mtk_ddp_comp_dt_ids[] = {
>>>>>>  	  .data = (void *)MTK_DPI },
>>>>>>  	{ .compatible = "mediatek,mt8192-dpi",
>>>>>>  	  .data = (void *)MTK_DPI },
>>>>>> +	{ .compatible = "mediatek,mt8195-dpi",
>>>>>> +	  .data = (void *)MTK_DPI },
>>>>>
>>>>> It's compatible with the others. You don't need more compatibles.
>>>>
>>>> Hi Krzysztof,
>>>>
>>>> It's a bit confusing, because this compatible is used in both
>>>> mtk_drm_drv.c and in mtk_dpi.c
>>>>
>>>> Albeit it's entirely the same thing regarding the mtk_drm_drv module,
>>>> it's pretty different
>>>> regarding the mtk_dpi module.
>>>
>>> Sure, but this does not explain why do you need these entries here in
>>> mtk_drm_drv.
>>>
>>> Best regards,
>>> Krzysztof
>>>
>>
>> Hi Krzysztof,
>>
>> Sorry for the late answer.
>> The mtk_drm_drv is the component master of the full mediatek drm stack.
>>
>> it "binds" all of the crtc/dpi/ovl/mutex/merge... components of the stack.
>>
>> That mtk_ddp_comp_dt_ids array is iterated over to find all of the components
>> from the device tree.
>
>No. You said what the code is doing. I think I understand this. You
>still do not need more compatibles. Your sentence did not clarify it
>because it did not answer at all to question "why". Why do you need it?
>
>Sorry, the change looks not correct.
>
>Best regards,
>Krzysztof
>

I need a new compatible to adress the specifics of mt8195 in the mtk_dpi driver,
the change is in this series with:
[PATCH v1 16/17] drm/mediatek: dpi: Add mt8195 hdmi to DPI driver [1]

I then need to add that compatible to the "list" here in mtk_drm_drv.
I don't see a way around this unless I rewrite the way mtk_drm_drv works?

Maybe if I declare a new compatible that is generic to all mediatek
dpi variants?
and have all the dts specify the node with both the generic dpi and
the specific compatible?

dpi@xxx {
	compatible = "mediatek,dpi", "mediatek,mt8195-dpi";
	...
}

Then I can "collapse" all the dpi related nodes in mtk_drm_drv under
"mediatek,dpi" ?

I guess would have to do the change for all other components that are needed in
mtk_drm_drv (mmsys, aal, ccor, color, dither, dsc, gamma, mutex...).

That's the only trivial way I can think of implementing this with the
current status
of the mtk_drm stack.

Do you have any other ideas in mind?

Thx,
Guillaume.

[1] : https://lore.kernel.org/all/20220919-v1-16-4844816c9808@baylibre.com/

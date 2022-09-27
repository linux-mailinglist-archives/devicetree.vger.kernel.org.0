Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 91EB05EC3E7
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 15:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232458AbiI0NN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Sep 2022 09:13:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232592AbiI0NNl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Sep 2022 09:13:41 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 804061879C3
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:13:39 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id fs14so9234450pjb.5
        for <devicetree@vger.kernel.org>; Tue, 27 Sep 2022 06:13:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date;
        bh=uw1gvMh/1zxeYeQnV6wZiimhJI0pYdqIU/T7gR133DU=;
        b=KGZxffdgEWrc+nIKZQdWmZ3shdGF0hcnG/eimwyIfxhrmALI1rYCYrjvI7h/XUgVGA
         AC6SvAtl53+/uRBU3anLk1UvpVRaNBemAR7Oyh2pHvX7bjmJNbSDXufs8hRYtyXsG5vQ
         jd3iWOu4rVRR/EnzQp9aaeBmal/AfKg+NmoFOYFIDeJe+wLcey51NCuMUbD1u2T1V94U
         R0nuad1PG+imVaMqobj/rIzM1PIjkWlf6o0msI+SnoIU3CpMuPKph0lfdyOcWwBg0vLZ
         dTGoMaNPB1H8WboG58vSq5A7eIOFKcqFwcw4AAp8tg8XHTSKsuUNf6zQOBzI1wa4MP6X
         qvxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date;
        bh=uw1gvMh/1zxeYeQnV6wZiimhJI0pYdqIU/T7gR133DU=;
        b=c+0VJXQW1fphwCyhwozFrdBca4gGbZMMUhxkMHw/NZk7ttDtn8PFCPrl4rlvtolYgh
         z8Ttv51ch6cM1yylnp7sf+lKOEbT7weHiJo57T0H1ZBTAGAHVw2N5/u8FuX/i+SqB6D8
         wfVXcNhCXRHn3Gu/K0uZsi8yhv6H1IK2butjzSrkjdfxOhmfMbK0E0gmVXx9A8oAhewa
         3ox8D6z4qOyxNSDk9D215v8bnaD9Ds78Vf82LuoBgfbPWyJ+N4h6avwMaehPM9GRZYcC
         +Btyap7z7TTpmsonDLT7FoT9H/nBPBCMV7HmrxtzCzgy2HYt+lVKbjkzmSbA9DAu/gDT
         4SAA==
X-Gm-Message-State: ACrzQf1uiBe3ml0Dck+f4u/RL36tiBxgGCfe/SjjTEh+A+0MD3Auz0xj
        WetGecfpCCPRF7/Czd65dyPpzCJZDd4YFiaYI8EpHA==
X-Google-Smtp-Source: AMsMyM5foO9hRFfJNeJsExDA4MlTDjL11pmea0BPzSUwTLsGAoVk8kBgQmDpzSWwATR1ZA70FE3cdWBnn6SlAjNkjO4=
X-Received: by 2002:a17:902:f710:b0:178:a692:b1f7 with SMTP id
 h16-20020a170902f71000b00178a692b1f7mr27434461plo.112.1664284411364; Tue, 27
 Sep 2022 06:13:31 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 27 Sep 2022 06:13:30 -0700
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v1-0-4844816c9808@baylibre.com> <20220919-v1-12-4844816c9808@baylibre.com>
 <b05f8687-8f34-c425-ed8e-56c8aeccdaf9@collabora.com>
In-Reply-To: <b05f8687-8f34-c425-ed8e-56c8aeccdaf9@collabora.com>
MIME-Version: 1.0
Date:   Tue, 27 Sep 2022 06:13:30 -0700
Message-ID: <CABnWg9tidG-HHhJ-nbE0UD2=EUCqF4WkdQ__j+2sarmSm=MsAQ@mail.gmail.com>
Subject: Re: [PATCH v1 12/17] drm/mediatek: hdmi: mt8195: add audio support
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
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
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 20 Sep 2022 13:11, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 19/09/22 18:56, Guillaume Ranquet ha scritto:
>> Add HDMI audio support for mt8195
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> index 39e07a6dd490..bb7593ea4c86 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_mt8195_hdmi.c
>> @@ -215,6 +215,26 @@ static void mtk_hdmi_hw_vid_black(struct mtk_hdmi *hdmi, bool black)
>>   		mtk_hdmi_mask(hdmi, TOP_VMUTE_CFG1, 0, REG_VMUTE_EN);
>>   }
>>
>> +static void mtk_hdmi_hw_aud_mute(struct mtk_hdmi *hdmi)
>> +{
>> +	u32 val;
>> +
>> +	val = mtk_hdmi_read(hdmi, AIP_CTRL, &val);
>> +
>
>val_tx = AUD_MUTE_FIFO_EN;
>if (val & DSD_EN)
>	val_tx |= DSD_MUTE_DATA;
>
>regmap_set_bits(regmap, AIP_TXCTRL, val_tx);
>
>Easier, shorter.

Thx for the tip.

>
>> +	if (val & DSD_EN)
>> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL,
>> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN,
>> +			      DSD_MUTE_DATA | AUD_MUTE_FIFO_EN);
>> +	else
>> +		mtk_hdmi_mask(hdmi, AIP_TXCTRL, AUD_MUTE_FIFO_EN,
>> +			      AUD_MUTE_FIFO_EN);
>> +}
>
>Regards,
>Angelo
>

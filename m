Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4C22561F6F1
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 15:59:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232693AbiKGO7Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 09:59:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37564 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232691AbiKGO7A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 09:59:00 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9830F21256
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 06:57:21 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id p8so17064841lfu.11
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 06:57:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AQlxwrQ9+SAIJlBHFz/WVtqfuSsX8479gf+InmNYkZs=;
        b=1eTJqEXUCN6TpV6RPCjctxazLVjc44ZvzsBItOrs8d80EmK/RTm5KYkB5ehzSFcSap
         0Ia4QJxum/15AedJZzgTedYWblULvJ2HWn6NIOVO0kLVUGzxxNuXTNkUbSKEiihYW5uY
         eI9c/r5MpYt9th3ARFOLRYCWL8+OX7E7r5QjWjQT9gbVW+CjhHoH7P5pnYbE+s3Ht/BS
         ZpQxbAlG3a2Q6BXdz03VLJbB2BAE4WHiC0ArV3yEpnSEla0c1RJ8q72c1z9KjXtBDvuA
         r5eCbX117hzvliriCVcObFn6wp63MG/Om9IFx0pHFFyRetN5uD76XxvKlFE9BmmzVAs3
         XGsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:mime-version:in-reply-to:references
         :user-agent:from:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=AQlxwrQ9+SAIJlBHFz/WVtqfuSsX8479gf+InmNYkZs=;
        b=Y0G955EsCsiyOSt1AJfXVl7ezKp7xgrztdgd17FDIaeemDS86NDr76yrwd+cC5PA/s
         3kdsnzXn/Y/60ZpQrP7AcaRVM3nvI79fCEjvBVrIxE+QPoDE0XCCj/NyHXCclR3W6QId
         wN5dGLG7Lu32mIZzIW5PjoNKmI94LCF1S9sUcHPyePdiibbZtVTueKhIYP477leT5sTF
         YBFnjABZJCz+fG9FBgF+HtqsSq70KAWbXXDGNAzH8tZgicJaOI2X4OT+lOlbgJB+a3yC
         eNUWg6W2PtWO8f6ERPfmfrQjAHIk40dRkONpn95zJ+rA00Bwzv51vxkZ3zFhU9bfVavA
         Mr+Q==
X-Gm-Message-State: ACrzQf0JCPkQSpEH2tWBkv9I1FkLEZ+m2O78I6BliFNY49j72YckcIpC
        tf8l040xJCURilsIAqx50lNy3WhH2I8+AhP5tU50og==
X-Google-Smtp-Source: AMsMyM5u67xgoVRbvAl2jo49umhno4Yx8nKrhd8saRcif/bR8rpMZwMhWdL1nVFsqasbfxpjnO2MfcuNIfWTUazhbyA=
X-Received: by 2002:a05:6512:a93:b0:4a2:a5b3:fbb4 with SMTP id
 m19-20020a0565120a9300b004a2a5b3fbb4mr17313440lfu.346.1667833039925; Mon, 07
 Nov 2022 06:57:19 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 7 Nov 2022 14:57:19 +0000
From:   Guillaume Ranquet <granquet@baylibre.com>
User-Agent: meli 0.7.2
References: <20220919-v3-0-a803f2660127@baylibre.com> <20220919-v3-6-a803f2660127@baylibre.com>
 <a3472c42-ccac-7c98-a0b6-57556a348ac1@collabora.com>
In-Reply-To: <a3472c42-ccac-7c98-a0b6-57556a348ac1@collabora.com>
MIME-Version: 1.0
Date:   Mon, 7 Nov 2022 14:57:19 +0000
Message-ID: <CABnWg9uPL0qCat4Sw2uqj6-KN-OxPqGOjw+SR1bBVvGrmCBTZQ@mail.gmail.com>
Subject: Re: [PATCH v3 06/12] drm/mediatek: hdmi: add frame_colorimetry flag
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Jitao shi <jitao.shi@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Vinod Koul <vkoul@kernel.org>, CK Hu <ck.hu@mediatek.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-kernel@lists.infradead.org, stuart.lee@mediatek.com,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        mac.shen@mediatek.com, linux-phy@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Nov 2022 12:09, AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>Il 04/11/22 15:09, Guillaume Ranquet ha scritto:
>> Add a flag to indicate support for frame colorimetry.
>>
>> Signed-off-by: Guillaume Ranquet <granquet@baylibre.com>
>> ---
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.c | 11 +++++++++++
>>   drivers/gpu/drm/mediatek/mtk_hdmi_common.h |  1 +
>>   2 files changed, 12 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> index 3635ca66817b..933c51b5f6d7 100644
>> --- a/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> +++ b/drivers/gpu/drm/mediatek/mtk_hdmi_common.c
>> @@ -120,6 +120,17 @@ int mtk_hdmi_setup_avi_infoframe(struct mtk_hdmi *hdmi, u8 *buffer, size_t bufsz
>>   		return err;
>>   	}
>>
>> +	if (hdmi->conf->has_frame_colorimetry) {
>> +		frame.colorimetry = hdmi->colorimtery;
>
>Typo: s/colorimtery/colorimetry/g
>
>...also, I don't see this being really used? In hdmi-v2 you're setting this param
>to HDMI_COLORIMETRY_NONE and quantization ranges to always the same default value.
>
>I wonder if this is really needed at this point.
>
>Regards,
>Angelo

I'll see if I can make something work without this boolean.

Thx,
Guillaume.

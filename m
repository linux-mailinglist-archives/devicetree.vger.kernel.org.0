Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A9244460F36
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 08:14:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235102AbhK2HRS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 02:17:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236939AbhK2HPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 02:15:17 -0500
Received: from mail-pl1-x62f.google.com (mail-pl1-x62f.google.com [IPv6:2607:f8b0:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D4985C06175F
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 23:11:59 -0800 (PST)
Received: by mail-pl1-x62f.google.com with SMTP id z6so11449612plk.6
        for <devicetree@vger.kernel.org>; Sun, 28 Nov 2021 23:11:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gqKVeAmtJ28Ij4ESFKCTCEHmSmtmFX8yHUJYwywb7ag=;
        b=byknp2pQnyhSxsju+3ZYpfkAC1hcQDQqoJqM760EFq6VNOQv8X+BnqYuiplE689ts2
         mbKbxp+vvTN9i4N+Z16OHd7gaftw1X7rpCkl4Rr6TO3V4XICotc3njsV/SqwM3URK95c
         GZ8Bq/+u5/FGSuAg+IFHZD8ArKWluJyoXUoFFSqkXIoF9LrYjGuBe2adhZor6ZVeyAYF
         5egiGwxvxHOPve0HLQFzORfNbY+kjK/vsEVgd9eZyy3RbAWfktUHUhJEDiZfIj0YGhH3
         G7yND1SrWGgF3CDV7IxPqpIhPLKebVFGskbf2PIL0cgkXRx/65PdswFRiBMr5w+U7F31
         T+Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gqKVeAmtJ28Ij4ESFKCTCEHmSmtmFX8yHUJYwywb7ag=;
        b=7mUWcd/p0e5B3jwoPwAT8pGmZSoVoaQMx/kNFFizdxv7qsIymn+qEO/7xaOC2gNxyf
         AXWY0e0KTkA4tn+5pT21c35ZWvb4z0Xi5fE2o5/GZDPNt78R6/bnjgKyofd0TaP7P5qD
         IVOcZ+yGZSllle+4j+jQbasp46kg3kOUAeSptrZoQNq9FUDVax6MzLai2XzQD/mBhzVS
         RQGn1bcy+mDN74q6TBCjwP0QK3aXVYhecxoDiW9m9CO5PkNn1jWTd7Qobo77W0ARQbYI
         ctbxK+cyiqCdD4exv1Gfv25gbWPIOgZDGgiX3wkv9jpqeyZcJcdbngujCmnkanKtLarC
         tbrg==
X-Gm-Message-State: AOAM531F7OktXOVzlioyMHgCFZYrloIJKnflRZzMKcE4BO/DuUNMU3ip
        E7qe3L4z7lE3++QGhvxEuM3K0gDHZIrTmQ==
X-Google-Smtp-Source: ABdhPJxrgJOD/gmN8VFUGDa5VdyygIRYVYL060w2qQSdMuiLI7ClSzvocpOzoXnhLbFDwTtBCLNHLg==
X-Received: by 2002:a17:90b:17c4:: with SMTP id me4mr36397983pjb.15.1638169919135;
        Sun, 28 Nov 2021 23:11:59 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:3807:fdf3:5573:47d6])
        by smtp.gmail.com with ESMTPSA id g20sm17607742pfj.12.2021.11.28.23.11.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Nov 2021 23:11:58 -0800 (PST)
Date:   Mon, 29 Nov 2021 15:11:54 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        cujomalainey@google.com,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        sound-open-firmware@alsa-project.org
Subject: Re: [PATCH v7 2/3] firmware: mediatek: add adsp ipc protocol
 interface
Message-ID: <CA+Px+wV8opw7vzuvb5cPJtWFxBO0jdahOqK1jOQZnGLr7MKojA@mail.gmail.com>
References: <20211129063954.1616-1-allen-kh.cheng@mediatek.com>
 <20211129063954.1616-3-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211129063954.1616-3-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 02:39:53PM +0800, allen-kh.cheng wrote:
> Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>
> Reviewed-by: AngeloGioacchino Del Regno<angelogioacchino.delregno@collabora.com>
> Signed-off-by: Allen-KH Cheng <Allen-KH.Cheng@mediatek.com>

Please double check again if you use the R-b tags correctly.  I have provided my R-b tag before but have some more minor comments below.

With the minor comments:
Reviewed-by: Tzung-Bi Shih <tzungbi@google.com>

> diff --git a/drivers/firmware/mediatek/mtk-adsp-ipc.c b/drivers/firmware/mediatek/mtk-adsp-ipc.c
[...]
> +int adsp_ipc_send(struct mtk_adsp_ipc *ipc, unsigned int idx, uint32_t op)
> +{
> +     struct mtk_adsp_chan *dsp_chan;
> +     struct adsp_mbox_ch_info *ch_info;
> +     int ret;
> +
> +     if (idx >= MTK_ADSP_MBOX_NUM)
> +             return -EINVAL;
> +
> +     dsp_chan = &ipc->chans[idx];
> +     ch_info = dsp_chan->ch->con_priv;
> +     ch_info->ipc_op_val = op;
> +     ret = mbox_send_message(dsp_chan->ch, NULL);
> +     if (ret < 0)
> +             return ret;
> +
> +     return 0;
> +}
> +EXPORT_SYMBOL(adsp_ipc_send);

To be neat, I think use mtk_adsp for all names looks better.  I.e. s/adsp_ipc_send/mtk_adsp_ipc_send/.

> +static void adsp_ipc_recv(struct mbox_client *c, void *msg)
> +{

Ditto, mtk_adsp_ipc_recv looks better to me.

> diff --git a/include/linux/firmware/mediatek/mtk-adsp-ipc.h b/include/linux/firmware/mediatek/mtk-adsp-ipc.h
[...]
> +struct adsp_mbox_ch_info {
> +     u32 ipc_op_val;
> +     void __iomem *va_reg;
> +};

Ditto, mtk_adsp_mbox_ch_info.

> +static inline void adsp_ipc_set_data(struct mtk_adsp_ipc *ipc, void *data)
> +{

mtk_adsp_ipc_set_data, although there is no use case yet.

> +static inline void *adsp_ipc_get_data(struct mtk_adsp_ipc *ipc)
> +{

mtk_adsp_ipc_get_data, although there is no use case yet.

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD03D462EB2
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 09:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239704AbhK3Iqd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Nov 2021 03:46:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58922 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239707AbhK3Iqd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Nov 2021 03:46:33 -0500
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 900B0C061746
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 00:43:13 -0800 (PST)
Received: by mail-pl1-x62d.google.com with SMTP id m24so14348744pls.10
        for <devicetree@vger.kernel.org>; Tue, 30 Nov 2021 00:43:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fHVy98BTaUQF52BWKLZtuQVRzz01N8+H95C8cB4Mhtg=;
        b=dkAqbyqTPRY4L/DB0uLdYdRPU6b1N+TybDCY0FHBvSZn/2S8Ae0v0tdFZwYj7zBLDi
         8QqrjFuNnxaIPD8BAr2rJhpwB2cDkqWynWjh0Ac4qLo6dTsE54UqsPiCOX+RddtIHAO2
         8JBLdxXwcjC/F/oqOtekIMDpqcxK4ymeEg2t/OKu6eb2DQDHJUzH+N2n7plAhq184vX+
         3ilr42mjOAMqMwT+OGrhYyComtrMz2+AeX0KPKFk06V5xiL+cTmcyS3TObk+6xDdalRD
         5Gaot3pJL+djNMmQ9F1IXX3Sxk97PgB1c7iou+/rl9Rq5op0ena4PcLEXQYlr5biumJp
         qtzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fHVy98BTaUQF52BWKLZtuQVRzz01N8+H95C8cB4Mhtg=;
        b=y6dyhRzy51pdztH9nTZY075rfsXKEKjShtn1ikrPTHU/+TlfAHtDD26Ku42HFKcI3z
         3fc7mgNjFayO6wqMbcLkNysp3mNcXQwkOat4gh2o/XaeyQeT6l5sDLFSC6o6zitTqHPl
         elfLub6zN+pwn7rUg4MfYvTRecAftgJuJpre807+dm/Zza2pVtRqIifDXyV7K70U8qnE
         QL2NzuQex9zzg53uipeqGiGDHL19kKsl+58K8m2EKFZe06gi7NNsxwT7A6nrQiKv92pR
         W5wg6Z1orSKkIqEGIFkFNA+7l3unKcJYNGkJhQEn4h8hMytlUKGUaVctAOsCFeTQGRAW
         Hs1g==
X-Gm-Message-State: AOAM532DRJiOMN6lwZPccqRJ44dGpGLFst933gWjF7Ycs8rJKdc4XgdX
        XoDRIM/Uke5ZzeHPnq3sw8RHIQ==
X-Google-Smtp-Source: ABdhPJxue2FBF6O8NbPbziRrwGNOciaOEZ/z8FnZ1b/zhjeFgaTTmvLKkjb9rz4cIuDD9UU5GWKBaQ==
X-Received: by 2002:a17:903:24d:b0:143:beb5:b6b1 with SMTP id j13-20020a170903024d00b00143beb5b6b1mr66622707plh.54.1638261792852;
        Tue, 30 Nov 2021 00:43:12 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:6cb4:a0cc:6d7f:cba7])
        by smtp.gmail.com with ESMTPSA id v10sm20770644pfu.123.2021.11.30.00.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Nov 2021 00:43:12 -0800 (PST)
Date:   Tue, 30 Nov 2021 16:43:07 +0800
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
Subject: Re: [PATCH v8 3/3] mailbox: mediatek: add support for adsp mailbox
 controller
Message-ID: <YaXkGym5QQDBSfcP@google.com>
References: <20211129101946.6008-1-allen-kh.cheng@mediatek.com>
 <20211129101946.6008-4-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211129101946.6008-4-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 06:19:45PM +0800, allen-kh.cheng wrote:
> diff --git a/drivers/mailbox/mtk-adsp-mailbox.c b/drivers/mailbox/mtk-adsp-mailbox.c
[...]
> +static int mtk_adsp_mbox_probe(struct platform_device *pdev)
> +{
[...]
> +	mbox->dev = dev;
> +	mbox->ops = &mtk_adsp_mbox_chan_ops;
> +	mbox->txdone_irq = false;
> +	mbox->txdone_poll = true;
> +	mbox->of_xlate = mtk_adsp_mbox_xlate;
> +	mbox->num_chans = 1;
> +	mbox->chans = devm_kzalloc(mbox->dev, sizeof(*mbox->chans), GFP_KERNEL);

I have commented in the v3[1].  To be neat, I prefer to use "dev" instead of "mbox->dev".  If you ever have the chance to respin the series, please fix it.

[1]: https://patchwork.kernel.org/project/linux-mediatek/patch/20211124084514.28002-3-allen-kh.cheng@mediatek.com/#24614933

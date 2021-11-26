Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B635745E6F8
	for <lists+devicetree@lfdr.de>; Fri, 26 Nov 2021 05:45:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358497AbhKZEtA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Nov 2021 23:49:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48794 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244852AbhKZErA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 Nov 2021 23:47:00 -0500
Received: from mail-pf1-x432.google.com (mail-pf1-x432.google.com [IPv6:2607:f8b0:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2872C0613ED
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 20:43:28 -0800 (PST)
Received: by mail-pf1-x432.google.com with SMTP id 8so7727025pfo.4
        for <devicetree@vger.kernel.org>; Thu, 25 Nov 2021 20:43:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=gwJIiwnisD6cF408GW4bOCdNiOevm+kN2DCfktfQz/4=;
        b=p/HPnND/JDqjAz5osN2fiqxWxjwlxeukWlCnWFYdia3ksPcLdj2T2/w7EYHHk2wHzh
         8NoOKsyeh7nIRO3jA2Qp5+Zzr44CZP9J0vSuGvhzzd5Ul9T7StHo8IKBzGd2fG7GtWDY
         nTuYDnPwWGPJ6wmjXG3VlLZeKT3MdPKSc62rgr6+X422bqTD4m2MyX/LeNEwCfWWPAmJ
         WL1g3/QQ9L7Sk4aUC+UtrkapDFWHLz0QFTssZtHaZhFkEONtoJXKH8XKz0xoFpLLMfX9
         T9eYriy9fff/4MdXaIi3AukGZ6kvEwLf0KIs6V+L97ucwyXzlqO5xkmijlGi/tylQq5u
         qsYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=gwJIiwnisD6cF408GW4bOCdNiOevm+kN2DCfktfQz/4=;
        b=M9iJv+7MLAn60uLgBudJD0eqYk8Suz/1vUFxxIuGm7lOeO9LQFsV2lgv7/9JTSMnZw
         IfEH/20fpxUEsDWmslP6FKjjxq62sl6zwf8quyqneyM49ZEKIES9+EZL5W8CT6Et3E3+
         QYSUTuL4EFxMGRY0bvJdU16qbZUgbh8FhH1S0SlDxoEJTsarTVxZesK0BivZKyvn7Y2T
         1TOtb4NyWCxOf1FAxzvBrOgadTQ6rkSrnmL4VzwUQMF3rPSofbnhFgwAeNwdDGhdSoN5
         d24Qlfca0X/kX0eR2kNVFgUS5v3T5qvCycJSOo0k4EYvmDR/TS5xwB5hSLPOuNEjGILS
         yKJw==
X-Gm-Message-State: AOAM533Mv/C93pYEwmod+9ueVK799Wzrp5BzaCQyzfJrA3ciWTerJjiO
        5VjuZVDVcoFsC+DqET0Wp1xyjg==
X-Google-Smtp-Source: ABdhPJx0FjXR51YfULBYoNlN6azVm4pmsK/QdHHWCakrLIU0+ikdrQc99GBXkyRgdyNDpZyG+Rly5Q==
X-Received: by 2002:a63:150c:: with SMTP id v12mr19528275pgl.442.1637901808160;
        Thu, 25 Nov 2021 20:43:28 -0800 (PST)
Received: from google.com ([2401:fa00:1:10:5eda:d984:1426:91ca])
        by smtp.gmail.com with ESMTPSA id g9sm5600382pfj.160.2021.11.25.20.43.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Nov 2021 20:43:27 -0800 (PST)
Date:   Fri, 26 Nov 2021 12:43:23 +0800
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     "allen-kh.cheng" <allen-kh.cheng@mediatek.com>
Cc:     Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        cujomalainey@google.com,
        Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ranjani Sridharan <ranjani.sridharan@linux.intel.com>,
        Kai Vehmanen <kai.vehmanen@linux.intel.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        sound-open-firmware@alsa-project.org
Subject: Re: [PATCH v4 3/3] mailbox: mediatek: add support for adsp mailbox
 controller
Message-ID: <YaBl66b7VFJK84F4@google.com>
References: <20211125122925.1303-1-allen-kh.cheng@mediatek.com>
 <20211125122925.1303-4-allen-kh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211125122925.1303-4-allen-kh.cheng@mediatek.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 08:29:25PM +0800, allen-kh.cheng wrote:
> diff --git a/drivers/mailbox/mtk-adsp-mailbox.c b/drivers/mailbox/mtk-adsp-mailbox.c
[...]
> +static bool mtk_adsp_mbox_last_tx_done(struct mbox_chan *chan)
> +{
> +	struct adsp_mbox_ch_info *ch_info = chan->con_priv;
> +	void __iomem *reg = ch_info->va_reg;
> +
> +	return (readl(reg + MTK_ADSP_MBOX_IN_CMD) == 0) ? true : false;

To be concise, readl(reg + MTK_ADSP_MBOX_IN_CMD) == 0.

> +static int mtk_adsp_mbox_probe(struct platform_device *pdev)
> +{
[...]
> +	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
> +	if (!res) {
> +		dev_err(dev, "no adsp mbox register resource\n");
> +		return -ENXIO;
> +	}
> +
> +	priv->va_mboxreg = devm_platform_ioremap_resource(pdev, 0);
> +	if (IS_ERR(priv->va_mboxreg))
> +		return PTR_ERR(priv->va_mboxreg);

If using devm_platform_ioremap_resource(), it doesn't need to call platform_get_resource().  res is unused.

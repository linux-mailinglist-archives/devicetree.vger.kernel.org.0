Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 76CC83285C
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 08:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726892AbfFCGM5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 02:12:57 -0400
Received: from mail-qk1-f195.google.com ([209.85.222.195]:45589 "EHLO
        mail-qk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726741AbfFCGM5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 02:12:57 -0400
Received: by mail-qk1-f195.google.com with SMTP id s22so8276931qkj.12
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
        b=fuxr8hy1ndYkPliVijP3ig5I+ip9VWE0P2yh80Jq/MvQG6c9DoiS6lr2FunG35GbPp
         Ndqy5vBKyLtaR3WnnumoaQ/hATDNwRh4VhWFKf29gGr4JSmvjErcNiFS62LTDxLrAwP/
         4gouhbfiCjvi/19vu9jcISzQHvv3SlbTnrJ4o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rQKMvlElkXzkTnW65282CmCjdowsYOxbvU0co6H2Omc=;
        b=ITgWMcz632zWS0bUYqvQgZvTFWpS3EtwXjUSGA2X65GIfiTHi+znuH161bXc3XCSDA
         u5jBZl6D6RrTYA6OIiocsKc8PJBmNcTHaIl6oDhOtfy1SGAfvj4wFTEWcUfVuV+LHvqN
         pgDFWbSx5hh7z8SiaD/qQouAq+cHvpKeyBT6oFyHIKiFeXI+jw6TdCpEAf5tv2fGoKUv
         x/RBkLXUSoM49oN3rcflkFSb9dSkDg4DpVXddZBGQZpUEhX68ZLGe2PEGXthxVLsdBVL
         LbOcdIQg1j1bFQXKUnWxBccwg4ANq33VDIhSlHcxTNrggsdbaCaWo3f5y47iX8gCG1pK
         uGqw==
X-Gm-Message-State: APjAAAXb9Ud6b9ZFlelbQyq2up7FtGO6yuKaXLMV5WeRE+zQ/hzcUOUP
        cToU7goqVdecklJ5pR9MW7hFTtiAzQA1kI942A6iYg==
X-Google-Smtp-Source: APXvYqyYa6aK4qpb4pHRxq5EdOva3L9eBw4p4afxZAlRUL377+FbepH6pzSX2TDOULWOglfbvTtKnNCF8b4lPScN6ns=
X-Received: by 2002:a05:620a:1425:: with SMTP id k5mr20130384qkj.146.1559542376042;
 Sun, 02 Jun 2019 23:12:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190601092615.67917-1-jitao.shi@mediatek.com> <20190601092615.67917-2-jitao.shi@mediatek.com>
In-Reply-To: <20190601092615.67917-2-jitao.shi@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Mon, 3 Jun 2019 14:12:30 +0800
Message-ID: <CAJMQK-iW2SfHL0Dgc6p8AmrwjL=XHP4SeyxaZz=R-5x0qLZtFw@mail.gmail.com>
Subject: Re: [v4 1/7] drm/mediatek: move mipi_dsi_host_register to probe
To:     Jitao Shi <jitao.shi@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Pawel Moll <pawel.moll@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Ian Campbell <ijc+devicetree@hellion.org.uk>,
        linux-pwm@vger.kernel.org, David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>, stonea168@163.com,
        dri-devel@lists.freedesktop.org,
        Andy Yan <andy.yan@rock-chips.com>,
        Ajay Kumar <ajaykumar.rs@samsung.com>,
        Vincent Palatin <vpalatin@chromium.org>,
        cawa.cheng@mediatek.com, bibby.hsieh@mediatek.com,
        CK Hu <ck.hu@mediatek.com>,
        Russell King <rmk+kernel@arm.linux.org.uk>,
        Thierry Reding <treding@nvidia.com>,
        devicetree@vger.kernel.org, Philipp Zabel <p.zabel@pengutronix.de>,
        Inki Dae <inki.dae@samsung.com>,
        linux-mediatek@lists.infradead.org, yingjoe.chen@mediatek.com,
        eddie.huang@mediatek.com,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rahul Sharma <rahul.sharma@samsung.com>,
        srv_heupstream@mediatek.com, lkml <linux-kernel@vger.kernel.org>,
        Sascha Hauer <kernel@pengutronix.de>,
        Sean Paul <seanpaul@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Jun 1, 2019 at 9:26 AM Jitao Shi <jitao.shi@mediatek.com> wrote:

> --- a/drivers/gpu/drm/mediatek/mtk_dsi.c
> +++ b/drivers/gpu/drm/mediatek/mtk_dsi.c
> @@ -1045,12 +1045,6 @@ static int mtk_dsi_bind(struct device *dev, struct device *master, void *data)
>                 return ret;
>         }
>
> -       ret = mipi_dsi_host_register(&dsi->host);
> -       if (ret < 0) {
> -               dev_err(dev, "failed to register DSI host: %d\n", ret);
> -               goto err_ddp_comp_unregister;
> -       }
> -

> @@ -1097,31 +1089,37 @@ static int mtk_dsi_probe(struct platform_device *pdev)
>
>         dsi->host.ops = &mtk_dsi_ops;
>         dsi->host.dev = dev;
> +       dsi->dev = dev;
> +       ret = mipi_dsi_host_register(&dsi->host);
> +       if (ret < 0) {
> +               dev_err(dev, "failed to register DSI host: %d\n", ret);
> +               return ret;
> +       }

(It's commented on v3, in case it's missed, sent this again.)
Since mipi_dsi_host_register() is moved from .bind to .probe,
mipi_dsi_host_unregister() should also be moved from .unbind to
.remove?

Thanks

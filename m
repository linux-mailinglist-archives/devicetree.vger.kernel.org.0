Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79DBE2E7D97
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 02:22:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726323AbgLaBWn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Dec 2020 20:22:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40552 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726285AbgLaBWn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Dec 2020 20:22:43 -0500
Received: from mail-vk1-xa2a.google.com (mail-vk1-xa2a.google.com [IPv6:2607:f8b0:4864:20::a2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E33F9C061575
        for <devicetree@vger.kernel.org>; Wed, 30 Dec 2020 17:21:56 -0800 (PST)
Received: by mail-vk1-xa2a.google.com with SMTP id m145so3997975vke.7
        for <devicetree@vger.kernel.org>; Wed, 30 Dec 2020 17:21:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mlkXVdHyhNYiM3/2KIoSx+pXpWswuzzhreZMYSFz1hg=;
        b=aSw3CQT470ayL+TnbFzQRX0vGsaH4OBvdT0aCNT/hv0Q0LYzrJAEp/0i0h4rq6QHCm
         dzxlpQgg5DpEIAjBM0GXaSkeYlsN/M4mJ+QpEfXKp78FlGQi9yUqYQUvfCmTCPWh3Ii1
         tkGilqkmBxvJr7CHDSTuYCXfdQq01lh+4XvVs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mlkXVdHyhNYiM3/2KIoSx+pXpWswuzzhreZMYSFz1hg=;
        b=NWRk6HYbceWzpGdz06IXmiYITN3cx+YP8rUeWm5DKNWCTIFT6PC64X+e0kpyYEmmk2
         EJ+ytjl6pKoRmxWHl56A017PJnrVmMKLTvRMJ3Riw5LAtNbx9o7Myx+R5rHo+HYe0+g4
         Axsfu2CQJKpu8Ott6MpLcKaGaWCTyNTA+jBirsJlEkbKG292FhzfQ2oMjeLPX0/1gMWb
         nIoYFfAjec1WOLdVKHrvro8CzmzOxsSU03dclnfiRLcbD6j9TRVAAdlTjKr+QOiz75K/
         mw6fOHPK17BvaZCjHk2CPIHmFY2YWJKHOi0TZn7+Hu8ITo6VH5e5lMiw2K7BqXigl6kQ
         BuCA==
X-Gm-Message-State: AOAM532mClv/3X4ZBhWeRuShDtwGogcoiVPZcCTV4n3ajuJuVq5YW3oH
        iGrHs+r0et75hp5jMlRb7WbzEkD7y3vSCjRIhdDMrg==
X-Google-Smtp-Source: ABdhPJzsqmjkBTHv/QEJaRsP982zznC3i91xEDQ66j6o4sJOhmDOVgkibqYEzzhJFkf9EQK3O0f9MLJhli4TwA0xbb8=
X-Received: by 2002:a1f:9e83:: with SMTP id h125mr18571561vke.18.1609377715869;
 Wed, 30 Dec 2020 17:21:55 -0800 (PST)
MIME-Version: 1.0
References: <1609144630-14721-1-git-send-email-yongqiang.niu@mediatek.com> <1609144630-14721-2-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1609144630-14721-2-git-send-email-yongqiang.niu@mediatek.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Thu, 31 Dec 2020 09:21:45 +0800
Message-ID: <CANMq1KCRBz-rY6y3nHp8yh_QSohkmaYS=DqNDSPzvwmq-a09DQ@mail.gmail.com>
Subject: Re: [PATCH v3, 1/8] soc: mediatek: mmsys: create mmsys folder
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     CK Hu <ck.hu@mediatek.com>, Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        David Airlie <airlied@linux.ie>,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Dec 28, 2020 at 4:38 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> the mmsys will more and more complicated after support
> more and more SoCs, add an independent folder will be
> more clear
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>
> ---
>  drivers/soc/mediatek/Makefile          |   2 +-
>  drivers/soc/mediatek/mmsys/Makefile    |   2 +
>  drivers/soc/mediatek/mmsys/mtk-mmsys.c | 380 +++++++++++++++++++++++++++++++++
>  drivers/soc/mediatek/mtk-mmsys.c       | 380 ---------------------------------

I wonder why this doesn't get detected as a rename?

>  4 files changed, 383 insertions(+), 381 deletions(-)
>  create mode 100644 drivers/soc/mediatek/mmsys/Makefile
>  create mode 100644 drivers/soc/mediatek/mmsys/mtk-mmsys.c
>  delete mode 100644 drivers/soc/mediatek/mtk-mmsys.c
>
> diff --git a/drivers/soc/mediatek/Makefile b/drivers/soc/mediatek/Makefile
> index 01f9f87..b5987ca 100644
> --- a/drivers/soc/mediatek/Makefile
> +++ b/drivers/soc/mediatek/Makefile
> @@ -3,4 +3,4 @@ obj-$(CONFIG_MTK_CMDQ) += mtk-cmdq-helper.o
>  obj-$(CONFIG_MTK_INFRACFG) += mtk-infracfg.o
>  obj-$(CONFIG_MTK_PMIC_WRAP) += mtk-pmic-wrap.o
>  obj-$(CONFIG_MTK_SCPSYS) += mtk-scpsys.o
> -obj-$(CONFIG_MTK_MMSYS) += mtk-mmsys.o
> +obj-$(CONFIG_MTK_MMSYS) += mmsys/
> diff --git a/drivers/soc/mediatek/mmsys/Makefile b/drivers/soc/mediatek/mmsys/Makefile
> new file mode 100644
> index 0000000..5d976d7
> --- /dev/null
> +++ b/drivers/soc/mediatek/mmsys/Makefile
> @@ -0,0 +1,2 @@
> +# SPDX-License-Identifier: GPL-2.0-only
> +obj-$(CONFIG_MTK_MMSYS) += mtk-mmsys.o
> \ No newline at end of file

Nit: newline at end of file please.

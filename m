Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 669EE3CB357
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 09:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232052AbhGPHk1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 03:40:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60648 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232012AbhGPHk0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 03:40:26 -0400
Received: from mail-il1-x130.google.com (mail-il1-x130.google.com [IPv6:2607:f8b0:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 694A1C06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 00:37:32 -0700 (PDT)
Received: by mail-il1-x130.google.com with SMTP id e13so7459417ilc.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 00:37:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ANiQyDq/folOxbicLwy3YOWgSYI5J0bEHqTHjcfWpeE=;
        b=NZ/hguWCrTo//AU1Q0svGXlehzVRhlRy/nSls8iodhXXHgSEeCwbBTZ/daP8ru1+2y
         BxRBJiEgjMWnZOPOkNow345Owj7290E/vXITWK+0+xpPLDyrmWtEgAaLi1EYLiW0H96w
         NuqSZvzGC2Z4C51n2jOptN+DVowI83OLjjCDE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ANiQyDq/folOxbicLwy3YOWgSYI5J0bEHqTHjcfWpeE=;
        b=k0x97fn8lPzyJQVrU4855AhqV18nHsFhi5lkeotxfb4o9PZhjvJG8ZWdBD6s8y3P6W
         pAdC6cHO6NSBDOx1pXdJNu5kQ6DUWKY/3lnDyag7K5ZIyrqc811e5xasP9NRX9Z5/iku
         YKEfhNsdYS5NaVhQCevgrcHEJye+klnn5cC2DiNo5RgZHkeyJ6bxktYyE/64XYQT14/c
         q7qcN1lNAfiyQnwa2u2tVu1K7hOVvicyzD8HZVdnb83KvD8C79BfJS/bTwRXPEFdOnW1
         tfVvKGzKshy9QzU2kHOjkGlpxKZXgqCVR1qFN4iEZjDNgQ25UrTWnWOskEGpsUC8vCtm
         og9w==
X-Gm-Message-State: AOAM531sfIyd9L8d/uTK7ApOPjn/+aWw6ZraCw0w0HhrXx9rBtKpgmwZ
        USNXrwR9YeAwLKQZHSWIuCTn9WmG2/OAOunu+zeRew==
X-Google-Smtp-Source: ABdhPJyT8V6x97LXNxXCsukgUCvYDKNceqkLDBqaokboRJb34I4xEcF3g0U8Zw6BQAhoQ5hGaStIUlO4jTjCi2i7VqY=
X-Received: by 2002:a92:d305:: with SMTP id x5mr5796115ila.150.1626421051833;
 Fri, 16 Jul 2021 00:37:31 -0700 (PDT)
MIME-Version: 1.0
References: <1626418701-28467-1-git-send-email-yongqiang.niu@mediatek.com> <1626418701-28467-2-git-send-email-yongqiang.niu@mediatek.com>
In-Reply-To: <1626418701-28467-2-git-send-email-yongqiang.niu@mediatek.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Fri, 16 Jul 2021 15:37:05 +0800
Message-ID: <CAJMQK-ghGCR3L89NzBx-6X6rJK-4VQYZT18DqdKM780r2bLvpA@mail.gmail.com>
Subject: Re: [PATCH v1] mailbox: cmdq: add instruction time-out interrupt support
To:     Yongqiang Niu <yongqiang.niu@mediatek.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Fabien Parent <fparent@baylibre.com>,
        Dennis YC Hsieh <dennis-yc.hsieh@mediatek.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Project_Global_Chrome_Upstream_Group@mediatek.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 16, 2021 at 2:58 PM Yongqiang Niu
<yongqiang.niu@mediatek.com> wrote:
>
> add time-out cycle setting to make sure time-out interrupt irq
> will happened when instruction time-out for wait and poll
>
> Signed-off-by: Yongqiang Niu <yongqiang.niu@mediatek.com>

Hi, it seems that this series is based on
https://patchwork.kernel.org/project/linux-mediatek/patch/1624440623-4585-4-git-send-email-yongqiang.niu@mediatek.com/?

Please state it if it's not based on linux-next, thanks!

> ---
>  drivers/mailbox/mtk-cmdq-mailbox.c | 11 +++++++++++
>  1 file changed, 11 insertions(+)
>
> diff --git a/drivers/mailbox/mtk-cmdq-mailbox.c b/drivers/mailbox/mtk-cmdq-mailbox.c
> index de4793e..9a76bcd 100644
> --- a/drivers/mailbox/mtk-cmdq-mailbox.c
> +++ b/drivers/mailbox/mtk-cmdq-mailbox.c
> @@ -35,6 +35,7 @@
>  #define CMDQ_THR_END_ADDR              0x24
>  #define CMDQ_THR_WAIT_TOKEN            0x30
>  #define CMDQ_THR_PRIORITY              0x40
> +#define CMDQ_THR_INSTN_TIMEOUT_CYCLES  0x50
>
>  #define GCE_GCTL_VALUE                 0x48
>
> @@ -53,6 +54,15 @@
>  #define CMDQ_JUMP_BY_OFFSET            0x10000000
>  #define CMDQ_JUMP_BY_PA                        0x10000001
>
> +/*
> + * instruction time-out
> + * cycles to issue instruction time-out interrupt for wait and poll instructions
> + * GCE axi_clock 156MHz
> + * 1 cycle = 6.41ns
> + * instruction time out 2^22*2*6.41ns = 53ms
> + */
> +#define CMDQ_INSTN_TIMEOUT_CYCLES      22
> +
>  struct cmdq_thread {
>         struct mbox_chan        *chan;
>         void __iomem            *base;
> @@ -368,6 +378,7 @@ static int cmdq_mbox_send_data(struct mbox_chan *chan, void *data)
>                 writel((task->pa_base + pkt->cmd_buf_size) >> cmdq->shift_pa,
>                        thread->base + CMDQ_THR_END_ADDR);
>
> +               writel(CMDQ_INSTN_TIMEOUT_CYCLES, thread->base + CMDQ_THR_INSTN_TIMEOUT_CYCLES);
>                 writel(thread->priority, thread->base + CMDQ_THR_PRIORITY);
>                 writel(CMDQ_THR_IRQ_EN, thread->base + CMDQ_THR_IRQ_ENABLE);
>                 writel(CMDQ_THR_ENABLED, thread->base + CMDQ_THR_ENABLE_TASK);
> --
> 1.8.1.1.dirty
>

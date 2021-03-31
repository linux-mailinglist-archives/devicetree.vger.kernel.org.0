Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7378634F58F
	for <lists+devicetree@lfdr.de>; Wed, 31 Mar 2021 02:43:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232878AbhCaAm5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 20:42:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232824AbhCaAm4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 20:42:56 -0400
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com [IPv6:2607:f8b0:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 08D0DC061574
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 17:42:56 -0700 (PDT)
Received: by mail-pg1-x52d.google.com with SMTP id f3so3738880pgv.0
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 17:42:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xiW5jawOlQ76P4FWk0YbQQAu/W4APliv2SXCnO1FSOk=;
        b=W4aAjNrNmDfvwAuqOPd6gDGxwWuYV6QtwKbfDN+I3vVXBUPODzBQ5RSjDCJe+vWUrE
         LCG7AmJ948RfbKzE+iiNChEci2WglLEi299qReDK9pRGY0NdjvLxgmvftIZwKX4zunXi
         pIIWR/SquaGnxGdLrCDKvRfylJuaCQpeuBooNIZ+frdTr6b0aQ7rqeWyM6hbS/+X0FKm
         w14bI73n5ASc8SGjn6U58xOfTtA1MFXbuc5K8TRsMDl5+Y6H10m+J9f4dXFJHb5EFCT9
         6iMw3/CQs/rKmDweMkiRrgfeikKPEEqh3++wxEnMoOoin8MtngzACyzQC9ejAFiQFuPM
         3OBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xiW5jawOlQ76P4FWk0YbQQAu/W4APliv2SXCnO1FSOk=;
        b=nXNlWYplhE2h+IZEt0BuEcRp5xMLl6qshYsJEKTGyqzdkIl530Hno2RdvN/oDQY5U6
         zjEhowfyumB01PxqeeNC+ncPyrz+mB+8mMJNHk0/tnJ2QcsYA4oXDlaT9zVDCpqkGf51
         6s/k1cceq0/nTcy88cjuCP/mUlwH7M3QZBUKl91XygOL9lz6kevE025DY2T6iJn+pQSd
         c+Xi/eXubtNQM+Fo1LBpIFmA+JbWPeMvsxUDD7DGr/hLS6ScgZOFz3mGZUi/f5AMBOA5
         NMViQ2rrStD+Pbpp1TcfCweKyDat4scTzWf0b+ek+CQihTFbEmwTCi48GRLLEfUpn8MY
         AdwA==
X-Gm-Message-State: AOAM530JGK3PMdydkEwBtx5EZUJkzR2Ykpa9+9zLIJIsgZzHKQDu34R3
        aT0WT//YTEcwK3oVrdH8B/Kp8gfJK8vYraobONw=
X-Google-Smtp-Source: ABdhPJyEA9P2SjMFHNXzeYqlV4szqur3iLVrl0D8GCxO8dj4gYOdm5RcjCA49JmLS3eF02Cs+6igrU+HTh7yNQUWVA0=
X-Received: by 2002:a62:68c4:0:b029:226:5dc5:4082 with SMTP id
 d187-20020a6268c40000b02902265dc54082mr501620pfc.48.1617151375532; Tue, 30
 Mar 2021 17:42:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210311113439.15458-1-conor.dooley@microchip.com>
In-Reply-To: <20210311113439.15458-1-conor.dooley@microchip.com>
From:   Jassi Brar <jassisinghbrar@gmail.com>
Date:   Tue, 30 Mar 2021 19:42:44 -0500
Message-ID: <CABb+yY0uYf1C3SRmEtTxsvfqwJ-4Qt=G7jWVMnE_3giJ0siF4A@mail.gmail.com>
Subject: Re: [PATCH v4 1/5] mbox: add polarfire soc system controller mailbox
To:     conor.dooley@microchip.com
Cc:     Rob Herring <robh+dt@kernel.org>, damien.lemoal@wdc.com,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        palmer@dabbelt.com, Devicetree List <devicetree@vger.kernel.org>,
        linux-riscv@lists.infradead.org, j.neuschaefer@gmx.net,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 5:34 AM <conor.dooley@microchip.com> wrote:

> diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-mpfs.c
> new file mode 100644
> index 000000000000..7aa6c8c87ea0
> --- /dev/null
> +++ b/drivers/mailbox/mailbox-mpfs.c
> @@ -0,0 +1,277 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Microchip PolarFire SoC (MPFS) system controller/mailbox controller driver
> + *
> + * Copyright (c) 2020 Microchip Corporation. All rights reserved.
> + *
> + * Author: Conor Dooley <conor.dooley@microchip.com>
> + *
> + */
> +
> +#include <linux/io.h>
> +#include <linux/err.h>
> +#include <linux/init.h>
> +#include <linux/module.h>
> +#include <linux/kernel.h>
> +#include <linux/interrupt.h>
> +#include <linux/platform_device.h>
> +#include <linux/mailbox_controller.h>
> +#include <soc/microchip/mpfs.h>
> +
> +#define SERVICES_CR_OFFSET             0x50u
> +#define SERVICES_SR_OFFSET             0x54u
> +#define MAILBOX_REG_OFFSET             0x800u
> +#define MSS_SYS_MAILBOX_DATA_OFFSET    0u
> +#define SCB_MASK_WIDTH                 16u
> +
> +/* SCBCTRL service control register */
> +
> +#define SCB_CTRL_REQ (0)
> +#define SCB_CTRL_REQ_MASK BIT(SCB_CTRL_REQ)
> +
> +#define SCB_CTRL_BUSY (1)
> +#define SCB_CTRL_BUSY_MASK BIT(SCB_CTRL_BUSY)
> +
> +#define SCB_CTRL_ABORT (2)
> +#define SCB_CTRL_ABORT_MASK BIT(SCB_CTRL_ABORT)
> +
> +#define SCB_CTRL_NOTIFY (3)
> +#define SCB_CTRL_NOTIFY_MASK BIT(SCB_CTRL_NOTIFY)
> +
> +#define SCB_CTRL_POS (16)
> +#define SCB_CTRL_MASK GENMASK(SCB_CTRL_POS + SCB_MASK_WIDTH, SCB_CTRL_POS)
> +
> +/* SCBCTRL service status register */
> +
> +#define SCB_STATUS_REQ (0)
> +#define SCB_STATUS_REQ_MASK BIT(SCB_STATUS_REQ)
> +
> +#define SCB_STATUS_BUSY (1)
> +#define SCB_STATUS_BUSY_MASK BIT(SCB_STATUS_BUSY)
> +
> +#define SCB_STATUS_ABORT (2)
> +#define SCB_STATUS_ABORT_MASK BIT(SCB_STATUS_ABORT)
> +
> +#define SCB_STATUS_NOTIFY (3)
> +#define SCB_STATUS_NOTIFY_MASK BIT(SCB_STATUS_NOTIFY)
> +
> +#define SCB_STATUS_POS (16)
> +#define SCB_STATUS_MASK GENMASK(SCB_STATUS_POS + SCB_MASK_WIDTH, SCB_STATUS_POS)
> +
Please run checkpatch with strict option on the patchset.


> +
> +static int mpfs_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +       u32 mailbox_val = 0u;
> +       u16 options_select;
> +       u32 tx_trigger;
>
just a nit... here and elsewhere, can the variables be lesser verbose?


> +
> +static void mpfs_mbox_rx_data(struct mbox_chan *chan)
> +{
> +       struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
> +       u32 i;
> +       u16 num_words = ALIGN((mbox->response_size), (4)) / 4U; //TODO better way?
> +       struct mpfs_mss_response *response;
> +
> +       response = kmalloc(sizeof(*response), GFP_ATOMIC);
> +       response->response_size = mbox->response_size;
> +       response->response_msg = kcalloc(num_words, sizeof(response->response_msg), GFP_ATOMIC);
> +
> +       if (!response->response_msg) {
> +               dev_err(mbox->dev, "failed to assign memory for response %d\n", -ENOMEM);
> +               return;
> +       }
> +
response_size is provided by the client driver.
So why not simply get the buffer from the client and just fill it
here? That is simpler and better (avoid alloc in isr) and the right
thing to do.


> +
> +static int mpfs_mbox_probe(struct platform_device *pdev)
> +{
> +       struct mpfs_mbox *mbox;
> +       struct resource *regs;
> +       struct mbox_chan *chans;
> +       int ret;
> +
> +       mbox = devm_kzalloc(&pdev->dev, sizeof(*mbox), GFP_KERNEL);
> +       if (!mbox)
> +               return -ENOMEM;
> +
> +       chans = devm_kzalloc(&pdev->dev, sizeof(*chans), GFP_KERNEL);
>
You may simply embed the mbox_chan in mpfs_mbox.

cheers.

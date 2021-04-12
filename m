Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C58635CF56
	for <lists+devicetree@lfdr.de>; Mon, 12 Apr 2021 19:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243737AbhDLRV0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 12 Apr 2021 13:21:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36284 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239517AbhDLRV0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 12 Apr 2021 13:21:26 -0400
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com [IPv6:2607:f8b0:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E4463C061574
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 10:21:07 -0700 (PDT)
Received: by mail-pg1-x530.google.com with SMTP id w10so9927859pgh.5
        for <devicetree@vger.kernel.org>; Mon, 12 Apr 2021 10:21:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Fk0FLPeMMiJckCaWO2h64AWj3iFF63ZHx4bCCRoxZF4=;
        b=EPvswoY7R5iinyT5EKxqT3IT0VZIIQ7kt8d2ZvWR5qcd7vaRbtzW0dMRIU9ekAFyIw
         z8rtUPoY3S41/eoU/2m3XhjSMTPIgmtje+gOxJ2ds/mApI5MzFUjChjE58STzFBeF10s
         BIC05lKEEwZlejHFVrw4plxHiKA87ZsoYsLf1dRWDb+p9uSgbpCAJZaC77cBqvsqbux2
         DKqmljZgau/99+StcUcgVkgysAT73SSgxXtj9uXyjwCqD4fUMKXiu4bDxojcQenypk3f
         LTPEajzZ1UdfRXAQnLZJ7LOQ1SqPiJheiKwEdwbUCYPDLyGrViz7Z0EXP6pdNqN09f/r
         FCAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Fk0FLPeMMiJckCaWO2h64AWj3iFF63ZHx4bCCRoxZF4=;
        b=r7HoFB7YRJkkqTROswApjufK0Ws00VKvyKKwJP3VJhPSzuvs0dAPJoep6Fzjs1WIZW
         t9DMhZ6SunfTePf7aQbvbSQU89sb/oDknbe1AW72fYu4XtLdz/odoX51sxiQPcoETJrr
         FQmEh1ytV31CY0bar1mBGYCMUtN5fgsxXdx/+v68NW2Fjj/VfHHGdhPmhtf3SIX9CsvD
         TMuGE6qXvlNQCKYMe6ztVtOjbra5SQw210pbfCMXOf80Qej1jfWBwv38kW/6ZTVARRM/
         Tdeg0ewKS0uANKw0TpteH2uZkMmMuHDMDj18f+ZSKFkanMNOZYZ3cWlOwvnLc6X6Tgg1
         9MjQ==
X-Gm-Message-State: AOAM533iqv5IKo548cvcaRwKS7ifYp2a0/TuFJ9KFWAHEQQQELQKyJGa
        5l8BZDwESOg986Oj6eyJmSF4CVeqn4qaE9ERO9I=
X-Google-Smtp-Source: ABdhPJzTLGfVlP0G2W1PH3mllZ9zSk1h2aXi0coVJCWMJF2D492xgmOhoDNa3+R+Y+W7tyMKQZnIursqZyFOdArD22c=
X-Received: by 2002:aa7:9dcd:0:b029:246:6209:5c22 with SMTP id
 g13-20020aa79dcd0000b029024662095c22mr17786304pfq.62.1618248067446; Mon, 12
 Apr 2021 10:21:07 -0700 (PDT)
MIME-Version: 1.0
References: <20210412160402.19394-1-conor.dooley@microchip.com>
In-Reply-To: <20210412160402.19394-1-conor.dooley@microchip.com>
From:   Jassi Brar <jassisinghbrar@gmail.com>
Date:   Mon, 12 Apr 2021 12:20:56 -0500
Message-ID: <CABb+yY1D4Z_vCXMYqHMhisJFZ9F8RPzaKUnTPhkFW=o5BEWfNg@mail.gmail.com>
Subject: Re: [PATCH v5 2/5] mbox: add polarfire soc system controller mailbox
To:     conor.dooley@microchip.com
Cc:     Rob Herring <robh+dt@kernel.org>, damien.lemoal@wdc.com,
        aou@eecs.berkeley.edu, paul.walmsley@sifive.com,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        linux-riscv@lists.infradead.org, j.neuschaefer@gmx.net,
        lewis.hanly@microchip.com, cyril.jean@microchip.com,
        daire.mcnamara@microchip.com, atish.patra@wdc.com,
        anup.patel@wdc.com, david.abdurachmanov@gmail.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 12, 2021 at 11:04 AM <conor.dooley@microchip.com> wrote:

> diff --git a/drivers/mailbox/mailbox-mpfs.c b/drivers/mailbox/mailbox-mpfs.c

> +
> +struct mpfs_mbox {
> +       struct mbox_controller controller;
> +       struct device *dev;
> +       int irq;
> +       void __iomem *mbox_base;
> +       void __iomem *int_reg;
> +      struct mbox_chan *chans;
>
As I said previously ....  struct mbox_chan chans[1]  ?


> +static bool mpfs_mbox_busy(struct mpfs_mbox *mbox)
> +{
> +       u32 status;
> +
> +       status = readl_relaxed(mbox->mbox_base + SERVICES_SR_OFFSET);
> +
> +       return status & SCB_STATUS_BUSY_MASK;
> +}
> +
> +static struct mpfs_mbox *mbox_chan_to_mpfs_mbox(struct mbox_chan *chan)
> +{
> +       if (!chan)
> +               return NULL;
> +
The return value is not always checked before use in the caller.
And I don't see how could 'chan' ever be null. So, maybe just discard
this function ?


> +       return (struct mpfs_mbox *)chan->con_priv;
> +}
> +
> +static int mpfs_mbox_send_data(struct mbox_chan *chan, void *data)
> +{
> +       u32 val = 0u;
> +       u16 opt_sel;
> +       u32 tx_trigger;
> +       struct mpfs_mss_msg *msg = data;
> +       struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
> +
> +       mbox->response = msg->response;
> +       mbox->resp_offset = msg->resp_offset;
> +
> +       if (mpfs_mbox_busy(mbox))
> +               return -EBUSY;
> +
This check should be unnecessary because the api won't call
send_data() unless the last one is done.


> +static inline bool mpfs_mbox_pending(struct mpfs_mbox *mbox)
> +{
> +       u32 status;
> +
> +       status = readl_relaxed(mbox->mbox_base + SERVICES_SR_OFFSET);
> +
> +       return !(status & SCB_STATUS_BUSY_MASK);
> +}
> +
Isn't this  !mpfs_mbox_busy() ?


> +static void mpfs_mbox_rx_data(struct mbox_chan *chan)
> +{
> +       struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
> +       u32 i;
> +       u16 num_words = ALIGN((mbox->response->resp_size), (4)) / 4U;
> +       struct mpfs_mss_response *response = mbox->response;
> +
Usually the decs are in ascending or descending order. Please choose one.

> +
> +static int mpfs_mbox_startup(struct mbox_chan *chan)
> +{
> +       struct mpfs_mbox *mbox = mbox_chan_to_mpfs_mbox(chan);
> +       int ret = 0;
> +
> +       if (!mbox)
> +               return -EINVAL;
> +       ret = devm_request_irq(mbox->dev, mbox->irq, mpfs_mbox_inbox_isr, 0, "mpfs-mailbox", chan);
>
scripts/checkpatch should catch missing newline before  "ret =" ?

cheers.

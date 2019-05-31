Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 9280831724
	for <lists+devicetree@lfdr.de>; Sat,  1 Jun 2019 00:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726450AbfEaWYT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 18:24:19 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:46193 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726483AbfEaWYS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 18:24:18 -0400
Received: by mail-vs1-f67.google.com with SMTP id l125so7665239vsl.13
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 15:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=NQat/hmrJY1AaWIgT3mTRP/HxuxnRB68t461DgyKajk=;
        b=aIKKW82dvdOzE+1wEmRt5/OwfwxeYiGLLG20GVyJdVys1rGKr/+ihpppzprb/QLFRA
         CKos1Ee4G0Qz03wjNyxB/eB2jNB7FjGKMaAx9dfsX6Zdsu3o/y5JAI9PvBKgRa+xkyQP
         eWD/nvaNTkLAYBd98lvZQunL1eNswJ832l2pY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=NQat/hmrJY1AaWIgT3mTRP/HxuxnRB68t461DgyKajk=;
        b=t8YNVIae+K12wrRE+7HjzEXQL2WnWD0PhOi8gVPaDmbrI4fBtxVkISyfDXE6RCsO/O
         yN4hMJ1Te5NrhpYCaApcX4XK6DgNNnV9BpW70n6fN0QcoNeWrHOIjtyTzCH1qq9FMAq/
         oFgTpbusTUGMtNZxTz3DWGN6Hrhf8dj4oK8Ysy8usHP89gulLadGH/kJbneIV0X+0li6
         AmgXyLtZexvUiPJn4cjqRvD+qc3qd+qPmk64zvu4kfMlBpL9RNkLCwAdi7+/ipo1Au7i
         d191FCL7nYJ0EbDZw9GpS5C0v55m+ra/W8yA3cnso2ADdTe70xiui8YQamyNMuZdjiUA
         damQ==
X-Gm-Message-State: APjAAAXjUqZdYZr5YSZCzHYNii1G/PlI46zXLh4URhopKKKP+ngbpU5C
        NIOGqVJdicOOB8XpD0kqzUs9hN7iYsA=
X-Google-Smtp-Source: APXvYqw0gCbbucmyn4FoZdsLhEMcM0Z8ZC0pzh87PS3CShjIYdBAe1PVQFFGtH5+bHlCqsJ+v6c1uQ==
X-Received: by 2002:a67:8e8a:: with SMTP id q132mr7025863vsd.41.1559341456927;
        Fri, 31 May 2019 15:24:16 -0700 (PDT)
Received: from mail-vs1-f46.google.com (mail-vs1-f46.google.com. [209.85.217.46])
        by smtp.gmail.com with ESMTPSA id y62sm4526372vkg.45.2019.05.31.15.24.13
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 May 2019 15:24:15 -0700 (PDT)
Received: by mail-vs1-f46.google.com with SMTP id g24so5666696vso.8
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 15:24:13 -0700 (PDT)
X-Received: by 2002:a67:442:: with SMTP id 63mr2686288vse.111.1559341452918;
 Fri, 31 May 2019 15:24:12 -0700 (PDT)
MIME-Version: 1.0
References: <20190531030057.18328-1-bjorn.andersson@linaro.org> <20190531030057.18328-3-bjorn.andersson@linaro.org>
In-Reply-To: <20190531030057.18328-3-bjorn.andersson@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 31 May 2019 15:24:00 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V=_ozPiTvT-Fnrc1a+qfHYi3ynNn8cbw9ibqfKk7Am_w@mail.gmail.com>
Message-ID: <CAD=FV=V=_ozPiTvT-Fnrc1a+qfHYi3ynNn8cbw9ibqfKk7Am_w@mail.gmail.com>
Subject: Re: [PATCH v8 2/4] soc: qcom: Add AOSS QMP driver
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Arun Kumar Neelakantam <aneela@codeaurora.org>,
        Vinod Koul <vkoul@kernel.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 30, 2019 at 8:01 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> +/**
> + * qmp_send() - send a message to the AOSS
> + * @qmp: qmp context
> + * @data: message to be sent
> + * @len: length of the message
> + *
> + * Transmit @data to AOSS and wait for the AOSS to acknowledge the message.
> + * @len must be a multiple of 4 and not longer than the mailbox size. Access is
> + * synchronized by this implementation.
> + *
> + * Return: 0 on success, negative errno on failure
> + */
> +static int qmp_send(struct qmp *qmp, const void *data, size_t len)
> +{
> +       int ret;
> +
> +       if (WARN_ON(len + sizeof(u32) > qmp->size))
> +               return -EINVAL;
> +
> +       if (WARN_ON(len % sizeof(u32)))
> +               return -EINVAL;
> +
> +       mutex_lock(&qmp->tx_lock);
> +
> +       /* The message RAM only implements 32-bit accesses */
> +       __iowrite32_copy(qmp->msgram + qmp->offset + sizeof(u32),
> +                        data, len / sizeof(u32));
> +       writel(len, qmp->msgram + qmp->offset);
> +       qmp_kick(qmp);
> +
> +       ret = wait_event_interruptible_timeout(qmp->event,
> +                                              qmp_message_empty(qmp), HZ);
> +       if (!ret) {
> +               dev_err(qmp->dev, "ucore did not ack channel\n");
> +               ret = -ETIMEDOUT;
> +
> +               /* Clear message from buffer */
> +               writel(0, qmp->msgram + qmp->offset);
> +       } else {
> +               ret = 0;
> +       }

Just like Vinod said in in v7, the "ret = 0" is redundant.


> +static int qmp_qdss_clk_add(struct qmp *qmp)
> +{
> +       struct clk_init_data qdss_init = {
> +               .ops = &qmp_qdss_clk_ops,
> +               .name = "qdss",
> +       };

As I mentioned in v7, there is no downside in marking qdss_init as
"static const" and it avoids the compiler inserting a memcpy() to get
this data on the stack.  Using static const also reduces your stack
usage.


> +       int ret;
> +
> +       qmp->qdss_clk.init = &qdss_init;
> +       ret = clk_hw_register(qmp->dev, &qmp->qdss_clk);
> +       if (ret < 0) {
> +               dev_err(qmp->dev, "failed to register qdss clock\n");
> +               return ret;
> +       }
> +
> +       ret = of_clk_add_hw_provider(qmp->dev->of_node, of_clk_hw_simple_get,
> +                                    &qmp->qdss_clk);

I still prefer to devm-ify the whole driver, using
devm_add_action_or_reset() to handle things where there is no devm.
...but I won't insist.


Above things are just nits and I won't insist.  They also could be
addressed in follow-up patches.  Thus:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

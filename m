Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B98AF283F1
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 18:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731370AbfEWQia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 May 2019 12:38:30 -0400
Received: from mail-vk1-f195.google.com ([209.85.221.195]:41463 "EHLO
        mail-vk1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731210AbfEWQia (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 May 2019 12:38:30 -0400
Received: by mail-vk1-f195.google.com with SMTP id l73so1497044vkl.8
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 09:38:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=r0rDpYcpEU2DlpfJPWclkw5oXzfo0RvY7oAeAA+3T90=;
        b=f7DFyXKTBWt5U7XgFYEc6tpBvygZbJf11fOqOQXgOXkwOVzXyJkqrEFj1jL04GFqyF
         KaPeTgWPv1xcwPktqe+PKBE5ipEuuUyahM+6zRAjX7mwCrDn8SQiMqpgRr8v4QSo8uBt
         mai/Br9ocyY4z1h4P4lZ9JoH9BK9pnb/uS9X8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=r0rDpYcpEU2DlpfJPWclkw5oXzfo0RvY7oAeAA+3T90=;
        b=iExA1arlZeik8XQZAUBt/IMAiYrgGsQzlipjW0s0vPAaETK3pb6CyH/K8BB30xq/95
         Flu3wqit+X4sbMeKZm+bh7Xc8952v3mRh6YA4qHJaE5Sv3kgYCWUPFNhDkVNgHiwrVb6
         t9tdwdGeHpIJqpV/qHXDbKwMJsNLWy5EEQEOx2PA571ZUeqqDhbG/UNjQinTYQBDHVAI
         NOPFaVeuRu2Jm0Nxno6LqGCLuT75HrmGaQeyQ8CdOjREjMkjdCSfP42GmXjh0JazkV4z
         YLs/r99Tn//jQR0rXVkFo3saF5tLK59TOA3iTaHWMpYTlNNNKcSPq58oRQuNsPWKaW9+
         bqqw==
X-Gm-Message-State: APjAAAVXOPbRdl4CTlQTrevWEz5tDGq90oIUQ+HhnHgw3sJ5VTfpmV1A
        MmzFXBtZ3wYBFMbdyNMQ6tFj5hI9WHs=
X-Google-Smtp-Source: APXvYqzjw/N/2aOnI0+xD4LTrpg3Jw+iXFLwmtKFLyI/Rrrb0jcNhcytQB9Cpp6s2LQsAfV5ZdndJQ==
X-Received: by 2002:a1f:1e48:: with SMTP id e69mr2095766vke.16.1558629508432;
        Thu, 23 May 2019 09:38:28 -0700 (PDT)
Received: from mail-vs1-f42.google.com (mail-vs1-f42.google.com. [209.85.217.42])
        by smtp.gmail.com with ESMTPSA id 69sm13058838uas.0.2019.05.23.09.38.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 May 2019 09:38:25 -0700 (PDT)
Received: by mail-vs1-f42.google.com with SMTP id x184so3985743vsb.5
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 09:38:25 -0700 (PDT)
X-Received: by 2002:a67:1cc2:: with SMTP id c185mr23275103vsc.20.1558629505309;
 Thu, 23 May 2019 09:38:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190501043734.26706-1-bjorn.andersson@linaro.org> <20190501043734.26706-3-bjorn.andersson@linaro.org>
In-Reply-To: <20190501043734.26706-3-bjorn.andersson@linaro.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 23 May 2019 09:38:13 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VVxKSp6e=j8YM8JBrhsF+T=0=8xDjd_817hphOMWHVFA@mail.gmail.com>
Message-ID: <CAD=FV=VVxKSp6e=j8YM8JBrhsF+T=0=8xDjd_817hphOMWHVFA@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] soc: qcom: Add AOSS QMP driver
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        David Brown <david.brown@linaro.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Tue, Apr 30, 2019 at 9:38 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
>
> +static int qmp_qdss_clk_prepare(struct clk_hw *hw)
> +{
> +       struct qmp *qmp = container_of(hw, struct qmp, qdss_clk);
> +       char buf[QMP_MSG_LEN] = "{class: clock, res: qdss, val: 1}";

nit: "static const" the buf?  No need to copy it to the stack each
time.  In qmp_qdss_clk_unprepare() too.

...your string is also now fixed at 34 bytes big (including the '\0').
Do we still need to send exactly 96 bytes, or can we dumb this down to
36?  We'll get a compile error if we overflow, right?  If this truly
needs to be exactly 96 bytes maybe qmp_send()'s error checks should
check for things being exactly 96 bytes instead of checking for > and
% 4.


> +static int qmp_qdss_clk_add(struct qmp *qmp)
> +{
> +       struct clk_init_data qdss_init = {
> +               .ops = &qmp_qdss_clk_ops,
> +               .name = "qdss",
> +       };

Can't qdss_init be "static const"?  That had the advantage of not
needing to construct it on the stack and also of it having a longer
lifetime.  It looks like clk_register() stores the "hw" pointer in its
structure and the "hw" structure will have a pointer here.  While I
can believe that it never looks at it again, it's nice if that pointer
doesn't point somewhere on an old stack.

I suppose we could go the other way and try to mark more stuff in this
module as __init and __initdata, but even then at least the pointer
won't be onto a stack.  ;-)


> +       int ret;
> +
> +       qmp->qdss_clk.init = &qdss_init;
> +       ret = clk_hw_register(qmp->dev, &qmp->qdss_clk);
> +       if (ret < 0) {
> +               dev_err(qmp->dev, "failed to register qdss clock\n");
> +               return ret;
> +       }
> +
> +       return of_clk_add_hw_provider(qmp->dev->of_node, of_clk_hw_simple_get,
> +                                     &qmp->qdss_clk);

devm_clk_hw_register() and devm_of_clk_add_hw_provider()?  If you're
worried about ordering you could always throw in
devm_add_action_or_reset() to handle the qmp_pd_remove(), qmp_close()
and mbox_free_channel().

...with that you could fully get rid of qmp_remove() and also your
setting of drvdata.


> +static void qmp_pd_remove(struct qmp *qmp)
> +{
> +       struct genpd_onecell_data *data = &qmp->pd_data;
> +       struct device *dev = qmp->dev;
> +       int i;
> +
> +       of_genpd_del_provider(dev->of_node);
> +
> +       for (i = 0; i < data->num_domains; i++)
> +               pm_genpd_remove(data->domains[i]);

Still feels like the above loop would be better as:
  for (i = data->num_domains - 1; i >= 0; i--)


(BTW: any way you could add me to the CC list for future patches so I
notice them earlier?)

-Doug

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B57C82902A
	for <lists+devicetree@lfdr.de>; Fri, 24 May 2019 06:53:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731803AbfEXEwp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 May 2019 00:52:45 -0400
Received: from mail-lj1-f195.google.com ([209.85.208.195]:38319 "EHLO
        mail-lj1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726034AbfEXEwp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 May 2019 00:52:45 -0400
Received: by mail-lj1-f195.google.com with SMTP id 14so7467443ljj.5
        for <devicetree@vger.kernel.org>; Thu, 23 May 2019 21:52:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=V20z0KsB9cueisqTKMsu9xWIxFvhrK8pRRyFM+6kcXg=;
        b=KUQBIAgjJy54O12HR/RuHSSIcavrDhN4oFMJxSyw1H5om5949xmqcpUMUM0aXJU4EK
         xXbGmF35qNp/8LxI91Qi6twy/cbPli9PqZPhLNpqh6as/vgnhChBwNHqEGDRYpOcbYoK
         FvlTy715Wme6Rct1Jg947fwAsiaxvQ48DjpEmvR3hwtc5YFIjXe5ZdUv5E9VTq8RljSQ
         vWydQb9aZ3ZnUrGShFzntaJBuebxU1w37/f/1Zxz66M4E6Oo03cx7S+4naQAsfS+IXi0
         fRydRh3q7XKlnkp3bbjOUT9qC5pftTrdTVDlNPOiLcoVw1KV8MVk1PRDyp8eskBxRdB/
         0+mQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=V20z0KsB9cueisqTKMsu9xWIxFvhrK8pRRyFM+6kcXg=;
        b=msJu8LUXtE9UMRl8z16pwTMIvrzW8WxQi/v90gxK29eRa9kJvvYao6+QYocG1oAR+1
         9LXG3rzENMNkKges+iasYuuXDfHOSwq2ssAoTmRsZjuHDFrUrJzGZ4+CdTqtGUjWPtSU
         mbEiwSDbkb4S3dC2JoBPgBAV1tRj99Mq1OZM/KS8eFvoeS4K8eweGtYMVcLGuduhaxi1
         1RtIlboiAqaqut/zySRoPIi2YaZ5JHYYPKQqwzg546np9TEYX+DcFepQbTEcWugihzxh
         f3NcKeDhrVKm0sLuZC8k2f2WfrkHR0ZStMXOs7ahmRO0nne3BKYLDGqMLxlexCvI1DfP
         wHwQ==
X-Gm-Message-State: APjAAAW0iT5IfMjxxeUAh8APiuHkvYI7QKQj0Jjjo3HPEURciKuoMJZS
        JlG4XM8GH/nN0sJjCNI12c7JE0U0h46izSgVbywyFg==
X-Google-Smtp-Source: APXvYqxz0wNQDMda+GtVe5gubvtJUXWkBLq/qX5juG1Eg/5ylGDqqmuLdtNb6543eugrO6i1QFuePfWPqT9od0rGXI4=
X-Received: by 2002:a2e:9ad1:: with SMTP id p17mr16405025ljj.147.1558673563302;
 Thu, 23 May 2019 21:52:43 -0700 (PDT)
MIME-Version: 1.0
References: <1558611952-13295-1-git-send-email-yash.shah@sifive.com>
 <1558611952-13295-3-git-send-email-yash.shah@sifive.com> <20190523145417.GD19369@lunn.ch>
In-Reply-To: <20190523145417.GD19369@lunn.ch>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Fri, 24 May 2019 10:22:06 +0530
Message-ID: <CAJ2_jOE0-zK1csRNeiAmag9kEbvOGhbvRa-5ESYif7e15gpRcQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] net: macb: Add support for SiFive FU540-C000
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     mark.rutland@arm.com, devicetree@vger.kernel.org,
        aou@eecs.berkeley.edu, netdev@vger.kernel.org,
        Palmer Dabbelt <palmer@sifive.com>,
        linux-kernel@vger.kernel.org, nicolas.ferre@microchip.com,
        Sachin Ghadi <sachin.ghadi@sifive.com>, robh+dt@kernel.org,
        Paul Walmsley <paul.walmsley@sifive.com>, ynezz@true.cz,
        linux-riscv@lists.infradead.org, davem@davemloft.net
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 23, 2019 at 8:24 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > +static int fu540_macb_tx_set_rate(struct clk_hw *hw, unsigned long rate,
> > +                               unsigned long parent_rate)
> > +{
> > +     rate = fu540_macb_tx_round_rate(hw, rate, &parent_rate);
> > +     iowrite32(rate != 125000000, mgmt->reg);
>
> That looks odd. Writing the result of a comparison to a register?

The idea was to write "1" to the register if the value of rate is
anything else than 125000000.
To make it easier to read, I will change this to below:
    - iowrite32(rate != 125000000, mgmt->reg);
    + if (rate != 125000000)
    +     iowrite32(1, mgmt->reg);
    + else
    +     iowrite32(0, mgmt->reg);

Hope that's fine. Thanks for your comment
- Yash

>
>      Andrew
>
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

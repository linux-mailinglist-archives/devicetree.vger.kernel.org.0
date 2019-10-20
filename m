Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2C997DDF1F
	for <lists+devicetree@lfdr.de>; Sun, 20 Oct 2019 17:26:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726548AbfJTP0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Oct 2019 11:26:33 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:45623 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726514AbfJTP0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Oct 2019 11:26:33 -0400
Received: by mail-pg1-f193.google.com with SMTP id r1so6079334pgj.12
        for <devicetree@vger.kernel.org>; Sun, 20 Oct 2019 08:26:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=pABsGm/wMCxH90AX9FR3kDnSbIIdKlksDYYOMuJR3UM=;
        b=l3dIfT35FNsyilrzD12H/GM6NaoBomwigaHeRsiefY7c48bn+SzhgXJ5n4pgI/RWkT
         tT5Ilds8pOllSWIKdoeeu5kYTLu4o/0QY9yiHkTFzUJjX2+nazm52I0sdQsh98R8iAzS
         OOCavF36ylhvGeS6IZjADe2a/I4Oz/7lACz8c6fVXR74xrsyg8xnRA5k6gBMbUe0aITb
         vB3c3s+AX/ooT6GucfabbSLgNQBYuxsDGL+jKepLjy2QIPOUdepKXer//f4B4pRfmOXY
         2ChijdYt1sAqksFvBxOIddDJbmUIM4B3UmP+FbXgAKj3Vlqp7jHOSu5T7TwgvJMgqr1R
         oluQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pABsGm/wMCxH90AX9FR3kDnSbIIdKlksDYYOMuJR3UM=;
        b=D2r9Jw86GIijwGVDLLB5hughw+WD15tmLHSgNUdavDZgHZANF5gnkx+AArnr6ujhGl
         oiszuJzln18PjPCVmWnxUaYrq3JaPPAFWAfZLXWTOiyld07L380N1WTikwc0h/3DFKy9
         a3XLjiBoHgEpIldqOZrPuFLIXMlnK6KPzCrvVDLc0YNa04NbQamnkdlw4N74vA+jibEQ
         P/MeX2V2aMMef4BH424q+QatWKB87TrxC2SquJ1lm5eo/RhMTherL3KklbzhmiyQx+ol
         NS6S3rDEO+0bPROFq4enAT4Q9DYdx8LG1YqvkduX75OM3S1Cx//fVeoY8DQ0Ev26T9VC
         14qQ==
X-Gm-Message-State: APjAAAXbn0i7PdWJjSOpiuUZbh3h6R/YDE67zvoKnickUsU1ycic7CIj
        QpQNBlA+4jYT7vHM/REUPBGT
X-Google-Smtp-Source: APXvYqz6lFf/t+2dK+E0DYAikE4NDPP1GnLHT18bKNaEQd3kNtSuINwDMT4/RL71Kq2y2oRCKOXGLw==
X-Received: by 2002:aa7:9467:: with SMTP id t7mr18002654pfq.172.1571585192102;
        Sun, 20 Oct 2019 08:26:32 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:619e:9471:81c6:faf1:b3a2:6750])
        by smtp.gmail.com with ESMTPSA id a8sm12107920pff.5.2019.10.20.08.26.26
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 20 Oct 2019 08:26:31 -0700 (PDT)
Date:   Sun, 20 Oct 2019 20:56:24 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     mturquette@baylibre.com, robh+dt@kernel.org,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com
Subject: Re: [PATCH v5 1/8] clk: Zero init clk_init_data in helpers
Message-ID: <20191020152624.GB12864@Mani-XPS-13-9360>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
 <20190916161447.32715-2-manivannan.sadhasivam@linaro.org>
 <20190917203957.9F75C2054F@mail.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190917203957.9F75C2054F@mail.kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 17, 2019 at 01:39:56PM -0700, Stephen Boyd wrote:
> Quoting Manivannan Sadhasivam (2019-09-16 09:14:40)
> > The clk_init_data struct needs to be initialized to zero for the new
> > parent_map implementation to work correctly. Otherwise, the member which
> > is available first will get processed.
> > 
> > Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> > ---
> >  drivers/clk/clk-composite.c  | 2 +-
> >  drivers/clk/clk-divider.c    | 2 +-
> >  drivers/clk/clk-fixed-rate.c | 2 +-
> >  drivers/clk/clk-gate.c       | 2 +-
> >  drivers/clk/clk-mux.c        | 2 +-
> >  5 files changed, 5 insertions(+), 5 deletions(-)
> > 
> > diff --git a/drivers/clk/clk-composite.c b/drivers/clk/clk-composite.c
> > index b06038b8f658..4d579f9d20f6 100644
> > --- a/drivers/clk/clk-composite.c
> > +++ b/drivers/clk/clk-composite.c
> > @@ -208,7 +208,7 @@ struct clk_hw *clk_hw_register_composite(struct device *dev, const char *name,
> >                         unsigned long flags)
> >  {
> >         struct clk_hw *hw;
> > -       struct clk_init_data init;
> > +       struct clk_init_data init = { NULL };
> 
> I'd prefer { } because then we don't have to worry about ordering the
> struct to have a pointer vs. something else first.
>

okay. I thought having NULL would look more explicit!

Thanks,
Mani
 
> >         struct clk_composite *composite;
> >         struct clk_ops *clk_composite_ops;
> >         int ret;

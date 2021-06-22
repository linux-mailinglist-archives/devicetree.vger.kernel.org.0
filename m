Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7170E3B001C
	for <lists+devicetree@lfdr.de>; Tue, 22 Jun 2021 11:22:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229682AbhFVJYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Jun 2021 05:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229612AbhFVJYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Jun 2021 05:24:48 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1535CC061756
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 02:22:33 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id j2so12219604wrs.12
        for <devicetree@vger.kernel.org>; Tue, 22 Jun 2021 02:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=6VJLwpfX/aFjwt/MygIJ1XfrYdorqygCe7i+QCHuVDk=;
        b=nS/IsSEloNFNgx0eKkUBfOE0E5w+IN1mYHZeZFh1J9NJa3WRxyZx9rnh5+KFpQIpsn
         kQsXeSOse1TIb5jFxyLioM5Dbe+vYJ4ADWU5/7qZ/EfE2uJAlD5TiqKRulIUYNPPs5ck
         cOUZcjgTU4op2Apf5dQMPBFfQQIPheZRcrlNiRjRZ5giQkuc/3OETMQQQaXy5HQTyOyx
         MZHySG0jN8WKdX/bYw35PcZTz5yUrb8cu6e9qY6PwKHv98aAfE6FS2l4FnmmfmJsbqTr
         0Hpe00dJKF7QrUozpA3bVMMnF4QKPHCrGF5Fh/vrX9T4AW2oHgXRMFSUehLsBdw+2/u3
         PPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6VJLwpfX/aFjwt/MygIJ1XfrYdorqygCe7i+QCHuVDk=;
        b=FoFS2wntnXxV98O9z/1Enng2PGM/T8YNutjusDDM3RS+3/dYdlS2IEGz3tiT0ijdpX
         HxNUCMibGEvr86+ty1F1T+qfFbly960YaIEWSOr93vIcLzlTuWYnSddsgmOsNO7PK7ng
         ZjEAeqtZJHynIR5fatfCOxE8obBKB0856QGY/uwCXsQpXhNUUdsnHJvQWWTC2QZsl46H
         sj+QZTYW6txMH9JGRJzug5ZAlpvzzbFNWbE/hZhfdF7Hy6EcWbADNhZpj2fWT2Ud9O7W
         r9F5QLHJ1DCLEYuMVFsIp5ZCcwsU6oOZkLfwti6NJjyoJUT2LLdZD9DxM7rvXzvNspf0
         wyjQ==
X-Gm-Message-State: AOAM531r8JoWSCJeEZDvMMO2JrHmArOVUvUECY7ACF4QGr6omjAUUp0Q
        9TbpbotXZoVy2hnMsTgu/ljk6w==
X-Google-Smtp-Source: ABdhPJw5Ys0vZ5VL8BspxnKvGfYT0n0SNJzBm/f6dky2dNdWOKzgTA75cNI1mC5WfvtbF0JOkgL1PQ==
X-Received: by 2002:a5d:698a:: with SMTP id g10mr3396424wru.129.1624353751594;
        Tue, 22 Jun 2021 02:22:31 -0700 (PDT)
Received: from google.com (105.168.195.35.bc.googleusercontent.com. [35.195.168.105])
        by smtp.gmail.com with ESMTPSA id n10sm19413600wri.77.2021.06.22.02.22.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Jun 2021 02:22:31 -0700 (PDT)
Date:   Tue, 22 Jun 2021 09:22:28 +0000
From:   Quentin Perret <qperret@google.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Nicolas Boichat <drinkcat@chromium.org>,
        KarimAllah Ahmed <karahmed@amazon.de>,
        linux-mm <linux-mm@kvack.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Dong Aisheng <dongas86@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] of: of_reserved_mem: mark nomap memory instead of
 removing
Message-ID: <YNGr1AlWV0AYnL1d@google.com>
References: <20210611131153.3731147-1-aisheng.dong@nxp.com>
 <20210611131153.3731147-2-aisheng.dong@nxp.com>
 <CAL_JsqJMyY4iEcJi1z0o7pZdCASYHjnVjf6+fQDqa_ucb-M-MA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqJMyY4iEcJi1z0o7pZdCASYHjnVjf6+fQDqa_ucb-M-MA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Friday 11 Jun 2021 at 11:10:36 (-0600), Rob Herring wrote:
> On Fri, Jun 11, 2021 at 7:13 AM Dong Aisheng <aisheng.dong@nxp.com> wrote:
> >
> > Since commit 86588296acbf ("fdt: Properly handle "no-map" field in the memory region"),
> > nomap memory is changed to call memblock_mark_nomap() instead of
> > memblock_remove(). But it only changed the reserved memory with fixed
> > addr and size case in early_init_dt_reserve_memory_arch(), not
> > including the dynamical allocation by size case in
> > early_init_dt_alloc_reserved_memory_arch().
> >
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: devicetree@vger.kernel.org
> 
> Good practice is to Cc the people involved in referenced commits.
> Adding them now. This code is a minefield so I'd like other eyes on
> it.

Apologies for the delayed reply -- was away last week.

I've been starring at this for 15 minutes, and still can't see how it
could go wrong, so FWIW:

Reviewed-by: Quentin Perret <qperret@google.com>

Thanks,
Quentin

> > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > ---
> >  drivers/of/of_reserved_mem.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/drivers/of/of_reserved_mem.c b/drivers/of/of_reserved_mem.c
> > index 367f298a83b2..ebba88395bf8 100644
> > --- a/drivers/of/of_reserved_mem.c
> > +++ b/drivers/of/of_reserved_mem.c
> > @@ -42,7 +42,7 @@ static int __init early_init_dt_alloc_reserved_memory_arch(phys_addr_t size,
> >
> >         *res_base = base;
> >         if (nomap)
> > -               return memblock_remove(base, size);
> > +               return memblock_mark_nomap(base, size);
> >
> >         return memblock_reserve(base, size);
> >  }
> > @@ -276,7 +276,7 @@ void __init fdt_init_reserved_mem(void)
> >                                 pr_info("node %s compatible matching fail\n",
> >                                         rmem->name);
> >                                 if (nomap)
> > -                                       memblock_add(rmem->base, rmem->size);
> > +                                       memblock_clear_nomap(rmem->base, rmem->size);
> >                                 else
> >                                         memblock_free(rmem->base, rmem->size);
> >                         }
> > --
> > 2.25.1
> >

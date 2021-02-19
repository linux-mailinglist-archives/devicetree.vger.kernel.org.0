Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B0C931F4DF
	for <lists+devicetree@lfdr.de>; Fri, 19 Feb 2021 06:38:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229498AbhBSFih (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 19 Feb 2021 00:38:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229527AbhBSFig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 19 Feb 2021 00:38:36 -0500
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0046AC061756
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:37:55 -0800 (PST)
Received: by mail-pg1-x52b.google.com with SMTP id z21so2896960pgj.4
        for <devicetree@vger.kernel.org>; Thu, 18 Feb 2021 21:37:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=D6z8WMDhJSCQVjJTW2F8knNb9jI6u5KG0UJ57gqaN8Y=;
        b=yQ2yMsprSfYCyDZBer8Y7BfwcectJtOf88W7hGROar9T0bZ9HkUyu3hiV1F/5jOCdd
         VKfdYtjLdZG0N2msAPxbNkio11vIC6c4QrbRYv7iIrjP7kIAwmtMem4TS/drM/O5KMX8
         5gzWTI5VxR9rmGOW8cwO20ZJBW9WLi0+2+I5MSajNE00DPqXtKmLLlO+bA5o0jzLaBDf
         /Kayje/sVMCudp7bCu52SdC+E66R9G2xOAfDi9moOWDLtkc9vsNam+AU0YmuvLSBJ+oy
         C7OkpqtkxdXHa55WHUMao0tzwM14JpFPlnXuKCSTDFPbqf8zPkwV+pNmGPj8KEtJFMhu
         NcWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=D6z8WMDhJSCQVjJTW2F8knNb9jI6u5KG0UJ57gqaN8Y=;
        b=DeClS3ZQ0T8oob3EGT9f1lmlbid6Z8MXFQPh27ZI9iXozP4EcpakpyYNuXotieMfDu
         IFC7Vqq6p7OeDobt3PZRvUyES4RFkn+U25Kk37npV5zyW6Ln3SlyyXsU8ds2MKtM2/R9
         mXGVcXpE28XDXm1js7lLyQvb4ULjqsohohvs65HziaJnZe/Y8TPPcRyMv8MdJarrawmz
         K/0NiOfwFHerQs6WQso2f+7VCsK5UL1PwTcTZn7f6BDM8Wx+QCuWErkA0liQA3VNYvRn
         N+yNFLHdXVSJaXcSVkRQL7h6cqc0Z79pxZUz2y7Ys24tOJAl8GSkkpT9alWDW0fqxf/H
         Fh+w==
X-Gm-Message-State: AOAM530Rk78SomdX9+v+5me8vpj340JBkYJwQpIe4wVZ8z9k9DlHqsKz
        vlPDwS+inmvUAOG8a4rD83SOYQ==
X-Google-Smtp-Source: ABdhPJwnPz1CCwuJgFn+zreXSTduaPSbm7Ci14+3K+v43nKcbNnwbxnoeXbEYcpjXDNsPhzHwbRiKw==
X-Received: by 2002:a63:7f09:: with SMTP id a9mr7060293pgd.63.1613713075373;
        Thu, 18 Feb 2021 21:37:55 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id w3sm7048224pjb.2.2021.02.18.21.37.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 18 Feb 2021 21:37:54 -0800 (PST)
Date:   Fri, 19 Feb 2021 11:07:53 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     David Gibson <david@gibson.dropbear.id.au>
Cc:     Vincent Guittot <vincent.guittot@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Bill Mills <bill.mills@linaro.org>, devicetree@vger.kernel.org,
        Jon Loeliger <loeliger@gmail.com>,
        devicetree-compiler@vger.kernel.org
Subject: Re: [DTC][RFC] dtc: Allow better error reporting
Message-ID: <20210219053753.xtikm3ixfhq3bukr@vireshk-i7>
References: <3950d7da35130a850ba9217ac7bfef781fa850b2.1613042485.git.viresh.kumar@linaro.org>
 <YCyknRMDNA4+pd59@yekko.fritz.box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YCyknRMDNA4+pd59@yekko.fritz.box>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 17-02-21, 16:07, David Gibson wrote:
> > diff --git a/dtc.h b/dtc.h
> > index d3e82fb8e3db..b8ffec155263 100644
> > --- a/dtc.h
> > +++ b/dtc.h
> > @@ -29,6 +29,12 @@
> >  #define debug(...)
> >  #endif
> >  
> > +#ifdef VERBOSE
> > +#define dtc_err(fmt, ...)	fprintf(stderr, "DTC: %s: %d: " fmt, __func__, __LINE__, ##__VA_ARGS__)
> > +#else
> > +#define dtc_err(fmt, ...)
> > +#endif
> 
> Actually, the natural way to handle this is to make dtc_err() -
> hrm... bad name, since this is libfdt - be something that must be
> provided by libfdt_env.h.  The default version would have it be a
> no-op, with a define that makes it use stdio.
> 
> This has the additional advantage that it would be relatively
> straightfoward to enable the rich reporting in a non-POSIXish
> environment (these should provide their own libfdt_env.h and it can
> implement the error reporting callback in a way that makes sense in
> that environment.

Okay, I will move it to libfdt_env.h. And using -DVERBOSE to enable
rich errors look fine to you, right ?

> You will also definitely need Makefile changes, because you'll need to
> make the fdtoverlay binary link to the verbose-compiled version of
> libfdt not the normal one.

Actually it worked for me because of how we compile this in kernel, we
don't link different libraries there.

libfdt-objs     := fdt.o fdt_ro.o fdt_wip.o fdt_sw.o fdt_rw.o fdt_strerror.o fdt_empty_tree.o fdt_addresses.o fdt_overlay.o
libfdt          = $(addprefix libfdt/,$(libfdt-objs))
fdtoverlay-objs := $(libfdt) fdtoverlay.o util.o

HOST_EXTRACFLAGS := -DVERBOSE

> Except.... it might make more sense to do this in dtc rather than
> libfdt, more on that in different mails.

I am not sure about this comment, are you going to send more emails on
this ?

-- 
viresh

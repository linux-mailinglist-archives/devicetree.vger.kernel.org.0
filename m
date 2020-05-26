Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DE6831D8B63
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2020 01:05:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728500AbgERXEl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 May 2020 19:04:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53842 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728445AbgERXEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 May 2020 19:04:41 -0400
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com [IPv6:2607:f8b0:4864:20::544])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 638FFC061A0C
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 16:04:40 -0700 (PDT)
Received: by mail-pg1-x544.google.com with SMTP id f23so5521191pgj.4
        for <devicetree@vger.kernel.org>; Mon, 18 May 2020 16:04:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=r1Le0nR4tySg2kT1BHFLkI6EUe6Y+WJSI4SzoGFWd78=;
        b=X8YMwEb7Lw6MWj/O2T9yVdzE4Qn1LZvj16YoPpFa5Bi9kpMAY6JEpRegNVtbbNZZln
         KaAi1nbXmSCB4kMjiVjJAR72mczRt1j1ih6NIC8arnMSF3X7aErbEVibKj2suB6EpYAR
         RG79hUO+hsivoJncAPGCJZq+f0OcKGtG0P49o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=r1Le0nR4tySg2kT1BHFLkI6EUe6Y+WJSI4SzoGFWd78=;
        b=cJPw9Ynbfk4ggQeqCxL3gJjZhA/Bqba057H+29s2Uv4+iP9XFkE1o2Kc1Vxd4vcyZA
         mN/eKOkh7dUUh5n9N10sxrcAzxTEwDEbgqpO+NjUzhNd72kuBhMV90ticWdBax63Lts7
         k+eWBGUpX3Qmvwk1O7h04MnuVUZ6BFeLNfGX03ChdK+FWr89PBObndnxUpGaf4llB6nj
         zKzjLi+maEJNLPzGnzAHcPdWf0GA9Z7WK33DK4obpiR3TzlCvWh1x482POEoHrm/Ug4j
         iSAEijBcFGe1xfqGzVr13l77+f5CgweKeR1C6gp0EauAM1yw1TIfaP76wd1Z4s0bNvBz
         zQ4A==
X-Gm-Message-State: AOAM530pZ7bgTNHFB8255BW0xxhFCRr4qeDAiIwamB8HJ/Q/3hZObWMN
        +UR4w3vWUAnrLKMu8TjtzTXKlg==
X-Google-Smtp-Source: ABdhPJxe14AahgZj+S3UqpTlkNaNE8HgOPicSyURsr+inLr9Ituh4PyX3CXubeVAnZK/edydfrJA3Q==
X-Received: by 2002:a63:ef03:: with SMTP id u3mr3765193pgh.254.1589843079916;
        Mon, 18 May 2020 16:04:39 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id mn19sm478872pjb.8.2020.05.18.16.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 May 2020 16:04:39 -0700 (PDT)
Date:   Mon, 18 May 2020 16:04:37 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Pavel Tatashin <pasha.tatashin@soleen.com>,
        Petr Mladek <pmladek@suse.com>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Benson Leung <bleung@chromium.org>,
        Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>
Subject: Re: [PATCH v4 6/6] ramoops: Add max_reason optional field to ramoops
 DT node
Message-ID: <202005181603.C8CBA854@keescook>
References: <20200515184434.8470-1-keescook@chromium.org>
 <20200515184434.8470-7-keescook@chromium.org>
 <CAL_JsqLVgdUEP74nJOHOBD2abK=3YfCqX9GmL2iXdPNctcRdjw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqLVgdUEP74nJOHOBD2abK=3YfCqX9GmL2iXdPNctcRdjw@mail.gmail.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 18, 2020 at 04:45:32PM -0600, Rob Herring wrote:
> On Fri, May 15, 2020 at 12:44 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > From: Pavel Tatashin <pasha.tatashin@soleen.com>
> 
> Subject still has 'max_reason'.
> 
> >
> > Currently, it is possible to dump kmsges for panic, or oops.
> > With max_reason it is possible to dump messages for other
> 
> And here.

Ah yeah, this was, I think, describing the internal field name, but I
see it would be less confusing to refer to this by the DT name. I will
adjust it. Thanks!

-Kees

> 
> > kmesg_dump events, for example reboot, halt, shutdown, kexec.
> >
> > Signed-off-by: Pavel Tatashin <pasha.tatashin@soleen.com>
> > Link: https://lore.kernel.org/lkml/20200506211523.15077-6-keescook@chromium.org/
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  .../devicetree/bindings/reserved-memory/ramoops.txt | 13 +++++++++++--
> >  1 file changed, 11 insertions(+), 2 deletions(-)
> >
> > diff --git a/Documentation/devicetree/bindings/reserved-memory/ramoops.txt b/Documentation/devicetree/bindings/reserved-memory/ramoops.txt
> > index 0eba562fe5c6..b7886fea368c 100644
> > --- a/Documentation/devicetree/bindings/reserved-memory/ramoops.txt
> > +++ b/Documentation/devicetree/bindings/reserved-memory/ramoops.txt
> > @@ -30,7 +30,7 @@ Optional properties:
> >  - ecc-size: enables ECC support and specifies ECC buffer size in bytes
> >    (defaults to 0: no ECC)
> >
> > -- record-size: maximum size in bytes of each dump done on oops/panic
> > +- record-size: maximum size in bytes of each kmsg dump.
> >    (defaults to 0: disabled)
> >
> >  - console-size: size in bytes of log buffer reserved for kernel messages
> > @@ -45,7 +45,16 @@ Optional properties:
> >  - unbuffered: if present, use unbuffered mappings to map the reserved region
> >    (defaults to buffered mappings)
> >
> > -- no-dump-oops: if present, only dump panics (defaults to panics and oops)
> > +- max-reason: if present, sets maximum type of kmsg dump reasons to store
> > +  (defaults to 2: log Oopses and Panics). This can be set to INT_MAX to
> > +  store all kmsg dumps. See include/linux/kmsg_dump.h KMSG_DUMP_* for other
> > +  kmsg dump reason values. Setting this to 0 (KMSG_DUMP_UNDEF), means the
> > +  reason filtering will be controlled by the printk.always_kmsg_dump boot
> > +  param: if unset, it will be KMSG_DUMP_OOPS, otherwise KMSG_DUMP_MAX.
> > +
> > +- no-dump-oops: deprecated, use max_reason instead. If present, and
> > +  max_reason is not specified, it is equivalent to max_reason = 1
> 
> And here (3 times).
> 
> > +  (KMSG_DUMP_PANIC).
> >
> >  - flags: if present, pass ramoops behavioral flags (defaults to 0,
> >    see include/linux/pstore_ram.h RAMOOPS_FLAG_* for flag values).
> > --
> > 2.20.1
> >

-- 
Kees Cook

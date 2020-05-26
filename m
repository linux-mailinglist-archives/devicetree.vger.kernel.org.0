Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4F1801CFD9B
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2020 20:46:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730779AbgELSqA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 May 2020 14:46:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49886 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730223AbgELSp7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 May 2020 14:45:59 -0400
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com [IPv6:2607:f8b0:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9194BC061A0C
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 11:45:57 -0700 (PDT)
Received: by mail-pl1-x642.google.com with SMTP id t16so5752610plo.7
        for <devicetree@vger.kernel.org>; Tue, 12 May 2020 11:45:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=zZYcnqjCNMBDkiuBF30WgUKhKuqwDskkezv7osc3SDY=;
        b=W3grnYeRkCxIK+83TB2Ok5SeVivN3G6KhcXRcwaZwzjvJiAfxUnI/aNrH59tvh0Mx3
         iJ8DRMRdo+X5efhzmCT6wk/3wD16VELIlUIFf5jKMgJkkcJCCiaEiraYizM8GxIvAJpm
         1mCiMMTV5qJvr02JSS4i8lmy7uMv1mh0AjdYY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zZYcnqjCNMBDkiuBF30WgUKhKuqwDskkezv7osc3SDY=;
        b=Q+1KWZAoQ1zEQDAfMfyy1Lf5zWlClOES1rL+doQ31B1yDwXsFec/usN1SzbKEW4aqJ
         Ri010d+pVRPO36z43aqJyNZUP1/4i1amk0v1ZPbUr+Y8Fj/ED4FAk3I/fp+KSrHLOG+E
         CTTUqHUDN6DeRdg+omsgcrYfSynH0VYuMU5wDXfBsGwx5dOOaWb9KqdLrK9Y6DNLT6lW
         XC696OX0CfrFXWLNXxyvWNyjmmjA3FQIcSpCzcXCNMuTjNS2rn73q5kmldFrzZcb2o66
         ZjQp93TIsMM3d9wsMZndkFjzEVxSPYGC6V6iLKjLgzDhCpmse+NjShZt3SY3YsPu48XN
         wbyA==
X-Gm-Message-State: AGi0PuZFNAJejw0ejKWyOEqdagXYzQKhMZkPVAP62cuA7HLlzAlGPbmE
        nqu8hGaDhpl6NEzUBOQyMKa2MA==
X-Google-Smtp-Source: APiQypI6ohAa/WrLufnFCTk94UW9/+pjeT7ykwvlKnDw8ueWBgFKU29Es1jSMPsrXtFJCfxGDn7Jow==
X-Received: by 2002:a17:90a:284e:: with SMTP id p14mr30042197pjf.10.1589309156921;
        Tue, 12 May 2020 11:45:56 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id d203sm12240380pfd.79.2020.05.12.11.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 May 2020 11:45:55 -0700 (PDT)
Date:   Tue, 12 May 2020 11:45:54 -0700
From:   Kees Cook <keescook@chromium.org>
To:     Petr Mladek <pmladek@suse.com>
Cc:     Pavel Tatashin <pasha.tatashin@soleen.com>,
        Anton Vorontsov <anton@enomsg.org>,
        Colin Cross <ccross@android.com>,
        Tony Luck <tony.luck@intel.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Rob Herring <robh+dt@kernel.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
        Steven Rostedt <rostedt@goodmis.org>,
        James Morris <jmorris@namei.org>,
        Sasha Levin <sashal@kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 0/6] allow ramoops to collect all kmesg_dump events
Message-ID: <202005121111.6BECC45@keescook>
References: <20200506211523.15077-1-keescook@chromium.org>
 <20200512131655.GE17734@linux-b0ei>
 <CA+CK2bBMUxxuTBicQ7ihKpN3jK94mMjcNCXhnAXUaODce09Wmw@mail.gmail.com>
 <20200512155207.GF17734@linux-b0ei>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200512155207.GF17734@linux-b0ei>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 12, 2020 at 05:52:07PM +0200, Petr Mladek wrote:
> On Tue 2020-05-12 10:03:44, Pavel Tatashin wrote:
> > > OK, I personally see this as two separate problems:
> > >
> > >    1. Missing support to set loglevel per console.
> > >    2. Missing support to dump messages for other reasons.
> > >
> > > I would remove the paragraph about console log levels completely.
> > 
> > OK, I see your point, this paragraph can be removed, however, I think
> > it makes it clear to understand the rationale for this change. As I
> > understand, the per console loglevel has been proposed but were never
> > accepted.

I understood Pavel's rationale as an output from my questions in the v1
series, that went like this, paraphrased:

Pavel: "I need to have other kmsg dump reasons available to pstore."
Kees:  "Why can't you just use the pstore console dumper?"
Pavel: "It's too much for the slow device; we only need to know about
        specific events that are already provided by kmsg dump."
Kees:  "Ah! Sounds good, max_reasons it is."

So, AIUI, loglevel remains orthogonal to this, and it's my fault for
even causing to be be brought up. Please disregard! :)

> > printk.always_kmsg_dump is not working for me because ramoops has its
> > own filtering based on dump_oops boolean, and ignores everything but
> > panics and conditionally oops.
> > max_reason makes the ramoops internal logic cleaner compared to using dump_oops.
> 
> I see. Just to be sure. Is the main reason to add max_reason parameter
> to keep complatibility of the deprecated dump_oops parameter? Or is
> there any real use case for this granularity?

In my mind it seemed like a nice mapping, so it was an easy port.

> I wonder if anyone is actually using the ramoops.dump_oops parameter
> in reality. I would personally make it deprecated and change the
> default behavior to work according to printk.always_kmsg_dump parameter.

Yes. For things I'm aware of: ARM devices with very tiny persistent RAM
were using ramoops and setting dump_oops to 0 (specifically, setting
the DT "no-dump-oops" to 1), and larger Android and Chrome OS devices
using ramoops were setting to dump_oops to 1[1].

The logic built into pstore recognizes a difference between panic and
non-panic dumps as well, as the expectation is that there is little to
no kernel infrastructure available for use during a panic kmsg.

> IMHO, ramoops.dump_oops just increases complexity and should not have
> been introduced at all. I would try hard to avoid introducing even bigger
> complecity and mess.

I think dump_oops was the wrong implementation, but granularity control
is still needed. It is an old parameter, and is baked into many device
trees on systems, so I can't just drop it. (In fact, I've had to support
some other DT compat issues[2] as well.)

> I know that there is the "do not break existing userspace" rule. The
> question is if there is any user and if it is worth it.

For dump_oops, yes, there is unfortunately.

> > I agree, the reasons in kmsg_dump_reason do not order well  (I
> > actually want to add another reason for kexec type reboots, and where
> > do I put it?), so how about if we change the ordering list to
> > bitfield/flags, and instead of max_reason provide: "reasons" bitset?
> 
> It looks too complicated. I would really try hard to avoid the
> parameter at all.

Here are the problems I see being solved by this:

- lifting kmsg dump reason filtering out of the individual pstore
  backends and making it part of the "infrastructure", so that
  there is a central place to set expectations. Right now there
  is a mix of explicit and implicit kmsg dump handling:

  - arch/powerpc/kernel/nvram_64.c has a hard-coded list
  - drivers/firmware/efi/efi-pstore.c doesn't expect anything but
    OOPS and PANIC.
  - drivers/mtd/mtdoops.c tries to filter using its own dump_oops
    and doesn't expect anything but OOPS and PANIC.
  - fs/pstore/ram.c: has a hard-coded list and uses its own
    dump_oops.
  - drivers/mtd/mtdpstore.c (under development[3]) expected only
    OOPS and PANIC and had its own dump_oops.

- providing a way for backends that can deal with all kmsg dump reasons
  to do so without breaking existing default behavior (i.e. getting
  Pavel what he's interested in).

So, that said, I'm totally fine with a bit field. I just need a way to
map the kmsg dump reasons onto the existing backend expectations and to
have Pavel's needs addressed.

-Kees

[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/platform/chrome/chromeos_pstore.c?h=v5.6#n60
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/fs/pstore/ram.c?h=v5.6#n708
[3] https://lore.kernel.org/lkml/20200511233229.27745-11-keescook@chromium.org/

-- 
Kees Cook

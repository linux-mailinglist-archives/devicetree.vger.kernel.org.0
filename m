Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B44EB3CA52F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jul 2021 20:14:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237813AbhGOSRE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jul 2021 14:17:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235538AbhGOSRE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jul 2021 14:17:04 -0400
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com [IPv6:2607:f8b0:4864:20::531])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F043FC061764
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 11:14:10 -0700 (PDT)
Received: by mail-pg1-x531.google.com with SMTP id s18so7356265pgg.8
        for <devicetree@vger.kernel.org>; Thu, 15 Jul 2021 11:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=intel-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g1tDxoChGH3w0kigxd3IgaB4MUIWFPWVdk27j3deTtI=;
        b=PArv2XUHuoFYYCNw26nHq9CwvzbG6nQeD1+W+9tuw9CIHjCo25QmlzXLEWaMHwiePY
         B0+9F+qBna6V/l+aVhYdvCOlVYeSr48eboGpBqsRhS4hKxxlqNIveIbIa3FbekNhoW/G
         ysdTPrACubN0IGKcL+j5ccg+VqLRAYzDmeTC3Fqp2jH1Jca2RhTTVSuvMvHa8YdcoUXq
         V9iFuS+L4Jp6sxfskiooURy9HmVNrXb8EFmyuonce8+EheWU8z5IVBpnZ6Ol1Mz1tBRT
         0RsL3/EoAhhE56GegAW6xdgn+9U6BE0oRAuTlm9BDFcZp4DrNPoH6coz6B1nHF1/wDCH
         lrrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g1tDxoChGH3w0kigxd3IgaB4MUIWFPWVdk27j3deTtI=;
        b=hxWEONuib1/2uoVYobb+Q+hGChueSq4QYfTjcAsjiO7QITgUZ/odIjiOsiPRhOYEoz
         qmfD9iEa1gyY9A+4ol6UzFRaPH3cV7aV5gImLArovYp2WbkU0E5EanNtUXfui4exH6dJ
         nAf01UpxqRun55OsImfUBUahl19N1ednuCkv3TaCDq3L3C71MLRFXEJZJ+nFnx8hnbAn
         FrWtYQ9GBNFcdG9Re4Xt+Rx/NeKhAtADykXI+bjkFYn6PAupu7FqvlXrC3jMprm9oxzD
         y8ii49tmO44j8lyJjTN7iyBO0GKswclSH+3xp+QKht8GjRBWHyvMiH4Ng6ME9No1CLBI
         4GuA==
X-Gm-Message-State: AOAM532JCxKVa4f+of2+XzXZz5xdO7ER27CIu5f0H533lh/+CpQb4PK2
        XyD5B4rjzeOM3fMOjcUrvmTgDaDRdIs2qT45Xoh55A==
X-Google-Smtp-Source: ABdhPJzIVasCNJ7rJeEzQm5uupieN3jepRTz4sM8N5N3G60Bq6IfkDzVYeZSTnZGA/3H1k+u+xq6BQI7KYL3gEOPU8E=
X-Received: by 2002:a05:6a00:d53:b029:32a:2db6:1be3 with SMTP id
 n19-20020a056a000d53b029032a2db61be3mr5733775pfv.71.1626372850317; Thu, 15
 Jul 2021 11:14:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210712220447.957418-1-iwona.winiarska@intel.com>
 <20210712220447.957418-2-iwona.winiarska@intel.com> <32c71687f11fb418dafa45ecf15f7c6b50dd0397.camel@intel.com>
 <218ef97a68491e88d8012799385ee244544a157a.camel@intel.com>
In-Reply-To: <218ef97a68491e88d8012799385ee244544a157a.camel@intel.com>
From:   Dan Williams <dan.j.williams@intel.com>
Date:   Thu, 15 Jul 2021 11:13:59 -0700
Message-ID: <CAPcyv4hxsjKjLkEgGuG6tHvYxUa69315OvhYRORvCtXv6vu2nw@mail.gmail.com>
Subject: Re: [PATCH 01/14] x86/cpu: Move intel-family to arch-independent headers
To:     "Winiarska, Iwona" <iwona.winiarska@intel.com>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>,
        "corbet@lwn.net" <corbet@lwn.net>,
        "jae.hyun.yoo@linux.intel.com" <jae.hyun.yoo@linux.intel.com>,
        "Lutomirski, Andy" <luto@kernel.org>,
        "linux-hwmon@vger.kernel.org" <linux-hwmon@vger.kernel.org>,
        "Luck, Tony" <tony.luck@intel.com>,
        "andrew@aj.id.au" <andrew@aj.id.au>,
        "mchehab@kernel.org" <mchehab@kernel.org>,
        "jdelvare@suse.com" <jdelvare@suse.com>,
        "mingo@redhat.com" <mingo@redhat.com>,
        "bp@alien8.de" <bp@alien8.de>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "tglx@linutronix.de" <tglx@linutronix.de>,
        "linux@roeck-us.net" <linux@roeck-us.net>,
        "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
        "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "yazen.ghannam@amd.com" <yazen.ghannam@amd.com>,
        "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
        "joel@jms.id.au" <joel@jms.id.au>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "andriy.shevchenko@linux.intel.com" 
        <andriy.shevchenko@linux.intel.com>,
        "x86@kernel.org" <x86@kernel.org>,
        "pierre-louis.bossart@linux.intel.com" 
        <pierre-louis.bossart@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 15, 2021 at 9:47 AM Winiarska, Iwona
<iwona.winiarska@intel.com> wrote:
>
> On Wed, 2021-07-14 at 16:54 +0000, Williams, Dan J wrote:
> > On Tue, 2021-07-13 at 00:04 +0200, Iwona Winiarska wrote:
> > > Baseboard management controllers (BMC) often run Linux but are
> > > usually
> > > implemented with non-X86 processors. They can use PECI to access
> > > package
> > > config space (PCS) registers on the host CPU and since some
> > > information,
> > > e.g. figuring out the core count, can be obtained using different
> > > registers on different CPU generations, they need to decode the
> > > family
> > > and model.
> > >
> > > Move the data from arch/x86/include/asm/intel-family.h into a new
> > > file
> > > include/linux/x86/intel-family.h so that it can be used by other
> > > architectures.
> >
> > At least it would make the diffstat smaller to allow for rename
> > detection when the old file is deleted in the same patch:
> >
> >  MAINTAINERS                                                | 1 +
> >  {arch/x86/include/asm => include/linux/x86}/intel-family.h | 6 +++---
> >  2 files changed, 4 insertions(+), 3 deletions(-)
> >
> > ...one thing people have done in the past is include a conversion
> > script in the changelog that produced the diff. That way if a
> > maintainer wants to be sure to catch any new usage of the header at
> > the old location they just run the script.
>
> You mean like a simple s#asm/intel-family.h#linux/x86/intel-family.h#g
> ?
> Operating on kernel tree? Or individual patches?

Whole kernel tree, something like this patch is a good example:

58c1a35cd522 btrfs: convert kmap to kmap_local_page, simple cases

In this one, Ira generated a patch from a script, and the maintainer
could re-run it if new development added more of the "old way" before
applying Ira's patch.

> Is including "old" header in new code that big of a deal?

I was proposing ripping the band-aid off and deleting the old header,
in which case it would cause compile breakage if someone added a new
instance of the old include before the conversion patch was applied.

> I guess it
> could break grepability (looking for users of the header, now that it
> can be pulled from two different places).
> It would be worse if someone decided to add new content to old header,
> but this should be easier to catch during review.

Having 2 potential places for the same definition causes a small
ongoing maintenance / review burden, so I vote moving the file rather
than leaving a place holder, but it's ultimately an x86 maintainer
call.

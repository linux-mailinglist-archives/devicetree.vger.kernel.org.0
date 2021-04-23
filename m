Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B41233695C3
	for <lists+devicetree@lfdr.de>; Fri, 23 Apr 2021 17:12:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237232AbhDWPMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Apr 2021 11:12:38 -0400
Received: from mail.kernel.org ([198.145.29.99]:48038 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229871AbhDWPMh (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 23 Apr 2021 11:12:37 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id E404A61476
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 15:12:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1619190720;
        bh=HiFp+/fV6KtN9LOlfDWZfa9Qoub4g53Rau1i3L8M0IU=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=tmtZqCy5UaTNYD8CumrO6wwO32nqomAH5XDbxC8d+XJuiG0w3JIIWDFOPC9w7JVri
         /SxIZFVy2UlMHtzsFDHMHSBZPGaZvD0kQWDdKSzWScK+04AM7KBahu32DU3Vu/tc3N
         LkVUUgU5Nyh5LZjO255WY+Sae+g3s7ICLSom8PF+X6d0QCWuPJc4v2xr7xQWtlEwIe
         uhHH18Sqcb/6YF35t4t2apQROaop0MuvIdOI7rXg/fu9ScdaSb9edQaHUgG46vO+R+
         qXgqaRNSyXPSejPuV4vmCuceqjoiVDZLuQa/7jt29QLbsVO8Srd2kNNbAPpNNp/uRK
         YABQ6JW2dnkUA==
Received: by mail-ej1-f41.google.com with SMTP id r20so24655925ejo.11
        for <devicetree@vger.kernel.org>; Fri, 23 Apr 2021 08:12:00 -0700 (PDT)
X-Gm-Message-State: AOAM531J9aneuJ73AVLiWC5A4/jUuvLlD2E5Yvcmpq/ZftjI92brURim
        OHCWXCuFYvHzvFm0lCQZACj9kouSoCoDVOfvYw==
X-Google-Smtp-Source: ABdhPJwHLV5bKd8oToiLGfYb43Jwd+X0+6eCLiTOm00Km5CRO4ct0Ibbh3qk/uaJfBFavcUpQrvE8sEFEmy7HsRtm1M=
X-Received: by 2002:a17:907:70d3:: with SMTP id yk19mr4800031ejb.108.1619190719409;
 Fri, 23 Apr 2021 08:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210415191437.20212-1-nramas@linux.microsoft.com>
 <4edb1433-4d1e-5719-ec9c-fd232b7cf71f@linux.microsoft.com>
 <87eefag241.fsf@linkitivity.dja.id.au> <87r1j3ys8i.fsf@dja-thinkpad.axtens.net>
 <875z0daz46.fsf@mpe.ellerman.id.au> <3a6b9c56f81e47d08e6bf70d8222725f@AcuMS.aculab.com>
In-Reply-To: <3a6b9c56f81e47d08e6bf70d8222725f@AcuMS.aculab.com>
From:   Rob Herring <robh@kernel.org>
Date:   Fri, 23 Apr 2021 10:11:47 -0500
X-Gmail-Original-Message-ID: <CAL_JsqJO51TQbJbvWN65vOGLgdAGP_+VPBnKLZjq_QKMChPdSw@mail.gmail.com>
Message-ID: <CAL_JsqJO51TQbJbvWN65vOGLgdAGP_+VPBnKLZjq_QKMChPdSw@mail.gmail.com>
Subject: Re: [PATCH] powerpc: Initialize local variable fdt to NULL in elf64_load()
To:     David Laight <David.Laight@aculab.com>
Cc:     Michael Ellerman <mpe@ellerman.id.au>,
        Daniel Axtens <dja@axtens.net>,
        Lakshmi Ramasubramanian <nramas@linux.microsoft.com>,
        "dan.carpenter@oracle.com" <dan.carpenter@oracle.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        "kbuild-all@lists.01.org" <kbuild-all@lists.01.org>,
        "bauerman@linux.ibm.com" <bauerman@linux.ibm.com>,
        "lkp@intel.com" <lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 23, 2021 at 9:42 AM David Laight <David.Laight@aculab.com> wrote:
>
> From: Michael Ellerman
> > Sent: 23 April 2021 14:51
> ...
> > > (Does anyone - and by anyone I mean any large distro - compile with
> > > local variables inited by the compiler?)
> >
> > This is where I say, "yes, Android" and you say "ugh no I meant a real
> > distro", and I say "well ...".
> >
> > But yeah doesn't help us much.
>
> And it doesn't seem to stop my phone crashing either :-)
>
> Of course, I've absolutely no way of finding out where it is crashing.
> Nor where the massive memory leaks are that means it need rebooting
> every few days.

You need a new phone. :) My Pixel3 uptime is sitting at 194 hours
currently. It would be more, but those annoying security updates
require reboots. I have had phones that I setup to reboot every night
though.

Rob

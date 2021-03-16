Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E98533E112
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 23:04:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230051AbhCPWDi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 18:03:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230252AbhCPWDg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 18:03:36 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A19D6C061756
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 15:03:28 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id q18so93037uas.11
        for <devicetree@vger.kernel.org>; Tue, 16 Mar 2021 15:03:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=e+y2GZvFSKBpGV1H+YAFpahQBLRo9Mzv701zmyGn5iE=;
        b=qU9q0D2BGDdSUDSpLtdOHtab70YyTSWyGBSOmmU+i4+f0bAgGFkzXv0k2fUUgb5IrV
         F+GAcasGg4DVrS1pklHn8nnD5DJ+uCe4RT5TVUX6PJtaHyOgSYOrQ8xngceYyVvrXbqw
         ac3gun/tqoWVC9I22kAFTc9TIwJWwtR6I8zLlBcSJDkJnHgf7nczsNT4DQ22DApTPj5t
         PXXW6lvkX4DJOvVmw/1AJXDF930rIuoF2HpBPYM6S1bVa/zW9rcAWZ9vc71VMSiZ9k30
         QVXRem1pvh2VYIOdI2dttk4/7b3qVH1JBnedeYqUgjLqI/4Zt+bn2JgjDW3EbOE+C+4F
         y7RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=e+y2GZvFSKBpGV1H+YAFpahQBLRo9Mzv701zmyGn5iE=;
        b=sy6EcbeZqgH0ke4O6Wk/PtWwaJ54q0ztSZJf1A/JQmRxmDFDS//nve1HL+EiHj8R+B
         +AtgT019QbErXEDnlTfXvGpHhZe7FS+92TiuSfKGKFZ/iyQy7QGbJZRaLIhFSASg21iE
         fvOV+Fw6ZXYThqgaiId1nmOsWexwBQXa7qXc6ihZJihJmaVQR05sM2OsOFbsXJgf2jJ1
         aiygJ8rFAdYUgMGH5eqEjOBe1ysthmBiWrgS4yoDsPOSG19afFGf4gVBXhFEJOgJoHt/
         dLQV96l5oE+M+jP9juspJhisw2yfOMcXKiZY92A/gwsi1lFwVryMez+RyNQsnRpybcVB
         EjyA==
X-Gm-Message-State: AOAM5322plfeeOA2rxnNr+UOpqt+Tgw1bUdu4K59YjJ7/k8nvzo0JXBW
        93WWJ3CYd8SlmSiQR3SKmhomPU9x0945KToYIW7/IA==
X-Google-Smtp-Source: ABdhPJynwQCJj+hoFsHtAhty8P+S/RUabRApf7UeJ/kAehUHZcBueBCPDPHWJJmylvqMeYvylIBnh0rrqOIIFLhWfII=
X-Received: by 2002:a9f:3230:: with SMTP id x45mr946911uad.23.1615932207490;
 Tue, 16 Mar 2021 15:03:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210311100313.3591254-1-badhri@google.com> <20210311100313.3591254-3-badhri@google.com>
 <YEocMN1aSdDZ2dl/@kuha.fi.intel.com> <CAPTae5KNXK1M1L134RKj6QPr1NGv5uo-43NVZ+cM5otsxjvMOw@mail.gmail.com>
In-Reply-To: <CAPTae5KNXK1M1L134RKj6QPr1NGv5uo-43NVZ+cM5otsxjvMOw@mail.gmail.com>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Tue, 16 Mar 2021 15:02:51 -0700
Message-ID: <CAPTae5KBhVmgsKs-JgVB+Wy-ZWaNXUd9Jqn8UJbYNX2-AOSr1A@mail.gmail.com>
Subject: Re: [PATCH 3/4] usb: typec: tcpci_maxim: configure charging & data paths
To:     Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        USB <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Kyle Tso <kyletso@google.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 9:08 PM Badhri Jagan Sridharan
<badhri@google.com> wrote:
>
> On Thu, Mar 11, 2021 at 5:33 AM Heikki Krogerus
> <heikki.krogerus@linux.intel.com> wrote:
> >
> > Hi,
> >
> > On Thu, Mar 11, 2021 at 02:03:12AM -0800, Badhri Jagan Sridharan wrote:
> > > This change allows the driver to configure input current/voltage
> > > limit for the charging path. The driver sets current_max and voltage_max
> > > values of the power supply identified through chg-psy-name.
> > >
> > > The change also exposes the data_role and the orientation as a extcon
> > > interface for configuring the USB data controller.
> >
> > This looks wrong to me. Why wouldn't you just register your device as
> > a separate psy that supplies your charger (which is also a psy, right)?
>
> Hi Heikki,
>
> Looks like that would pretty much make it reflect the same values as
> "tcpm-source-psy-" exposed
> by tcpm. So experimenting with making the charger power supply a supplicant.
> However, noticed that the "tcpm-source-psy-" does not have calls to
> power_supply_changed().
> So the notifiers are not getting invoked.
> Trying to fix that to see if just "tcpm-source-psy-" helps the case
> without me trying to create another
> one which almost would reflect the same values. Let me know if you
> think that might not work.
Hi Heikki,

With "[PATCH] usb: typec: tcpm: Invoke power_supply_changed for
tcpm-source-psy-"
which I just sent, "tcpm-source-psy-" seems to do the job. So the
set/get_current_limit
and pd_capable callbacks are not needed. Please do review
"[PATCH] usb: typec: tcpm: Invoke power_supply_changed for tcpm-source-psy-".

Thanks,
Badhri

>
> For now, refactored the patches to only include changes related to
> data path and sending
> them in. Will follow up with patches for the charger path once I am
> done with the above approach
> and some validation.
>
> Thanks,
> Badhri
> >
> >
> > thanks,
> >
> > --
> > heikki

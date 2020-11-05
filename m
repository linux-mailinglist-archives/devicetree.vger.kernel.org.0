Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BF1E42A8A99
	for <lists+devicetree@lfdr.de>; Fri,  6 Nov 2020 00:20:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732644AbgKEXUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 18:20:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732409AbgKEXUb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 18:20:31 -0500
Received: from mail-yb1-xb42.google.com (mail-yb1-xb42.google.com [IPv6:2607:f8b0:4864:20::b42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37027C0613D2
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 15:20:31 -0800 (PST)
Received: by mail-yb1-xb42.google.com with SMTP id a12so2839910ybg.9
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 15:20:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=z3KvjLX/VJORZkMvx/1zYSVzh145Bb5NCA0EOT0E+co=;
        b=Qv4uKSRPKxySPqftfzvwkAWHZJ/wyt516/Gw/2AspIpjKZtwdgTxvcR5AzgtvXTrsu
         7GoPjn0++JJ8shAHCAfP4oBYeaZT1BMj9MVcQAuLLLYhxyl/1QR0cc9MXCtyvAQemcnM
         bEqyhD9qFHSdTcI034xskJwUA2Cffn+3FDNY4sUmBGlu3VwlfKXDKTH4LK5NZHiWofKb
         2F2hFKH9Rn/7KJx+F9DibitQVHzaoYxvN+KaxY9u9L0GLMEF1zk92TEkx3gdy1pnTYEq
         4NEnDIwskqLl7F2hCoI2cyu8CLaScCwJcYn5HjRyNTXLzLtrM4yj7DPNgT6v5VyLueEe
         xguw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=z3KvjLX/VJORZkMvx/1zYSVzh145Bb5NCA0EOT0E+co=;
        b=achoSW5jIqcPMvuJcvGtZ5utP+Mw3YZM1GwrDBHkTwH/KgJqd4YHS6GNvrn5RNva/h
         w0j7p9vg/I0ErePOKNwDYdoed+/tamZauZfk4bzuVvkvFERqWcZMjrEbkhCQcG2AOw49
         LNRcaE1QYRCKLPsyQI015pOkwTCUukxATU0D8Hvr60jUg2XprIeNND5b9QH96Sikgv3n
         fK83wsWHgTZvHNLznnRr3M7XGJJLUqqRjWfHOL9klT4OJKpUvB6m/RI5WZ77RoOjbric
         9Pgq2k3QqxFIS3mFjjasitBSF4EqZKSr0+jt1QlW5X315ft3TjDqJfCnq3iT8JXH49uC
         +UAQ==
X-Gm-Message-State: AOAM531YepPH0o9VJVOZcwWvYtL/EC8dMPAYhekbFKHnDDQHPjjK9w1S
        ChvrEA0u0L+7M94z8Fwq45cqpP1Kp0itKO7noSBKZw==
X-Google-Smtp-Source: ABdhPJwNPaIyrXj+5IuUPWsE7V5EABEILCdO7q1BovAOrT9z3Fn8nD8DbzEs7xRgXUqoLjsotAsX31QeSdVbUoTK3ik=
X-Received: by 2002:a25:f817:: with SMTP id u23mr7258013ybd.466.1604618430227;
 Thu, 05 Nov 2020 15:20:30 -0800 (PST)
MIME-Version: 1.0
References: <20201104232356.4038506-1-saravanak@google.com>
 <20201104232356.4038506-2-saravanak@google.com> <20201105093413.GC3439341@kroah.com>
In-Reply-To: <20201105093413.GC3439341@kroah.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 5 Nov 2020 15:19:54 -0800
Message-ID: <CAGETcx9CZp-yyRwi=27eU7hf3z1uLYhaOrY+iyZYxsNpxhLLAQ@mail.gmail.com>
Subject: Re: [PATCH v1 01/18] Revert "driver core: Avoid deferred probe due to fw_devlink_pause/resume()"
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc:     "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>, Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Android Kernel Team <kernel-team@android.com>,
        ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-efi <linux-efi@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 5, 2020 at 1:33 AM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Wed, Nov 04, 2020 at 03:23:38PM -0800, Saravana Kannan wrote:
> > This reverts commit 2451e746478a6a6e981cfa66b62b791ca93b90c8.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
>
> You need to say _why_ you are doing this, it's obvious _what_ you are
> doing :)
>
> Same for the other reverts in this series.

Sorry, forgot about this. Will fix it in v2.

-Saravana

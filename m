Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C79B1AE6CD
	for <lists+devicetree@lfdr.de>; Fri, 17 Apr 2020 22:30:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731053AbgDQUan (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Apr 2020 16:30:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730903AbgDQUan (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Apr 2020 16:30:43 -0400
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com [IPv6:2607:f8b0:4864:20::b44])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2B851C061A0C
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 13:30:43 -0700 (PDT)
Received: by mail-yb1-xb44.google.com with SMTP id l5so1715340ybf.5
        for <devicetree@vger.kernel.org>; Fri, 17 Apr 2020 13:30:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fUE5Lx/KFG4wHOc+8/LB7xM75zMUyQV8EF5MnlFdnvw=;
        b=oZDw8ZH1F0p6LciU2P3FLuNI7GJEKludlMRyjdCTDa6glDAvFQ3ci4SYSsm5up5S1b
         s/vIyC4uj6Omx5TNRbrUxdMqBfivTHIcE9lg8dDavdDALax+of2UCfa7gxlycAo4WUNw
         sDB51h9O8y3apXpvFMgrYr3csVBc5URAR1+czyXwKPJ/7jBcPxgbYBttW/tznoQbdNjy
         GcclvU3hnV4sXRNk2HSAxafuJkIJq585rThGDAqciHZNUcqH0EVA4HjyJz6s0QFBla2Y
         e8ADm+2lA6oezlWmOFSzkDD07AG1nI2Mb/1qetjZOjOB44sBxaKRsXH+yKhhcImUyzHe
         p5pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fUE5Lx/KFG4wHOc+8/LB7xM75zMUyQV8EF5MnlFdnvw=;
        b=q2+Qxd2BjiiTuj7RgjlETEKEwgNKN5w9SACOwOkK2DyDEJBuj7LlEwN4qudFZ+4yLC
         ugrT/eNyTl0u0rETaF180REErXmKp+0iLiF91plqUt5Rvlmcxs7LujHNZrdQ755OxWnl
         buWI3HUssULhJPiV7GU/Q8y8AO6V2mmi30J561pazocZeS1/zq/Zwx9cO9S3MAEToMVq
         rtIfVqGEOLUlqMNL/lnCtQ3W5rDbuGHCmOcxEWfqSsuFZ8spoMucaJAaB566CZ3edSMb
         j8MFLsIvNEg8AYf12qFaep1WiWXUVeKdLM4cKsU3ThmBUcnFKzH03YOlGaTL1uzdQyDY
         6QUw==
X-Gm-Message-State: AGi0PuYR5X4FWd5Cc8KFS/YNc2ewWa9SQRpDr+T0WPbMClhmWWj/FbvQ
        vqZGfxBXs/5xMdJdUjxqxnElQ6emFi3MjPdV1mwS5wFgVqY=
X-Google-Smtp-Source: APiQypJzBUxepaBfjYkiESH5bXyliP3NCl9uyVY/cXB7ZTciX79812GcTjSOSbIle2pY0teKA4B6PP9ILi5OGTEG+AY=
X-Received: by 2002:a4a:9cd8:: with SMTP id d24mr4047527ook.84.1587155441279;
 Fri, 17 Apr 2020 13:30:41 -0700 (PDT)
MIME-Version: 1.0
References: <c48a3baef99f3d74e7904498c4054221ec384b36.camel@suse.de>
 <20200416205838.161894-1-saravanak@google.com> <CAL_JsqK9VmRomOnkVLQUOR9tHnh6phjjqXB=ERkjqhBw_wTVzg@mail.gmail.com>
In-Reply-To: <CAL_JsqK9VmRomOnkVLQUOR9tHnh6phjjqXB=ERkjqhBw_wTVzg@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Fri, 17 Apr 2020 13:30:05 -0700
Message-ID: <CAGETcx8g=qz_JR6y4sfet1c8ZEoE-arbTv1JYqxKMzGHcCMNYg@mail.gmail.com>
Subject: Re: [PATCH v1] of: property: Don't retry device_link_add() upon failure
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 17, 2020 at 11:16 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Apr 16, 2020 at 3:58 PM Saravana Kannan <saravanak@google.com> wrote:
> >
> > When of_link_to_phandle() was implemented initially, there was no way to
> > tell if device_link_add() was failing because the supplier device hasn't
> > been parsed yet, hasn't been added yet, the links were creating a cycle,
> > etc. Some of these were transient errors that'd go away at a later
> > point.
> >
> > However, with the current set of improved checks, if device_link_add()
> > fails, it'll only be for permanent errors like cycles or out-of-memory
> > errors.
>
> What improved checks? The series from Nicolas?
>

Checking for OF_POPULATED and getting the device using get_dev_from_fwnode().
OF_POPULATED ensures the node has been parsed. get_dev_from_fwnode()
ensures the device has been added to driver core.

> Is there a dependency between this and Nicolas' series?

No.

> Should this go to stable?

Kind of a grey area. I mean, if of/fw_devlink is already letting a
platform boot all the way, this doesn't fix anything. I doubt anyone
in a stable kernel is turning on this feature if it affects device
probing. I'd say the same for Nicolas' series too. It allows more
platforms to work, but if a platform is fully working, it doesn't
improve anything.

Long story short, your call for stable.

-Saravana

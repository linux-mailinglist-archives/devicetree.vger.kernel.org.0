Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30F543FE7E1
	for <lists+devicetree@lfdr.de>; Thu,  2 Sep 2021 04:57:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243370AbhIBC6Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Sep 2021 22:58:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60850 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243330AbhIBC6Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Sep 2021 22:58:25 -0400
Received: from mail-yb1-xb2a.google.com (mail-yb1-xb2a.google.com [IPv6:2607:f8b0:4864:20::b2a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ADC01C061760
        for <devicetree@vger.kernel.org>; Wed,  1 Sep 2021 19:57:27 -0700 (PDT)
Received: by mail-yb1-xb2a.google.com with SMTP id z5so991988ybj.2
        for <devicetree@vger.kernel.org>; Wed, 01 Sep 2021 19:57:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=97bosaOR47TSvOBHg1mtJxPWJ+WtXwoG6aaniF3GCjg=;
        b=EP77MXEjIeo0g3Jyrx6Gx1gON2t0Bdje9gVoQyT91G5uuqDnnSgvA6WZr9MW8SOV6k
         MVQTDF0K1iTe1K+Hm8RzDEBhy58YNn+BLPgu7E4woPkbvXoj2/KlZTKSqpaT+j98wYVE
         Il2YQQAJGH7fOMQB+Q6ifkPmgOw621SAl0nuuuV+g1vkZXpzb2WcMrH++sdXq0UMU8aD
         s0PMncgFyUtwGwH0tAPRjNCc9GH4brxD4fTsnBTVLuNFBcDV3Bb/hngGWIJChugExis8
         pHGca5k1W4mg0Ry4tjeRpsdguS9S9bfvGX8mFgjZy1gwa5GXBRJY+MU1b4miNVqmLhm1
         QwSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=97bosaOR47TSvOBHg1mtJxPWJ+WtXwoG6aaniF3GCjg=;
        b=Mpx17V9KQ1gr2q39Wfg1WnlpQprk06KYJYp6r9ZHyeqq9913t6c39omv2SrTa1KI/i
         5q0l9WYOWlEEjdjcjbYocpi7aTTAGO5Lgpz66dnv/ELBmeXKOQIa5g9BiBT1epQn4/Gb
         sI9HSJ/gnek0IQPnoDRM3o/SZ2j2aCHpOCDvnXH8xSGjpCDiwjYoZBoQOjPWFzPsPONq
         upR9TLMn/Uo9BMHTMS5IJbQWICLKWEn3qdCzo/DJ7kEviE46lzFy1OatxRDZOvZGl0Fk
         FIvqhjUkuh381yKDEpo9V54bo0xLH/x9Sjr8c3hxWjGoF40jlnWnySyJ1pu34sTZiRAh
         f1wQ==
X-Gm-Message-State: AOAM531BPXtxql6xTzMSdc5l4i1CY1ja+vMSMyJC+oboSPd2B93VR7pc
        6baOFiJEAWZpA8gRxmFKREkZCszxlC08TYpR1SiG8A==
X-Google-Smtp-Source: ABdhPJz/eqWmkNu6JsP6j13DHJHCb1FgSwoKWuV+H62/OsmvzdUWGrstQ7zzYU2YDzZVdxEcsQcurXwTHOINPNLeRYk=
X-Received: by 2002:a25:804:: with SMTP id 4mr1340662ybi.346.1630551446791;
 Wed, 01 Sep 2021 19:57:26 -0700 (PDT)
MIME-Version: 1.0
References: <20210902025528.1017391-1-saravanak@google.com>
In-Reply-To: <20210902025528.1017391-1-saravanak@google.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 1 Sep 2021 19:56:51 -0700
Message-ID: <CAGETcx9N34RyrdKDR8dQ7ECyz7ZXBx-Ft16t033NjTiU8p=Y0g@mail.gmail.com>
Subject: Re: [PATCH v1 0/2] Ulf reported an issue[1] with fw_devlink. This
 series tries to fix that issue.
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Len Brown <lenb@kernel.org>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>, kernel-team@android.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-acpi@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Oops, forgot to use a proper subject. Sorry.

-Saravana

On Wed, Sep 1, 2021 at 7:55 PM Saravana Kannan <saravanak@google.com> wrote:
>
> Ulf, mind testing this?
>
> Thanks,
> Saravana
> [1] - https://lore.kernel.org/lkml/CAPDyKFo9Bxremkb1dDrr4OcXSpE0keVze94Cm=zrkOVxHHxBmQ@mail.gmail.com/
>
> Cc: Ulf Hansson <ulf.hansson@linaro.org>
>
> Saravana Kannan (2):
>   driver core: Add support for FWNODE_FLAG_NEVER_PROBES
>   of: platform: Mark bus devices nodes with FWNODE_FLAG_NEVER_PROBES
>
>  drivers/base/core.c    |  8 ++++++++
>  drivers/of/platform.c  | 16 ++++++++++++++++
>  include/linux/fwnode.h |  8 +++++---
>  3 files changed, 29 insertions(+), 3 deletions(-)
>
> --
> 2.33.0.259.gc128427fd7-goog
>

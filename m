Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3316635EA5F
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 03:28:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239534AbhDNB23 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Apr 2021 21:28:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231576AbhDNB22 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Apr 2021 21:28:28 -0400
Received: from mail-vs1-xe2f.google.com (mail-vs1-xe2f.google.com [IPv6:2607:f8b0:4864:20::e2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E226BC06175F
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 18:28:07 -0700 (PDT)
Received: by mail-vs1-xe2f.google.com with SMTP id 66so9528435vsk.9
        for <devicetree@vger.kernel.org>; Tue, 13 Apr 2021 18:28:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=mt9FPvqsM99syM3V4UPsDSUXPJo0lBDNk0KpnCh/nwo=;
        b=llob8PI6oLIoAZftpic9u7CSKaXkcnvfP/vD3AX2p4eHHkLRwjNPuVeTZb8W3s/MK0
         MCsuvYLkFtrNs/kbIAfqQ/ZfdU/wV28zr0MUFHSksOSy0vHiE62OM2BdG5aeXja0hnqi
         VoQcZSKl+k90GC3BOT00+1lLKSCSW8Kh+pNVaS2fy57v2CawGZRFZWEvde1a2NqDe7zz
         7JuTszoIfBF1A4QgsYfcxSYU/StVN21pYorzjXpkkfBPjhnMq7QquSpXZowjT0wdrKSo
         KDvZynHtuJgYHkVZWaT4+k7O8KJm01vDQ3QAwidGWCxyR7UxBstHt2415xgWYCfptNCM
         LdYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=mt9FPvqsM99syM3V4UPsDSUXPJo0lBDNk0KpnCh/nwo=;
        b=Xymgv8GV/u2KDiEIxRbog9T3zZOtUvPbIV6Szs8f6jPzi7Xm3WVsriEaDjeE5/akYv
         MmBM0/DhKZZEy98wZ6suKL14RoAu63A85EMRphRKgtZ60pIkOC+3pXY0XK4tWACT4cQ5
         Xexi+4iwYm2mU/PS/N5u534Ik+lMzgfPi5xEmawzxN9eGV3XlX7qxjQ5BlFl/hRX8Vn/
         JLS51HuvMIYPrv9gat+hJKTZdL1ma3sVFllMgeXJRuA/008qNh29p9bZ1p4uryt9iOmw
         GEAYLXLap7c6CAM0lvnD5FjR4+H+Z5FONlTLrRhngAnxVyRCob+oVA6JPf0SG3tFWxYV
         GhGg==
X-Gm-Message-State: AOAM531prPAU/94eG3+J9jjggSl3Nclfx4EXCb/f27hUNqK4GcVWFvyi
        bKwI8p1gksdfIy8O8lcJKZDGT+VSuJNfc1TsuKV99SvY56eh5g==
X-Google-Smtp-Source: ABdhPJxYFckGniifS7vjuSzS3/hfjGlYO1cQrMRpm1/e4phHtVDXLNENpfEgPO/gihAQiqkYcdUNooVt6ODnwd2XuT4=
X-Received: by 2002:a67:12c6:: with SMTP id 189mr25672622vss.16.1618363686305;
 Tue, 13 Apr 2021 18:28:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210407200723.1914388-1-badhri@google.com> <20210407200723.1914388-6-badhri@google.com>
 <20210409183803.GA3928012@robh.at.kernel.org>
In-Reply-To: <20210409183803.GA3928012@robh.at.kernel.org>
From:   Badhri Jagan Sridharan <badhri@google.com>
Date:   Tue, 13 Apr 2021 18:27:31 -0700
Message-ID: <CAPTae5+fxxpzNCNb-eo_7gR6-Pvnr0aFq58dfPmucB2eh7ibjg@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] Documentation: connector: Add slow-charger-loop definition
To:     Rob Herring <robh@kernel.org>
Cc:     Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        USB <linux-usb@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Kyle Tso <kyletso@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Have clarified "slow charger loops" and pSnkStby in my V3 of the patch
and have updated the subject as well.
I was actually doing a git log where the last one showed up with the
following commit description.

commit 4b59b60d896f3ed94921974e916db091bc3a9ba8
Author: Kyle Tso <kyletso@google.com>
Date:   Fri Feb 12 15:37:43 2021 +0800

    Documentation: connector: Update the description of sink-vdos

    Remove the acronym "VDM" and replace it with the full name "Vendor
    Defined Message".

    Reviewed-by: Guenter Roeck <linux@roeck-us.net>
    Signed-off-by: Kyle Tso <kyletso@google.com>
    Link: https://lore.kernel.org/r/20210212073743.665038-1-kyletso@google.com
    Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

Thanks,
Badhri

On Fri, Apr 9, 2021 at 11:38 AM Rob Herring <robh@kernel.org> wrote:
>
> On Wed, Apr 07, 2021 at 01:07:23PM -0700, Badhri Jagan Sridharan wrote:
> > To allow slow charger loops to comply to pSnkStby requirement,
> > this patch introduces slow-charger-loop which when set makes
> > the port request PD_P_SNK_STDBY_MW upon entering SNK_DISCOVERY
> > (instead of 3A or the 1.5A during SNK_DISCOVERY) and the actual
> > currrent limit after RX of PD_CTRL_PSRDY for PD link or during
> > SNK_READY for non-pd link.
>
> What are 'slow charger loops' and pSnkStby?
>
> 'dt-bindings: connector: ...' for the subject. Follow the pattern you
> see with 'git log --oneline' for a directory.
>
> >
> > Signed-off-by: Badhri Jagan Sridharan <badhri@google.com>
> > ---
> >  .../devicetree/bindings/connector/usb-connector.yaml       | 7 +++++++
> >  1 file changed, 7 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/connector/usb-connector.yaml b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > index b6daedd62516..09ad3ad983a6 100644
> > --- a/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > +++ b/Documentation/devicetree/bindings/connector/usb-connector.yaml
> > @@ -197,6 +197,13 @@ properties:
> >      $ref: /schemas/types.yaml#/definitions/uint32
> >      enum: [1, 2, 3]
> >
> > +  slow-charger-loop:
> > +    description: Allows slow charging loops to comply to pSnkStby. When set makes
> > +      the port request pSnkStby(2.5W - 5V@500mA) upon entering SNK_DISCOVERY(instead
> > +      of 3A or the 1.5A during SNK_DISCOVERY) and the actual currrent limit after
> > +      reception of PS_Ready for PD link or during SNK_READY for non-pd link.
> > +    type: boolean
> > +
> >  required:
> >    - compatible
> >
> > --
> > 2.31.1.295.g9ea45b61b8-goog
> >

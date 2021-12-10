Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBD6D470CD2
	for <lists+devicetree@lfdr.de>; Fri, 10 Dec 2021 23:07:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239921AbhLJWKh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 17:10:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232355AbhLJWKh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 17:10:37 -0500
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E252C0617A1
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 14:07:01 -0800 (PST)
Received: by mail-pg1-x52e.google.com with SMTP id f125so9245282pgc.0
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 14:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=v3CMutt/USnRjpKYl5jZ+kVngzRMIPG7FVl3HXha5Zk=;
        b=VlqtlGclyJC2QA28IDW1kkRuOEq5VMO3pALdr8c5t9/AdR8cXjZC0xPqGY7atY1sJh
         O9xDR32/C+v6vfr/ohNWXFvksnSmMK7qga1Hb5amdgEKxjfi/z1qi7rJTRtghlAvaQ/L
         11f3hGCoz5DU92X+z6agYuXH0hE6sBRs9iNXc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=v3CMutt/USnRjpKYl5jZ+kVngzRMIPG7FVl3HXha5Zk=;
        b=zrYqAhy4clJS1mOot8NP614kJAOqSeWqqza2JL7hmNlDdFwthDomND3+DclBWK6srB
         8J69YkRg7qXECdqk4ZK7eCoVB3md8CW/bgiTfXL0xjRn0KGJpf30pcEw25UFNGXhSctL
         F1BupGwGwj3wCzta4xpFpew5Hbv/0T9knLVnkplp+vZZ/vajS+YB/m4shZgYzCs+Nano
         Xb4IlEYgn59bcjWKvFS8MGVDvZ306xRFpBYKX7e+t4hqPF2DgbQjlqAtYfsx7G/QsASD
         0Zlts4Qun/ZHyJRhs6Z4wj4tlmnc70IXhvrZWXXQFsTXwYRNdjp4R9GEfzMgamZLnN8u
         YaPA==
X-Gm-Message-State: AOAM532Nlhc3H0hJBWlgzYkTHMZtWqeszkZaf8/9F94JvsDMy5H1FeKN
        UAcbqME4xRihvuh9pl31cfQuZw==
X-Google-Smtp-Source: ABdhPJyS5WPGLp0XZE85JMEK6R3YAWr6M9oHngnMNia4QECj9EEFgZIxo17jLeBcnlJLOdjx49C2Jg==
X-Received: by 2002:a63:6ecb:: with SMTP id j194mr40403693pgc.46.1639174021093;
        Fri, 10 Dec 2021 14:07:01 -0800 (PST)
Received: from google.com ([2620:15c:202:201:f71b:fe75:c847:85f9])
        by smtp.gmail.com with ESMTPSA id b6sm4324525pfm.170.2021.12.10.14.06.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Dec 2021 14:07:00 -0800 (PST)
Date:   Fri, 10 Dec 2021 14:06:59 -0800
From:   Prashant Malani <pmalani@chromium.org>
To:     Hans de Goede <hdegoede@redhat.com>
Cc:     Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Tobias Schramm <t.schramm@manjaro.org>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] dt-bindings: usb-connector: Add support for Type-C
 alternate-modes
Message-ID: <YbPPg9MNefOPjqX8@google.com>
References: <20200714113617.10470-1-hdegoede@redhat.com>
 <20200714113617.10470-2-hdegoede@redhat.com>
 <20200721022610.GA3391383@bogus>
 <f143d626-2a78-e32f-b122-7dbae1b3a50e@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f143d626-2a78-e32f-b122-7dbae1b3a50e@redhat.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

Restarting this thread, since I think we can re-use Patch 1/4, and I
dind't want some of the context to be lost by starting a new thread.

On Wed, Jul 22, 2020 at 09:18:02AM +0200, Hans de Goede wrote:
> Hi,
> 
> On 7/21/20 4:26 AM, Rob Herring wrote:
> > On Tue, Jul 14, 2020 at 01:36:14PM +0200, Hans de Goede wrote:
> > > This commit adds the minimum bindings required to allow describing which
> > > altmodes a port supports. Currently this is limited to just specifying:
> > > 
> > > 1. The svid, which is the id of the altmode, e.g. displayport altmode has
> > > a svid of 0xff01.
> > > 
> > > 2. The vdo, a 32 bit integer, typically used as a bitmask describing the
> > > capabilities of the altmode, the bits in the vdo are specified in the
> > > specification of the altmode, the dt-binding simply refers to the
> > > specification as that is the canonical source of the meaning of the bits.
> > 
> > What if this information should be derived from information already in
> > DT (or would be there if alt mode connections are described)?
> > 
> > > 
> > > Later on we may want to extend the binding with extra properties specific
> > > to some altmode, but for now this is sufficient to e.g. hook up
> > > displayport alternate-mode.
> > 
> > I don't think this is sufficient as it doesn't describe how alternate
> > modes are connected to various components. This has been discussed some
> > here[1] with the CrOS folks. Maybe this is orthogonal, IDK, but I really
> > need something that is somewhat complete and not sprinkle a few new
> > properties at a time.
> 
> Right, but that is an orthogonal problem, this is telling the Type-C
> controller which modes it is allowed to negotiate and which capabilties
> (altmode specific, stored in the vdo) it should advertise.
> 

I concur. There is value in listing the alternate modes supported by a
connector in the connector bindings. PD negotiation (which may include
alternate mode entry) is something which is handled
by the port driver / TCPM itself, so this sounds like a reasonable place
to explicitly describe this information rather than derive it from OF
graph.

While it is important to describe how the connector is routed through the
switches and eventually to the various controllers (DP, xHCI, USB4 etc.),
it doesn't sound like we should make the Type C port driver rely on those
graph connections to derive what alternate modes to support.

FWIW, I did provide a more fleshed out example of how the OF graph
connections from port to various PHYs would work a while back, but
didn't get much feedback on it [1]

> BTW note that making the binding look like this was proposed by Heikki,
> the Type-C subsys maintainer, I ended up implementing this because Heikki
> did no have the time for it.

If the binding itself looks fine, then I'd request we move forward with
including it in the usb-connector bindings rather than stalling on the
OF graph switch bindings.
Heikki had mentioned [2] that we can adjust the ACPI bindings to accommodate
device tree requirements, and it looks like the current implementation is already in
the mainline connector class code [3], just the binding is missing.

I would be happy to re-upload this patch, with follow on patches which:
- Add the altmodes node to a Chrome OS device tree file
- Update the cros-ec-typec port driver to call the function introduced in [3].

I've tested this locally and it works fine.

[1]:
https://lore.kernel.org/lkml/CACeCKacUa1-ttBmKS_Q_xZCsArgGWkB4s9eG0c5Lc5RHa1W35Q@mail.gmail.com/
[2]:
https://lore.kernel.org/linux-usb/Ya8vxq+%2FP%2FWG4kHo@kuha.fi.intel.com/
[3]: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7b458a4c5d7302947556e12c83cfe4da769665d0

Would be good to hear your thoughts on the above.

Thanks,

-Prashant

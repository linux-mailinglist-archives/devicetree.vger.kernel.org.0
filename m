Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3943634EB75
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 17:04:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232001AbhC3PDq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 11:03:46 -0400
Received: from mail-oo1-f46.google.com ([209.85.161.46]:45798 "EHLO
        mail-oo1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231743AbhC3PDS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 11:03:18 -0400
Received: by mail-oo1-f46.google.com with SMTP id s1-20020a4ac1010000b02901cfd9170ce2so1943978oop.12
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 08:03:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6Dp4fbDfgQXSbK3dORjSxl3stf7+HDKSewMsMy+yev4=;
        b=OSE9VG/UzZBJyX5pEZ4ya4otDajmI9ThmBmU0oxqSDw+P9kHuRLmNxDBwcnwivjS5u
         gmzKO6J2hmgy5+KXAyP3C17amjzq6RmaeKRXW18km5OJgEfvqf7Gyk78V3Dw8pByAJxW
         S5LpZpM/Bg41OFaQhImsLygMlRDtBX5E8FEP1A3+ElMthwO4J3NY1mbWz/Nf4N00Xqf8
         8ZD2ulNYhjn1KalsrMlt9oB84uczJmgTL1PGHsjRyESvD2OYhXxknUj2V6mCJmNW+nEg
         jVr6RBB+fqHNC89lyx56jKfwWl044s0f7kzIY5afk69n3UGO1Hk/gHQd7m9FlBfp6xCc
         Xumg==
X-Gm-Message-State: AOAM531B1UgO2d3t6pP6vI44lUKQ5vJoOWwmmqdKQmWGk8805M2h0N8N
        X4Cyr47pGNJUztdDATi0KWAHZmagwQ==
X-Google-Smtp-Source: ABdhPJwLwUfACLeNd1t7tr9CKm+0h6c7Eu2gtXOrCjmnSCf2IKwaqP8JXQrIZ/50Rm0JkvxYgZc9Kg==
X-Received: by 2002:a4a:1ac3:: with SMTP id 186mr7704432oof.8.1617116598075;
        Tue, 30 Mar 2021 08:03:18 -0700 (PDT)
Received: from robh.at.kernel.org ([172.58.99.136])
        by smtp.gmail.com with ESMTPSA id h23sm5146227ots.0.2021.03.30.08.03.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 08:03:17 -0700 (PDT)
Received: (nullmailer pid 306198 invoked by uid 1000);
        Tue, 30 Mar 2021 15:03:12 -0000
Date:   Tue, 30 Mar 2021 10:03:12 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sumit Garg <sumit.garg@linaro.org>
Cc:     Sudeep Holla <sudeep.holla@arm.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>,
        Marc Bonnici <marc.bonnici@arm.com>
Subject: Re: [PATCH v5 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20210330150312.GA284502@robh.at.kernel.org>
References: <20210325143255.1532452-1-sudeep.holla@arm.com>
 <20210325143255.1532452-2-sudeep.holla@arm.com>
 <CAFA6WYMrCzDUHn4O=tM7y+w01LcSPrRu3Awja7io1XtcZPhqYQ@mail.gmail.com>
 <20210326105545.44rdcbrumg3q6i7y@bogus>
 <CAFA6WYNf+Wmb3v56_-hUekn4UwSBe87OGJFehDx7t4iDWgg17g@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAFA6WYNf+Wmb3v56_-hUekn4UwSBe87OGJFehDx7t4iDWgg17g@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 26, 2021 at 05:26:52PM +0530, Sumit Garg wrote:
> On Fri, 26 Mar 2021 at 16:25, Sudeep Holla <sudeep.holla@arm.com> wrote:
> >
> > On Fri, Mar 26, 2021 at 10:35:23AM +0530, Sumit Garg wrote:
> > > Hi Sudeep,
> > >
> > > Apologies for catching up late on this patch-set.
> > >
> > > On Thu, 25 Mar 2021 at 20:05, Sudeep Holla <sudeep.holla@arm.com> wrote:
> > > >
> > > > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > > > partitions in the discovery API, we need to specify the UUID of the
> > > > partitions that need to be accessed by drivers within the kernel.
> > > >
> > >
> > > Wouldn't we be able to implement auto-discovery of ffa partitions? I
> > > think enumeration of ffa partitions on FFA bus should be quite similar
> > > to enumeration of TAs on TEE bus (see [1]). Otherwise we need to put
> > > these redundant DT entries for every ffa partition which IMHO would
> > > bloat up device trees for every platform.
> > >
> >
> > Any suggestions on how to ? Clearly spec doesn't have that provision, I
> > had raised this point in the past. Jens has similar concern and he did
> > ask the same[1]. As I replied to him in that thread[2].
> >
> > I am open to suggestion on how to auto-discover, currently as I see spec
> > doesn't support it.
> >
> 
> Thanks for sharing links to prior discussions and I can see that
> currently spec doesn't support it. But from an implementation
> perspective, I can't find any reason that we can't support
> auto-discover. Have a look at below proposed simple FFA ABI:
> 
> FFA_LIST_PARTITIONS
> 
> - No input params.
> - Returns an array of secure partition UUIDs to which this non-secure
> virtual/physical FF-A instance is allowed to communicate with.
> 
> I think with auto-discovery, one of the major benefits is that if the
> OEM is using a common platform to cater to multiple use-cases which
> rely on different secure partitions then OEM doesn't have to bother
> about shipping separate DTs.

+1

DT should not be the dumping ground for everything forgotten to be made 
discoverable. There's not much we can do about h/w, but firmware is 
different and can be changed. In other threads (e.g. PCI config space 
SMC calls), fixing in firmware is the proposed answer. So let's do that 
here.

Maybe if there are implementations shipping and changing is too late 
(yet not too late to use a new binding), then I'd feel differently. But 
being in a spec or not alone is not enough reason alone to accept this. 
It's obvious the spec did not have wide enough review.

Rob

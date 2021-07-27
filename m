Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D09743D6DD3
	for <lists+devicetree@lfdr.de>; Tue, 27 Jul 2021 07:09:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234904AbhG0FJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jul 2021 01:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234865AbhG0FJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jul 2021 01:09:11 -0400
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6815AC061757
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:09:12 -0700 (PDT)
Received: by mail-pj1-x102f.google.com with SMTP id ca5so3760543pjb.5
        for <devicetree@vger.kernel.org>; Mon, 26 Jul 2021 22:09:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=jMb1KRUbiUlacJfAVD1/R8vrh+6l8zpcFNirbTWr1q4=;
        b=Yso/kk9zDSFsGRMyC/gs/cauJC8vGbPr+iUqMihO+rX6CTMTtNIqua+TvNUgtPbfYu
         KvqSzFhXJEijB4imj9I7mYJ54IITie8MTKgenGgW8uSXn1FBoxSqa0hebxLHjuFL9IaR
         MQZUY+2fd02tmll4YscUDlDhIP74HMLuip0H9/rKf5H+FFKWpRMv8NRfTHj1k/PVPVyy
         etRR4bWUS9hhtQJUF8eZsqavNk+oeWwPgbyAsmGECaxt2EL7+Hxr4QM8aoyTQP0SbA9T
         52D8/j9xLTXXhhGFygFrHx0rttkO5HtvR4Mt1+A4TnOxRx2YltlK50yNtaf1/VFprP0S
         hZnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=jMb1KRUbiUlacJfAVD1/R8vrh+6l8zpcFNirbTWr1q4=;
        b=uZ2AtTioyJTbCRDIHCZ8rjhx+Z/RyIsA6nHdXgL8UQLX7grBIFX3KtIDGJRj1JJ5dY
         HN9aAaUEaa6Y3y47UszpxIrSJhqZTZ+dmBvSSGFgJapMHWMyrobFhFZs9PeQg107AMmH
         Vi5d6vP6Q1X7Ytq1ZhPz3S1hucZLNnOkJIsCjk0lq8i/lWx4rIupI19o/B/GxOlVysC1
         27xLfAdwZFSmnm4u+4MunOMax3iYCWFKVkeyJ/ocK5+5I5bi+cHz9wY7cQA4dQzAEcSD
         Bno+HPevKcc0N68tQH4w7dbJmETg9J4/boeYjUtUB//IpppN4ko8EFpuGznFBrtlYNlw
         ac/Q==
X-Gm-Message-State: AOAM532aI00soVphlISmqCtInpHgQrbgnrvJu/JAKN0TK/dQfQVVb78S
        +U45E2JvwjOFmTT5U9q9hndP/A==
X-Google-Smtp-Source: ABdhPJwI0o/AFZSBs2tCGBCeJzWBzREp/9JaTjCOKUT78rlQB8bhoLyrYx24q4Coul5PQQhvFydbIQ==
X-Received: by 2002:a65:40cc:: with SMTP id u12mr17863936pgp.18.1627362551965;
        Mon, 26 Jul 2021 22:09:11 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id q4sm1913130pfn.23.2021.07.26.22.09.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jul 2021 22:09:06 -0700 (PDT)
Date:   Tue, 27 Jul 2021 10:39:03 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Jason Wang <jasowang@redhat.com>,
        "Michael S. Tsirkin" <mst@redhat.com>,
        Arnd Bergmann <arnd@kernel.org>,
        Jean-Philippe Brucker <jean-philippe@linaro.org>,
        Vincent Guittot <vincent.guittot@linaro.org>,
        Bill Mills <bill.mills@linaro.org>,
        Alex =?utf-8?Q?Benn=C3=A9e?= <alex.bennee@linaro.org>,
        "Enrico Weigelt, metux IT consult" <info@metux.net>,
        Jie Deng <jie.deng@intel.com>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:DRM DRIVER FOR QEMU'S CIRRUS DEVICE" 
        <virtualization@lists.linux-foundation.org>
Subject: Re: [PATCH V3 1/5] dt-bindings: virtio: Add binding for virtio
 devices
Message-ID: <20210727050903.io6kbeotsyplt2lx@vireshk-i7>
References: <cover.1627273794.git.viresh.kumar@linaro.org>
 <fced2f2b9dcf3f32f16866d7d104f46171316396.1627273794.git.viresh.kumar@linaro.org>
 <CAL_Jsq+XXhe2g0Rmda1v_Ws4-E_-UE6X5HUsSk-GcAETqQZiCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+XXhe2g0Rmda1v_Ws4-E_-UE6X5HUsSk-GcAETqQZiCQ@mail.gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26-07-21, 08:57, Rob Herring wrote:
> On Sun, Jul 25, 2021 at 10:52 PM Viresh Kumar <viresh.kumar@linaro.org> wrote:
> > +    description: |
> > +      Exactly one node describing the virtio device. The name of the node isn't
> > +      significant but its phandle can be used to by a user of the virtio device.
> > +
> > +  compatible:
> > +    pattern: "^virtio,[0-9a-f]+$"
> 
> DID is only 4 chars? If so, "^virtio,[0-9a-f]{1,4}$"

It is 32 bit actually, so making this {1,8}.

-- 
viresh

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 25A962F77F6
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 12:50:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727357AbhAOLuM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 06:50:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725880AbhAOLuM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 06:50:12 -0500
Received: from mail-wm1-x336.google.com (mail-wm1-x336.google.com [IPv6:2a00:1450:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CD64C0613C1
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:49:31 -0800 (PST)
Received: by mail-wm1-x336.google.com with SMTP id y187so7366622wmd.3
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 03:49:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=3Y7sMMgPPU0z1BRwF7VpVGZTbQ0iTQO/E15b+IMgvcU=;
        b=FBPnFTN4YjNwGEPEgPPb/GKxLm/dByez2tgxihH2QTOTy8WmfoPhVGgCzfn0uuGa8M
         le7S8lSWf3kb+z9kHtBc5PVcqBfHBeT7ib2PNxJY2Zq+w1uLPC3x0ahHXedS8w9r/zSt
         Vr7XG2oq+iz7SGe/QZ797LMLcSlB+4xePegN1OGrgG0MDR0Zv5lR+pIpgvNZDk7aJ/Mb
         hryGKVORma3fI+fujyOofhDDF3qhRqxZnI9GwL3OcFimO/VS6sVPQwpfJAv1jFGmP4Lv
         Q2N79aIUB9MLyG1XUJCCpN+9Hmp8uqgyfbmnUaRhTyj3f6drUti+D/pRLLBEe0/rMZ/F
         u5kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=3Y7sMMgPPU0z1BRwF7VpVGZTbQ0iTQO/E15b+IMgvcU=;
        b=iOtYjFMCtPNCPSd1zdV0B4/sNDv8vJmZCtGLtV4tKnNdZRd51D1E9IsU5EU0fB8LnQ
         KXSdqfeo8ZsFhu2Gx5qb3PuyLujmU2fYpEpJf90UO+b42p5DkmcMMAdodrrm0Og9TKKi
         adScnu08qZgW5QZ/Rxtt/ERwZF3Rmi/RHGmBP6K2PFEjYoaiQWPTE5g8Bsf3PHM44AS0
         FJk2acrV7yNm/piaI31wNsfP0lOzcl21Pgua1ydKM06YVtNbODmW7HCxcmu6mpSESHb5
         eI/4Kjxb0CUCvjP6UITuuNfrcubCYdfz/9bMEzRT+ztloBhP0M1mt7dMP9ICiSFezjt2
         5Pgg==
X-Gm-Message-State: AOAM532f9wuvWGRXIpY/IFsn/AjrOnDMLbVTl08Yzqz4f7CApAeA5fc3
        Byfpg+0lsxWcRTybBfjvihV7RA==
X-Google-Smtp-Source: ABdhPJwWgFLEVnJBIPMEZOTOrpwlHUua4mJ1YrDg7puiVZE13rx4b9mevJ5cGcZlLYSVVXMXEmG+Hw==
X-Received: by 2002:a05:600c:2292:: with SMTP id 18mr2114867wmf.133.1610711369083;
        Fri, 15 Jan 2021 03:49:29 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id v20sm15758301wra.19.2021.01.15.03.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 03:49:28 -0800 (PST)
Date:   Fri, 15 Jan 2021 11:49:25 +0000
From:   Quentin Perret <qperret@google.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, android-kvm@google.com,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Android Kernel Team <kernel-team@android.com>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Subject: Re: [RFC PATCH v2 15/26] of/fdt: Introduce
 early_init_dt_add_memory_hyp()
Message-ID: <YAGBRVxOFO+ghZXT@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-16-qperret@google.com>
 <CAL_JsqLmzFWmTc=6JSRMofSEVRx9GCrwGxEsYog9dC16EMGdvQ@mail.gmail.com>
 <X/1xN2UxiUxkzAiN@google.com>
 <CAL_Jsq+5d+Ox_-m_Rd83R9xoZb6e2cxCNfbL8YPzKdwj=y0M8Q@mail.gmail.com>
 <X/2xlxx9Ucp4UZvL@google.com>
 <CAL_Jsq+o+t4YYXEW_nYqMsT4ubYJWe6Kdhu614RtrCqsHBtfLw@mail.gmail.com>
 <X/3LIGgx83XJ+U0F@google.com>
 <CAL_Jsq+SeOrn4qFyFuPUmXdnM1oMNMLWLsDzrYgUt9Ts3hyoNg@mail.gmail.com>
 <X/3TRIkakv9mSHSQ@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <X/3TRIkakv9mSHSQ@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tuesday 12 Jan 2021 at 16:50:12 (+0000), Quentin Perret wrote:
> On Tuesday 12 Jan 2021 at 10:45:56 (-0600), Rob Herring wrote:
> > Umm, yes you are right. But both are dealing with nomap. So someone
> > needs to sort out what the right thing to do here is. No one cared
> > enough to follow up in a year and a half.
> 
> Fair enough, happy to do that. I'll send a small series with these two
> patches independently from this series which may take a while to land.

Now sent:

https://lore.kernel.org/lkml/20210115114544.1830068-1-qperret@google.com/

Thanks,
Quentin

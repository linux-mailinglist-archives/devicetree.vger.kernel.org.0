Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F1BAB30FB98
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 19:36:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239157AbhBDSdf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 13:33:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50194 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238947AbhBDSdR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 13:33:17 -0500
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F128C0613D6
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 10:32:37 -0800 (PST)
Received: by mail-wr1-x433.google.com with SMTP id q7so4666349wre.13
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 10:32:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=i5OkDpHRHvhiXPZMMrrT7zhfgAaMhV3SLJ8BwwytR0s=;
        b=NzENSC2sGUAf6yMy4ybJ293aeKFlUOzRFqVDwa74QP6UwZ/5IB3S3LIPQlwbp8bt+o
         my5F6ZY9nh5di/2C5uBrcKhs1fQfE4OjUXJxheN1wZ1ovB0osI0wHXutPiHAY6pkY928
         OR/S/0A2mA0gjFJH/vBiR0uoQi938QDkKsHzUCcRVEycYypV02mCwH+ckuhX0Clxw+2v
         McHwgjv6KG1P3zyyXs7Bt3u5wlGAn4NA54GuwScW05yezBwR9v5ja/FCqYiw2uJ6WrWA
         XhnTVy2FmSfpuLX/NciEWonqr0lJprKj2D3hDkRr4Fs5NcqZ2QedkbgZMh7JLQPgylbK
         e7oA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=i5OkDpHRHvhiXPZMMrrT7zhfgAaMhV3SLJ8BwwytR0s=;
        b=J0vEzfgFKygYgSWpNmBw2OCK2kNKBemJdIEFdZ+QqjNFJdSCWOpxjSDIkhy20RUXKu
         88G00mjVqy5djvnbhC60KW1jwxchHwSM7mUqB/T73/oSv8Ca7cqV9YvSFd4kJvIt/HGw
         YUnxXXk18FCGnBLywVpdwm05aK82nNqwSyB01gNlzEiIaOGjKUuMsMbO2ch9HYDiAuVE
         E5hxwriIRDlpPEyONajBYE0LQvOzK+unBo7Ie/DGhLJHIvsnIWbNsV6DIx2SCa/kMuL7
         UivagWaAl9Et8UuVPwZ7G/NRLF32S71dqcwp15zmYGq8hqsA62ymjj9/pbu/P+3uonUe
         l/sg==
X-Gm-Message-State: AOAM532DhvPatfu8QHZ/Ks0bH3Nm1rI2ZWRRoOXjWA3cdp5vjhjOY5aD
        XMV7ZuGx1iNVcsTq6fOdvtehZQ==
X-Google-Smtp-Source: ABdhPJy3jMGnpK1oKMDwo50uDDpX8aOtqGavw98z6Rfz/JgQr0QwNihP4xXGA7II1oRyQsQB6m2lqg==
X-Received: by 2002:a5d:560c:: with SMTP id l12mr675373wrv.417.1612463555851;
        Thu, 04 Feb 2021 10:32:35 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id c20sm6618034wmb.38.2021.02.04.10.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 10:32:35 -0800 (PST)
Date:   Thu, 4 Feb 2021 18:32:32 +0000
From:   Quentin Perret <qperret@google.com>
To:     Will Deacon <will@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, android-kvm@google.com,
        linux-kernel@vger.kernel.org, kernel-team@android.com,
        kvmarm@lists.cs.columbia.edu, linux-arm-kernel@lists.infradead.org,
        Fuad Tabba <tabba@google.com>,
        Mark Rutland <mark.rutland@arm.com>,
        David Brazdil <dbrazdil@google.com>
Subject: Re: [RFC PATCH v2 12/26] KVM: arm64: Introduce a Hyp buddy page
 allocator
Message-ID: <YBw9wCvkAXLUpgw7@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-13-qperret@google.com>
 <20210202181307.GA17311@willie-the-truck>
 <YBrsep4xK1F4YRWb@google.com>
 <20210204143106.GA20792@willie-the-truck>
 <YBw6uInyY+AlE7D3@google.com>
 <20210204182404.GB21526@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210204182404.GB21526@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thursday 04 Feb 2021 at 18:24:05 (+0000), Will Deacon wrote:
> On Thu, Feb 04, 2021 at 06:19:36PM +0000, Quentin Perret wrote:
> > On Thursday 04 Feb 2021 at 14:31:08 (+0000), Will Deacon wrote:
> > > Just feels a bit backwards having __find_buddy() take an order parameter,
> > > yet then return a page of the wrong order! __hyp_extract_page() always
> > > passes the p->order as the order,
> > 
> > Gotcha, so maybe this is just a naming problem. __find_buddy() is simply
> > a helper to lookup/index the vmemmap, but it's perfectly possible that
> > the 'destination' page that is being indexed has already been allocated,
> > and split up multiple time (and so at a different order), etc ... And
> > that is the caller's job to decide.
> > 
> > How about __lookup_potential_buddy() ? Any suggestion?
> 
> Hey, my job here is to waffle incoherently and hope that you find bugs in
> your own code. Now you want me to _name_ something! Jeez...

Hey, that's my special -- I already got Marc to make a suggestion on v1
and it's been my favorite function name so far, so why not try again?

https://lore.kernel.org/kvmarm/d6a674a0e8e259161ab741d78924c756@kernel.org/

> Ok, how about __find_buddy() does what it does today but doesn't take an
> order argument, whereas __find_buddy_of_order() takes the order argument
> and checks the page order before returning?

Sounds like a plan!

Cheers,
Quentin

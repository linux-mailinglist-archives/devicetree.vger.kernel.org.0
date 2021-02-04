Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DAD230FB36
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 19:23:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238873AbhBDSVF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 13:21:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47448 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238995AbhBDSUc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 13:20:32 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07A84C06178C
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 10:19:41 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id a1so4690831wrq.6
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 10:19:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+VEh3ULnEt2qMyxdjl7CY1dmR0Zg7cCNlHAqS2EOLUo=;
        b=MXWcvoo4nhSdplykTRWPmiY+lgTSgacIqYsHHWflzCSAGN45dFMwmmeGPdFWM0o0Su
         Nj9W75DVVfG3D46KMKtSGn5HnZ2UoVQhQgiFQJQZUFzUeFUyEMnc2CsGRDpucqBvcMd0
         +0l7Rje5TWh9GAoP1NjPlEU7MMqq8PGfYM03YZjqM9YHw9PfKe5SWuGVBPg6CxV/D1R+
         agkGzZVfdUavL8OPnLPd4MAUl4gb/RlUoGRth61cB6K33KNsou9OqbtV2Xg0+5bfxFUa
         bSINjTR2QzLDOvdZVWB/Lw1HvT6VVlze/kXtPCb8uS8XN+kD8cpIitGGayzWUidVTnQI
         7x3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+VEh3ULnEt2qMyxdjl7CY1dmR0Zg7cCNlHAqS2EOLUo=;
        b=gGl1RXcIuDgvYiFgK4v8kCRZctntNFxpO94E5Ry4/EirkO/QBufBYjaJYoQfpkuyyw
         eRajX6l+6EtuxhRL2CFtd6jyr/BFMVQRrTYzTA1VkTmjoNZFsOM9iPWNQZkY1aeiN0ab
         CAUQiSLUd8cVpr4qPawbXdpC1QAux5FGrsKrsZ9gKRclO+V/6ciUvvz2yh3+jYqRmzNi
         +JAPmTuxpWeGtDqDqICNI7IqqbQmMN5kqcluZpmY/Ber1hAlg7oKawHLTaWIYuXJfFbl
         KZwDehKYRL7BOOOHUrO4xAmDnNg9PevkbxsDQj58CT6WvNrdG8oHjL93WX6t0/C7YeOK
         Cx5A==
X-Gm-Message-State: AOAM5323OgriPeeRjSBEH8spfB5m8H4tjG48U+kCywF9kiUlhgeXSUHM
        lVEt2HLRkXisge/iG48b465XPQ==
X-Google-Smtp-Source: ABdhPJwI7COPYaGqW+HyuZdtThqGjwA0hFBDsun4GR8de9VIqRa1Cn0OZYfTCDQr1uARFtBcTkppXQ==
X-Received: by 2002:adf:eed0:: with SMTP id a16mr652059wrp.107.1612462779704;
        Thu, 04 Feb 2021 10:19:39 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id u70sm5368278wmu.20.2021.02.04.10.19.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 10:19:39 -0800 (PST)
Date:   Thu, 4 Feb 2021 18:19:36 +0000
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
Message-ID: <YBw6uInyY+AlE7D3@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-13-qperret@google.com>
 <20210202181307.GA17311@willie-the-truck>
 <YBrsep4xK1F4YRWb@google.com>
 <20210204143106.GA20792@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210204143106.GA20792@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thursday 04 Feb 2021 at 14:31:08 (+0000), Will Deacon wrote:
> Just feels a bit backwards having __find_buddy() take an order parameter,
> yet then return a page of the wrong order! __hyp_extract_page() always
> passes the p->order as the order,

Gotcha, so maybe this is just a naming problem. __find_buddy() is simply
a helper to lookup/index the vmemmap, but it's perfectly possible that
the 'destination' page that is being indexed has already been allocated,
and split up multiple time (and so at a different order), etc ... And
that is the caller's job to decide.

How about __lookup_potential_buddy() ? Any suggestion?

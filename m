Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5147B30FB58
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 19:28:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238964AbhBDSZT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 13:25:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239008AbhBDSZJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 13:25:09 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 132CAC061786
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 10:24:29 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id z6so4666257wrq.10
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 10:24:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=bqhKJeoVgC8X9omnqAQFhGwn7i6vcm5biCu8hCuSmsc=;
        b=mS1F26WRUDL/2eC6m6CaQ7EFMSsdGeTCCOhzSMDCjGT93wLceWJ9el78YcVG2XqT5i
         UqVytoukFRxRQT8DHQOcZSdezf6aZfm4cMHxWtUBL914wTBeCU3B+7bROExs5LUwFrCJ
         WXe2PCmgsr4VArHc42+FuL7ILIXzXBFQv0oVLONVawbLaWqcC6hgjXQBMZBD6TX8J8dJ
         3TrqtrEJZ117lGENT5OWBVyBNmhfhsO2lc4Ev0t3lQ+xJX2ZNI9xwHK76j1T8+bfINfz
         SSnuRec1a0u+Fgv5p1JNHOiDUnNYpC3ZZM4JebJW5CZizUNezhin4g67sF9QjV0HpO74
         meWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bqhKJeoVgC8X9omnqAQFhGwn7i6vcm5biCu8hCuSmsc=;
        b=ED5a5uTpAK77dNzU+WKnf7fUqsOOTpewSfFyQR2vJ/2dRMM0QBc9nCoX1vLmKMjyhT
         xEJI8mkO49hNQCqT4DefB+v/e5Qe22l3HhdGW6Khp9ooxlPFgLnlOl7DVja0ZlSa7mO4
         QjSHRRlByCdIQGd/137IprM9c9o5r4HfAg0RRYkLHkrR9JQhMO4EWBvDptn2A7/a/RmK
         qxlKCN3awd1lfnMQDcsIoq0Ybj+Vz6+1HYM0OthYACBFzd890kSetpS/xtEuxaZNENk8
         LyLRIkINOT9SX/1Ijuu+GrUyGkEA0tsRWExgA4ZJBhitKr0Gjbq74ZmPAt7HkPrneVhX
         Bpxw==
X-Gm-Message-State: AOAM530RH8/669BqCBXh8krbmeLQD3lEjH3hqMYxsyBhm+JRpU2BAHV8
        JKDA9dLb9f+hUbJ3pf+36F2yqA==
X-Google-Smtp-Source: ABdhPJyY9kiYlOPf8laxHOlhG16GwuGMkScM8L4Dj0rm/ARmDfAXf85n5/++3N6RBc9bsoayAr8Ncg==
X-Received: by 2002:adf:e642:: with SMTP id b2mr668852wrn.221.1612463067694;
        Thu, 04 Feb 2021 10:24:27 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id g14sm9650047wru.45.2021.02.04.10.24.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Feb 2021 10:24:27 -0800 (PST)
Date:   Thu, 4 Feb 2021 18:24:24 +0000
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
Message-ID: <YBw72KeLQ5dzSoJi@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-13-qperret@google.com>
 <20210202181307.GA17311@willie-the-truck>
 <YBrsep4xK1F4YRWb@google.com>
 <20210204143106.GA20792@willie-the-truck>
 <YBwKRM3uHDMC9S0U@google.com>
 <20210204174849.GA21303@willie-the-truck>
 <YBw2aIr/Ktx1dsOT@google.com>
 <20210204181317.GE21303@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210204181317.GE21303@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thursday 04 Feb 2021 at 18:13:18 (+0000), Will Deacon wrote:
> I was going from memory, but the loop in __hyp_alloc_pages() searches up to
> HYP_MAX_ORDER, whereas this is _never_ going to succeed beyond some per-pool
> order determined by the size of the pool. But I doubt it matters -- I
> thought we did more than just check a list.

Ah, I see -- I was looking at the __hyp_attach_page() loop.

I think it's a good point, I should be able to figure out a max order
based on the size and alignment of the pool, and cache that in struct
hyp_pool to optimize cases where this is < HYP_MAX_ORDER.
Should be easy enough, I'll see what I can do in v3.

Thanks!
Quentin

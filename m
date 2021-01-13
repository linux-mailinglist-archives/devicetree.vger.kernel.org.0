Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F027D2F4D3E
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 15:39:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727047AbhAMOgM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 09:36:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38358 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726770AbhAMOgL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Jan 2021 09:36:11 -0500
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE789C0617A3
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 06:35:04 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id e25so1815133wme.0
        for <devicetree@vger.kernel.org>; Wed, 13 Jan 2021 06:35:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=k8M4ay0pyWeTUsp8VTnmXaOTFerFbqdBD2/I+a5rVXU=;
        b=QRj1w8Zq8rESBoWrOk4jhvDSx+r0QWDtuf8GtQvgUpnFqBkcPHdTvb7c85hHF2l7cc
         qDKLJjq9Ii0ShbvDAU8iPTjVj20pMzOpAmpTWPBPhfpw7RQO8ZxSx4EUM8mZsSiXOwQL
         mdSHwkiWfb6QKpJX/SX1f5FrqdKK38gVDw2QhYa4LBWQ5jOkpmSnlu6QgdD7PLAOsV1i
         pjdicHccdwcNo3H+EHeD0jh7OVRjagkZ/8yX0F72Uzi/JeXwMnfHry8HzfWpKUBOJuAj
         gvO7/YEvY/bLsnuixLd6a0UD+ErWYadkCVa8OGxI4YHgEEgNnjV4lTOzzUhdH+UO71MZ
         81gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=k8M4ay0pyWeTUsp8VTnmXaOTFerFbqdBD2/I+a5rVXU=;
        b=AavHoCHCedjmHzKXcBQo9KKOsFRCNCEy5E/0HYQe0rMTIAmnGC7Wy3qwB7u0Cth1Mj
         NGLZjJiYKJglpgrbW8j1OGb9pRP9lHH5CoN5PEiEEw08dREbgfua42LXHoWzbryWCf9m
         Vn9/569nkLF1bTQj8DLv3Wmhc5skLbSYyHyxkBAPgCftx6IXWBEyrQlQxn/1H5zvxpRY
         5uykykFQQRDCgmBGiXusyFWnBRtS3qmlBhI3SWPaxlUhpEjZMARdPymvnbqVhGTjubIT
         ipBPmXeirwk53PSnE4uHpNGvAtc/aLMF24PptLsUh6N5LRmLCgdzyhJHtbPFME3HEx9q
         WNWg==
X-Gm-Message-State: AOAM532BfdRrBipf3aouSwOLdr/3hrQxvs1L5PUChn1n1CfrV2I0Xssk
        96BK60LKlI5gsNO6gQhSEfB8lg==
X-Google-Smtp-Source: ABdhPJyeEFIkF9DIJ5QpLZTm88kYBUJZLogYBqCXhodFTAckts1/BoAtWv9HKHGKxjjjbk2k938twA==
X-Received: by 2002:a1c:7f83:: with SMTP id a125mr2516711wmd.86.1610548503499;
        Wed, 13 Jan 2021 06:35:03 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id v7sm3410751wma.26.2021.01.13.06.35.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jan 2021 06:35:03 -0800 (PST)
Date:   Wed, 13 Jan 2021 14:35:00 +0000
From:   Quentin Perret <qperret@google.com>
To:     Marc Zyngier <maz@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
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
Subject: Re: [RFC PATCH v2 13/26] KVM: arm64: Enable access to sanitized CPU
 features at EL2
Message-ID: <X/8FFKOLOVD9Ee2F@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-14-qperret@google.com>
 <d55643ea391f73a2297f499f3219ba8a@kernel.org>
 <X/8CR5eXGGccFjaL@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <X/8CR5eXGGccFjaL@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wednesday 13 Jan 2021 at 14:23:03 (+0000), Quentin Perret wrote:
> Good point, that would be nice indeed. Can I use that from outside an
> __init function?

Just gave it a go, and the answer to this appears to be yes,
surprisingly -- I was expecting a compile-time warning similar to what
we get when non-__init code calls into __init, but that doesn't seem to
trigger here. Anyways, I'll add the annotation in v3.

Thanks,
Quentin

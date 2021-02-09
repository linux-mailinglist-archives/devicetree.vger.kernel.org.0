Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06D13314C67
	for <lists+devicetree@lfdr.de>; Tue,  9 Feb 2021 11:05:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230055AbhBIKDS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 05:03:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229930AbhBIKBP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 05:01:15 -0500
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD88DC061788
        for <devicetree@vger.kernel.org>; Tue,  9 Feb 2021 02:00:33 -0800 (PST)
Received: by mail-wr1-x42d.google.com with SMTP id g10so20895128wrx.1
        for <devicetree@vger.kernel.org>; Tue, 09 Feb 2021 02:00:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qm0cSL/QtRytmHGpisi5xpuLYYaM91e4VtafX8yXdgA=;
        b=Qu2b01DvtGYXJeJxDXNNE1KeI4fwXHqTFP9NUINIClmyovM1EXyaAgdMtyphaqcPjz
         BW240oE/Ro+4mYQ1ho1diep6tj3gk7c8M0PWNQLRph+DujYRBkt+OZiYtke0CFce7jNu
         eWWChjHaBXyma6Xojt/HIqFpTZhtiIr0lUinDES0r/155umcLvlXYF1CdiDmsr5kDpdc
         7+6EjCub+DdSxNlJS+ueD7dMv83ZN0AEi4wyB90rziN/G7o5cmaehpvfAuHpWq/wNyIT
         WjeOv5dbYzTilYNyXTp8Us0S0ITCiDcb8eVCd4CLm/L+uBwK1C5FbMuA2YsxK3110zzh
         ng/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qm0cSL/QtRytmHGpisi5xpuLYYaM91e4VtafX8yXdgA=;
        b=rloEj9CfuvxdzlAiGlGXNIJ8ZRJueLi1bu4ZrHuSZoO8gjVqD+TDexax7VJm/3gKsy
         0mH6fm26cOqo1l3VD5FG/KrtD3xK6jgqlw4fhHQveA30h0S10AMRpKsR7Duw9XJhDQZ2
         7u8L2xyD0oiQ0as+MgILC5bgYjqabQ4EEvAu6LQ9RLARKaGkxNYN6Ex7jwifPzK1vU8Z
         wH47DJVZc3DcE/LaNGHz75Y8SkppzgSf1Do1h6dC2MAGOBmFKP52ICWyHGSbC67RYdJ+
         Sd3rj1fExpFH79aJ8UfXUfoKI7SF+L2Sh2W02IxVEIFQkZ9PK/CbLpj2jy9cz902EcrU
         PLQA==
X-Gm-Message-State: AOAM533bMtVIWmc+TwiSruUqfEdFoq0WMzI3PbSRk3f3IoXd5ZTdNNvK
        rApe5t9xA/E19fg//xbebtTNyg==
X-Google-Smtp-Source: ABdhPJyXLvE+jYOfb0Dy90ik3YsfWn6xHnuNbVcZCVLQKV4b7h1RDaJQVeB4jpjHc7njZBq4PHZhFQ==
X-Received: by 2002:a5d:43c2:: with SMTP id v2mr12217582wrr.81.1612864832295;
        Tue, 09 Feb 2021 02:00:32 -0800 (PST)
Received: from google.com (230.69.233.35.bc.googleusercontent.com. [35.233.69.230])
        by smtp.gmail.com with ESMTPSA id m6sm3113718wmq.13.2021.02.09.02.00.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 02:00:31 -0800 (PST)
Date:   Tue, 9 Feb 2021 10:00:29 +0000
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
Subject: Re: [RFC PATCH v2 16/26] KVM: arm64: Prepare Hyp memory protection
Message-ID: <YCJdPXuGr9kCIKVM@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-17-qperret@google.com>
 <20210203143709.GA18907@willie-the-truck>
 <YBvQrHdbiNTSLQq6@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YBvQrHdbiNTSLQq6@google.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thursday 04 Feb 2021 at 10:47:08 (+0000), Quentin Perret wrote:
> On Wednesday 03 Feb 2021 at 14:37:10 (+0000), Will Deacon wrote:
> > > +static void handle___pkvm_init(struct kvm_cpu_context *host_ctxt)
> > > +{
> > > +	DECLARE_REG(phys_addr_t, phys, host_ctxt, 1);
> > > +	DECLARE_REG(unsigned long, size, host_ctxt, 2);
> > > +	DECLARE_REG(unsigned long, nr_cpus, host_ctxt, 3);
> > > +	DECLARE_REG(unsigned long *, per_cpu_base, host_ctxt, 4);
> > > +
> > > +	cpu_reg(host_ctxt, 1) = __pkvm_init(phys, size, nr_cpus, per_cpu_base);
> > 
> > __pkvm_init() doesn't return, so I think this assignment back into host_ctxt
> > is confusing.
> 
> Very good point, I'll get rid of this.

Actually not, I think I'll leave it like that. __pkvm_init can return an
error, which is why I did this in the first place And it is useful for
debugging to have it propagated back to the host.

Thanks,
Quentin

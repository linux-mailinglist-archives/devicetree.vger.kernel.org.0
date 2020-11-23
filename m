Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 334892C0C34
	for <lists+devicetree@lfdr.de>; Mon, 23 Nov 2020 14:58:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729946AbgKWNv6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Nov 2020 08:51:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729939AbgKWNv4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Nov 2020 08:51:56 -0500
Received: from mail-wm1-x344.google.com (mail-wm1-x344.google.com [IPv6:2a00:1450:4864:20::344])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80658C061A4D
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 05:51:56 -0800 (PST)
Received: by mail-wm1-x344.google.com with SMTP id w24so17325735wmi.0
        for <devicetree@vger.kernel.org>; Mon, 23 Nov 2020 05:51:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=iaau9hhA1KFwy2KDmDsX/sn+tVvl77lzzmCiDGToHck=;
        b=BgBnJ8EK3bza/181q05p8iQXYs1RFznPl/Ry+CtkBEqrhmo0cDH+CdGkp84Kl7VtoZ
         0MXDjoCuJ9ewJWRWvmxbHgQGAzkgtkHlr0ywKiw8rXqDO0ze1p7PzKWkFWH79bhxAqUI
         6jIltWFyRts2sRBAUNyMtgisXoiwq3Nx0b7Lw2MIuZ2EflVqv6tUs2im41Nm2pDDGSjA
         Fa+wRpnl6JOqv2tiJ1BvZ3rfyLWW9eUD9WZ5Wyj/7MzePo1L4f3PEMUWioqIy/BYO5Nd
         5RqoRi/8HhqjyyjHjaUmEyFGBFS2N9lGzNc7Zf9YgR/Viuf5HTyCR9maRGJ/6GB2ZKIh
         Jygw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iaau9hhA1KFwy2KDmDsX/sn+tVvl77lzzmCiDGToHck=;
        b=CljJmi1MVNSO4rNKHAWXFOHiNd6izAqaRg9BrhWecsZ5UC+E5Mf0MIHcNa+yZWAhiu
         3uFHV2lkUm9dZgNSubETBPMufAx6lFuq5TzU8OnhkNc/zm33EY4GX86013Z5fL2q2PbD
         LtlRZFNjPSjSvY4/1OpQjBAE87GrVOad1Eob4w4wZWF6HNLM9vQjlLX/YloKgbvpAVmD
         xKAstRNKvt24d7F2e81rVeY9P2UGOJlIAh5JyPL8MIAUPFk+Pb41sY2ycQQG3ahYobDR
         /McwUbCG3y+RjYgX8TtFlG5DQeWXjZUqbWlO1b6LW4AVNxFRArz54fqdHqFlBuyIPe+2
         U7uQ==
X-Gm-Message-State: AOAM530StpVJqWFdGfHVdmDKcnnDrfdJkxLy9WfCjNBzZvaGCW9uNdW9
        4Qx99Aptpko8NdfsShoCYPca/g==
X-Google-Smtp-Source: ABdhPJw2S0g7xc5LX0mjnROVXQEjQ1dcwMwqbjEh95H+sw1EIksGKfdkdpqjbz7CHSJ0dqI/brkrGw==
X-Received: by 2002:a7b:c0cc:: with SMTP id s12mr23506422wmh.41.1606139515051;
        Mon, 23 Nov 2020 05:51:55 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id j71sm17278653wmj.10.2020.11.23.05.51.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Nov 2020 05:51:54 -0800 (PST)
Date:   Mon, 23 Nov 2020 13:51:51 +0000
From:   Quentin Perret <qperret@google.com>
To:     Fuad Tabba <tabba@google.com>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Marc Zyngier <maz@kernel.org>,
        James Morse <james.morse@arm.com>,
        Julien Thierry <julien.thierry.kdev@gmail.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "moderated list:ARM64 PORT (AARCH64 ARCHITECTURE)" 
        <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>,
        "open list:KERNEL VIRTUAL MACHINE FOR ARM64 (KVM/arm64)" 
        <kvmarm@lists.cs.columbia.edu>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE" 
        <devicetree@vger.kernel.org>, kernel-team@android.com,
        Android KVM <android-kvm@google.com>
Subject: Re: [RFC PATCH 13/27] KVM: arm64: Enable access to sanitized CPU
 features at EL2
Message-ID: <20201123135151.GA490744@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-14-qperret@google.com>
 <CA+EHjTwebfoJLpure-mHNzCnmLwnNEi6yh66OLFGrhH_+ysExA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CA+EHjTwebfoJLpure-mHNzCnmLwnNEi6yh66OLFGrhH_+ysExA@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 23 Nov 2020 at 10:55:20 (+0000), Fuad Tabba wrote:
> > diff --git a/arch/arm64/include/asm/kvm_cpufeature.h b/arch/arm64/include/asm/kvm_cpufeature.h
> > new file mode 100644
> > index 000000000000..d34f85cba358
> > --- /dev/null
> > +++ b/arch/arm64/include/asm/kvm_cpufeature.h
> > @@ -0,0 +1,17 @@
> > +/* SPDX-License-Identifier: GPL-2.0-only */
> > +/*
> > + * Copyright (C) 2020 - Google LLC
> > + * Author: Quentin Perret <qperret@google.com>
> > + */
> 
> Missing include guard.

Right, but on purpose :)

See how arm.c includes this header twice with different definitions of
KVM_HYP_CPU_FTR_REG for instance.

Thanks,
Quentin

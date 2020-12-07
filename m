Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7333D2D1366
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 15:19:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727147AbgLGORv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 09:17:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725822AbgLGORv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 09:17:51 -0500
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D80AAC0613D0
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 06:17:10 -0800 (PST)
Received: by mail-wm1-x342.google.com with SMTP id y23so2210200wmi.1
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 06:17:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kpILaO0BvUDEaamvD3auxRaFopgV8/tde37CbHQBxLo=;
        b=V3KQF6vAE2qBEq0iO2Z1ORNELzls6FWH3ugS+2WBuDcDgLaAKTSFcwgtqaorc4ajKH
         hUHkGlRE61kQLwKfV/ahdjDCJ7ypio6hIYUB56dv+mAkLUSVmUzXr8omti53YG0uzOCE
         4t3ImOSvgcIJNzqhhO/loymajzZm3ySqXjwjQYDSP7FE6XqNtDFckzrf5CQbSp367zOQ
         00eBHCu4uNZTxd6pm+8ucfsNaHCjVwofHvKaVhm6Owr2NM2eQsw+syFF75ZXXjkBg/zQ
         prHdzvGKPqauKwmgNZ/gTPas2eIBgel+ZlSsg3jY3cVHjeyWr610CR5eBDnwgYB5SFix
         SS+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kpILaO0BvUDEaamvD3auxRaFopgV8/tde37CbHQBxLo=;
        b=U1SzX37lAjZHWTpmSXf8jEPalE5CfoTCfu5Ye4cPWfe+JS4/z/o+HMP0TJAQdtstkE
         CCdXPHG9BskiJ4tjPzN0eFPFp5KlKwjdtEo1yuve4RPKs7dPrKllDa/hrEZCUU2T2n8q
         SirHty9Is5iDHyhthRmoU3u0GkWlZt/9Epi1BK8nJd9SxilCwWmBm1hqwaw06WiaWIef
         1hNQnz4MBSJqTJbTjyt5GqURVOk0gUkersCdTAgOxQ4XOKZWhKTMO6caPg1aJtvpGhY9
         YYsegJnbZuL07/cZLp6iAman1VKWpHP/HytGmtUcGihxaFyUUajzagwpcE0P9y5xYERO
         /TKQ==
X-Gm-Message-State: AOAM532cTMd6SnrxmEYJcBU/WYeO29MLqQxbFUpAczFw2tKa3QKftjKw
        wX38566Imd/Zj0JwJsOuy1AnOg==
X-Google-Smtp-Source: ABdhPJzJBMkWIAniHhwGekiItn1n3GcOUh0z1Qlh+dQe+IC2XxS+ZCQILeol3+1m4x7UDQHqENdlmg==
X-Received: by 2002:a7b:ca47:: with SMTP id m7mr18529183wml.33.1607350629505;
        Mon, 07 Dec 2020 06:17:09 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id d187sm11690076wmd.8.2020.12.07.06.17.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 06:17:08 -0800 (PST)
Date:   Mon, 7 Dec 2020 14:17:02 +0000
From:   Quentin Perret <qperret@google.com>
To:     Marc Zyngier <maz@kernel.org>
Cc:     Fuad Tabba <tabba@google.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
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
Subject: Re: [RFC PATCH 16/27] KVM: arm64: Prepare Hyp memory protection
Message-ID: <X845XjjQ+s/NB7A9@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-17-qperret@google.com>
 <CA+EHjTyJnZ8e=AN7H_k+oZb0VTWAgMicMY8Rqe2Di_3A87hm0A@mail.gmail.com>
 <X8p5kLSIq2MoQZ24@google.com>
 <CA+EHjTxW_z-P8bK7gCjGv2eBCAHFsvE873Gr2KyVq5-+_Mdv=g@mail.gmail.com>
 <X84Y07kbeSL4xcNJ@google.com>
 <d6a674a0e8e259161ab741d78924c756@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d6a674a0e8e259161ab741d78924c756@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 07 Dec 2020 at 13:54:48 (+0000), Marc Zyngier wrote:
> None. Whichever name you pick, someone will ask you to change it.
> Just call it Bob.

:-)

> What I really *don't* want is see a blanket rename of existing symbols
> or concepts.

Understood. I'll go with pkvm_create_mappings() and friends for all the
new functions unless someone comes up with a better name in the meantime.

Thanks,
Quentin

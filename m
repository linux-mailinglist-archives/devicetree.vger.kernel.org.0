Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3D7C42D133C
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 15:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726730AbgLGOLo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 09:11:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37186 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726046AbgLGOLo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 09:11:44 -0500
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com [IPv6:2a00:1450:4864:20::441])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B425DC0613D1
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 06:11:28 -0800 (PST)
Received: by mail-wr1-x441.google.com with SMTP id y17so3477887wrr.10
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 06:11:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=kIglN2ENPr7zZxCKU9K9FdFhtb6JGzaE8AjsYQ4PtZ4=;
        b=Xhc60KBVbnArBSefinJI+TleN6X7aSEsNC0tQlYENBG2ZPPq9HpuIQyl0v3s77lz4d
         NaMMqkGUk2Y6w0tvbOkQAG1I6KgVd7yT8Wffq4xZm8NRs0HSBoivHZie/1RGmt2n3epv
         FWlxQlQGrjPu/b46XKseWpoWCCzY5a8gSoyHbAKyk7rvq6JkalR11VCCD+mz9yo/uYLt
         /GNmeSpjO/bd11ul7t0LgHnVA+wEfaLMtlihFIarwy5Cyr5nU64+sqY0OE8VOWKzZlX0
         3JRdkzVznY/XSjGX9AlOwFk42GHr6PPa4BxCms3CvL/Valg4Rg86Mypisvmqg2JBHR3o
         XV0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kIglN2ENPr7zZxCKU9K9FdFhtb6JGzaE8AjsYQ4PtZ4=;
        b=KokFI9JKjSNHKvJCRstoRrzj59ZqUYDCxZ3bHYZSqccXV4kuym/t7bBCWqNKuu73Yi
         KYaYtV6MqUs9QtEvYHt+AOb8wnwAQ7myAp5ZP7eoV4LoBOPsGHTwecv0FobgLpnx09W+
         i/j4g4Q4+dS57PqQKWRiJXKkmFH6IDLGHqc2J5WAvoenzkPlwVFec0bURLsInULtDcff
         pkgg+s+Rwd+SmPXAkDwEHZOcrA+3cxvRPNKzFlx/iH0P9m7X3qo8CqVXQ/+5xJkXTZpg
         R54MZpw2TO5qGgbJdthvJqrnkXwksYitcoowadiSvFBpiZ/r0vcTt2ajym1TolSGhxw+
         ZjAw==
X-Gm-Message-State: AOAM530GE6VbbI5iZCkaxrrhMKypc8Ds/vSAXNMmCYbhsDYQGFTkm/V9
        JUh/w7+USoKpO7J428wqLaQvIQ==
X-Google-Smtp-Source: ABdhPJwy02g4n9Bw93wn8robHfmfXCvn8HmKD427RxXtDweC+OQzf6Bi6J3mgHqERGzkgRm3qn05dQ==
X-Received: by 2002:adf:fdc7:: with SMTP id i7mr17832777wrs.398.1607350287293;
        Mon, 07 Dec 2020 06:11:27 -0800 (PST)
Received: from google.com ([2a00:79e0:d:210:f693:9fff:fef4:a7ef])
        by smtp.gmail.com with ESMTPSA id z2sm3072994wml.23.2020.12.07.06.11.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Dec 2020 06:11:26 -0800 (PST)
Date:   Mon, 7 Dec 2020 14:11:20 +0000
From:   Quentin Perret <qperret@google.com>
To:     Will Deacon <will@kernel.org>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        Marc Zyngier <maz@kernel.org>,
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
        android-kvm@google.com
Subject: Re: [RFC PATCH 16/27] KVM: arm64: Prepare Hyp memory protection
Message-ID: <X844CBNCTL4XT3iq@google.com>
References: <20201117181607.1761516-1-qperret@google.com>
 <20201117181607.1761516-17-qperret@google.com>
 <20201207134052.GA4563@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201207134052.GA4563@willie-the-truck>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Monday 07 Dec 2020 at 13:40:52 (+0000), Will Deacon wrote:
> Why not use the RESERVEDMEM_OF_DECLARE() interface for the hypervisor
> memory? That way, the hypervisor memory can either be statically partitioned
> as a carveout or allocated dynamically for us -- we wouldn't need to care.

Yup, I did consider that, but the actual amount of memory we need to
reserve for the hypervisor depends on things such as the size of struct
hyp_page, which depends on the kernel you're running (that is, it might
change over time). So, that really felt like something the kernel should
be doing, to keep the DT backward compatible, ... Or did you have
something more elaborate in mind?

Thanks,
Quentin

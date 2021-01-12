Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 114482F357E
	for <lists+devicetree@lfdr.de>; Tue, 12 Jan 2021 17:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2406151AbhALQTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jan 2021 11:19:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406076AbhALQQN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jan 2021 11:16:13 -0500
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E674FC061795
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 08:15:32 -0800 (PST)
Received: by mail-wr1-x431.google.com with SMTP id r3so3118217wrt.2
        for <devicetree@vger.kernel.org>; Tue, 12 Jan 2021 08:15:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=fCwX2K3NvzAcpBSMx6nSsu4wGXEXUGQppC3ZRHgJJR8=;
        b=T4Suq8sc8lQnpteBsLr6UZxTcH9j8G7kxKlkqFCYGip/iaonBY1bHQ1oEIYiR/mBrZ
         izvOVjsD3VXx3ixRso71U2wVPQq8ImIzBvHd6GxvlaOsx1nuSaipg0fF+u6HGDyt6ckB
         0dHAVNHgwIM41Dhho2dF7YYFhimMSZNmaTuVVek8lqc2dYzTe8OX4XJ81GRotQMkIAgq
         BzSawYViZz+ddmdHmZnB1C33yqBldAHidvdq/xthmbWU+UpVGfsW7Zi2iBjIcuiGN0nY
         WzWoLbAvtKuWaZaWMF0JzYi5jMyFcn8VJ0B8CvLDBuOr3fiEoYQOtmLyFCsKDoDVcllQ
         /+1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fCwX2K3NvzAcpBSMx6nSsu4wGXEXUGQppC3ZRHgJJR8=;
        b=VNtVX0VI3AruLHSBA9hAYckvkqsihrYUrgyJ9A+iZhZIwkJtdj6NkVnLBc+1sCU9WP
         VvtBeQvl6d4FKPXSrSg3BkkG8lzR5uOhOctJw3HypEUdO3BGYVWBsLXiuavSE0HBnB0d
         DOQMtVJ+D7jLyRvhc0IC8wcy/dKoVEoMaYi7XjXVnPh/D+mRRWq/eOEDEml81j2nQlnE
         grDgsuBVv6yHf04sW/ZmaEEHyqX8nqF/xQJrXatQE+2pUFQ1dcwptOT+R7AsVs2fxe8/
         bbXGVGTEFSjrrUzykTf8m/I1UnaRnUTcYfyPyQpknjm3eS/v/S1Lzq49UFa3HwiH86oS
         JuzA==
X-Gm-Message-State: AOAM531FfQba5zsWkro3MPwq0pY3Em4WId+MKaK/nrX1+SK3LStIaYIt
        DcLc7kUyvtfvcc6xfJi3LnjofA==
X-Google-Smtp-Source: ABdhPJzhdjkHwgzmaGqOq1dE6kZDAT+wivTTIYKEWvX5CDhRyyg51yQJu64CEWkYgKmGA3S/ZHwb0Q==
X-Received: by 2002:adf:9525:: with SMTP id 34mr5210739wrs.389.1610468131478;
        Tue, 12 Jan 2021 08:15:31 -0800 (PST)
Received: from google.com (49.222.77.34.bc.googleusercontent.com. [34.77.222.49])
        by smtp.gmail.com with ESMTPSA id r82sm4838130wma.18.2021.01.12.08.15.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 08:15:30 -0800 (PST)
Date:   Tue, 12 Jan 2021 16:15:28 +0000
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
Message-ID: <X/3LIGgx83XJ+U0F@google.com>
References: <20210108121524.656872-1-qperret@google.com>
 <20210108121524.656872-16-qperret@google.com>
 <CAL_JsqLmzFWmTc=6JSRMofSEVRx9GCrwGxEsYog9dC16EMGdvQ@mail.gmail.com>
 <X/1xN2UxiUxkzAiN@google.com>
 <CAL_Jsq+5d+Ox_-m_Rd83R9xoZb6e2cxCNfbL8YPzKdwj=y0M8Q@mail.gmail.com>
 <X/2xlxx9Ucp4UZvL@google.com>
 <CAL_Jsq+o+t4YYXEW_nYqMsT4ubYJWe6Kdhu614RtrCqsHBtfLw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+o+t4YYXEW_nYqMsT4ubYJWe6Kdhu614RtrCqsHBtfLw@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tuesday 12 Jan 2021 at 09:53:36 (-0600), Rob Herring wrote:
> On Tue, Jan 12, 2021 at 8:26 AM Quentin Perret <qperret@google.com> wrote:
> >
> > On Tuesday 12 Jan 2021 at 08:10:47 (-0600), Rob Herring wrote:
> > > On Tue, Jan 12, 2021 at 3:51 AM Quentin Perret <qperret@google.com> wrote:
> > > >
> > > > On Monday 11 Jan 2021 at 08:45:10 (-0600), Rob Herring wrote:
> > > > > On Fri, Jan 8, 2021 at 6:16 AM Quentin Perret <qperret@google.com> wrote:
> > > > > >
> > > > > > Introduce early_init_dt_add_memory_hyp() to allow KVM to conserve a copy
> > > > > > of the memory regions parsed from DT. This will be needed in the context
> > > > > > of the protected nVHE feature of KVM/arm64 where the code running at EL2
> > > > > > will be cleanly separated from the host kernel during boot, and will
> > > > > > need its own representation of memory.
> > > > >
> > > > > What happened to doing this with memblock?
> > > >
> > > > I gave it a go, but as mentioned in v1, I ran into issues for nomap
> > > > regions. I want the hypervisor to know about these memory regions (it's
> > > > possible some of those will be given to protected guests for instance)
> > > > but these seem to be entirely removed from the memblocks when using DT:
> > > >
> > > > https://elixir.bootlin.com/linux/latest/source/drivers/of/fdt.c#L1153
> > > >
> > > > EFI appears to do things differently, though, as it 'just' uses
> > > > memblock_mark_nomap() instead of actively removing the memblock. And that
> > > > means I could actually use the memblock API for EFI, but I'd rather
> > > > have a common solution. I tried to understand why things are done
> > > > differently but couldn't find an answer and kept things simple and
> > > > working for now.
> > > >
> > > > Is there a good reason for not using memblock_mark_nomap() with DT? If
> > > > not, I'm happy to try that.
> > >
> > > There were 2 patches to do that, but it never got resolved. See here[1].
> >
> > Thanks. So the DT stuff predates the introduction of memblock_mark_nomap,
> > that's why...
> >
> > By reading the discussions, [1] still looks a sensible patch on its own,
> > independently from the issue Nicolas tried to solve. Any reason for not
> > applying it?
> 
> As I mentioned in the thread, same patch with 2 different reasons. So
> I just wanted a better commit message covering both.

Sorry if I'm being thick, but I'm not seeing it. How are they the same?
IIUC, as per Nicolas' last reply, using memblock_mark_nomap() does not
solve his issue with a broken DT. These 2 patches address two completely
separate issues no?

Thanks,
Quentin

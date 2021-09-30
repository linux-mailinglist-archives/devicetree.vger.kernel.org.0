Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FB0641E334
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 23:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349305AbhI3VWl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 17:22:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349354AbhI3VWj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 17:22:39 -0400
Received: from mail-qk1-x734.google.com (mail-qk1-x734.google.com [IPv6:2607:f8b0:4864:20::734])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27651C061771
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 14:20:54 -0700 (PDT)
Received: by mail-qk1-x734.google.com with SMTP id q81so7268896qke.5
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 14:20:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=h/TBKn03dF9IntMFcuDE9WlvX4rnNMcxTnYaxfj4f3M=;
        b=BlxMYaM/OWq2QOg73mmSIuZReJqS9WDVJwYpygBxYlCdpjQvMPkG8JUUJuWMEfe7VW
         Kc4xJOkMskHk8O+awxj6C0zYig/iRuEgT85zngr4j5VHau1O2THU+xT3x/AlUo4/mD7V
         wX52wLkXcsoyoK8aKbnCd70Ljj6pEqXvKGjjk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=h/TBKn03dF9IntMFcuDE9WlvX4rnNMcxTnYaxfj4f3M=;
        b=sdf69hG6lr+ycLw7qKe1FnW84g4z8Hqo+7cug2+EBCtn9LhCfsO5tAKTdKxJRGpDK8
         y7LXx7CXcClV/y7lqadlmcpMJ5BEUMMvKMKXaUa1dSIYP3wxBgHYfl+G53GrhSdyZtyX
         v2YSLc0zw5Wc62GdL8FdVZo7RWSuFH/OVNHrBmtyZYXcINLCtxG+olwAoj6ctMl1nNPT
         ajfiA+QVbt9rrAGKtmNguQWpzlFU9VcOr1ngxZRlHnH8evWKlRvarwzPkPP7uDJbX1s8
         vzYFMlbAhHoCn3TW7YG2mrRf5tTlIbF8zyYJyny83hPdP4BrE1ZyaI4mpOjVfG5dUQQs
         xb2g==
X-Gm-Message-State: AOAM530ZYU9xHUAghdAutmSYmIg2pBaDwoEP9T4zcm4ocKyJd6Mk/v8+
        bcs42IQKiiTf/M3cca/4uAK0Swsfhkoyjw6y2CQ=
X-Google-Smtp-Source: ABdhPJwqRiFgBHmqTH4oFD5FMsIuAEr0QOUHAu1YzcaY5Ge/OybuiKau4OR8CM2As/y+A+C8PScMqQ==
X-Received: by 2002:ae9:dd83:: with SMTP id r125mr6978781qkf.159.1633036852675;
        Thu, 30 Sep 2021 14:20:52 -0700 (PDT)
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com. [209.85.219.182])
        by smtp.gmail.com with ESMTPSA id p17sm2602319qtl.52.2021.09.30.14.20.50
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Sep 2021 14:20:50 -0700 (PDT)
Received: by mail-yb1-f182.google.com with SMTP id v10so16218791ybq.7
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 14:20:50 -0700 (PDT)
X-Received: by 2002:a25:df06:: with SMTP id w6mr1562849ybg.459.1633036849801;
 Thu, 30 Sep 2021 14:20:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210930185031.18648-1-rppt@kernel.org>
In-Reply-To: <20210930185031.18648-1-rppt@kernel.org>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Thu, 30 Sep 2021 14:20:33 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjS76My8aJLWJAHd-5GnMEVC1D+kV7DgtV9GjcbtqZdig@mail.gmail.com>
Message-ID: <CAHk-=wjS76My8aJLWJAHd-5GnMEVC1D+kV7DgtV9GjcbtqZdig@mail.gmail.com>
Subject: Re: [PATCH v2 0/6] memblock: cleanup memblock_free interface
To:     Mike Rapoport <rppt@kernel.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Andrew Morton <akpm@linux-foundation.org>,
        Christophe Leroy <christophe.leroy@csgroup.eu>,
        Juergen Gross <jgross@suse.com>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Shahab Vahedi <Shahab.Vahedi@synopsys.com>,
        devicetree <devicetree@vger.kernel.org>,
        iommu <iommu@lists.linux-foundation.org>,
        kasan-dev <kasan-dev@googlegroups.com>,
        KVM list <kvm@vger.kernel.org>,
        alpha <linux-alpha@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-efi <linux-efi@vger.kernel.org>,
        "open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>,
        Linux-MM <linux-mm@kvack.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        linux-s390 <linux-s390@vger.kernel.org>,
        Linux-sh list <linux-sh@vger.kernel.org>,
        "open list:SYNOPSYS ARC ARCHITECTURE" 
        <linux-snps-arc@lists.infradead.org>,
        linux-um <linux-um@lists.infradead.org>,
        linux-usb@vger.kernel.org,
        linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
        linux-sparc <sparclinux@vger.kernel.org>,
        xen-devel@lists.xenproject.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 30, 2021 at 11:50 AM Mike Rapoport <rppt@kernel.org> wrote:
>
> The first patch is a cleanup of numa_distance allocation in arch_numa I've
> spotted during the conversion.
> The second patch is a fix for Xen memory freeing on some of the error
> paths.

Well, at least patch 2 looks like something that should go into 5.15
and be marked for stable.

Patch 1 looks like a trivial local cleanup, and could go in
immediately. Patch 4 might be in that same category.

The rest look like "next merge window" to me, since they are spread
out and neither bugfixes nor tiny localized cleanups (iow renaming
functions, global resulting search-and-replace things).

So my gut feel is that two (maybe three) of these patches should go in
asap, with three (maybe four) be left for 5.16.

IOW, not trat this as a single series.

Hmm?

             Linus

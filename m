Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5009E24F13
	for <lists+devicetree@lfdr.de>; Tue, 21 May 2019 14:43:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728090AbfEUMnA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 May 2019 08:43:00 -0400
Received: from mail-qk1-f196.google.com ([209.85.222.196]:40646 "EHLO
        mail-qk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726995AbfEUMnA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 May 2019 08:43:00 -0400
Received: by mail-qk1-f196.google.com with SMTP id q197so10913694qke.7
        for <devicetree@vger.kernel.org>; Tue, 21 May 2019 05:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=feT6//+XEuoB81grk9RMilnSIDBKvcNXipMC0Uit4Oc=;
        b=Pcr8JEhVUyLjBBa/8pdVhfH69n3H4/8MH7ZG9kwaFyHZ8ViEkFJ0qxCiaJTPGC0VVN
         uURwoq4N16YJQUGvv2pNUXHhp8ffX+Y32clwrnI1tWqg/jOouzsMNRJbAUs1uEaKl8c6
         RBiE91gYcMFDuX0tT/BBUYEj+/agq+d/z5F28=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=feT6//+XEuoB81grk9RMilnSIDBKvcNXipMC0Uit4Oc=;
        b=dgLUvVcm6Ru3AaMW5JAIHj6ybu5tJ+ATIJ/djxZqoPF8+Ppxkj4atxuKaCBHqWErZU
         90uqNbWgcYBZHqsoBtg1Hua9X0hHtXU3USy7HAliENQIWaSisGu6flIMVmOwHy2dwxTd
         6KjC+R2ypN72TTNJdj6pskAdgV+WxMRfSsTdrfcOgYhK3jerXrOrfQ5X/eJ9tqLLhhOZ
         HCFDor6gN65ob1ygbMfEMloekDOyHdGa0OVAqztkXYKKlHBu8wzJ1KE+DtNLd3mqkw0Y
         fGBrTD/k/IZtcZR/PgGw5NdyeX6dMe6Pw6c8s7mGhBTSuivQSY/DsOmCe841Ji8N7w+k
         jGkg==
X-Gm-Message-State: APjAAAUOcdH/wGmBXj0Cuj2P+vk2WqLaWDCcPTR+ln/qPrkwUXXY0whC
        cz7IZjtiWPMdYCHRj7er0mUHjoBjzVd2JxSA+Tg+3Q==
X-Google-Smtp-Source: APXvYqwFv8X/gQwwT4Tct/RtQIGHWplsikpEopZ62eeUHiNR4qehuc2Y2K+8mZ4EneoeA4ZirWIpTQBrL10MFqTo/k8=
X-Received: by 2002:a05:620a:1493:: with SMTP id w19mr63010827qkj.214.1558442579573;
 Tue, 21 May 2019 05:42:59 -0700 (PDT)
MIME-Version: 1.0
References: <20190519160446.320-1-hsinyi@chromium.org> <20190519160446.320-2-hsinyi@chromium.org>
 <CANMq1KB7sh=UXaM4sMm_THjZ_wV3Thgr6_ona-TJFqA2QQHALA@mail.gmail.com> <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
In-Reply-To: <CAJMQK-iZRHO6HBkycPt0yz_vndmmmqFL0duHOcQ8EFSdhhFZcQ@mail.gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Tue, 21 May 2019 20:42:48 +0800
Message-ID: <CANMq1KA1YF6B=nFizS8nT4KREASaJuaztdBnh_t0V8i0Fb-e6A@mail.gmail.com>
Subject: Re: [PATCH v4 2/3] fdt: add support for rng-seed
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        lkml <linux-kernel@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Jun Yao <yaojun8558363@gmail.com>, Yu Zhao <yuzhao@google.com>,
        Robin Murphy <robin.murphy@arm.com>,
        Laura Abbott <labbott@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 21, 2019 at 12:10 PM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
>
> On Mon, May 20, 2019 at 7:54 AM Nicolas Boichat <drinkcat@chromium.org> wrote:
>
> > Alphabetical order.
> Original headers are not sorted, should I sort them here?
> >
>
> >
> > I'm a little bit concerned about this, as we really want the rng-seed
> > value to be wiped, and not kept in memory (even if it's hard to
> > access).
> >
> > IIUC, fdt_delprop splices the device tree, so it'll override
> > "rng-seed" property with whatever device tree entries follow it.
> > However, if rng-seed is the last property (or if the entries that
> > follow are smaller than rng-seed), the seed will stay in memory (or
> > part of it).
> >
> > fdt_nop_property in v2 would erase it for sure. I don't know if there
> > is a way to make sure that rng-seed is removed for good while still
> > deleting the property (maybe modify fdt_splice_ to do a memset(.., 0)
> > of the moved chunk?).
> >
> So maybe we can use fdt_nop_property() back?

Yes I prefer fdt_nop_property, if we don't want to modify delprop or
splice. But it'd be good if others can chime in.

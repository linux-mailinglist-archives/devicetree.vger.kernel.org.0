Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E5C48194FB
	for <lists+devicetree@lfdr.de>; Thu,  9 May 2019 23:58:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726721AbfEIV6Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 May 2019 17:58:25 -0400
Received: from mail-vs1-f66.google.com ([209.85.217.66]:40149 "EHLO
        mail-vs1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726754AbfEIV6Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 May 2019 17:58:24 -0400
Received: by mail-vs1-f66.google.com with SMTP id c24so2404917vsp.7
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 14:58:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8FXPIq1hegck4+LUfvPI3e12GgUDRXQleew5eHpUJZ4=;
        b=GWU18C7YaAP+YZQi3muCAvs0KMaXaiY3pUYWpt1UWv65qwcRPAYuQhtt69DqUxV4f7
         iITK0m73QzNWHzEWWQTtFcEvXgMsGCKqzSf++mwGmIpww1ehMyP+vzRjgC9S6IRVORaW
         A27qAJi5bmbkLBWUdmMflVPq+oxdZCA0YqEcw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8FXPIq1hegck4+LUfvPI3e12GgUDRXQleew5eHpUJZ4=;
        b=pZDJTRpZLMP4/WT53BPlxBhqSK7OIRp3aSp+uOzRACXVL188e8hUnmBj4VE9JdVkeL
         SopOrjKVwDgeV0mFvKTPWgYbJzxzwwc1gV3xX6zCBO1J78HPc6yJPR9113Z3QHy5kz57
         OFsiXxh47xkXIidYcC0GHw6W7V19ZYO4RzFMS9FeNSol5T5SWA+yRICyct2Dl5cmz9k/
         K9xCpXMVbVgkpdauj4GBs6t6MatZcQk5j332srM9l9vRRXGr5Jii1gTpbVn5YD1mogGH
         dD8KmHWPf/IJXe4j3VvyPafLMuGkQ4Q/mrCVpKQHX8ciURARxDD3OANJth80MpgIJ571
         gFCg==
X-Gm-Message-State: APjAAAWJg10RQ8wnWIqTxfZEJjpCsEgCp13HWwxHCMI82GLY8x4KZThW
        aD/Xf0CIPihUqhsZA6p0PXiVRFupszE=
X-Google-Smtp-Source: APXvYqz97OE5ytzEy4fNuKNCk9tgfG3dm3LAYkmgmJRkKc7d3r2IJ6/x904jFEn0arzfyzPMOMbUOQ==
X-Received: by 2002:a67:dc8d:: with SMTP id g13mr3431721vsk.120.1557439102560;
        Thu, 09 May 2019 14:58:22 -0700 (PDT)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id c204sm1327585vkd.14.2019.05.09.14.58.21
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 May 2019 14:58:21 -0700 (PDT)
Received: by mail-vs1-f48.google.com with SMTP id r62so2399155vsc.9
        for <devicetree@vger.kernel.org>; Thu, 09 May 2019 14:58:21 -0700 (PDT)
X-Received: by 2002:a67:de07:: with SMTP id q7mr3837804vsk.66.1557439100581;
 Thu, 09 May 2019 14:58:20 -0700 (PDT)
MIME-Version: 1.0
References: <20190507045433.542-1-hsinyi@chromium.org> <CAL_Jsq+rGeFKAPVmPvv_Z+G=BppKUK-tEUphBajZVxFtbRBJvQ@mail.gmail.com>
 <CAJMQK-iVhScf0ybZ85kqP0B5_QPoYZ9PZt35jHRUh8FNHKvu7w@mail.gmail.com>
 <CAL_JsqJZ+mOnrLWt0Cpo_Ybr_ohxwWom1qiyV8_EFocULde7=Q@mail.gmail.com>
 <CAJMQK-jjzYwX3NZAKJ-8ypjcN75o-ZX4iOVD=84JecEd4qV1bA@mail.gmail.com>
 <CAL_JsqLnmedF5cJYH+91U2Q_WX755O8TQs6Ue9mqtEiFKcjGWQ@mail.gmail.com> <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
In-Reply-To: <CAJMQK-hJUG855+TqX=droOjUfb-MKnU0n0FYtr_SW2KByKAW1w@mail.gmail.com>
From:   Kees Cook <keescook@chromium.org>
Date:   Thu, 9 May 2019 14:58:07 -0700
X-Gmail-Original-Message-ID: <CAGXu5j+S3tQ3DFtmTJT_O1rNx4ofZWvaFpPrES9peHRhMqRGjg@mail.gmail.com>
Message-ID: <CAGXu5j+S3tQ3DFtmTJT_O1rNx4ofZWvaFpPrES9peHRhMqRGjg@mail.gmail.com>
Subject: Re: [PATCH] arm64: add support for rng-seed
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>,
        devicetree <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>,
        Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 9, 2019 at 1:00 AM Hsin-Yi Wang <hsinyi@chromium.org> wrote:
> This early added entropy is also going to be used for stack canary. At
> the time it's created there's not be much entropy (before
> boot_init_stack_canary(), there's only add_latent_entropy() and
> command_line).
> On arm64, there is a single canary for all tasks. If RNG is weak or
> the seed can be read, it might be easier to figure out the canary.

With newer compilers[1] there will be a per-task canary on arm64[2],
which will improve this situation, but many architectures lack a
per-task canary, unfortunately. I've also recently rearranged the RNG
initialization[3] which should also help with better entropy mixing.
But each of these are kind of band-aids against not having sufficient
initial entropy, which leaves the canary potentially exposed.

-Kees

[1] https://gcc.gnu.org/git/?p=gcc.git;a=commitdiff;h=359c1bf35e3109d2f3882980b47a5eae46123259
[2] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=0a1213fa7432778b71a1c0166bf56660a3aab030
[3] https://git.kernel.org/pub/scm/linux/kernel/git/tytso/random.git/commit/?h=dev&id=d55535232c3dbde9a523a9d10d68670f5fe5dec3

-- 
Kees Cook

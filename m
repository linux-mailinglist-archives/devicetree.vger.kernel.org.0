Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 538B6321F75
	for <lists+devicetree@lfdr.de>; Mon, 22 Feb 2021 19:56:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232167AbhBVSyf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Feb 2021 13:54:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59536 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231489AbhBVSxK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Feb 2021 13:53:10 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 833F1C061786
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 10:52:29 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id u4so7506697lfs.0
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 10:52:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linux-foundation.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d1cztlrje5NbBmRurH/8h7VfCSrwP1g9XSZwlCeLi8Y=;
        b=iBBmq/nIHfHcq9G8y27Mt3bk7XbyFS8LFxcMFQk55sGvFzNK7K5SEZlbiRcTnb6qqX
         z4qYC1z51DwpClOU0u4CutVnG69lhauXToz55bHV7kcKvIydfWA5FOFDLKMxOIiRP2cN
         YmqDBmRR94dhsNrbNy+ie34ZUPrtRz8ep/c64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d1cztlrje5NbBmRurH/8h7VfCSrwP1g9XSZwlCeLi8Y=;
        b=ttu826ID7LLgOxKsZpy1YWYJwHcHfy7fUu9xIkntnAxnckeBrIpA2ifH2zjdRfLdNh
         nIIAYL/R/L72lppfHu5X1pgg2h/VDy58T+LciZnClSYrppElmFfScwp5A5Q9wHpopEhR
         uugo7waKxAGLIYtF7IexHUh2KCfykwv++I5Z0O3VjVzwO7SvEAcJbHWf5ARIwz2RDHZv
         uwEAQZU8F76pJvU8ooZvfo2pCGi2fXySQt0fMV03pEd7ZMZVQMUsWnQsw7sBYYFfySGD
         ZqNn5Kfx1vZ57BxIbalfapEfs4/GypjP3uUnzmpOaeCilzA8uGfzzSaKpRTlmLbtWt5k
         h1/w==
X-Gm-Message-State: AOAM531Z4i727eSOMTF/JA7zf6egI+f3CErTmOW7bMJBYc8B8fCLHPtm
        mEbn1iy6nRzWpXr2X+W5UKJiuznb6BsBig==
X-Google-Smtp-Source: ABdhPJx5AyMCQySeXE30q9ikQ6bb9/Cnxi47cwyxowIeubv7WR/IGuSALMQXVfGDCAXSr6dFAlGoUg==
X-Received: by 2002:a19:6d09:: with SMTP id i9mr14075945lfc.425.1614019946956;
        Mon, 22 Feb 2021 10:52:26 -0800 (PST)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com. [209.85.167.50])
        by smtp.gmail.com with ESMTPSA id w4sm2060533lfe.81.2021.02.22.10.52.25
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 22 Feb 2021 10:52:25 -0800 (PST)
Received: by mail-lf1-f50.google.com with SMTP id e7so7482842lft.2
        for <devicetree@vger.kernel.org>; Mon, 22 Feb 2021 10:52:25 -0800 (PST)
X-Received: by 2002:a05:6512:a8c:: with SMTP id m12mr14136524lfu.253.1614019945405;
 Mon, 22 Feb 2021 10:52:25 -0800 (PST)
MIME-Version: 1.0
References: <20210222173541.GA1677515@robh.at.kernel.org>
In-Reply-To: <20210222173541.GA1677515@robh.at.kernel.org>
From:   Linus Torvalds <torvalds@linux-foundation.org>
Date:   Mon, 22 Feb 2021 10:52:09 -0800
X-Gmail-Original-Message-ID: <CAHk-=wi60wC2z0yTo+B81x8HNu2HVJ6mSFHJC3xpKJOW9_EV_g@mail.gmail.com>
Message-ID: <CAHk-=wi60wC2z0yTo+B81x8HNu2HVJ6mSFHJC3xpKJOW9_EV_g@mail.gmail.com>
Subject: Re: [GIT PULL] Devicetree updates for v5.12
To:     Rob Herring <robh@kernel.org>,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Michael Ellerman <mpe@ellerman.id.au>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 22, 2021 at 9:35 AM Rob Herring <robh@kernel.org> wrote:
>
> Please pull DT updates for v5.12.

Ugh.

This causes "git status" to be unhappy, because there's a new
generated file (scripts/dtc/fdtoverlay) without a gitignore entry.

This was added by commit 79edff12060f ("scripts/dtc: Update to
upstream version v1.6.0-51-g183df9e9c2b9"), and then enabled in commit
0da6bcd9fcc0 ("scripts: dtc: Build fdtoverlay tool"). But it was
already referenced before it was even added (by commit b775f49fbc8b:
"scripts: dtc: Fetch fdtoverlay.c from external DTC project", which
didn't actually fetch that thing at all!)

And that commit 79edff12060f is all kinds of strange anyway, in that
it *claims* to have taken some (other) gitignore updates from the
upstream dtc code, but it very clearly does no such thing.

So I have to say - that whole thing was done very very badly. Actively
incorrect commit messages, complete mess about when things were added,
and the end result isn't great.

Sadly, I only noticed after I had pulled and pushed out.

Please fix. Not just the current mess with the incomplete .gitignore
file, but the whole clearly broken workflow.

               Linus

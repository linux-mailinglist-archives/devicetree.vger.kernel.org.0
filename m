Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D09AD2C8DA6
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 20:04:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388124AbgK3TDY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 14:03:24 -0500
Received: from mail.kernel.org ([198.145.29.99]:43294 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2387983AbgK3TDY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 30 Nov 2020 14:03:24 -0500
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 43369207F7
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 19:02:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1606762963;
        bh=ywtuw6YcYIC+0BnoE7DJgPDW9mku/bZrfLQLWhyt2fo=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=QRROzbAxkNb+hHydftCb7h2S2mEaMp/XgVuN7IR279RYTxSfilKKQ5hGlKMqFhIwk
         2rRMabhAIsxbbbCs3BYrNO8eLnTEho5Ckuh/e4VxdpHVR5ju0W/dtkK4uHxGL0NEoU
         Rg/XaeVBAx7l/t7081Fnadd8l+oNfaA3z4hiaRJE=
Received: by mail-ed1-f49.google.com with SMTP id m16so17692983edr.3
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 11:02:43 -0800 (PST)
X-Gm-Message-State: AOAM532K3xEexvMLbmCnUe2vfkV9KNIsVjMZKAua35eharEGuV7+CJXA
        HkoZ4UsBg6Y/q9S7FF2Iqp7P0AuYC9i2OrocGg==
X-Google-Smtp-Source: ABdhPJymwrlB3PlX6ClMp64S/Q9+zA/ikFnHvUlhtgaMe79yQTPSwjOkntQBUuHWGgF/tfSjhyv+RxpO6fmlz8JPkwg=
X-Received: by 2002:aa7:d154:: with SMTP id r20mr6111086edo.258.1606762961761;
 Mon, 30 Nov 2020 11:02:41 -0800 (PST)
MIME-Version: 1.0
References: <b4c0976e36a3a6e45b1042d4587e2eb9@codeaurora.org>
In-Reply-To: <b4c0976e36a3a6e45b1042d4587e2eb9@codeaurora.org>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 30 Nov 2020 12:02:29 -0700
X-Gmail-Original-Message-ID: <CAL_JsqLuZkL6XztT_Wid3R_ohU01zQwU5HywqpN7hAS4fUNa=g@mail.gmail.com>
Message-ID: <CAL_JsqLuZkL6XztT_Wid3R_ohU01zQwU5HywqpN7hAS4fUNa=g@mail.gmail.com>
Subject: Re: viability of dt-schema long-term
To:     mturney@codeaurora.org
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 25, 2020 at 2:13 PM <mturney@codeaurora.org> wrote:
>
>
> Folks,
> I am advocating use of dt-schema project internally to validate DTS
> files.
> I should add that our use is outside kernel tree on proprietary project.
>
> One of the push-backs I'm getting from the management chain is along the
> lines of...
>
> Who is this Rob Herring guy and why should we use a project that is only
> sourced on https://github.com/robherring/dt-schema?

I wouldn't trust him...

That's the wrong repo though: https://github.com/devicetree-org/dt-schema

(Unfortunately, GH's forks is misleading as the 'root' repo has changed.)

> If the kernel project is using it, why isn't kernel.org hosting the
> project?

It's not a kernel project. That's why devicetree.org hosts it.

> What is kernel plan if Rob walks away from the project, is this going to
> wither away and die?

IMO, only if folks don't find validation valuable or a better
implementation comes along.

> There are more, but the above pseudo-quotes grab the gist of the
> management complaints.
>
> Q.1) Is there a plan for the kernel project to suck dt-schema into its
> orbit?

No, the 'plan' (more like desire) is more in the opposite direction.
Move more of DT (bindings and dts files) out of the kernel for other
projects to use. For now, we have the 'devicetree-rebasing' tree which
is just the DT bits from the kernel tree.

> Q.2) How many active maintainers are there for dt-schema?

Mostly just me. Maxime Ripard is also one. Others could be if the need arose.

> Q.3) How do I respond to the above types of complaints?

jsonschema python module which is our main dependency is also just a
single maintainer. So is dtc. Maybe not what you want to highlight.

Rob

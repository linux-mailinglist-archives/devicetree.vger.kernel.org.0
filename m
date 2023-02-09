Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 65B11690517
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 11:40:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjBIKkQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 05:40:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60634 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbjBIKkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 05:40:04 -0500
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C581D2683
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 02:40:02 -0800 (PST)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-501c3a414acso19357627b3.7
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 02:40:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=c0lw0rpTEsp/kEbvMCD1Fig59+Kw68OSXvT3yYD8QMQ=;
        b=gq2FnO5zvNEbyyTwhVceaam/cEAXRYqZYzuuQDKI+M+Wz4u+D0uhvGbxvOH8kzs26A
         jpQdZ23vPRQw6824VSxi5Wd25yOtqSthmKG22DrNcZ5M0wkJMeIXPbMffMtjEGV8ZxsW
         bWi/TozGVbNKeA5z9X7zxGM839DNKifKztGijJa+ovRwdnpbUkg15h8ubHVfxyZZgydU
         Kjg9HGUgfDnQNtSb8yQMTPZzDX6Xkr1Vy4PqKbgNnVMUQg3Zw/sNW7OBOZW8Ln7dVw9A
         hrl7RQ5QTVel3WjxPM/SzrrdNkDBzWnFBKwzuqWa8weQFdykP4jpjsMTHiSlJDc9hyOt
         t3lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=c0lw0rpTEsp/kEbvMCD1Fig59+Kw68OSXvT3yYD8QMQ=;
        b=VkgyFL55UX0ZDlG8ngEDTgvN6wNSVuOC7m8XBXxeAARLkXSW53qlGg+hM34iexn4mM
         0jTng52A+5fw4Gt2+hFMNj/8C0Res4VnnRUKKntzvfyDZV576GrCApCPUfF8SnxoRo60
         bHoO/LOrk6szXr20lqDwUO8fOWIzFkLCxo1U+8YGtbaTFZoiSxa7QLaDXdfduPFbKD7E
         kui4akwnZ4dx0WQ8TqWG0pNCFsZhvzefTA//yRL1nD5nEhgFuhWi440w9gyje3E1q0+B
         R4MigvGJ23FuPHy0R8v/mnT6I3c3OT3AgvO+Pl3+0uP1CQG5KnaRlCSYMlO0JvoA/JEi
         TJEw==
X-Gm-Message-State: AO0yUKWfQrnP4H/xDeH+fKKMMpbDIC+Yj8U7Elz47LgWnMpoLe14CfTF
        PRg+BTMnn9vTO/WOHDMxqiXy3nNDR8cF3zZ7Nm/8soFUx0I+0A==
X-Google-Smtp-Source: AK7set8IXsl3Xa8PqiLrNiMiW/G88p6INvZNr7yl2C+JCtFvp6SJmlAjHrp4U8uu69+wY3G59CqGGdLUGbPY4zuDCF8=
X-Received: by 2002:a0d:e743:0:b0:50b:429e:a9ef with SMTP id
 q64-20020a0de743000000b0050b429ea9efmr1044572ywe.434.1675939201966; Thu, 09
 Feb 2023 02:40:01 -0800 (PST)
MIME-Version: 1.0
References: <20230207150742.GA36689@localhost> <CACRpkdYZ3C3a4x4HKr2-3+8-DM=PmObMAOdLDs4Wu5Cx1HWtsg@mail.gmail.com>
 <20230208164557.GA33531@localhost>
In-Reply-To: <20230208164557.GA33531@localhost>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 9 Feb 2023 11:39:50 +0100
Message-ID: <CACRpkdYN1tUHW+6=jEGU9ZK-jPi+LtfpHBnJc-5fSeWDH3ymgQ@mail.gmail.com>
Subject: Re: gpio-line-names policy
To:     Trevor Woerner <twoerner@gmail.com>
Cc:     devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 8, 2023 at 5:46 PM Trevor Woerner <twoerner@gmail.com> wrote:
> On Wed 2023-02-08 @ 04:01:05 PM, Linus Walleij wrote:
> > On Tue, Feb 7, 2023 at 4:07 PM Trevor Woerner <twoerner@gmail.com> wrote:
> > > But what about those lines that go out to general purpose headers such as
> > > the 40 pins of the Raspberry Pi header? Most SBCs have some set of header
> > > that's available to users to connect whatever devices they wish, many of
> > > them have adopted the rpi's 40-pin layout.
> >
> > I think using the names on the header is fine, what I didn't want to see
> > is things like the name of the pin on the SoC package or names made
> > up from kernel-internal software constructs. As long as it is something
> > real, and preferably unique I'm fine with it.
> >
> > One early example is the HiKey N96 board:
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/boot/dts/hisilicon/hi3670-hikey970.dts
>
> Thank you for the clarification. Thinking from the user's point of view, I
> added the actual pin number, then the SoC name, then the pin's label.
>
> https://lore.kernel.org/linux-riscv/20230208014504.18899-1-twoerner@gmail.com/T/#u
>
> I'll send a v2 with just the pin's label. Would leaving the pin number, in
> addition to the name, be okay?

As long as it is clear that this is the pin number on the *header*
not the pin number on the SoC package, this is fine. In order to
clarify it, do like in the HiKey DTS and add verbose comments
explaining what is going on.

The DTS look like it does to be human-readable so be generous
with comments.

Yours,
Linus Walleij

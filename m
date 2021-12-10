Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8963E470EDC
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 00:45:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243792AbhLJXtT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 18:49:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243685AbhLJXtS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 18:49:18 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27DEEC061746
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 15:45:43 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id x3-20020a05683000c300b0057a5318c517so11159490oto.13
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 15:45:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=HGLNng8qNUziAE2srjU2idnPRY1hR7dQW6SN/rDVwy8=;
        b=azAklLYsMcg54QaEP0MUSO1tVYKxPtb2xvL4rKsRuQvVzg5P+kxvjeoa631ZJ0B2bH
         EKmri1bHIBA+1qcodblePWdhytJ3Bc80cLRVrkUrGfwF6pfO818NcuGjnmuNBBE2UBjK
         sChVShMJtVbL51L9B+/LtFKzk/k8hiwuMk9xAp2pDtNp6ct4HbUo6ipqLxr6x7OxvDD5
         C041c2JDXEAeiQYvperB/n1SC6xPD4owPMcSJT4bBQpImvsre0rV4hv0s2+2bGhlHAdv
         CEVwA52PZbi8PynVIWRlihmhmXtPGR3OL3yK4+jYzLiwUMdEe+6FItsyLBpOnTpE1PCb
         sxWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=HGLNng8qNUziAE2srjU2idnPRY1hR7dQW6SN/rDVwy8=;
        b=RX8L5zC5V4S6CZhlKqm0qnwc46wSYCGKICkxM0CLHRXwSOB4CZ+54IbPb5YgOvzmd/
         qnQ+iMSsc67jwscjXxfZCuESAJFIfSO4JPkIqgeSFfbiy7MiK5eNuC7mvkN00Ja39xGF
         U9QAODlnq+gJEjbnZEKo9r6zaA4b+tOkkjjz+fbTZEYnjYbvS8Ctg3jXy0vRcS+qBIQ7
         NwudJCL5RMzvjmMEUd+HJgQBPmCxECIBmZGnHKDk7bM8SCEN5VvxnoRZ9eJejif6LQxW
         RW3OjEBlhIOANs+3Isly/TtainX3wdUH76E/0ZB7cRe/L6TySWMOG12gdppRN8k4gBTN
         uVMw==
X-Gm-Message-State: AOAM530Uyq878DNbcs22OL9Hwg1CClVEB95Y0sB1T01Mrjv1Laxiznpg
        C8LXqfyo0aIDkzDuB8d3y549uvr70J+HNfMXv1CgfB7onh4=
X-Google-Smtp-Source: ABdhPJw1MujOIFsq7Y/U9wZDMCpmB/aKJvoUup9hJWFtsF4rMLHe8V8WTLbw2wRPKOnD6DNW0G8xshBPuxAHad8ESUE=
X-Received: by 2002:a9d:74d0:: with SMTP id a16mr13124117otl.237.1639179942499;
 Fri, 10 Dec 2021 15:45:42 -0800 (PST)
MIME-Version: 1.0
References: <1638850665-9474-1-git-send-email-wellslutw@gmail.com>
 <1638850665-9474-3-git-send-email-wellslutw@gmail.com> <CACRpkdYO-hgEKsra-+qPq=apSqRBHDnzfP6YYLp6wGb++XEsNA@mail.gmail.com>
 <CAFnkrsnY=-9VuN5ek9e-wyU+udrc6zsm_ttupe0mkEkcDK5j5A@mail.gmail.com>
In-Reply-To: <CAFnkrsnY=-9VuN5ek9e-wyU+udrc6zsm_ttupe0mkEkcDK5j5A@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 11 Dec 2021 00:45:30 +0100
Message-ID: <CACRpkdYYwHMh+DqoyP=XvWmnUMrDJngsJuH+7DUvYqjr48XJ2A@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pinctrl: Add driver for Sunplus SP7021
To:     =?UTF-8?B?5ZGC6Iqz6aiw?= <wellslutw@gmail.com>
Cc:     linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Wells Lu <wells.lu@sunplus.com>,
        Dvorkin Dmitry <dvorkin@tibbo.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Wells,

I understand things better now!

On Fri, Dec 10, 2021 at 6:34 PM =E5=91=82=E8=8A=B3=E9=A8=B0 <wellslutw@gmai=
l.com> wrote:

> > #define SSPCTL_FUNC_FLAG BIT(0)
> >
> > if (func & SSPCTL_FUNC_FLAG)
> >
> > Use the name that bit has in your documentation for the
> > define so we know what is going on.
>
> Actually, 'if (func & 1)' is not used to test bit 0,
> but test 'func' is an odd number or not.
> If 'func' is even number, control-field is at bit 6 ~ 0.
> Its corresponding mask-field is at bit 22 ~ 16.
> If 'func' is odd number, control-field is at bit 14 ~ 8.
> Its corresponding mask-field is at bit 30 ~ 24.

Aha! That makes sense. Just put in exactly that comment in
a block comment in the code so people maintaining this
can see what is going on here and why you are checking
for an odd/even number.

> Control and mask fields of 'func' are arranged as shown
> below:
>
> func # | register control-field  mask-field
> -------+------------------------------------
>    0   | reg[0]     ( 6:0)        (22 :  6)
>    1   | reg[0]     (14:8)        (30 : 24)
>    2   | reg[1]     ( 6:0)        (22 :  6)
>    3   | reg[1]     (14:8)        (30 : 24)

This is also nice to actually have in the code. Be generous
with comments I like that.

> > This layout with "mask and value" in registers needs to be explained
> > somewhere it looks complex. I don't understand why a machine register
> > contains a mask for example.
>
> This is a hardware mechanism for protecting some important registers from
> being overwritten accidentally. The corresponding mask bit should be set
> first and then the control-bits or fields can be written. The design is
> originally requested from car makers.

Wow that is very very interesting! So the feature is there to stop a
program that goes astray and just write random numbers all over the
memory from doing something harmful.

Insert some comments about this at the top of the file or at the first
time you use a mask.

Thanks for keeping fixing this up despite my sometimes confused
comments. Most of my comment is about making the code easy
to read by people that will maintain it, so my rule of thumb is if I
have a hard time to understand it then others may have a hard time
with it too.

Yours,
Linus Walleij

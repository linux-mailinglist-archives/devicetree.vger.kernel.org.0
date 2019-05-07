Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C885169B9
	for <lists+devicetree@lfdr.de>; Tue,  7 May 2019 20:00:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727578AbfEGR7t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 May 2019 13:59:49 -0400
Received: from mail-ua1-f65.google.com ([209.85.222.65]:35471 "EHLO
        mail-ua1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726545AbfEGR7s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 May 2019 13:59:48 -0400
Received: by mail-ua1-f65.google.com with SMTP id g16so6365365uad.2
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 10:59:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=erYdJxIPox6sV/Bs4ocyYAGH0EzEi1bZw38BN9dh4mg=;
        b=SJsG8hMiPuUX5vZRJ32cUgkrqQGCuurTTXLZTPAVZYgIvxlKCuqCjtqPXXYocJTAYT
         2vTDF00bAW8tEJ5n4KcrBDi5dBuA+rlZ3pB7ovwYwYkHcjj8dct/DcYduXfYd1WatRjH
         UifQVUqQIzvJZWPNo9tkM3Q/cExzJhPKWZfMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=erYdJxIPox6sV/Bs4ocyYAGH0EzEi1bZw38BN9dh4mg=;
        b=WpeEdCvRNVSRa+Q7MBBKFaeGWgKzeFLHp7y0zfKZrNd9YsdYh16AESmLzeez7nU3sE
         qMxtm42ERnUN71qLu+8oFRDkco9CmuOanKPQdo3j0SAPvajb5Vf4NiSQ8fBjjdYYsggE
         GveePw15yw6oIkmqiq0dZZCi/COxjzHoyh8uf+GYHQSa4H1cjF4kA4/8kK3p7ICvlQR4
         uyMK0n1qm5pflw2jj1uvUcnjVu2CgSVWWe+U8r5wGro6tYtZbvVvR6jFfMKmUv8phoVU
         sd81p3t3MqUKWbET5T7joAcFJibyOp28h33ZOUAvC2XR72umz+6J75Oni11RvLJ8Sc5/
         y0Bg==
X-Gm-Message-State: APjAAAVnIL20n/A9tqBo3ndtVuI6bWzFf1ay/xaUqPdjHgkYD31m9FhQ
        neQ/XigtisJeHvGbNGCktsg9ImMmjRc=
X-Google-Smtp-Source: APXvYqzhqtVjCma8b2SX1c8BkZNODMVKXopoUKHEWzO9uvC8F2TRqPxj43q1ToEmyFF+gV9Ll7uhDg==
X-Received: by 2002:a9f:3848:: with SMTP id q8mr17000470uad.81.1557251986903;
        Tue, 07 May 2019 10:59:46 -0700 (PDT)
Received: from mail-vs1-f51.google.com (mail-vs1-f51.google.com. [209.85.217.51])
        by smtp.gmail.com with ESMTPSA id s78sm4360789vke.17.2019.05.07.10.59.44
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 07 May 2019 10:59:45 -0700 (PDT)
Received: by mail-vs1-f51.google.com with SMTP id g127so10960294vsd.6
        for <devicetree@vger.kernel.org>; Tue, 07 May 2019 10:59:44 -0700 (PDT)
X-Received: by 2002:a67:af10:: with SMTP id v16mr11808347vsl.149.1557251984138;
 Tue, 07 May 2019 10:59:44 -0700 (PDT)
MIME-Version: 1.0
References: <20190507044801.250396-1-dianders@chromium.org> <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
In-Reply-To: <a3573253-e3de-0a82-8af3-6bacea20bd97@gmail.com>
From:   Doug Anderson <dianders@chromium.org>
Date:   Tue, 7 May 2019 10:59:31 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
Message-ID: <CAD=FV=UAFUH12DbA++HML75E55BCttpNBxe9t-VEQvGjGx0=Wg@mail.gmail.com>
Subject: Re: [PATCH] of: Add dummy for of_node_is_root if not CONFIG_OF
To:     Frank Rowand <frowand.list@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Julius Werner <jwerner@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Brian Norris <briannorris@chromium.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,


On Tue, May 7, 2019 at 10:52 AM Frank Rowand <frowand.list@gmail.com> wrote:
>
> On 5/6/19 9:48 PM, Douglas Anderson wrote:
> > We'll add a dummy to just return false.
>
> A more complete explanation of why this is needed please.
>
> My one guess would be compile testing of arch/sparc/kernel/prom_64.c
> fails???

Ah, sorry.  Needed for:

https://lkml.kernel.org/r/CAD=FV=Vxp-U7mZUNmAAOja5pt-8rZqPryEvwTg_Dv3ChuH_TrA@mail.gmail.com



-Doug

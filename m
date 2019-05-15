Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB021EAAB
	for <lists+devicetree@lfdr.de>; Wed, 15 May 2019 11:08:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726447AbfEOJHx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 May 2019 05:07:53 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:36594 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725902AbfEOJHx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 May 2019 05:07:53 -0400
Received: by mail-qt1-f193.google.com with SMTP id a17so2413850qth.3
        for <devicetree@vger.kernel.org>; Wed, 15 May 2019 02:07:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sbQtz0/a90pIaMSCWP84iVzFuP3XKcJmSksz/GcBaK0=;
        b=M4RbnVlDKOEx9SpprG/yztIqOThSh+PXtYU/A1m2flZulmsPxxYArIr39yKexfC4pA
         cmwOmpGLegz8F6VpHrz8MeJNeKVNWm3vsNwQztlv6YrT93c6ZMUgkUxH77A1JR0sIt2d
         49XheDHbU3/+MqkMrzDMV0cYtgGt8H2hAimUM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sbQtz0/a90pIaMSCWP84iVzFuP3XKcJmSksz/GcBaK0=;
        b=HUWH8xyrd7dXJ9FG7/D75hTA1gHZz1DC0dzPBEhZbOW59O84mgepMoI+US8cwOTa80
         Dq6m/fcD3LHmzE50k4QBuqVp2oIpogIlbRlzOBxPqLa2yvXLT9Bw7dWazlj+50IUaaS3
         KmILOfQnp+w6FWgOY6DZNAnhIPAaopIAGt7RpSVVRBcAgunf8E36mrEMGxIKLmcyNrsg
         HjgBvBESxkks03+c/Px1gEAwTPqhwS4tRq1qeDC06XQobPiFQk3BXZG2c9LmZRbkiSOE
         mgzchaZdGpcD358LxQJQg1fX5ZQI8GdWb4LVW5LvEl+iUT3OvfeSoNbiRN30RAiyjoES
         soSw==
X-Gm-Message-State: APjAAAUSPu69Jndv2DHMxN0rpYVXTct8a1Yw8MhTqDTb2If9hm58tR28
        G/ATouX5nGrdg1zIR9LZ5aZqU1tY4w+4iuhiT1Miyg==
X-Google-Smtp-Source: APXvYqyXl9+Efyxlf2al2/kO4uZaNzAovVvLGkNka+wUbkkqJvcl3CuDnIvDXQ6VyY6lb4I0Ezw26J8OV7wIwh0ZW1o=
X-Received: by 2002:aed:24ae:: with SMTP id t43mr34214820qtc.187.1557911272310;
 Wed, 15 May 2019 02:07:52 -0700 (PDT)
MIME-Version: 1.0
References: <20190513003819.356-1-hsinyi@chromium.org> <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
In-Reply-To: <CAL_Jsq+Z5+M7fYCrkRKqN1yKTu6uyMKRKh-R4b-cj46y18hXOw@mail.gmail.com>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 15 May 2019 17:07:26 +0800
Message-ID: <CAJMQK-jei0j5R6sgn4GfxnqK127J5dtzcuiw8XP6hzLf_9vRAw@mail.gmail.com>
Subject: Re: [PATCH v2 1/2] fdt: add support for rng-seed
To:     Rob Herring <robh+dt@kernel.org>
Cc:     "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Kees Cook <keescook@chromium.org>,
        Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Architecture Mailman List <boot-architecture@lists.linaro.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Michal Hocko <mhocko@suse.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Miles Chen <miles.chen@mediatek.com>,
        James Morse <james.morse@arm.com>,
        Andrew Murray <andrew.murray@arm.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 13, 2019 at 9:14 PM Rob Herring <robh+dt@kernel.org> wrote:

> > +        fdt_nop_property(initial_boot_params, node, "rng-seed");
>
> I'd just delete the property.
>
> Also, what about kexec? Don't you need to add a new seed?
>
Will update in v3. Thanks.

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3571E47584D
	for <lists+devicetree@lfdr.de>; Wed, 15 Dec 2021 13:00:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242224AbhLOMAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Dec 2021 07:00:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44206 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234219AbhLOMAh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Dec 2021 07:00:37 -0500
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D5E67C06173E
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 04:00:36 -0800 (PST)
Received: by mail-ua1-x935.google.com with SMTP id 107so106032uaj.10
        for <devicetree@vger.kernel.org>; Wed, 15 Dec 2021 04:00:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=VOAaOrdWd5lD+mK78KAHRm3OPwW02mUiPealsVCa/TE=;
        b=nXffj4HlEJDZRxH9ClBp3ESjXsc80vQ6Bx4/t2/jtVy/sYzWZa3L3AzHtvC2ETkDAt
         F1WFJakkk49x6SHa8eFdvm0OThZv18X0r6ocfvBAsQW6J2/80+m29HbOIBHcHnMN8O3z
         Id8sO7VF5PvgCTP9vOGCK63cMWpcmICFdJGIk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=VOAaOrdWd5lD+mK78KAHRm3OPwW02mUiPealsVCa/TE=;
        b=Lg7gN70bWREqMWe4LavGFMAvbxKvMQ34uNrQlCTgwWg8rihawBcqsRjVk2k4tEbQ9U
         LO8yQfpHAFpOAjWGP6ku7Z5edGkrKccVrymRGyfZDPbU92jJYfCCCK3akJX8ymDFYPgI
         MXwuXeKFybz3FsIISHDz0Kr8Vrl8ARc8mQEN/wRi9krTPY8qBXemBsR6BN02ijEHJpe1
         kufOdcPIyLnk9IX/ubsal0ZHd8vEWUD2vEjst0QbFNy2Oh9XgAVCgp1uSsssCa7I71Jm
         P1TzYRX32T0zx6FCuyGRj7Sm/mko/K71GKNWnpcmGNzoem+Jt8kP08JpKGBgMYMCSETB
         Mo6w==
X-Gm-Message-State: AOAM53154gdBNlMlsCDloNZkB9eeRhQ6T0sgDdsNMDdJPiuQww2/ne6l
        1V+Sm83FvEU2mEQmDzth2ObSwjjnpwwbN3KKGvALeODmQpA=
X-Google-Smtp-Source: ABdhPJzfnv9OWeG/6yWiNozReELreuK/r3yjp7+RBk370dK3SPwGVwGSqoE4lKW0XwFEoF8Kv706pzRsgb3p8eswoQM=
X-Received: by 2002:ab0:6c44:: with SMTP id q4mr9732674uas.127.1639569635807;
 Wed, 15 Dec 2021 04:00:35 -0800 (PST)
MIME-Version: 1.0
References: <20211212181906.94062-1-romain.perier@gmail.com> <20211212181906.94062-3-romain.perier@gmail.com>
In-Reply-To: <20211212181906.94062-3-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 15 Dec 2021 21:00:25 +0900
Message-ID: <CAFr9PXki8LVdjQC_4eDSuB1dmEmv2K00bWOy92cOXENEoEyeqw@mail.gmail.com>
Subject: Re: [PATCH v2 2/6] clocksource: msc313e: Add support for
 ssd20xd-based platforms
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Russell King <linux@armlinux.org.uk>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Mon, 13 Dec 2021 at 03:19, Romain Perier <romain.perier@gmail.com> wrote:
>
> SSD20X family SoCs have an oscillator running at ~432Mhz for timer1 and
> timer2, while timer0 is running at 12Mhz.

I don't think this is technically true. I think the boot rom sets the
divider for timer0 so that it runs at ~12MHz.
I think the current change to only configure timer1 and timer2 is ok
but maybe the commit message should say that timer0 is configured to
be backwards compatible at boot.

Cheers,

Daniel

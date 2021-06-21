Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4EA563AE85C
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 13:49:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229804AbhFULvS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 07:51:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229621AbhFULvR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 07:51:17 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A108C061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 04:49:02 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id f70so29505071qke.13
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 04:49:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LnBL+vptI3I6KjyPlIzvkKAcoA1lR6IalfQcXXx2bYk=;
        b=bMdyLGDKaakhLdlYiIljq6p9X3YHMhY6rInfieIeDfePplm7RM/e2I4r1/4m1NXYBR
         QZ+PaNzJgeq3Cz06E5mAynCiqOUczmtpsYW7xsf9g8cBevggjW1VPUmvRWf7ObdlwXgf
         oFwoCR4q81NuA7TE2NHJHlQ3Yolxt0ySmJXiS1E6c+0UfknavmAYMMpmBaDyG6ulzmUv
         8OvTomxrP53ReJrKp5GS9bXKpXtyGmZBwHbqMyOxD23a+gyvUtivcwayHSEUIIVffPnv
         49/w63jOT04g91cwzhGZfLUkCXp+Jf7j++lQen+VPAymWxWD7XXpFjEC6jR+kuSilkI+
         Zmnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LnBL+vptI3I6KjyPlIzvkKAcoA1lR6IalfQcXXx2bYk=;
        b=lXzgJrbWxKmwjZNlqb/CDDf1gvZhLG0Bmc78lVlC4CbLAmSTA/w/L9ckxT3aWJNSdG
         PEo9xAULUdl/sno60n8BmA/4NDO/JX5UPxPNP+PD4w6JxzRXjSFr2UI64PglDps9/ho2
         QqoUg+Js1XRQwWAAePLLPRtJI1SQccODLgok+36zhD9UWLGeWF64Q6zxcggLyMT2yPnZ
         1Pa1eKNHOn4OVbQQCq/QARPfDz9enqivAnR0qPeu0w6l6nZaJ1X9hBKV0+luh8j1SqmH
         UGFtxhrpQQYgXr6XKW7VEt7+OoJgM6t89N429zjj3SRNVe4ItOuIA1+/GeCY/DJK5/7J
         5hbw==
X-Gm-Message-State: AOAM532K8nbci5D7oU5V+d1lphcWX3eFA3axdwgJvlU/424tBdliE1Dh
        QamkjPKwVU+aeasKLnpFwytsVNyLAfgRAZqhZS/L3w==
X-Google-Smtp-Source: ABdhPJy/vLtNB65s1Azazu0Tw4biDqHPk4Hy2vsO4yVwz3Njc/MfXssOn8tl5KBocMvamRrT4h66ksv1MNoJVbTGV5w=
X-Received: by 2002:a25:740a:: with SMTP id p10mr31157644ybc.312.1624276141481;
 Mon, 21 Jun 2021 04:49:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210524151955.8008-1-a-govindraju@ti.com> <f011d613-0fe6-e921-91e9-79367f185284@ti.com>
In-Reply-To: <f011d613-0fe6-e921-91e9-79367f185284@ti.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 21 Jun 2021 13:48:50 +0200
Message-ID: <CAMpxmJVHV9cLzWmUMbYn2656p-dBKzRtxVacTMSqKQ=LrWP0Mw@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] dt-bindings: gpio: davinci: Convert to json-schema
To:     Aswath Govindraju <a-govindraju@ti.com>,
        Sekhar Nori <nsekhar@ti.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Lokesh Vutla <lokeshvutla@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Rob Herring <robh+dt@kernel.org>, Keerthy <j-keerthy@ti.com>,
        David Lechner <david@lechnology.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Jun 20, 2021 at 9:29 AM Aswath Govindraju <a-govindraju@ti.com> wrote:
>
> Hi Bart, Linus,
>
> On 24/05/21 8:49 pm, Aswath Govindraju wrote:
> > Convert the davinci GPIO device tree binding documentation to json-schema.
> > The GPIO hog node names are defined to end with a 'hog' suffix.
> >
> > All existing GPIO hogs are fixed to follow above naming convention
> > before changing the binding to avoid dtbs_check warnings.
> >
> > changes since v2:
> > - Used gpio-hog.yaml for gpio-hog property
> > - Added constraints on gpio-hog node name
> > - Corrected the gpio hog dt node names to align
> >   with the dt-schema
> >
>
> May I know if the following series is okay to be merged ?
>
> Thanks,
> Aswath
>

I applied the dt-bindings patch. Sekhar normally takes DTS patches for davinci.

Bart

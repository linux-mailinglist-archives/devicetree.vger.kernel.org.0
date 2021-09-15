Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D71140C31F
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 11:56:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232127AbhIOJ5u (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 05:57:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237143AbhIOJ5u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 05:57:50 -0400
Received: from mail-vs1-xe35.google.com (mail-vs1-xe35.google.com [IPv6:2607:f8b0:4864:20::e35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2FF13C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 02:56:31 -0700 (PDT)
Received: by mail-vs1-xe35.google.com with SMTP id f6so2166093vsr.3
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 02:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Bi2Li95FjTQbP229xr5aPwoMov5SBLFdX/ViIKbaEMs=;
        b=d1PGqUb6RI1Hkr0PY+D7wgWgC6xWLrBSjroqtHDY72IAIqRDrqCwk1EDIamp18yw5I
         P8+cyJGkqJWGjSZMMXDaVeUxUDp1nfePhXbJYxY5KkVhbnY7mb7uG/sbwFLrfaJUsg7U
         /OO5sAYncPfXosOmWFeNux9quT87txMkLRLdU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Bi2Li95FjTQbP229xr5aPwoMov5SBLFdX/ViIKbaEMs=;
        b=21oJOAiR6IsRx5cFoihk31KoINrLE4GT1cZDbDU9ujWu1L5LArq76p/KTsjeT3V/uC
         rS4qQaGEIyI5usKv3SWYhacd7j4YJJt4qfXFWPEfexbf3q+TEKZKj4H/cohya6X1UgTg
         fbFaxNKz6IXO2RYr6hhZPYbiga+T7jUgHk1PlHFNArrQKmmDZd9R3YP3sJ9I7GO4+esU
         2uw5Uy5APxprfcOZQ5eaOVPV6epbC5BxfBYofcvZuz2EdfhY5GjWFCcmo6Ht6kEi+Clt
         tfhimKtJfk1X3hl4ZpxXO1/pK9/Kf9uIOghwl8EObZJLFLJJBv9IAh6KrZWTs0iSIQ0w
         tiyg==
X-Gm-Message-State: AOAM532inYhzACpdBIez6dnWYCa6CA60HI0QgCMyHNz+f4/zicnpKHjW
        mncZu/PJ4aTCVsy/3kle80fNROOSSy3jE97Qr40eKw==
X-Google-Smtp-Source: ABdhPJwFQtu9wRDUW6RgTbzTcuP9nnYuYdmzBblXXtr9HPdrUMdoPnNlk0u5Z9qSx3Ft5ToJQiLHq3yKsU9heRYmNAc=
X-Received: by 2002:a05:6102:3f12:: with SMTP id k18mr2520322vsv.14.1631699790331;
 Wed, 15 Sep 2021 02:56:30 -0700 (PDT)
MIME-Version: 1.0
References: <20210914184141.32700-1-romain.perier@gmail.com> <20210914184141.32700-2-romain.perier@gmail.com>
In-Reply-To: <20210914184141.32700-2-romain.perier@gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 15 Sep 2021 18:56:19 +0900
Message-ID: <CAFr9PXmav7d7Qm5wXJDYxZCaNVZn0n4rQMZSe5QQ2Y8BpFtMGQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: mstar: Mark timer with arm,cpu-registers-not-fw-configured
To:     Romain Perier <romain.perier@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Romain,

On Wed, 15 Sept 2021 at 03:42, Romain Perier <romain.perier@gmail.com> wrote:
> +               arm,cpu-registers-not-fw-configured;

This looks good to me.
I guess the title should be "ARM: dts: mstar: blah" but I can fix that
up when I pull it into the mstar dt branch for 5.16 if we don't need
another revision.

Cheers,

Daniel

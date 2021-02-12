Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 22643319C3A
	for <lists+devicetree@lfdr.de>; Fri, 12 Feb 2021 11:00:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbhBLJ7y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Feb 2021 04:59:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229844AbhBLJ7v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Feb 2021 04:59:51 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CBF89C061756
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:59:10 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id v6so6205982ljh.9
        for <devicetree@vger.kernel.org>; Fri, 12 Feb 2021 01:59:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tLlrWyTZLhWtvJX5ISjbWHYe1Ufjgw1DCNKqvjlN6Ew=;
        b=b7fER4au/hDtj5RxerKEesoEVvekR6JUiQahf30QSd5ysKZH5oOy11ckX2lDrByzvM
         SfV/jEaeocNKPQVGFOtBW44H9EdHFwrDYVQ1VqXs/KvoGescTn5ENp+iaj744bO0uFoL
         ZC7mBFSfQUlNkVSGzujcpGcqzNlkwkXoqYuDDTRA/mNdtghGYfrBTy7wrVakNG8JaTPL
         FGGXjstoKVnLST3nkzDrsPyoztBhOo+Z4xGlqUGISi0gO6uETYRuxslmF7u62XEmohHN
         XxImKGER3ECbOvQXn5uOIFJdGlX0STjSwro+M7OagOcPwuCPoLd8IKIeJ0z/cMBN0nXL
         kvIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tLlrWyTZLhWtvJX5ISjbWHYe1Ufjgw1DCNKqvjlN6Ew=;
        b=apkkGmlfdOcxQn0KBrnHRaNlOwtgzA3SW2ihtLxSyGl8XyBm2DtpeFGSpeCRWuz36W
         yPnReAT0s4hB863M3pJUTEiGOCy/4MnAjlkXGZ+OpPv2qc46j54C7W04P3xzTbrFmq5+
         BhAnySvy8Bw5OEjks7B8Hz9bHzCJLf1O168u2jVqmlJ/CPhpRejKjoDXjqBUHkTwsUM1
         luf7b7kQ6XYTUQDMpIDIk9bp3MZi4CcCWlE81kEPTyYkER3eRCAvrNoX2HlhAlF6m01/
         HumI8O30tTLy6nVcf65qSEGOZxZddwdL4zwRrSMlMw9hoQ5aFQKbSNYTh6UgAjIfEyvz
         J44g==
X-Gm-Message-State: AOAM530EKcwMkittzclY11n2nxi5ANJFwsA8iSVvmEwbHOX47L/pznCH
        EGpj4pQ4iY92CDTsp8mqt3LC06vehG6lNzUJiFFBaA==
X-Google-Smtp-Source: ABdhPJx1frf4P60t2e/W3Dw7DqgYJaqI9glBy+Zform2p+48IAkLhyS7EaeUiXcWGe5EPkxIZUf2lwQ0ucOVl9mL8UQ=
X-Received: by 2002:a05:651c:32a:: with SMTP id b10mr1250383ljp.438.1613123949271;
 Fri, 12 Feb 2021 01:59:09 -0800 (PST)
MIME-Version: 1.0
References: <20210208222203.22335-1-info@metux.net> <20210208222203.22335-12-info@metux.net>
In-Reply-To: <20210208222203.22335-12-info@metux.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 12 Feb 2021 10:58:58 +0100
Message-ID: <CACRpkdYbOX_RDqwxaiugtYB4vSpSKChvKsPjcB_vv3Q74QeG2Q@mail.gmail.com>
Subject: Re: [RFC PATCH 11/12] platform/x86: skeleton for oftree based board
 device initialization
To:     "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 11:22 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:

> Lots of boards have extra devices that can't be fully probed via bus'es
> (like PCI) or generic firmware mechanisms like ACPI. Often those capabilities
> are just partial or even highly depend on firmware version.

I think Intel people often take the stance that the ACPI DSDT (or whatever)
needs to be fixed.

If the usecase is to explicitly work around deployed firmware that cannot
and will not be upgraded/fixed by describing the hardware using DT
instead, based on just the DMI ID then we should spell that out
explicitly.

It feels a bit like fixing a problem using a different hardware description
just because we can. Look in drivers/gpio/gpiolib-acpi.c
table gpiolib_acpi_quirks[]. It's just an example how this is fixed using
fine granular ACPI-specific mechanisms at several places in the kernel
instead of just tossing out the whole description and redoing it in
device tree.

I haven't worked with this in practice so I suppose it is a bit up to
the people who end up having to fix this kind of stuff, Hans de Goede
and Andy are fixing this kind of stuff all the time so their buy-in is
important, we need to see that this is a real, useful tool for people
like them, not just nice to have.

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45502470EA9
	for <lists+devicetree@lfdr.de>; Sat, 11 Dec 2021 00:26:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243160AbhLJXab (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Dec 2021 18:30:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236262AbhLJXab (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Dec 2021 18:30:31 -0500
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D27C0617A1
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 15:26:55 -0800 (PST)
Received: by mail-ot1-x32a.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so11208207otl.3
        for <devicetree@vger.kernel.org>; Fri, 10 Dec 2021 15:26:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=79vI1NIk+laQzOU68I94bqeIMQr1o28LL9pW3tDSdD4=;
        b=SvbhddfMgD9HanlXe7y3VkxWUVq7MPOmoEK6rMTj3gpg5ZPygaMy1bZnCSqqk9fwNV
         R5tWPX4S+hGl2NczNk18G23tGxQ5hmPPP4zG4TF9Y1SeV/hM4ZMfnCOCQDRSznPgZdiB
         sduFqNGxjYoSJE4QvopPMTHdakMIBR6F0AK08NAaD25alhHjIQ3MFy1tiqDjbW6pOD/9
         rb4qlr4yiEe4NJCS5OxlfPAvetkswtaeKjskVh1Wb60m3YI8Xi3EyOGwzL/QLyXWfzA5
         RgTrd0fToQNQ3yCZeR/P9CkkjCDcYDHtY5z2puw3lBz4/oSRTXaXNw1Wv9HrUrkdzkPY
         BMjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=79vI1NIk+laQzOU68I94bqeIMQr1o28LL9pW3tDSdD4=;
        b=B4pGSR0XDkrI4XtocrTQO5hX0xITIZucm8y3tWAZSFE0we2/nicBlm8oQZk1EKcqZy
         HiX5/bwQO8mhKT7rk8dW4LkfXKq9Kubyg00eK5V1Frj7PoTNIb/h1kN3MgRdizLHQ/1I
         sYgGrP0ydMfmsbkhpBaN4MzTUPDEDEM6B7Z0ObVhqMSO/jaB9yKelXhlgo8dqhDezo+f
         azmjM4R5MWrmbohJ8Ugi2TPHDB/AcnRofcbrsTmzwbtTG0yRfU7/j85PpK0cX7atczgn
         xFu2QOazMdlj7BygGO9ipCFBJJH4iGgH14pi7s4cv6uqDd1ejPWkjxxbdJFsww3eNR3i
         tyww==
X-Gm-Message-State: AOAM533CL2HWQg0j86OXjieVAMuTwV0kWyP4FNpwEpeT503YQIPkWr14
        EtnnwsVuNoYF/ioTDHFn4UjHMYNArv5CFoGdTteuqg==
X-Google-Smtp-Source: ABdhPJw7MPDjy5jN2QA10VHjXtV8hz9J1nqSiEB+sbB/AhvHsDNJnBlR0cW9mjd0RDRt14jx/+z60PNhHFeD7FolqBg=
X-Received: by 2002:a9d:ed6:: with SMTP id 80mr13479805otj.35.1639178814350;
 Fri, 10 Dec 2021 15:26:54 -0800 (PST)
MIME-Version: 1.0
References: <20211210114222.26581-1-zajec5@gmail.com> <20211210114222.26581-2-zajec5@gmail.com>
In-Reply-To: <20211210114222.26581-2-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 11 Dec 2021 00:26:43 +0100
Message-ID: <CACRpkdbsb63EN5hmGws1eLaARg2VRXXhz+5AM_x7OhaS_ceGow@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: pinctrl: support specifying pins,
 groups & functions
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Tony Lindgren <tony@atomide.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 10, 2021 at 12:42 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com>=
 wrote:

> This binding change is meant to introduce a generic way of describing
> pinctrl blocks details. Every pinmux block is expected to have:
> 1. Named pins
> 2. Named groups containing one or more pins
> 3. Named functions referencing one or more groups
>
> It doesn't describe how hw should be programmed. That remains binding
> and driver specific.

So what this does is to take a large chunk of data that we known to be
associated with the compatible string (names of pins, groups and functions,
etc) and put it into the device tree instead of the alternative, which is
what most drivers do, and that is to compile in the data into the
operating system and just look it up by using a compatible
string.

The DT maintainers have already indicated that this is not desirable
and I don't see it getting merged before it has a Reviewed-by
tag from one of the DT binding maintainers.

I think we need to know what the USP (unique selling point) is?

Would it be something like not having to duplicate work across some
boot loaders and operating systems? (Well they all need to parse this
type of description but that can be put into a library.)

Or something else?

Yours,
Linus Walleij

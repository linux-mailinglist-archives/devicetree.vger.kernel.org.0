Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 39A6E267978
	for <lists+devicetree@lfdr.de>; Sat, 12 Sep 2020 12:26:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725837AbgILK0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Sep 2020 06:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725825AbgILK0n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Sep 2020 06:26:43 -0400
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7BF0C061573
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 03:26:42 -0700 (PDT)
Received: by mail-lf1-x141.google.com with SMTP id y11so8398608lfl.5
        for <devicetree@vger.kernel.org>; Sat, 12 Sep 2020 03:26:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=DIvFHB7lKvI8Iwk6KhzKSg38RPdA6STehJc0AFenl/s=;
        b=TgdLZ8CWnvUkKRUD9ck3TZFKAtbFZdod1PqLgk9HJMvzSbLtFne8nRvv224yxIAiWq
         z7fZK0vgaMe+upK3tCIbHqkMLCL0BDnzDexB9pV3IdNN2SMmBbXS/HvfLilkrplQqPUg
         2JZVfJ2+Zs15smj60hWb9XIpj9pasAyFif3uaxVeYsZ17t7JD2gatdkgpqf1ivJ/Z001
         131jkG3Q4d7EVoOxbqOleQXR0o+PuqHYEFZrF0z5ujCZBQm8g+4jZ+/gH8eFG7wDla7S
         TSfJ3AM25LFRXbo+Rj1UYmIeq0nk3iIMmhwiiov5X3k2x/0KbHpVhf65SrS2iTxdFbx8
         gFew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=DIvFHB7lKvI8Iwk6KhzKSg38RPdA6STehJc0AFenl/s=;
        b=P4KvvEbVO6r1PYLTfUjCnYzUTXPxOZ58iGEz1cKkVyxYw1T2u0XH3Nxwl8pZxyAimZ
         E8MT0g26EH19KZp/6nGpWqM820Ak3ZwHhF6Va1XM4WPabzhluys9idQJXuscHLEQsgb/
         lpj5r32OmRaIzc3bJhRuoH3kAg+Sag3wF5l4msLg40ajrbd9+X07Bci84zkKkFJkGXhh
         6vCAnCWqr01MzxF7jk48Z04/BWqp+PLdTmOoa24hYR6qJ/4l4Ipjra6qhOG3n29dQWfT
         zvL/aptbhtXrTYHtqyTv/WikDWU6fxWhlizB8YF7p9/beUxVhKak2YGuVdj59pl/mxC/
         Kciw==
X-Gm-Message-State: AOAM5326NvPmJ2MyTG6qzTriZiyrljG3FJWGOelLBk+Yh8g67+mttP/p
        GW4mJTQT0GDvDiiq/b9S6NO1w6etMqBXE4mBC0YnaA==
X-Google-Smtp-Source: ABdhPJwKiuEHgRhH33r8Cuv5dORAtTyXD+wsGtyMIN07PfqnoP4U6z39oel307ZB0j+F9mHfildM6sSoTSI189WMtFw=
X-Received: by 2002:a19:520b:: with SMTP id m11mr1383172lfb.502.1599906400286;
 Sat, 12 Sep 2020 03:26:40 -0700 (PDT)
MIME-Version: 1.0
References: <20200909204336.2558-1-nobuhiro1.iwamatsu@toshiba.co.jp>
In-Reply-To: <20200909204336.2558-1-nobuhiro1.iwamatsu@toshiba.co.jp>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 12 Sep 2020 12:26:28 +0200
Message-ID: <CACRpkdbSVeTYo99aHQgXrUk=1nq0rePUeozJwCErhZG=2OfSKw@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] Add Toshiba Visconti ARM64 Platform support
To:     Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>, punit1.agrawal@toshiba.co.jp,
        yuji2.ishikawa@toshiba.co.jp,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Marc Zyngier <maz@misterjones.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 9, 2020 at 10:44 PM Nobuhiro Iwamatsu
<nobuhiro1.iwamatsu@toshiba.co.jp> wrote:

> Visconti is a series of Toshiba's SoCs targeting image processing
> applications[0]. These set of patches adds support for Visconti5 a Arm
> v8 based SoC.

Patches 1 & 2 applied to the pinctrl tree!

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BCB1E40C261
	for <lists+devicetree@lfdr.de>; Wed, 15 Sep 2021 11:07:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231926AbhIOJIX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Sep 2021 05:08:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231875AbhIOJIW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Sep 2021 05:08:22 -0400
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19709C061574
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 02:07:04 -0700 (PDT)
Received: by mail-qk1-x733.google.com with SMTP id y144so2653469qkb.6
        for <devicetree@vger.kernel.org>; Wed, 15 Sep 2021 02:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0RJdDy9GciodUDReXjUDaIDFkjFGW73S7dZ7n74WMu8=;
        b=YILCy+h7tFJaAsVRaaAIlQKJYokPpV55xGBcCthglwybJ0Gzzkh/Kwywtit4p6DlbG
         c2H5KZM3i/9FqennjeteKBG2nu0lBhbaGvVLnsAB6b5VT8AAxLpXDZKhIgeNUA5sfc+S
         IsyX3TKqaXRSdaqOecKGcV80HxeTx+NegIPkI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0RJdDy9GciodUDReXjUDaIDFkjFGW73S7dZ7n74WMu8=;
        b=Cxk4ovfgxnu5s9SRy9TK+MJzz1NiuT5kK5bgKL5icbTeF7t5/P0+dQOwC7eaIz2C5s
         71ksDP/1dzyANwuxf+3GarqR84LET++RQysY5YF/NOILw0057Qy8amiUzanUPGw5vjZY
         I3fxAPQh3kwyTiYs2Q8D2ZWcC8XfLn1bKdwe6HJYJ4QQ6bboMImAPZS1HyEPfuITZYlM
         VM3LxIzxky8iRrT4VivzobWtyF78/5dyCgT2xXJbsCBHdt6l3VfM2uVL5pZuOOJNPiRD
         KmR8E7+zHZST0OjUBEGLNqd51B2kOp6bUzZYYALIyAIngqvg0xI32KYaDRKMuVUORiF0
         K5dw==
X-Gm-Message-State: AOAM530egWAEmepr8FhcodlxqFLkoulDYtvAix1p1Ae39kjHnGb60lik
        b5fFI7yq4GwV7nfZYM80Ywvq5xUtc3a0FMNssiVJmw==
X-Google-Smtp-Source: ABdhPJws1Ho/iB+xb+WL3xHvw7qxPAcEuT6fJ2i6E7ObmyaGC6uVnXaezCAoFfxaSUWTEFxDkjgiHEAfQ2mE9qxVyHg=
X-Received: by 2002:a05:620a:4495:: with SMTP id x21mr8855230qkp.378.1631696823227;
 Wed, 15 Sep 2021 02:07:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <YUDG58WfACd8GYf5@lunn.ch>
In-Reply-To: <YUDG58WfACd8GYf5@lunn.ch>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 15 Sep 2021 18:06:52 +0900
Message-ID: <CAFr9PX=J85PxAiHC2Cb9Z18v8pYtd2Uea8KOC+AsYyJKFCLHXw@mail.gmail.com>
Subject: Re: [PATCH 0/3] SigmaStar SSD20XD GPIO interrupt controller
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Wed, 15 Sept 2021 at 00:59, Andrew Lunn <andrew@lunn.ch> wrote:
> How are the GPIOs mapped to the interrupts? Is it a simple 1:1?

Unfortunately, no.
I wanted to add the GPIO controller part of this to this same series
but there are some patches in flight for that so it would have been
messy.
You can see that here though:
https://github.com/linux-chenxing/linux/commit/88345dc470bf07d36aa1ddab09551ed33a1cfb22

They've really made a mess of this. Their whole GPIO thing is a mess
with no clear logic between the pin names and the register locations
etc.
This IRQ part is no exception. IRQ 0 from this thing isn't for the pin
called GPIO0 or anything sane like that.

> The GPIO core has some support for the GPIO drivers to be also
> interrupt controllers. So if this interrupt control is dedicated to
> GPIO, you would be better to make it part of the GPIO driver.

I don't think so. One reason is the non-linear mapping stuff. A second
reason is this GPIO interrupt controller might handle GPIO interrupts
for multiple GPIO controller blocks.
Finally, in newer chips they've replaced one of the GPIO blocks with a
new IP which will need it's own driver. That GPIO controller still
seems to use this same IRQ block to handle it's interrupts.
So if this code is wrapped into the GPIO driver itself it would end up
duplicated in two GPIO drivers.

Cheers,

Daniel

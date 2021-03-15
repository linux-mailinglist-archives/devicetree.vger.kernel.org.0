Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45D1E33BF56
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 16:03:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232017AbhCOPCU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 11:02:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232347AbhCOPB5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 11:01:57 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B685C06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 08:01:57 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id f26so16622207ljp.8
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 08:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QY8lIY0wxDgjqhgPmR3oqSAPcN+dZmRIxyhsDWmg3HE=;
        b=Io+vwQyhFwf30Na7AhtJxt53GPCBbtg62y2TwdWdMNjM6KJHi/7kxKQS7ge1bA+zJn
         Trt078pvA1u0Qm7++Mg7fQHpKdrms9AD1Nw3Zyfm2VmP2wEojPp8CEyfXnoFJaxn7PUf
         czGO2GiJ3r/cA2fzh/2UwzGIln6QxrS2/TC01NOw9o+Co//fWDEiWUov8lTjmnm0gWyn
         V6M6GrKL2tox7PEkYVhzD4jpoUw3b5fkn1iHQIE73LYw8phL5Z/wz5SmugLLAjP6WmHp
         PvroLKge91aTFFf34SbIB3Ajw8sGQgl+kadqQUhN3tU3dCXlSn4LSx6S12n0F868n1eN
         5BSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QY8lIY0wxDgjqhgPmR3oqSAPcN+dZmRIxyhsDWmg3HE=;
        b=cOjkDbY7mCe1rixEVXnKnI0VrTZcfwV+uMknVjXr6vj7mDr9DDpbQQZnT7zzD7rXai
         LOmliPIfTjOQ7KH3FCSJI601wynXj0RmXiPQc8+ZTqGAL/KgTxZXqyV6VNIC9RT8HSTH
         5wAOE3j8jFFM7rutqln6crx9Xw+fEoq6fKFVmo6oUosDqxLryjwbjjQauXlRKNYvkheb
         PLofXwrLYNJqsvvAkvZ6pTSIzT2CUTxjuEVOqRZDxTPu3Q+WgmyWwFAuOuRexNTdZSwA
         XInRUNC1BHVAyimQv5dZ3q165zAE3az1OXVRfvw+ybzr68EnoufRCDCNXTDLahsBtQjL
         fq4Q==
X-Gm-Message-State: AOAM533XlJ+ZpgWlV4+q2vlCFS0cUHq7754H8CuujqD1kmvDcKpNGwQs
        ifUVW82bjmY/vmdFoSMzmgEJHz1DTzW6SGTLw05qbA==
X-Google-Smtp-Source: ABdhPJwP6M2BeuNg8Wl4Yd9JENqV2ZJU28IrnZD6iJXkjXemqM1ldlbsPmX/3Gt7T14qrLuDJGcF1XxDoGSF2iS48Mw=
X-Received: by 2002:a2e:864a:: with SMTP id i10mr10389516ljj.467.1615820515887;
 Mon, 15 Mar 2021 08:01:55 -0700 (PDT)
MIME-Version: 1.0
References: <20210315082339.9787-1-sander@svanheule.net> <20210315082339.9787-2-sander@svanheule.net>
In-Reply-To: <20210315082339.9787-2-sander@svanheule.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 16:01:44 +0100
Message-ID: <CACRpkdafRzWdue=iGBqO5nze-j46RcmeEy4g8NWHeUdcDB1ySQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: gpio: Binding for Realtek Otto GPIO
To:     Sander Vanheule <sander@svanheule.net>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bert Vermeulen <bert@biot.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 15, 2021 at 9:25 AM Sander Vanheule <sander@svanheule.net> wrote:

> Add a binding description for Realtek's GPIO controller found on several
> of their MIPS-based SoCs (codenamed Otto), such as the RTL838x and
> RTL839x series of switch SoCs.
>
> A fallback binding 'realtek,otto-gpio' is provided for cases where the
> actual port ordering is not known yet, and enabling the interrupt
> controller may result in uncaught interrupts.
>
> Signed-off-by: Sander Vanheule <sander@svanheule.net>

These bindings look good to me.
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

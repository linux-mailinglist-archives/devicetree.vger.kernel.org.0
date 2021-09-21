Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 45543413A0A
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 20:23:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232752AbhIUSYr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 14:24:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232729AbhIUSYr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 14:24:47 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A2868C061574
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:23:17 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id u18so972484lfd.12
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 11:23:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=95KkxudQIAbKhZ+olJ5AirJiIBhk18GBqqDo5uHFJh8=;
        b=A3949n9uTh622dQCJvH2SWATPTLI4MCUs48nEeMYGYwRbFPOf4+MMJ2VwwW0iRoeF5
         T8f2DyGZLozLTmLA3EBZFABv4ZINiOE/uN+xhXNF2Bv4G8TpWr7ckPVVp8ffJxmetvg4
         hohXnnKWUGvNj38BQg2ZTreTuqWCv9UTBPQ/LHWnImzAlUEaNBrneo7B2PDH/Crys0l3
         lxaBlljPhCMXowdlBYHoi/+xwjZNKE+JzwdR2CRy0FhGoWvqfH140e6ylsQVqhSTnXQB
         eU5AdoDdjvLnE0XYwhlMrSpGRt6DuAOijSST+X/PY/9qlJVC77GPlzTRe4WkVhVV9OrI
         AiUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=95KkxudQIAbKhZ+olJ5AirJiIBhk18GBqqDo5uHFJh8=;
        b=ykQR69lSJv8UVJ3Sf6AvPVK5R97NjiiR5aOZ6qgB6Zus4Yu4LFwIihTrOsMQhlmVIe
         eXOAAKcFVN1q4TJjFv5VxkFMN5ZX8Exq27Vn3B7QQilkPSFDqJg+PDnLBOXejirAIW2Q
         HSG60tsgJAFlxKKrg/wlfQZoWGrSeCD/4OfkB6qQ4UEBNwxl3mgQi0TMN5su6/BgaPUZ
         +g3vF1yJKNfLoI2zB8JXN+2SKB+ZxvaY0zKIg5cR/GdDhuXCAWdgFuCAzh/rSa02mjW3
         XHyeliMj9YX3rjkNgtLDuHTD81hVRJSoWi+LioZCnVO7q12ZbIPbPAwpkNXd1fQHxTdz
         Tlgg==
X-Gm-Message-State: AOAM532ujwFTzAVio1YE6cSeahHvLRMuDfxCsiwTa/hQwW794kYSH5lZ
        e+BRP0sHScGxvDHst9s9kQkY1mOa0liM5s2D28etbA==
X-Google-Smtp-Source: ABdhPJxKOb0iW8dQfSSFSGRpWpnprJ9V46xURau26sAcNZ6XDxd1mwmb99YAit8ggJSfc9aM0+PSDWbDdd9tnZd5R3I=
X-Received: by 2002:a05:6512:10cb:: with SMTP id k11mr14488705lfg.72.1632248595956;
 Tue, 21 Sep 2021 11:23:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org>
In-Reply-To: <87lf3quydn.wl-maz@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 21 Sep 2021 20:23:04 +0200
Message-ID: <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Marc Zyngier <maz@kernel.org>
Cc:     Daniel Palmer <daniel@0x0f.com>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 21, 2021 at 10:27 AM Marc Zyngier <maz@kernel.org> wrote:

> Linus: is there a reason why the gpiolib insist on setting its own
> handler while building the hierarchy?

Is it this?

        /*
         * We set handle_bad_irq because the .set_type() should
         * always be invoked and set the right type of handler.
         */
        irq_domain_set_info(d,
                            irq,
                            hwirq,
                            gc->irq.chip,
                            gc,
                            girq->handler,
                            NULL, NULL);
        irq_set_probe(irq);
(...)

IIUC it's because sometimes, on elder systems (such as ixp4xx) some machines
are still using boardfiles, and drivers are not obtaining IRQs dynamically
from device tree or ACPI, instead they are set up statically at machine
init.

I assume it would otherwise be done as part of ops->translate?

I suppose it could be solved with a patch that take this route only if
we're not using device tree or ACPI?

If this is the totally wrong answer then forgive me... a bit tired.

Yours,
Linus Walleij

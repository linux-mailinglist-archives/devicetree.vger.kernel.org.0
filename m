Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 626552A80BC
	for <lists+devicetree@lfdr.de>; Thu,  5 Nov 2020 15:21:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731006AbgKEOVK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Nov 2020 09:21:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730977AbgKEOVH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 Nov 2020 09:21:07 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4876C0613D2
        for <devicetree@vger.kernel.org>; Thu,  5 Nov 2020 06:21:05 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id u18so2518023lfd.9
        for <devicetree@vger.kernel.org>; Thu, 05 Nov 2020 06:21:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kZzDmTp+Cx9xiy3l7a/3HUobFreQEXAoNRDoJMIB+dY=;
        b=j5qfXvtuye+LDrJ8cn8oiGjVXaW+/DLAc8UcbLbT033ClUvxzJhTbrKNxZrlpwDazv
         tL+6SFUt7wMJuASPm8C9z0mdNv6Ot/HwdXiAEaB+qTEKVRzlyreGDYSeSTf4aBm7S0tD
         x99vnBeHxRjP+8B4BG23raPlcFDAqsOpOu8e7bpzCQUxM+J7vkOnfCGK++SYfwV7w+hh
         xd9HpqLIwsSobTSF3ROpHfKDMk4Txqw5bt0n9OQ2j0qVt4I3Rzfe3KFiTTJecYogoZEp
         mtPf8NYjKWFn+vUb2CYLLTisgxQ0R+hIqVpNhpYkAC8FvCvOL9Szbg5aIy/uIeJpcdHc
         YmZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kZzDmTp+Cx9xiy3l7a/3HUobFreQEXAoNRDoJMIB+dY=;
        b=jJgQgyCdOgG/qKlLwRX6dCtGxrxGEliNwuDyMlPbtHqnLyBaHUb0cfjrOIIdoUe6BQ
         T+oUuZXZR1mAyZX2xnWSsHknbR746Mw8jl7FNPvP3A+cwnCb4UYqEKAyuLPLOvoe1L/7
         3cB8srZF0MnS63huTe6Pct/MnZE9+v8a+gJzeRotNcPhtE6fpdjrgpPaDkr3Bc6UuPLA
         G2Pw1KKGZ9FaDW7Oc2S/hZx5uvGR9hVfH2DHVXZ2eiFyr+i749XGnl8Uq3N1kMvKNT3N
         ivyEai0sl/rjZ2TBUH8v+YTavrsmZNccsChIr2A52FUEcO24O9r3xqgpc/Ic1j494B38
         MprA==
X-Gm-Message-State: AOAM533ksaoSloZvPvWOKT+Ugejc9ELrgqYXNnq0JCd9Ib6mCp0oWTIw
        WcojtSm+nJYZSH/hP6k3n+OCjPzylcGLPLG9cakV2g==
X-Google-Smtp-Source: ABdhPJy3Z/j4XZjBZhJmurIWWAFx+TSCzZvuAiLP+FXiiCtQ/cfh5n1flpcgct7dmvjpZZn5bTyzaP+YU62sblNF27Q=
X-Received: by 2002:a19:7b06:: with SMTP id w6mr1172912lfc.260.1604586064299;
 Thu, 05 Nov 2020 06:21:04 -0800 (PST)
MIME-Version: 1.0
References: <20201029134027.232951-1-lars.povlsen@microchip.com>
In-Reply-To: <20201029134027.232951-1-lars.povlsen@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 5 Nov 2020 15:20:53 +0100
Message-ID: <CACRpkday541uM4csZ4pn7mYw61YSnueVVvHJmwEVB0YhRT-HVQ@mail.gmail.com>
Subject: Re: [PATCH v7 0/3] Adding support for Microchip/Microsemi serial GPIO controller
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 29, 2020 at 2:40 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> The series add support for the serial GPIO controller used by
> Microchip Sparx5, as well as (MSCC) ocelot/jaguar2 SoCs.

v7 is starting to look really appetizing. The kernel bot is complaining
a bit so please fix that and follow up on Andy's comments as well.

Yours,
Linus Walleij

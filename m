Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A1D0078248
	for <lists+devicetree@lfdr.de>; Mon, 29 Jul 2019 01:14:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726183AbfG1XOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 28 Jul 2019 19:14:50 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:42968 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726139AbfG1XOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 28 Jul 2019 19:14:50 -0400
Received: by mail-lj1-f194.google.com with SMTP id t28so56689070lje.9
        for <devicetree@vger.kernel.org>; Sun, 28 Jul 2019 16:14:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=uqbaLb+DoYfmkQkeju/D4dfpefzvGhqE/NA7IyXYHDs=;
        b=mecH4VhtykhjOehOVm7m8Pa5YP6LbhZHxuLFQA2XocGjWKuVwaUD5JKujEe9aVixYW
         cawoMpzpCuo6PsH/Y5+Y7tXwV3d7SoDRDfjjcoukQScCk9CzzHAMPo1pS4yrzvyXmqyJ
         2yMjXxSUUQvzemHru0Os3ufWRvyApCPQMYjePIqEYdIr8dqIpeHbncxd/W99X2KbFg2j
         jbwANzOROhAvP10F0iLcxqbviHMgDbZ6aAMO7bHOLzMbrE+YgCLY6qUQqtoboNujm0Gj
         U73hnvjkMlVYKlUDbpdLF67Z+MpbkHJo3vfCQ+e8YPRfhiYgmC3LZ5+TDpH4eiTfU3zX
         7Iyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=uqbaLb+DoYfmkQkeju/D4dfpefzvGhqE/NA7IyXYHDs=;
        b=h7PHXY1tIicU95lrWr+CyF9oy33j6obOCRLHTXTtHqOx+Z2YX9ryvLSqJodmXDYW/l
         4VBcvrDbnUKqMLVJKAcydRA46Yfd1VPu7Fj8yTUwQESqB+dWgDDkkFtRAPk5G4zn8IQM
         CiMGP46J/5ATiSb8pvcks+9p16B4SmmwuAFA8CuZ9NOSvx36svqLERGlD2RT0l/NwwjR
         mKiEI/oql9J634SHpx4AR+zOwx/Gt53gDxB5EhKE+5ATIrIuvSa1w2+8xtlmTqNh1v8M
         40aUfcpaP4OmKuAXCpKVumbvbEfHaHr18MgOBTxsXWgrtoEht+wltlNvjgxG+HIJD8Z8
         0b3g==
X-Gm-Message-State: APjAAAV0+CDnD1vu5mFdNyxpvXdp8qeZuFLnoMKF6FBTpj2SHCtu3xOF
        zKeg3ginfghrDCcdtI1u2h0/Z8dfrNJD98TbMk8mHA==
X-Google-Smtp-Source: APXvYqxZn/ye7KzmbCXTelv16sXPVMTT2jnKOOv6eVhlkoDzFB17aRJoEaL7U1kzdaeMP7q7K+fcGcM99btdobKE65w=
X-Received: by 2002:a2e:9593:: with SMTP id w19mr8822011ljh.69.1564355688739;
 Sun, 28 Jul 2019 16:14:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190711041942.23202-1-andrew@aj.id.au>
In-Reply-To: <20190711041942.23202-1-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Jul 2019 01:14:37 +0200
Message-ID: <CACRpkdb4pEdPHbo=3+fJXe9WG8K7A2_xVMtKWCJCfEawDO5wBw@mail.gmail.com>
Subject: Re: [PATCH 0/6] pinctrl: aspeed: Add AST2600 pinmux support
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>, ryanchen.aspeed@gmail.com,
        johnny_huang@aspeedtech.com, linux-aspeed@lists.ozlabs.org,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 11, 2019 at 6:19 AM Andrew Jeffery <andrew@aj.id.au> wrote:

> This series adds pinmux support for the AST2600. Some more rework was required
> on top of the previous cleanup series, but this rework was focussed on
> supporting features of the AST2600 pinmux rather than fixing issues with the
> existing infrastructure for the ASPEED drivers. Due to the dependences it's
> based on top of pinctrl/devel, so should avoid any more SPDX issues.
>
> ASPEED have been testing the patches on hardware, so even for an initial pass
> there's some confidence in the implementation.

I'm unsure if I need to wait for the DT bindings to be fixed on this
series?

Yours,
Linus Walleij

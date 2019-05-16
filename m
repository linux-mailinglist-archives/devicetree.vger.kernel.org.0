Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 967292080E
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 15:25:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727510AbfEPNZt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 09:25:49 -0400
Received: from mail-lj1-f196.google.com ([209.85.208.196]:42825 "EHLO
        mail-lj1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726717AbfEPNZt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 09:25:49 -0400
Received: by mail-lj1-f196.google.com with SMTP id 188so3076555ljf.9
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 06:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YBQglN9y1UCEoiDsyDKmavv3pTw2avVwHy9wGSr4d+c=;
        b=GQmbJ3aVkAkxYq4ebWu1xQr82AleFWY5CEch/sBznZ0n1N0TCZv7wWXuBmc5XP4gK9
         0kz8teIQJnMwKDt4K3j18W4obgX85WUOBdEyFawJHemHKe/k3RiymhPVyQ15zn3EOflo
         68z0GFwwNB0yuxgeOj4koQP5hlddq3mITwbdTJl1YABN4VIEGYhAAVYgj0LaHQ/e2/3f
         igDW+NXWmbxv28jV6e2QnJqq+R+z1fq+bQEsXVh4pRMoJVxLNnB2ISHUhoqATTsEUlzq
         MhKsuF+/P24J230PUDWXeuNC2ijNAiqOyXuNACqs8iMiQsma6XyJtItfunwihjMfiT5s
         4i5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YBQglN9y1UCEoiDsyDKmavv3pTw2avVwHy9wGSr4d+c=;
        b=Wq01eox0pwwXS4PZp2vt+KVy9cqXmJBsAsIyE4w2BQCOlbRcqyci2DsAtX2bkqHho1
         W16s3lEhhDcfNiBnwjtlvwgIiGLMFK1ReOxSInyLwoRNFyUqlEfT/Pub6Cj4ZHPkPv48
         /HtxJESo2EzXK8Nf1ozHAPGY3Vmhdq1yw5r9FYF2kIfmWGb3A/fg25Htoh/5mYnCDncE
         aBGoh1tdK/OF4/+Zuoc49bPP4TlyauLuicXPDzKuu+mU8mb1MC8p2DI2LHVS+/bUr3FU
         uB0jbAIz/EnOS1M5fAw9Q4DhYerQ20tMe/DvtNzvoXHpVPRTEnOadGOt4sE9kLSdehHD
         gi6w==
X-Gm-Message-State: APjAAAWh9hOE2UhzyhsMDKPFp4cwz+4rh6adG8wS6/Gkt1OfG2EUot1r
        9zM9aYGW2cojsL44kvTQGhgU+svT12xSEEjn5IQoYg==
X-Google-Smtp-Source: APXvYqxyM8uKxGHNJAN6reja+yN/0m8IqjdmaVrInAyROSmFRr/vSpkDGQKVYugaZ4aLVYVtQpPVddOrXFdHM695bek=
X-Received: by 2002:a2e:60a:: with SMTP id 10mr3406462ljg.126.1558013147786;
 Thu, 16 May 2019 06:25:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190509205955.27842-1-f.fainelli@gmail.com> <20190509205955.27842-3-f.fainelli@gmail.com>
In-Reply-To: <20190509205955.27842-3-f.fainelli@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 16 May 2019 15:25:36 +0200
Message-ID: <CACRpkdYXp3LMXrSQrndUWWNq0eYb=P22FC9V0__j2AZPGCq0Jw@mail.gmail.com>
Subject: Re: [PATCH 2/3] pinctrl: bcm: Allow PINCTRL_BCM2835 for ARCH_BRCMSTB
To:     Florian Fainelli <f.fainelli@gmail.com>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Doug Berger <opendmb@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        "maintainer:BROADCOM BCM281XX/BCM11XXX/BCM216XX ARM ARCHITE..." 
        <bcm-kernel-feedback-list@broadcom.com>,
        Eric Anholt <eric@anholt.net>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Matheus Castello <matheus@castello.eng.br>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Lukas Wunner <lukas@wunner.de>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Al Cooper <alcooperx@gmail.com>,
        "open list:PIN CONTROL SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:BROADCOM BCM2835 ARM ARCHITECTURE" 
        <linux-rpi-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 9, 2019 at 11:01 PM Florian Fainelli <f.fainelli@gmail.com> wrote:

> From: Doug Berger <opendmb@gmail.com>
>
> ARCH_BRCMSTB needs to use the BCM2835 pin controller for chips
> like BCM7211 which adopted that pin controller for GPIO. This
> commit makes the option menu configurable with default enabled
> for ARCH_BRCMSTB and ARCH_BCM2835.
>
> Signed-off-by: Doug Berger <opendmb@gmail.com>
> Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>

Patch applied for v5.3 with the ACKs.

Yours,
Linus Walleij

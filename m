Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1B2BF11D00E
	for <lists+devicetree@lfdr.de>; Thu, 12 Dec 2019 15:42:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729724AbfLLOmP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 Dec 2019 09:42:15 -0500
Received: from mail-lf1-f68.google.com ([209.85.167.68]:34242 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729404AbfLLOmO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 Dec 2019 09:42:14 -0500
Received: by mail-lf1-f68.google.com with SMTP id l18so1915537lfc.1
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2019 06:42:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tZEozXho8/b7kOqmVnapq/xyhPGY85u/Fazs9Eblm1E=;
        b=cCFmmoTXOmDLfgP+nSgeOYumVAZUrCnARZzWT6kYYgCKF1bePY08qH25uoDIaIHIIP
         xy8kMJ6JQ2UyEvDyewbvtPrrH9UtNKJVImB4NokJIoH/R67zMUh04sKFC2b9DZZNNYUs
         aUGcMes7TUb5SFaiVdEGG5DyRqBgacd0FAD4lAf+ICRsdMe3e2j3QZ8mi0budLFypHnU
         Q9CAtFfX69QmpkYitVwIFJ08foJUmu7rOTj1ckh5yeQ90ov1O2obpxX2rMKf54BvokNm
         ude9UZXPiRBYKsQ2CDcY3DczzV6WI8NM6/9D9PHWpM76xo1IPmfR6iBERCj82PcqPI0L
         ppSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tZEozXho8/b7kOqmVnapq/xyhPGY85u/Fazs9Eblm1E=;
        b=LNYp5nEY43GbgqtqK/t2Spx5DBxG+YFOzz7EBtGDQcfJRSEjhSO9arpNmfJX+MZ81/
         v3IxkPbtjOTN9SqdhSDi+kJX0iJsCd0Tmpxlfxu7J49mAF5mEpKn3OKc87N8ssh/7KWG
         YAXUAEWsNOj9lL95HDOs0Rb7VndcXUUkeEfoN0LPoYaKNvKlciHsgqeb/jAB4RwSXNaE
         m2wK8MtRWeToXVbBJoMOqQhig/wXdMVigOj0n2jhbTWzeM+x/uDaNgwVaSy0CDBkdLWX
         gRbqiineea0KiGldrin/Br0wLx3MMphyCXpSC8EM8tCu8kfZw1XA6qYMA9WVFNXmQ3E0
         c0Tg==
X-Gm-Message-State: APjAAAWJSa2R2jsuuVQfttfsgjudGE5ykdWsEM2z2r7XFHP6P1UxSZ69
        G0/0WWCOqNL5mgDDS0VFI8wSoC+ronAl/h3vu5zclA==
X-Google-Smtp-Source: APXvYqzNd5E12+tK1syFHjNwCOV5eMNSPBpGptit7BvfAlgSkslbOpdSmdz3b8GlBGkJlIqKTDmvgy11rgnCB3iAN8w=
X-Received: by 2002:ac2:4945:: with SMTP id o5mr5702467lfi.93.1576161732769;
 Thu, 12 Dec 2019 06:42:12 -0800 (PST)
MIME-Version: 1.0
References: <20191127084253.16356-1-geert+renesas@glider.be> <20191127084253.16356-7-geert+renesas@glider.be>
In-Reply-To: <20191127084253.16356-7-geert+renesas@glider.be>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 12 Dec 2019 15:42:01 +0100
Message-ID: <CACRpkdb1XZAeSThxWmJtnm80T4aPufXV2UvJdVdgnw-TJe3trg@mail.gmail.com>
Subject: Re: [PATCH v3 6/7] docs: gpio: Add GPIO Aggregator/Repeater documentation
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Jonathan Corbet <corbet@lwn.net>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Harish Jenny K N <harish_kandiga@mentor.com>,
        Eugeniu Rosca <erosca@de.adit-jv.com>,
        Alexander Graf <graf@amazon.com>,
        Peter Maydell <peter.maydell@linaro.org>,
        Paolo Bonzini <pbonzini@redhat.com>,
        Phil Reid <preid@electromag.com.au>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Christoffer Dall <christoffer.dall@arm.com>,
        Magnus Damm <magnus.damm@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux Doc Mailing List <linux-doc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        QEMU Developers <qemu-devel@nongnu.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 27, 2019 at 9:43 AM Geert Uytterhoeven
<geert+renesas@glider.be> wrote:

> +The GPIO Aggregator allows access control for individual GPIOs, by aggregating
> +them into a new gpio_chip, which can be assigned to a group or user using
> +standard UNIX file ownership and permissions.  Furthermore, this simplifies and
> +hardens exporting GPIOs to a virtual machine, as the VM can just grab the full
> +GPIO controller, and no longer needs to care about which GPIOs to grab and
> +which not, reducing the attack surface.
> +
> +Aggregated GPIO controllers are instantiated and destroyed by writing to
> +write-only attribute files in sysfs.

I suppose virtual machines will have a lengthy config file where
they specify which GPIO lines to pick and use for their GPIO
aggregator, and that will all be fine, the VM starts and the aggregator
is there and we can start executing.

I would perhaps point out a weakness as with all sysfs and with the current
gpio sysfs: if a process creates an aggregator device, and then that
process crashes, what happens when you try to restart the process and
run e.g. your VM again?

Time for a hard reboot? Or should we add some design guidelines for
these machines so that they can cleanly tear down aggregators
previously created by the crashed VM?

Yours,
Linus Walleij

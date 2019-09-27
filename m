Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7A1AFC049A
	for <lists+devicetree@lfdr.de>; Fri, 27 Sep 2019 13:50:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727305AbfI0Lul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Sep 2019 07:50:41 -0400
Received: from mail-lf1-f67.google.com ([209.85.167.67]:39779 "EHLO
        mail-lf1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726144AbfI0Lul (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Sep 2019 07:50:41 -0400
Received: by mail-lf1-f67.google.com with SMTP id 72so1688473lfh.6
        for <devicetree@vger.kernel.org>; Fri, 27 Sep 2019 04:50:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jtkPzUdh0BjwnTFcU6cDEv31BuC4wG3MpqjO9vOb5nc=;
        b=dHkG+HnC9dM6qd1tsawE2B77CGjpChpBeEsSBUvLKNrVXpX+osBDmU/jLYHZPm1B/P
         2dyDxSkFmTP8ieUdkcZKpDi2kNeo10lBoWrXT9wdZ615R12K9KGFf6J/OrMdVyWQEX/z
         wYgpsuDlMp9FCPoF7j0EiuKNEMBtaw/LYAUt7RIkCAlVR/MANI5zfMMqmxqGDQcnXtAL
         2OY3vl+bQvPLR8uEP6OVKQm7w0g52y6Li38Svuxw5AE7QBLcb9eP1aPHP9bXfcFj5qG3
         0/jxw0iG4icNXkyuWt9atKmkl1Z8zGcUZmaUcKj8BAHOSFFYokiX4pBiyg/QJksov5nt
         4GIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jtkPzUdh0BjwnTFcU6cDEv31BuC4wG3MpqjO9vOb5nc=;
        b=aF8naiIELLb2fQsXDgJQzkyvYc3RvA3ajfDjTFcCX7vqWajQbCrIaGKN2eWUoUOcFB
         s2CPyfqpVCqOoJ+2HCminV4sMzMFqHx2nFUfl+wm4VT7gVWLDf9kbhiJAYykOV4F94Im
         vumAiBZ3yONLcvOJKu1YZn1j1ZvnolqZpaxyoDiuyUzdp64L+wR3/Eqzwd/5VdSPd1P1
         +v7tLQPCh+qXA57WbXoAffTh/G7cw84j8/iHXdytRkdWccoQLRBSq3asoTziI3RM5qvw
         awDpX7MZhFaVc3cM97AJRhLZSWpuFz2KKJC8DPcJlQW8mNlSs3NVBwP3ur4wl8wjgrID
         Y5+w==
X-Gm-Message-State: APjAAAXEFPKAVqeDNQgrRlGjmuiQEOX4BDpJKRHrxSvTGrzgXoryz1W9
        Yw67TqrYqy6KHuW6rg2ctlxuJN04xbx+CTQW8bLawg==
X-Google-Smtp-Source: APXvYqyF/AMU9HIQoJBR4mgMcIh/XR7QQxXA0oPACvNrMQJcYHLmYcQQw76chmDwmpMjtdY1kzoSIQzHJDEllWzZAzI=
X-Received: by 2002:a19:48c3:: with SMTP id v186mr2493316lfa.141.1569585039656;
 Fri, 27 Sep 2019 04:50:39 -0700 (PDT)
MIME-Version: 1.0
References: <1569439337-10482-1-git-send-email-hongweiz@ami.com> <1569439337-10482-3-git-send-email-hongweiz@ami.com>
In-Reply-To: <1569439337-10482-3-git-send-email-hongweiz@ami.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 27 Sep 2019 13:50:28 +0200
Message-ID: <CACRpkdY4RsqAOykyS-9GEFvF--3bmf=UjzADx8U18z=gTHBb4g@mail.gmail.com>
Subject: Re: [v2, 2/2] gpio: dts: aspeed: Add SGPIO driver
To:     Hongwei Zhang <hongweiz@ami.com>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Joel Stanley <joel@jms.id.au>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Ard Biesheuvel <ard.biesheuvel@linaro.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Andrew Morton <akpm@linux-foundation.org>,
        Benjamin Gaignard <benjamin.gaignard@linaro.org>,
        Doug Anderson <armlinux@m.disordat.com>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
        Mike Rapoport <rppt@linux.ibm.com>,
        Russell King <linux@armlinux.org.uk>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 25, 2019 at 9:22 PM Hongwei Zhang <hongweiz@ami.com> wrote:

> Add SGPIO driver support for Aspeed AST2500 SoC.
>
> Signed-off-by: Hongwei Zhang <hongweiz@ami.com>

I sent a separate patch to fix this up the way I want it with the file
named gpio-aspeed-sgpio.c and CONFIG_GPIO_ASPEED_SGPIO.

I don't want to mix up the namespaces of something Aspeed-generic
with the namespace of the GPIO subsystem. SGPIO is the name
of a specific Aspeed component.

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A87B35E000
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 10:40:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727046AbfGCIkP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Jul 2019 04:40:15 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35538 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726400AbfGCIkP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Jul 2019 04:40:15 -0400
Received: by mail-lj1-f194.google.com with SMTP id x25so1494824ljh.2
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2019 01:40:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9KQGKN1/JTwYz+i5tykBtO8/dfvkSTRXZ7mV96ulxlo=;
        b=iLSnAFiMtzOcyZkCnNoQdCnKRs/FrQMu9BQk1miyt08q/upQDSxsM5dd/sr+THA+cz
         Ma0puGzE/ZswYwh4FVWRnwkJAgjJiowH28UihrQ5Ew/UvWeQ1X3ci4rGe9jCtXrSXrhu
         VJcSzn2usHUy1hcueneTZAxbX0WIJ/GbSxZcQqCLs5riBu/oyqVMlrHbwbYdGATqrbN6
         XevkFpUuWujEosPpkR/Vjq9lnzSkFDPYZB9dCECqE0OpBr/Bgz2s7iUQBPkcrmFdU3Py
         +LZHudN2XD/KZduddVlkuwmpp3WdxkpwOUshIpl7p6/p7b3bfcWeCi9olwlgW6sw26ku
         wAGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9KQGKN1/JTwYz+i5tykBtO8/dfvkSTRXZ7mV96ulxlo=;
        b=KLgBLoAcz4HM/mpiMR7lh1aJaoy3ugOqnqPBvO7ccCg7EQPAeEpyLLjEMyPoEPffra
         eOGuxoofz/fsPQgCHc3aml92gK//5CNeVtAoSk2xH+7p6Ar4qJiXeKvAfzPumJ1ttaiO
         5F74iugXOYQUR8CcsaNFwLffOwbEbeqv8X/NBf/I+uIpI/pdgl/T1rV24A6Bk/O0zUiP
         GVFw5KZqL7NuyMrt9CRl5TWlASrDlc4HKjUw/rXwIQe25glwSER67ktewEDC0Tx4W7Pv
         yV+KMPratm1SU8HaPCi3nUh3EgLuZgrqBpwi4KLPxvz7f+c1uiB3ErycfBQt2DMUPbix
         Au+w==
X-Gm-Message-State: APjAAAVCSkBrU2QPgbCNZd26N3tiWQ/ywif3Glm+2iZvUFdyT0tSACQs
        TAbt1d2r5v3pxytew6Q3IPihadn3k3NGjcQDXql1LA==
X-Google-Smtp-Source: APXvYqwjCAdp2pYFgLkejdEEDh9nRCMtaIIni+TVcrXpKnpbZ14+0z+JW8gDE5GUfqGr6bXIV3oih+tOTO8H8yN1rZI=
X-Received: by 2002:a2e:650a:: with SMTP id z10mr20360931ljb.28.1562143213537;
 Wed, 03 Jul 2019 01:40:13 -0700 (PDT)
MIME-Version: 1.0
References: <20190628023838.15426-1-andrew@aj.id.au>
In-Reply-To: <20190628023838.15426-1-andrew@aj.id.au>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 3 Jul 2019 10:40:02 +0200
Message-ID: <CACRpkdaxiFR3ezt4FzhRxpqc4DYYjsbBeysPUaaQH+_QgYjudw@mail.gmail.com>
Subject: Re: [PATCH v2 0/8] pinctrl: aspeed: Preparation for AST2600
To:     Andrew Jeffery <andrew@aj.id.au>
Cc:     "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Joel Stanley <joel@jms.id.au>, linux-aspeed@lists.ozlabs.org,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Andrew,

On Fri, Jun 28, 2019 at 4:39 AM Andrew Jeffery <andrew@aj.id.au> wrote:
>
> Hello!
>
> The ASPEED AST2600 is in the pipeline, and we have enough information to start
> preparing to upstream support for it. This series lays some ground work;
> splitting the bindings and dicing the implementation up a little further to
> facilitate differences between the 2600 and previous SoC generations.
>
> v2 addresses Rob's comments on the bindings conversion patches. v1 can be found
> here:

I have applied this series, I had to strip some changes of the header
because it was based on some SPDX cleanups upstream but no
big deal I think. Check the result please.

Yours,
Linus Walleij

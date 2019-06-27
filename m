Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D736B58175
	for <lists+devicetree@lfdr.de>; Thu, 27 Jun 2019 13:26:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726375AbfF0L00 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jun 2019 07:26:26 -0400
Received: from mail-lf1-f68.google.com ([209.85.167.68]:42049 "EHLO
        mail-lf1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726682AbfF0L0X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jun 2019 07:26:23 -0400
Received: by mail-lf1-f68.google.com with SMTP id x144so1307397lfa.9
        for <devicetree@vger.kernel.org>; Thu, 27 Jun 2019 04:26:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yf/4QsQz71xnsufXmplIhM5PQjWjtA8iRNvCLywUsCI=;
        b=HiozRSV9jjoEd8lgVneXDXnUBP1+IEYIg+jfVj3yu3YE2rDCh0mQf6PCltXafOZuRQ
         wgzquUBxyhWo7PDBS9m/LWFwnCANPBpvCZrQYE2oHj20GZq/2E9ThKk3E8NPw81Lz1IR
         6wqLETMA8WyJzKNmXnDzqbNY6sUIuKzxUMVE+GnlYNfor+m9ZCB+VLKecag/t5wKJ6Jd
         T9zmH0RwA2Aq86TTmuzE2Qjhpw0IXYMX8T1nY+VIb685SluVHK84SiGlfHixp33uk0NX
         kmZSALvd+oLO52Ab1ZdDT5vg1sdlJ8tHsJXVo/3VFxdWskcobVYms8f/hqACvEI3a+uf
         LmpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yf/4QsQz71xnsufXmplIhM5PQjWjtA8iRNvCLywUsCI=;
        b=o6HB38S50oktjMD/S7p8weuX3t6xJZ5IPXsGFTPecB0ypbMXwg3jJBFzHkaDyZeEfx
         aRbU7MnUZgnxmLTVO6bHUNrtktogCWRNoVDp8TO1EitDjV49L7DwMTdWfluGM7nyNQbe
         C9oUpgZ+0k9I2kF9r/HoMlgKyHF9Z27G37PXsJjAqULucLRnVluR973eJt+X12OlZmTl
         sKFB5v0D3r4SyBbVwwvJt6F4RBKaOhq3RhG8BvvzASEYJ8q2JomTtQlPyaACvq4sRDwQ
         UWosm7xG8p22M1U3YpuOqKCcUrQADoSoQtCZXdqA2YeeCK/S1KFWc67BUlOAQFVDnc4F
         8lVA==
X-Gm-Message-State: APjAAAWswgasNK0P3/RgK0ukH6YBN5R7p/JDs5IhfWhFZzSSoUqa/GxE
        pepCAkiUFbPAdg781pCDUNurhOd/SkWEWQg8XhPZIQ==
X-Google-Smtp-Source: APXvYqzeLT9m0qZPhFXMQe7bGeM0G0YNhFKZNBdroL1getpvV13XvxWgav2h1PfavnIunwZFc7NAtBe9miLt5qxA34s=
X-Received: by 2002:a19:dc0d:: with SMTP id t13mr1687908lfg.152.1561634781537;
 Thu, 27 Jun 2019 04:26:21 -0700 (PDT)
MIME-Version: 1.0
References: <20190626071430.28556-1-andrew@aj.id.au> <20190626071430.28556-2-andrew@aj.id.au>
 <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
In-Reply-To: <CACPK8Xfdd1ReAHr9f6zRbZ-WJRquDJsTdUQeT_JuEBhOzS8tig@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 27 Jun 2019 12:26:10 +0100
Message-ID: <CACRpkdZtTy-HHu2O4aOaqV5ZdxcYYPFRuxK2jjnw+_O1xcF1rg@mail.gmail.com>
Subject: Re: [PATCH 1/8] dt-bindings: pinctrl: aspeed: Split bindings document
 in two
To:     Joel Stanley <joel@jms.id.au>
Cc:     Andrew Jeffery <andrew@aj.id.au>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Ryan Chen <ryan_chen@aspeedtech.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-aspeed@lists.ozlabs.org,
        OpenBMC Maillist <openbmc@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 27, 2019 at 4:32 AM Joel Stanley <joel@jms.id.au> wrote:

> I think we can use this as an opportunity to drop the unused g4-scu
> compatible from the bindings. Similarly for the g5.
>
> Acked-by: Joel Stanley <joel@jms.id.au>

I assume I should wait for a new version of the patches that does
this?

Yours,
Linus Walleij

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AFBF384BF9
	for <lists+devicetree@lfdr.de>; Wed,  7 Aug 2019 14:47:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729516AbfHGMrR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Aug 2019 08:47:17 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:46935 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727171AbfHGMrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Aug 2019 08:47:17 -0400
Received: by mail-lj1-f194.google.com with SMTP id v24so85509120ljg.13
        for <devicetree@vger.kernel.org>; Wed, 07 Aug 2019 05:47:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lpl1se61ap+ZejSxmdOkypwlEcu3obK4BcH8VfHUlNk=;
        b=ihFrCL5lZs8ycFm7bQncDVE0s35b0Yrbkfp1SA37FaAGye1IyBnGT14EF7+Qx7mXRt
         2BUS3zczviL0HRYUu5yjIo/JXHYZCtngh156+BWpKfAyJ1PhwIHS2xBE9Xc0Xg08xD4c
         kIppNb2BwvocrFdpzbuOvMj45iKqt09auPbZaK8taxaUg4wacVnWOmXik8+JeUPx2csa
         CMXD5vn+xq/IZJyMs8/a/3owUAezmoyFrbUsr15vf3NRbEKdUEl3CrPhtYnkb+cGVZxi
         HaK16rNlm6l3cjn91eFx7N5/RvFn3nNFeAqmJ8+Am0/GuoBrn+zCVU6BIIf5bMQT73XV
         v5yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lpl1se61ap+ZejSxmdOkypwlEcu3obK4BcH8VfHUlNk=;
        b=gQVxE2JdDZIwTarxnNepVJkEaSQRvPahV79klr6s7KE9NeqCNrjtNCAO7zqLarjMiz
         IS5xVAKRo8PShz6xAN64gO7V+92N8McMC/7B/eNuNSGs17bNg9dMJgiiLnzsnGyZws/e
         W4AhEx5ea591TIZyfGDTOLFgpgxduaYKdSrkdg/KO0gi/ApLe/uOdEY0L8NHe03jlUd4
         fX8eGNt1/PY4PSivGZ+6suYbbWAY3+rnTNMjeIOsy5j/G1Mi/lauC0yDf/UfVBTgBRyr
         svDDl8QMO2/L44LyqRgesaw/0M33H3myLHimsVGGO5RVkjC40obPHj2XcCyM9xxWe+lW
         7lgw==
X-Gm-Message-State: APjAAAXTkKKOoQ37z81y4riilOdkj5SRJ8uZrqOVZVO4uX7DP4V+Hfbt
        HSoaPJLXmRyNOlULjfDsCasXlYjfCDKespXWcMqaIKdy
X-Google-Smtp-Source: APXvYqzcR1NAhAYYmAXeGpoe4pLb9QvXJ3FeuUgQBsWp1dBnPcreoJqYePaBmIa0z4ZkzF9nBR7rVHvyaSC+YC/S2wM=
X-Received: by 2002:a2e:9048:: with SMTP id n8mr4801970ljg.37.1565182035311;
 Wed, 07 Aug 2019 05:47:15 -0700 (PDT)
MIME-Version: 1.0
References: <20190805101607.29811-1-miquel.raynal@bootlin.com>
In-Reply-To: <20190805101607.29811-1-miquel.raynal@bootlin.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Aug 2019 14:47:03 +0200
Message-ID: <CACRpkdar5jE116CcywYxLR9JKWunRusJjNw7f3C0SFK4-4+dNQ@mail.gmail.com>
Subject: Re: [PATCH 0/3] CP115 pinctrl support
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 5, 2019 at 12:16 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:

> This is the second batch of changes (out of three) to support the brand
> new Marvell CN9130 SoCs which are made of one AP807 and one CP115.
>
> We add a new compatible (and the relevant support in the pinctrl
> driver) before the addition in batch 3/3 of CN9130 SoCs DT using it.

Waiting for review from the Mvebu maintainers.

If it takes too long just nudge me, it looks good to me.

Yours,
Linus Walleij

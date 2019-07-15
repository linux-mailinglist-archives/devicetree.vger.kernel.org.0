Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AB2F369E80
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2019 23:46:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732099AbfGOVph (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Jul 2019 17:45:37 -0400
Received: from mail.kernel.org ([198.145.29.99]:54666 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730984AbfGOVph (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 15 Jul 2019 17:45:37 -0400
Received: from mail-qt1-f182.google.com (mail-qt1-f182.google.com [209.85.160.182])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 1B8EE21738
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2019 21:45:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1563227137;
        bh=bOxv9M7FSpciDgt5fsuUf7+3jKRJ0QVRRRcpPCwYOrw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=WmLnbmURCH4WkzfOOmkBAw5lk7MnVQisf4J3MnwuyPiMhlhvBuN5JVyeGXEXB+Ixk
         xX3e4vtAccficMlMVXAiP+KyuXptRzGS8NOXbwTY73S7l8pOXpdzc4RYjZ5jwf1aCS
         Hxpz+CCxHWGCPJWm87wV8ehQ0urqeD+Y4R6DxHFs=
Received: by mail-qt1-f182.google.com with SMTP id r6so13132126qtt.0
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2019 14:45:37 -0700 (PDT)
X-Gm-Message-State: APjAAAWujRMgFVHb7sh69mEx/8uXlp1c16Np0bPiXzO5lQSeKsmsaHU7
        M51g8ercElTv05gXRJDp4jkmCRdbLicM9rX4zQ==
X-Google-Smtp-Source: APXvYqwx3zKms08dwfbW9Rrd7dTNSoAFjSjWmA1WWziCEAZ9wenpckHkrtk0kHSnx6k9ODHZtx+s9U+m7pB8Fa4kPOQ=
X-Received: by 2002:a0c:b627:: with SMTP id f39mr21342915qve.72.1563227136354;
 Mon, 15 Jul 2019 14:45:36 -0700 (PDT)
MIME-Version: 1.0
References: <20190516225614.1458-1-robh@kernel.org> <20190520145830.GE3274@piout.net>
In-Reply-To: <20190520145830.GE3274@piout.net>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 15 Jul 2019 15:45:24 -0600
X-Gmail-Original-Message-ID: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
Message-ID: <CAL_JsqK0piWGQBeqcOceF=fSX4vSW7_vyv0qAAxz-bg25qEVow@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: at91: Avoid colliding 'display' node and
 property names
To:     Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Nicolas Ferre <nicolas.ferre@microchip.com>,
        devicetree@vger.kernel.org,
        Ludovic Desroches <ludovic.desroches@microchip.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 20, 2019 at 8:58 AM Alexandre Belloni
<alexandre.belloni@bootlin.com> wrote:
>
> On 16/05/2019 17:56:14-0500, Rob Herring wrote:
> > While properties and child nodes with the same name are valid DT, the
> > practice is not encouraged.
>
> I don't see anything mentioning that in the devicetree specification. I
> think this is something you should add if you don't want that to happen
> again.

I suppose, but I prefer tools to enforce it.

>
> > Furthermore, the collision is problematic for
> > YAML encoded DT. Let's just avoid the issue and rename the nodes.
> >
>
> Or maybe you should fix the tool ;)

You mean the YAML and JSON specifications because the problem is it is
not valid YAML? (I think YAML allowed it at one time, but it is
deprecated) The only way to fix it in the tool would be to define some
way to handle the collision like renaming properties and then undoing
that.

> Do you plan to enforce it at some point? How close are you?

Soon as this patch is merged. There's a switch in parsing tools to
disallow the collision, so it will be an error instead of a warning.

> > Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> > Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> > Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> > Cc: linux-arm-kernel@lists.infradead.org
> > Signed-off-by: Rob Herring <robh@kernel.org>
>
> Acked-by: Alexandre Belloni <alexandre.belloni@bootlin.com>

Is someone going to apply this?

Rob

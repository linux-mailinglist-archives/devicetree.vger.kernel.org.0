Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E229BCC056
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 18:14:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389910AbfJDQOz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 12:14:55 -0400
Received: from mail.kernel.org ([198.145.29.99]:44628 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2389131AbfJDQOz (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 4 Oct 2019 12:14:55 -0400
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 6BC8C222C2
        for <devicetree@vger.kernel.org>; Fri,  4 Oct 2019 16:14:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570205694;
        bh=R5sSirwUbEkqcu4d1r6lkTNzDq1obCEV8XM1j86dPs4=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=mWLE5C6mhG6IzW9QjIbm92y0poURo1jhbA2Lw5QuTrbTZbTKnH01WvE3aGhA/f7tF
         RXMUNDRsfXW8aSHRHFS/F3jN1yxyrVBWFiM0iyrPTG0HIjHZMBUjDl5KP6YtMlCz2/
         kMaaMTGnY4lnCKdbjKeOtAnOyE8wWa4VXouzXxcY=
Received: by mail-qk1-f181.google.com with SMTP id u22so6272734qkk.11
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 09:14:54 -0700 (PDT)
X-Gm-Message-State: APjAAAXNHpjSYC3oQmhkoFCoRApZpMDOEcN/Oa2yYwFP8J0DO2CK3UMZ
        DC/6KrDAwKFBIYBqA9iepkOt56w3pSt922nfCA==
X-Google-Smtp-Source: APXvYqz/kmnAhT2fOXDnY0OfmKw4xGmJxsKKNwku/uLv+v2VfNMmt/d91t0lQQbb2yu77oqQYoqTZiAxYEctjkRy6aE=
X-Received: by 2002:a05:620a:549:: with SMTP id o9mr10924164qko.223.1570205693580;
 Fri, 04 Oct 2019 09:14:53 -0700 (PDT)
MIME-Version: 1.0
References: <20191004142738.7370-1-miquel.raynal@bootlin.com> <20191004142738.7370-18-miquel.raynal@bootlin.com>
In-Reply-To: <20191004142738.7370-18-miquel.raynal@bootlin.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 4 Oct 2019 11:14:42 -0500
X-Gmail-Original-Message-ID: <CAL_JsqLQ+mfdDoTMiN8T3-0+LAv+rU=G6qVOvEcKb4beWGTWmw@mail.gmail.com>
Message-ID: <CAL_JsqLQ+mfdDoTMiN8T3-0+LAv+rU=G6qVOvEcKb4beWGTWmw@mail.gmail.com>
Subject: Re: [PATCH v2 17/21] dt-bindings: marvell: Declare the CN913x SoC compatibles
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 4, 2019 at 9:28 AM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> From: Grzegorz Jaszczyk <jaz@semihalf.com>
>
> Describe the compatible properties for the new Marvell SoCs:
> * CN9130: 1x AP807-quad + 1x CP115 (1x embedded)
> * CN9131: 1x AP807-quad + 2x CP115 (1x embedded + 1x modular)
> * CN9132: 1x AP807-quad + 3x CP115 (1x embedded + 2x modular)
>
> CP115 are similar to CP110 in terms of features.
>
> There are three development boards based on these SoCs:
> * CN9130-DB: comes as a single mother board (with the CP115 bundled)
> * CN9131-DB: same as CN9130-DB with one additional modular CP115
> * CN9132-DB: same as CN9130-DB with two additional modular CP115
>
> Signed-off-by: Grzegorz Jaszczyk <jaz@semihalf.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  .../bindings/arm/marvell/armada-7k-8k.yaml    | 21 +++++++++++++++++++
>  1 file changed, 21 insertions(+)

Reviewed-by: Rob Herring <robh@kernel.org>

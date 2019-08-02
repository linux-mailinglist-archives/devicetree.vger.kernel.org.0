Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7FE227FD97
	for <lists+devicetree@lfdr.de>; Fri,  2 Aug 2019 17:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1733275AbfHBPcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Aug 2019 11:32:50 -0400
Received: from mail.kernel.org ([198.145.29.99]:35790 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727198AbfHBPcu (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 2 Aug 2019 11:32:50 -0400
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 240E32087C
        for <devicetree@vger.kernel.org>; Fri,  2 Aug 2019 15:32:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1564759969;
        bh=SqXczMVqgeEkDVlqy5kglJj8uL1oAGnsDkEhoHPszCE=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=pCLuRj/WOOZYb+u1fjmIKd4E3EYbifvnH3q+ZYi57kOWlgyO9gJcsA+sJGmHT0mDJ
         PS4fijeM6cSxG3PhbrzKW6q5rpDKvQ0yQvHbtiNH59IGy6G1FOb6p31VneUJV8ZEdt
         FtyTVtOOMm8GCHvLv/SbgTE9YsIcPQldYjIyqQoQ=
Received: by mail-qt1-f171.google.com with SMTP id y26so74302003qto.4
        for <devicetree@vger.kernel.org>; Fri, 02 Aug 2019 08:32:49 -0700 (PDT)
X-Gm-Message-State: APjAAAWjGbzTT0mOO/v/2uHmZqEtEyjgXzPZ0h8yJb1w3A2lO3rKmPzR
        IAmq0Otomg7PBXQR/uoNncnqj2Nqb27yr0DmOQ==
X-Google-Smtp-Source: APXvYqz5KFxckUeN3jLg6ZkyxzzkOZ6/De6227CJyUXimVAlaImzJTd4BNXCiN4DhIhzmmkx6p/UvVuwUn0NBDGuyKA=
X-Received: by 2002:a0c:acef:: with SMTP id n44mr100010313qvc.39.1564759968361;
 Fri, 02 Aug 2019 08:32:48 -0700 (PDT)
MIME-Version: 1.0
References: <20190801135644.12843-1-narmstrong@baylibre.com>
 <20190801135644.12843-6-narmstrong@baylibre.com> <90dbcb33-74a2-68de-eb1a-ce84040298b8@baylibre.com>
In-Reply-To: <90dbcb33-74a2-68de-eb1a-ce84040298b8@baylibre.com>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Fri, 2 Aug 2019 09:32:36 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+gtauOzrRRtTqbowUSOMi5Rs_GQVt7e7gYHa7TtjOhOA@mail.gmail.com>
Message-ID: <CAL_Jsq+gtauOzrRRtTqbowUSOMi5Rs_GQVt7e7gYHa7TtjOhOA@mail.gmail.com>
Subject: Re: [RFC 5/9] dt-bindings: arm: amlogic: amlogic,meson-gx-ao-secure:
 convert to yaml
To:     Neil Armstrong <narmstrong@baylibre.com>
Cc:     linux-amlogic@lists.infradead.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Aug 2, 2019 at 8:37 AM Neil Armstrong <narmstrong@baylibre.com> wrote:
>
> Hi Rob,
>
> Thanks for reviews.
>
> On 01/08/2019 15:56, Neil Armstrong wrote:
> > Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
> > ---
> >  .../amlogic/amlogic,meson-gx-ao-secure.txt    | 28 -------------
> >  .../amlogic/amlogic,meson-gx-ao-secure.yaml   | 42 +++++++++++++++++++
> >  2 files changed, 42 insertions(+), 28 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt b/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
> > deleted file mode 100644
> > index c67d9f48fb91..000000000000
> > --- a/Documentation/devicetree/bindings/arm/amlogic/amlogic,meson-gx-ao-secure.txt
> > +++ /dev/null
> > @@ -1,28 +0,0 @@
> > -Amlogic Meson Firmware registers Interface
> > -------------------------------------------
> > -
> > -The Meson SoCs have a register bank with status and data shared with the
> > -secure firmware.
> > -
> > -Required properties:
> > - - compatible: For Meson GX SoCs, must be "amlogic,meson-gx-ao-secure", "syscon"
>
> I have a hard time find how to define "syscon" here, if I put syscon in the compatible
> it gets matched on other bindings and I get lot of warnings.
>
> How should I model it ?

You have to add a custom 'select' key that doesn't include 'syscon'.
There should be a few examples in the tree.

Rob

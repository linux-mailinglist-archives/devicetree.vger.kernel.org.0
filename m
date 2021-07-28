Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E290E3D8675
	for <lists+devicetree@lfdr.de>; Wed, 28 Jul 2021 06:12:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229652AbhG1EMC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Jul 2021 00:12:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbhG1EMB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Jul 2021 00:12:01 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3AEBC061764
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:12:00 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id r6so1375642ioj.8
        for <devicetree@vger.kernel.org>; Tue, 27 Jul 2021 21:12:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jkbI7zztV8NxbL6OAK1GEXMLTdKA0PoGPYCzxGouH9A=;
        b=dXYscuKA9USWzwsEiMBwy5bFn/At9FyANB2VnftNc1X/3U6Q7IE+ADanciy9xfye3r
         dagomBuKngzGJSGumLSkQdm8bYNno6ki1QW7KUxpxYe9jxJOcDIxvRU7EpP8S5E00c2/
         pXE/MXTifhLK7UKGySp+fdKyCMkGBXoCzF4BQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jkbI7zztV8NxbL6OAK1GEXMLTdKA0PoGPYCzxGouH9A=;
        b=ooV8HlMcMeRbDtqPvWHSdAnRXsR4w+bJEnMBppQ7tmiygXssN0b5ZBJ9JRfdjy65jR
         U4Iu6VHj80XvePn/j/rMtoFa5+iwcbnIpaEk3wiEDzftazksCo+rX+o6yAmpcVvJ0cDv
         m88IzJ4+5LezkNiFi1blzJE62VJ2LDMmyCrOP6JpQvbAvjyaCtD0eo9wbVxQK0nUuSV1
         qErYbvGNynUDmZRYRO3S3dGY2qraskeXiA30rie5mDL8tH6XnodivvotbKjSPl0fNcGU
         34ZaqJNhM0NHf5rqeHnvR91yWbcbAeX+IbG7yw84/jhhoQJ7oYJfU6oxUfisj9cJkre8
         z9eA==
X-Gm-Message-State: AOAM5322vTjCIYLpg48Qy4B5ggeotgAuegj3EPtfcRUqy0JheyyRXlMw
        0RALUg0Q3ojyKr58eIgPL1w9DM36qFz01+l4/aLZ7w==
X-Google-Smtp-Source: ABdhPJwZURagtlb/Es05dXEFrkQMdNvFOAO3Y0xE8fnLEijoUW7gGe8ePUB+PSUfm3tmzaT/PUEwnpmW7dLCcUiGvtg=
X-Received: by 2002:a02:6946:: with SMTP id e67mr24142969jac.4.1627445519987;
 Tue, 27 Jul 2021 21:11:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210727110232.2503763-1-hsinyi@chromium.org> <20210727110232.2503763-3-hsinyi@chromium.org>
 <1627410395.874547.3210653.nullmailer@robh.at.kernel.org>
In-Reply-To: <1627410395.874547.3210653.nullmailer@robh.at.kernel.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 28 Jul 2021 12:11:34 +0800
Message-ID: <CAJMQK-jii-qqzG8Myn2svn+hBS+s+0YZLO1Gx=Co23gzd7FUgA@mail.gmail.com>
Subject: Re: [PATCH 3/3] dt-bindings: mediatek: convert pinctrl to yaml
To:     Rob Herring <robh@kernel.org>
Cc:     Enric Balletbo Serra <eballetbo@gmail.com>,
        Andy Teng <andy.teng@mediatek.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>, linux-gpio@vger.kernel.org,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Devicetree List <devicetree@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        lkml <linux-kernel@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sean Wang <sean.wang@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jul 28, 2021 at 2:26 AM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, 27 Jul 2021 19:02:32 +0800, Hsin-Yi Wang wrote:
> > Convert mt65xx, mt6796, mt7622, mt8183 bindings to yaml.
> >
> > Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> > ---
> >  .../pinctrl/mediatek,mt65xx-pinctrl.yaml      | 202 +++++++
> >  .../pinctrl/mediatek,mt6797-pinctrl.yaml      | 175 ++++++
> >  .../pinctrl/mediatek,mt7622-pinctrl.yaml      | 537 ++++++++++++++++++
> >  .../pinctrl/mediatek,mt8183-pinctrl.yaml      | 230 ++++++++
> >  .../bindings/pinctrl/pinctrl-mt65xx.txt       | 156 -----
> >  .../bindings/pinctrl/pinctrl-mt6797.txt       |  83 ---
> >  .../bindings/pinctrl/pinctrl-mt7622.txt       | 490 ----------------
> >  .../bindings/pinctrl/pinctrl-mt8183.txt       | 132 -----
> >  8 files changed, 1144 insertions(+), 861 deletions(-)
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt65xx-pinctrl.yaml
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt6797-pinctrl.yaml
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt7622-pinctrl.yaml
> >  create mode 100644 Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.yaml
> >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-mt65xx.txt
> >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-mt6797.txt
> >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-mt7622.txt
> >  delete mode 100644 Documentation/devicetree/bindings/pinctrl/pinctrl-mt8183.txt
> >
>
> My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> on your patch (DT_CHECKER_FLAGS is new in v5.13):
>
> yamllint warnings/errors:
>
> dtschema/dtc warnings/errors:
> Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.example.dts:21:18: fatal error: dt-bindings/pinctrl/mt8183-pinfunc.h: No such file or directory
>    21 |         #include <dt-bindings/pinctrl/mt8183-pinfunc.h>
>       |                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> compilation terminated.
> make[1]: *** [scripts/Makefile.lib:380: Documentation/devicetree/bindings/pinctrl/mediatek,mt8183-pinctrl.example.dt.yaml] Error 1
> make[1]: *** Waiting for unfinished jobs....
> make: *** [Makefile:1418: dt_binding_check] Error 2
> \ndoc reference errors (make refcheckdocs):
> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/pinctrl/pinctrl-mt65xx.txt
> Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/pinctrl/pinctrl-mt7622.txt
> MAINTAINERS: Documentation/devicetree/bindings/pinctrl/pinctrl-mt65xx.txt
> MAINTAINERS: Documentation/devicetree/bindings/pinctrl/pinctrl-mt7622.txt
>
> See https://patchwork.ozlabs.org/patch/1510444
>
> This check can fail if there are any dependencies. The base for a patch
> series is generally the most recent rc1.
>
This patch is dependent on
https://patchwork.kernel.org/project/linux-mediatek/patch/20210727110232.2503763-2-hsinyi@chromium.org/
("arm: dts: mt8183: Move pinfunc to include/dt-bindings/pinctrl")

> If you already ran 'make dt_binding_check' and didn't see the above
> error(s), then make sure 'yamllint' is installed and dt-schema is up to
> date:
>
> pip3 install dtschema --upgrade
>
> Please check and re-submit.
>

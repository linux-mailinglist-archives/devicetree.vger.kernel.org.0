Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D3674353DC
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 21:34:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231281AbhJTTgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 15:36:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37760 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230268AbhJTTgY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 15:36:24 -0400
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2548C06161C
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 12:34:09 -0700 (PDT)
Received: by mail-wm1-x32a.google.com with SMTP id a20-20020a1c7f14000000b003231d13ee3cso746003wmd.3
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 12:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=NvPAjwt7fyzI4iyzhah+QCTodceAQRPvH3A75BnZsTo=;
        b=g9C4Q+FGe3RhcO39LAR/2C5riQT1MS5idA1Uc0WW9dHdFwfMJt+c8S5Pv0riiYuF0v
         oF4yMSjmw/c9rRlFKJHX4k7cDyVCYhbux98pyMOlpt4NGGGmRk3uXPr2IWDXEG1mDXQ1
         Nmj/f1MCO+cIPu0+w/5TYk8pYgncEcnXaSllD4fhgIKkr2JHPVyVCRStqNanIfizGFnS
         J8Rpis0dSyVJm3XykDBu6PJFasTpxI/TW7uS9OWvvR2J69YLuVLA29Y0AGHU1Ub4j4eM
         hPZ21LJ90PznprSNpDxa0atqZV/ZYPfMu715MFGAH8X8v1GnnneYd/6BRQMB6iwsPyQN
         HgaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=NvPAjwt7fyzI4iyzhah+QCTodceAQRPvH3A75BnZsTo=;
        b=3wpotearublopRFKFb6mF1k59o26iIJ2lGuXKbZqgxZzwHX1bcK41Y3NYixiJ8GZPp
         VrSq27Oc4Ew0+niKtp5IVzjrzor+oCQbigc7udPKjcUqrWGATUGTsfw9PmnQdWWtBKOL
         79JFjUMvA01Tvz51GgDUvvs9l0vZW1CjlADL1HEACjKCC1X5FQ9634HRlEidBlPixHam
         ZQcihbttnirNExGkwGtnggacwYvo/n/t/i/oenmdIqTmr64wi9Pz0uZGsUgahILjBz7W
         nrtl9I0T2dnawgGKWKD3UxftRVrMWvQTdg9sDa/yxErHGW4z1LUyyeFQr1lX+oLXRKfM
         HXRw==
X-Gm-Message-State: AOAM531RS3PLl2wGL6S277xcAjhpim86AYsbpWNEwSCgvWhC+oRcnHcN
        TdVwTnHiOYfhI16WTdjA272Hvw==
X-Google-Smtp-Source: ABdhPJxhXGVW++4V0sz2hvab4LJBAF8DPOIn0OjMGV74GJEYevwnJeXR6UCwTqgf0uxJqVNxHNIGWw==
X-Received: by 2002:a05:600c:2905:: with SMTP id i5mr1313497wmd.159.1634758448562;
        Wed, 20 Oct 2021 12:34:08 -0700 (PDT)
Received: from blmsp ([2a02:2454:3e6:c900:5142:5fbb:5821:5dc3])
        by smtp.gmail.com with ESMTPSA id t1sm3655328wre.32.2021.10.20.12.34.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 12:34:08 -0700 (PDT)
Date:   Wed, 20 Oct 2021 21:34:07 +0200
From:   Markus Schneider-Pargmann <msp@baylibre.com>
To:     Rob Herring <robh@kernel.org>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
Message-ID: <20211020193407.meektqms4psltg34@blmsp>
References: <20211011094624.3416029-1-msp@baylibre.com>
 <20211011094624.3416029-3-msp@baylibre.com>
 <YWTaJOXGgF2bHznv@robh.at.kernel.org>
 <20211018141908.fuevv2m66fw3xg36@blmsp>
 <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Mon, Oct 18, 2021 at 02:38:33PM -0500, Rob Herring wrote:
> On Mon, Oct 18, 2021 at 9:19 AM Markus Schneider-Pargmann
> <msp@baylibre.com> wrote:
> >
> > Hi Rob,
> >
> > On Mon, Oct 11, 2021 at 07:43:16PM -0500, Rob Herring wrote:
> > > On Mon, Oct 11, 2021 at 11:46:19AM +0200, Markus Schneider-Pargmann wrote:
> > > > This controller is present on several mediatek hardware. Currently
> > > > mt8195 and mt8395 have this controller without a functional difference,
> > > > so only one compatible field is added.
> > > >
> > > > The controller can have two forms, as a normal display port and as an
> > > > embedded display port.
> > > >
> > > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > > ---
> > > >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> > > >  1 file changed, 89 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > > new file mode 100644
> > > > index 000000000000..f7a35962c23b
> > > > --- /dev/null
> > > > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > > @@ -0,0 +1,89 @@
> > > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > > +%YAML 1.2
> > > > +---
> > > > +$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> > > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > > +
> > > > +title: Mediatek Display Port Controller
> > > > +
> > > > +maintainers:
> > > > +  - CK Hu <ck.hu@mediatek.com>
> > > > +  - Jitao shi <jitao.shi@mediatek.com>
> > > > +
> > > > +description: |
> > > > +  Device tree bindings for the Mediatek (embedded) Display Port controller
> > > > +  present on some Mediatek SoCs.
> > > > +
> > > > +properties:
> > > > +  compatible:
> > > > +    enum:
> > > > +      - mediatek,mt8195-edp_tx
> > > > +      - mediatek,mt8195-dp_tx
> > >
> > > Are these blocks different?
> >
> > Good point, the registers of these blocks are described in its own
> > chapter each. Also I do need to distinguish between both in the driver.
> > Would you suggest making this distinction differently or keep it as two
> > compatibles?
> 
> If the registers are all the same, then it should be the same
> compatible. If you still need to distinguish, then you should have a
> panel or connector node that will let you do that.

Thank you. Good idea to check with the connector node, I have changed it
as you suggested.

> 
> Also, s/_/-/ in the compatible string.

Done.

Thanks,
Markus

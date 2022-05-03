Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ED1545183E5
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 14:03:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234558AbiECMGx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 08:06:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232033AbiECMGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 08:06:51 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDFCD3134B
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 05:03:18 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id n18so14761779plg.5
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 05:03:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=FAu8c+I73fg5KenFJ98NzZ9OicDW8bebn+wllxjCG1E=;
        b=upghBDfCvCfS7iYO8pSvu7t8unu4twKivp1ctTkclyq+JT6/1Nn4M2ScumgWd2bGdi
         meBP8abuc0ekEDKvWtCsV7M8MtKQxcJuEy9ZroKBJTLuxP97Yr9aMNhPMJmGWHJXm/vT
         clShmVmUxaQvNlWovgxcqQe0PszQRNjMSMCaQ0jrG9ea/Trcs2u/WJiyzzStZ1TusfrH
         uiq0qpE0y4UCT7HXCSd+MCQEx5+TSjrRV0ioiScjB51ePh5PQwx6jXb5kLa+cJC8QVZ2
         fg5icgWxI4ZjA7AjriR/0zKllleaiP93L517b+YEaGJj9FaRoLONytk4XMK7nW7IcEfu
         Ptkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=FAu8c+I73fg5KenFJ98NzZ9OicDW8bebn+wllxjCG1E=;
        b=4zKrKE+TJoJD1msV67hRPhb7qB1XQP+qZ/siwQ2NaFHLMNFSWbZVT8LK52iD/cH8JP
         4GSpW/0BXcVDXPBGO/vJMHO2ciMm8dre/qe3wtVHcVfS0INTzcEqNujqwaeI5bpj6etJ
         tTDBD8JwL6oyJ8YzYccsAH4FG7/mguBfXzN6IJMDRiwhlwCS+jUx1QeY8wzSsjD8iK5x
         M600i2jYkptTWTgILUfHSnxY7aMxY8CDMDIUbuU1komXyU06X4sGgsDTZKwLAULb2PdX
         Ui9uW/EyRGU+27c8gB6dvqMgfS8/TA4IUbE4f0crnoTu5PLvO6LwSQKtNbtxrlapHrxk
         wkFA==
X-Gm-Message-State: AOAM530FW4+G37pec5wwiSlal3pGSg6Mqqq9ZH5QML1sNUT+vT6eHlm3
        vr9Ds7Jh99L8H6lzjwotLAkebjgLc0uAGEyZFO07kg==
X-Google-Smtp-Source: ABdhPJxWhn5VZCO/TgaV9CqU4sqOiFVkFLLPiXSUlkgroHlMnIYcuwG3brGIqnFnP/BqK7l4dbv9U1Fj7YYZ/fuYEOU=
X-Received: by 2002:a17:902:bb8d:b0:156:51a1:3f5a with SMTP id
 m13-20020a170902bb8d00b0015651a13f5amr16302454pls.65.1651579398176; Tue, 03
 May 2022 05:03:18 -0700 (PDT)
MIME-Version: 1.0
References: <20220426193645.244792-1-marex@denx.de> <YnB3008DXAVoUK7j@robh.at.kernel.org>
In-Reply-To: <YnB3008DXAVoUK7j@robh.at.kernel.org>
From:   Robert Foss <robert.foss@linaro.org>
Date:   Tue, 3 May 2022 14:03:07 +0200
Message-ID: <CAG3jFyte+ePjD6aYoFCW-+3sBW37ROcL8cYNuBGq31YpOUbGcA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] dt-bindings: display: bridge: ldb: Implement
 simple Freescale i.MX8MP LDB bridge
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org,
        Sam Ravnborg <sam@ravnborg.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Maxime Ripard <maxime@cerno.tech>, Peng Fan <peng.fan@nxp.com>,
        Robby Cai <robby.cai@nxp.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 3 May 2022 at 02:31, Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 26, 2022 at 09:36:44PM +0200, Marek Vasut wrote:
> > The i.MX8MP contains two syscon registers which are responsible
> > for configuring the on-SoC DPI-to-LVDS serializer. Add DT binding
> > which represents this serializer as a bridge.
> >
> > Acked-by: Sam Ravnborg <sam@ravnborg.org>
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Lucas Stach <l.stach@pengutronix.de>
> > Cc: Maxime Ripard <maxime@cerno.tech>
> > Cc: Peng Fan <peng.fan@nxp.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Robby Cai <robby.cai@nxp.com>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: devicetree@vger.kernel.org
> > To: dri-devel@lists.freedesktop.org
> > ---
> > V2: - Consistently use fsl,imx8mp-ldb as compatible
> >     - Drop items: from compatible:
> >     - Replace minItems with maxItems in clocks:
> >     - Drop quotes from clock-names const: ldb
> >     - Rename syscon to fsl,syscon
> >     - Use generic name of ldb-lvds in example
> > V3: - Add AB from Sam
> >     - Consistently use MX8MP
> > V4: - Rename to fsl-ldb all over the place
> >     - Put the LDB node under media block controller in the example
> > ---
> >  .../bindings/display/bridge/fsl,ldb.yaml      | 92 +++++++++++++++++++
> >  1 file changed, 92 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
>
> A little quick on the applying...

Darnit, you're right.

Marek: Can you supply a new patch with all of the relevant changes?

>
> >
> > diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> > new file mode 100644
> > index 000000000000..77f174eee424
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
> > @@ -0,0 +1,92 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/bridge/fsl,ldb.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Freescale i.MX8MP DPI to LVDS bridge chip
> > +
> > +maintainers:
> > +  - Marek Vasut <marex@denx.de>
> > +
> > +description: |
> > +  The i.MX8MP mediamix contains two registers which are responsible
> > +  for configuring the on-SoC DPI-to-LVDS serializer. This describes
> > +  those registers as bridge within the DT.
>
> This is a subblock of the mediamix? Please add 'reg' for the 2 registers
> even if you use a regmap.
>
> I didn't find a binding for mediamix. You really need the containing
> block binding before a child node.
>
> Rob

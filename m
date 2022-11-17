Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5AA5862DF69
	for <lists+devicetree@lfdr.de>; Thu, 17 Nov 2022 16:14:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240131AbiKQPOV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Nov 2022 10:14:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56060 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240478AbiKQPOG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Nov 2022 10:14:06 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 48DA682203
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 07:10:06 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 8655BB81FAA
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 15:10:05 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 50068C43470
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 15:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1668697804;
        bh=a8oMZAOc9h7O6TsnWfrrI7D4nYK+vWS6IWAXZdvkYzM=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=gQJMfegqtvoVKsBm4BszG7WjhanJAdAYNHPrq/Usfmqbi8YHGszC8MZytPxIQ+NL9
         vM+FuTirPUwyn1qzsbzmFwonAcMDPc4ZO/9adjNIOx22XCWAgvgAnLAFTASyzYhLEL
         DE18Lt4OF9xKgmaLfI8JidddDALtQJCj0Els3J0SZSESshOPptR9q1p569Re6pDNaX
         SzE9N+3pSyrtTH2upCYuZcUd/YeLvVHMjl4kG5j4rEv0XrmDKylKqzcnT7rPNKeiJT
         PoltCrGLvZI+LXNC0IyRFekN6rp2B/kijD1lTsAYp0p3qdz5SrK2N/dSf6w4cm+Dlt
         em6g5doSEVB8A==
Received: by mail-lj1-f176.google.com with SMTP id c25so3068080ljr.8
        for <devicetree@vger.kernel.org>; Thu, 17 Nov 2022 07:10:04 -0800 (PST)
X-Gm-Message-State: ANoB5pnkyIKR5oufzcrvd1oQfX4J4tnRuNuXQa1BvTpqtcAZL1Dve1Uq
        x6ZD1d87JvukRG/NlZtF1/mPSJrZTqNh2zGlHg==
X-Google-Smtp-Source: AA0mqf6Lz40qWFVeozaj1msGanV43R9/mSdkVIGkUpBQAqbFtT5C7+OwGjSd4nDyemjdt6z0jrkrrad9ufaughNIcO0=
X-Received: by 2002:a05:651c:333:b0:275:1343:df71 with SMTP id
 b19-20020a05651c033300b002751343df71mr1231501ljp.215.1668697802340; Thu, 17
 Nov 2022 07:10:02 -0800 (PST)
MIME-Version: 1.0
References: <20221110094945.191100-1-u.kleine-koenig@pengutronix.de> <20221116174921.GA25509@pengutronix.de>
In-Reply-To: <20221116174921.GA25509@pengutronix.de>
From:   Rob Herring <robh+dt@kernel.org>
Date:   Thu, 17 Nov 2022 09:09:53 -0600
X-Gmail-Original-Message-ID: <CAL_JsqL-0G4p_V2+ZNbezbE5V25yvUfcerJAseDODNNP8YSdaA@mail.gmail.com>
Message-ID: <CAL_JsqL-0G4p_V2+ZNbezbE5V25yvUfcerJAseDODNNP8YSdaA@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: display: Convert fsl,imx-fb.txt to dt-schema
To:     Philipp Zabel <p.zabel@pengutronix.de>
Cc:     =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= 
        <u.kleine-koenig@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 16, 2022 at 11:49 AM Philipp Zabel <p.zabel@pengutronix.de> wro=
te:
>
> On Thu, Nov 10, 2022 at 10:49:45AM +0100, Uwe Kleine-K=C3=B6nig wrote:
> [...]
> > new file mode 100644
> > index 000000000000..c3cf6f92a766
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
> > @@ -0,0 +1,110 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/display/imx/fsl,imx-lcdc.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Freescale i.MX LCD Controller, found on i.MX1, i.MX21, i.MX25 a=
nd i.MX27
> > +
> > +maintainers:
> > +  - Sascha Hauer <s.hauer@pengutronix.de>
> > +  - Pengutronix Kernel Team <kernel@pengutronix.de>
> > +
> > +properties:
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - fsl,imx1-fb
> > +              - fsl,imx21-fb
>
> Are the items/enum keywords superfluous here? Couldn't this just be two
>
>          - const: fsl,imx1-fb
>          - const: fsl,imx21-fb
>
> entries?

mx1 is backwards compatible with mx21? No.

Rob

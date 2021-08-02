Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5792D3DD4CB
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 13:39:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233477AbhHBLj0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 07:39:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34792 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233463AbhHBLj0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 07:39:26 -0400
Received: from mail-ot1-x329.google.com (mail-ot1-x329.google.com [IPv6:2607:f8b0:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E48D8C06175F
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 04:39:15 -0700 (PDT)
Received: by mail-ot1-x329.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so17235037oti.0
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 04:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3+sKrwJNmqOkH/7jIlxqm3Trw4smejYNu5cq6Y+HzGQ=;
        b=fua520k1mn4N/QRE3utaYIKhZoZofSivrg0DJJyl/dbpVNAOpGqCAtII3NuxE3XVF4
         Hefxa2/KLvGOlPmHIEz1GoeYSHvLXOv2+VYhp9y8eqi/PU4lGqUbZun/bmI2BZe6w7B6
         G79TVqXJF9jayDJR+R+6BnFc/i57dvormDRiXlMY/bORtKbtl/Dnn9H9KZY3sNashysN
         r6N520lcMJWVObD59ixA5yk8ihtpZKlqEgJfDdRZ5CAQKghTt0b+ryzUpgZhWE5G5ile
         PIK4wOJzIc3FSY/gp36cR9bwSSPOa2ctf+gkC5ZB7AB2LI5tTK3GKESt3/RFbrSMne1d
         2FJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3+sKrwJNmqOkH/7jIlxqm3Trw4smejYNu5cq6Y+HzGQ=;
        b=aa0yKHnHzRAMigFvTpqnqovj5Xr4Qkx1cAP1FJE1pN7LIwsxBJ81WQSzDbKidigJow
         W4FbKkSH3heX+HywkUGlXgNWzBD4lf7rGTJX0JlG3tS5FKeeGK8SsZmyGbmlti02rN/K
         /yBpGdSF3rnNq5myxLurFYMuBQQF+o5Bt81c4V/JC1hWCN5WXYKUF8TY2APJm5QGRa0+
         pKtUSVglymPSQ1K1JuFLAqkBeQCOt44nSdNJtFNbTZPiLAyym8omZFZGpezsiQJWhCQO
         Y4XmrRNJ0m/vaRZh5Eqj/1Ge23JBvvRKTn9u8WLqr3F7ZPtUtqXvTj4uVLTiKVcjKSp9
         P9pw==
X-Gm-Message-State: AOAM531TpXwMOeuRYxES8ZL8rIUSPNQVzSu/TFX4q4OsvFJ/NUZQcO1S
        HPk69/Qpahv8brwIxDfN/fP+LwAUuh0Fj++wqZg=
X-Google-Smtp-Source: ABdhPJzVVmpDiV+xc3SpG8E+wOTAi55RnJBHzsO4PgG72xMQwHdwLFU3M5xG3iXE+7XJOX8XPE2LPfddG4VqW8HdZPo=
X-Received: by 2002:a05:6830:411d:: with SMTP id w29mr11410799ott.118.1627904355383;
 Mon, 02 Aug 2021 04:39:15 -0700 (PDT)
MIME-Version: 1.0
References: <20210715082536.1882077-1-aisheng.dong@nxp.com>
 <20210715082536.1882077-7-aisheng.dong@nxp.com> <1626357250.406964.968555.nullmailer@robh.at.kernel.org>
 <CAA+hA=TsEfz9Zo3wfsf6ZXnYHtfv5AbGNqVQEMn0q0bh1TOQDQ@mail.gmail.com> <CAL_JsqLZLK75pj_HQDNY1CtHuKGRx-u36eDOyr8ObkR==GW6gQ@mail.gmail.com>
In-Reply-To: <CAL_JsqLZLK75pj_HQDNY1CtHuKGRx-u36eDOyr8ObkR==GW6gQ@mail.gmail.com>
From:   Dong Aisheng <dongas86@gmail.com>
Date:   Mon, 2 Aug 2021 19:36:54 +0800
Message-ID: <CAA+hA=SD8W2tp4VVrK9JkAVrWGCddZd+7UAchDh6sUu+uMLuqQ@mail.gmail.com>
Subject: Re: [PATCH 6/7] dt-bindings: soc: imx: add missing iomuxc gpr binding
To:     Rob Herring <robh@kernel.org>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        dl-linux-imx <linux-imx@nxp.com>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 29, 2021 at 1:30 AM Rob Herring <robh@kernel.org> wrote:
>
> On Thu, Jul 15, 2021 at 9:30 PM Dong Aisheng <dongas86@gmail.com> wrote:
> >
> > Hi Rob,
> >
> > On Thu, Jul 15, 2021 at 9:54 PM Rob Herring <robh@kernel.org> wrote:
> > >
> > > On Thu, 15 Jul 2021 16:25:35 +0800, Dong Aisheng wrote:
> > > > The General Purpose Registers IOMUXC_GPR are used to select operating
> > > > modes for general features in the SoC, usually not related to the IOMUX
> > > > itself.
> > > >
> > > > This binding doc is generated based on the exist usage in dts
> > > > in order to fix dt schema check failures.
> > > >
> > > > Cc: Rob Herring <robh+dt@kernel.org>
> > > > Cc: Shawn Guo <shawnguo@kernel.org>
> > > > Signed-off-by: Dong Aisheng <aisheng.dong@nxp.com>
> > > > ---
> > > >  .../devicetree/bindings/soc/imx/fsl,gpr.yaml  | 69 +++++++++++++++++++
> > > >  1 file changed, 69 insertions(+)
> > > >  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> > > >
> > >
> > > My bot found errors running 'make DT_CHECKER_FLAGS=-m dt_binding_check'
> > > on your patch (DT_CHECKER_FLAGS is new in v5.13):
> > >
> > > yamllint warnings/errors:
> > >
> > > dtschema/dtc warnings/errors:
> > > /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/mfd/syscon.example.dt.yaml: iomuxc-gpr@20e0000: compatible: 'oneOf' conditional failed, one must be fixed:
> > >         ['fsl,imx6q-iomuxc-gpr', 'syscon'] is too short
> > >         'fsl,imx53-iomuxc-gpr' was expected
> > >         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx6sl-iomuxc-gpr', 'fsl,imx6sll-iomuxc-gpr', 'fsl,imx6sx-iomuxc-gpr', 'fsl,imx6ul-iomuxc-gpr', 'fsl,imx7d-iomuxc-gpr']
> > >         'fsl,imx7d-iomuxc-gpr' was expected
> > >         'fsl,imx8mq-iomuxc-gpr' was expected
> > >         'fsl,imx6q-iomuxc-gpr' is not one of ['fsl,imx8mm-iomuxc-gpr', 'fsl,imx8mn-iomuxc-gpr', 'fsl,imx8mp-iomuxc-gpr']
> > >         'fsl,imx6q-iomuxc-gpr' was expected
> > >         From schema: /builds/robherring/linux-dt-review/Documentation/devicetree/bindings/soc/imx/fsl,gpr.yaml
> > > \ndoc reference errors (make refcheckdocs):
> > > Warning: MAINTAINERS references a file that doesn't exist: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> > > MAINTAINERS: Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
> >
> > The example in syscon.yaml is invalid and needs change as follows.
> > However, should I do it in a separate patch cause they're changes for
> > two irrelevant binding
> > files or merge into this one ?
>
> Separate patch.
>
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > index f14ae6da0068..11eae4c5848e 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > @@ -90,7 +90,7 @@ examples:
> >
> >    - |
> >      gpr: iomuxc-gpr@20e0000 {
> > -        compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
> > +        compatible = "fsl,imx6q-iomuxc-gpr", "syscon", "mfd";
>
> I assume you mean 'simple-mfd'?
>
> Adding that means this example doesn't really even match the
> syscon.yaml, so I'd just drop the example.

Will drop, thanks

Regards
Aisheng

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 315B9A593A
	for <lists+devicetree@lfdr.de>; Mon,  2 Sep 2019 16:24:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730947AbfIBOY2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Sep 2019 10:24:28 -0400
Received: from mail.kernel.org ([198.145.29.99]:40958 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1730872AbfIBOY2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 2 Sep 2019 10:24:28 -0400
Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id C7FD822DBF
        for <devicetree@vger.kernel.org>; Mon,  2 Sep 2019 14:24:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1567434266;
        bh=B74PQ5o385KMtSFx606GqW7Hji/64H+L+7SO8wzLMGg=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=eG5ApBOQMdx43szlZ3hRfFK3JhjJnHU1h9N6fzJZ5gSFAGo+DUwYCQAzqPRtkeL/Z
         egjx2sk3s2NgyQuuh7m09MlzWLOaXz87O/ehHQQMF+Ukgb9LnuLBl275xwetBiplq0
         SJsZX23mHLern4Z4WajFyMqxkRO1LaFCSNuEgAlY=
Received: by mail-qk1-f175.google.com with SMTP id d26so5042920qkk.2
        for <devicetree@vger.kernel.org>; Mon, 02 Sep 2019 07:24:26 -0700 (PDT)
X-Gm-Message-State: APjAAAWJszJvHEsNEh4divOavvRVkeJwL95/joYwWBrm0HrmAgaxHDc1
        MACIoOtnnXrjpv9vYbD+ERADRouuH+bT+NVoaA==
X-Google-Smtp-Source: APXvYqxVgrKxDU9AKZPVkiZjyBgcLWuDoOAhBqYHYxpm22jPeoe3HQJTqnHt0BhMxQu7W0O02Nt2wgbZXPnLf8rZcYc=
X-Received: by 2002:a37:682:: with SMTP id 124mr28156982qkg.393.1567434265875;
 Mon, 02 Sep 2019 07:24:25 -0700 (PDT)
MIME-Version: 1.0
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
 <20190830210607.22644-2-miquel.raynal@bootlin.com> <20190902044231.GA17348@bogus>
 <20190902155113.40b00fa0@xps13>
In-Reply-To: <20190902155113.40b00fa0@xps13>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 2 Sep 2019 15:24:13 +0100
X-Gmail-Original-Message-ID: <CAL_JsqJJ31wfXnLGSp5Hzkb2L7VeDoOki+eBqUkm2LWEtsA58A@mail.gmail.com>
Message-ID: <CAL_JsqJJ31wfXnLGSp5Hzkb2L7VeDoOki+eBqUkm2LWEtsA58A@mail.gmail.com>
Subject: Re: [PATCH 2/3] dt-bindings: sound: Add Xilinx logicPD-I2S FPGA IP bindings
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, Michal Simek <michal.simek@xilinx.com>,
        Linux-ALSA <alsa-devel@alsa-project.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 2, 2019 at 2:51 PM Miquel Raynal <miquel.raynal@bootlin.com> wrote:
>
> Hi Rob,
>
> Thanks for the review, one question below.
>
> Rob Herring <robh@kernel.org> wrote on Mon, 02 Sep 2019 14:39:09 +0100:
>
> > On Fri, Aug 30, 2019 at 11:06:06PM +0200, Miquel Raynal wrote:
> > > Document the logicPD I2S FPGA block bindings in yaml.
> > >
> > > Syntax verified with dt-doc-validate.
> > >
> > > Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> > > ---
> > >  .../bindings/sound/xlnx,logicpd-i2s.yaml      | 57 +++++++++++++++++++
> > >  1 file changed, 57 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > > new file mode 100644
> > > index 000000000000..cbff641af199
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
> > > @@ -0,0 +1,57 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/sound/xlnx,logicpd-i2s.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Device-Tree bindings for Xilinx logicPD I2S FPGA block
> > > +
> > > +maintainers:
> > > +  - Miquel Raynal <miquel.raynal@bootlin.com>
> > > +
> > > +description: |
> > > +  The IP supports I2S playback/capture audio. It acts as a slave and
> > > +  clocks should come from the codec. It only supports two channels and
> > > +  S16_LE format.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: xlnx,logicpd-i2s
> > > +
> > > +  reg:
> > > +    maxItems: 1
> > > +    description:
> > > +      Base address and size of the IP core instance.
> > > +
> > > +  interrupts:
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +    items:
> > > +      - description: tx interrupt
> > > +      - description: rx interrupt
> > > +    description:
> > > +      Either the Tx interruption or the Rx interruption or both.
> >
> > The schema says either tx or both. Doesn't really matter here as it's
> > just numbers.
>
> I see , I'll drop the 'items' entry.
>
> >
> > > +
> > > +  interrupt-names:
> > > +    minItems: 1
> > > +    maxItems: 2
> > > +    items:
> > > +      - const: tx
> > > +      - const: rx
> >
> > But here it does matter.
> >
> > The easiest way to express this is:
> >
> > oneOf:
> >   - items:
> >       - enum: [ tx, rx ]
> >   - items:
> >       - const: tx
> >       - const: rx
> >
>
> Does this enforce an order? (I don't know if it matters, though, but in
> the bellow example I put the Rx interrupt first).

Yes. It does matter and should be defined what the order it.

Rob

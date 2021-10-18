Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 808524327CB
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 21:38:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232286AbhJRTk7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 15:40:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:57694 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231775AbhJRTk6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 18 Oct 2021 15:40:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 48DFB610C8
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 19:38:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1634585927;
        bh=+lafo2T6te+gWjhQBzL22he7ufSIIGdZoxOzENsqwDw=;
        h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
        b=ZAbJC+3YFBwikRp43M/tzurAVqb2uY7XJhd+DUzEDO7ZEy5Ymsb4iCqVf2HK6FwuY
         v86keMz73CdCCJHfTCo87zi10rE0CBcbYuYPCNv24htEF0lMhQ/9NnH2zS2xgRyMh7
         FStV6UstqsxPjMb9s8zBGiRsYk+ibI5jDUDVpCIpI/djhpfzLT5tewYKDvUzHoUk13
         Ejq2Lz0TCTCmx4ujcNw8DjXJNr4K5uQqiOhtFlSMub/BmiXQKM/KNNvZzFjdkjCbwf
         WaiPs6TkViVD7Ms7XAokpwH7G8jE3eXZzRkF2cbclYEwsjMEn+LMz11sEyeBMPJOXQ
         fa0bvxElrFaew==
Received: by mail-ed1-f46.google.com with SMTP id d9so3631186edh.5
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 12:38:47 -0700 (PDT)
X-Gm-Message-State: AOAM533naEJIa5N2VHOH2npFG20NqR1F41yf9BLyqZjbQvu/siy9D0aE
        mhqEzb9GNZhByFUL2bohkv+B0UcptCy4anxQcw==
X-Google-Smtp-Source: ABdhPJzGdFAfWjzAMWuADPM5EPYzjfE9/sFvO9OlTDhrOb2mbL6H+KG2sXfvp8vOCsyn0d1W4fqaY0LBzO34Ejzirnc=
X-Received: by 2002:a05:6402:1778:: with SMTP id da24mr46194930edb.318.1634585925034;
 Mon, 18 Oct 2021 12:38:45 -0700 (PDT)
MIME-Version: 1.0
References: <20211011094624.3416029-1-msp@baylibre.com> <20211011094624.3416029-3-msp@baylibre.com>
 <YWTaJOXGgF2bHznv@robh.at.kernel.org> <20211018141908.fuevv2m66fw3xg36@blmsp>
In-Reply-To: <20211018141908.fuevv2m66fw3xg36@blmsp>
From:   Rob Herring <robh@kernel.org>
Date:   Mon, 18 Oct 2021 14:38:33 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
Message-ID: <CAL_Jsq+QwEPNEztD+yg-UO8gWf_X=E-n0_HMYJsGxteZAZparg@mail.gmail.com>
Subject: Re: [PATCH v4 2/7] dt-bindings: mediatek,dp: Add Display Port binding
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Oct 18, 2021 at 9:19 AM Markus Schneider-Pargmann
<msp@baylibre.com> wrote:
>
> Hi Rob,
>
> On Mon, Oct 11, 2021 at 07:43:16PM -0500, Rob Herring wrote:
> > On Mon, Oct 11, 2021 at 11:46:19AM +0200, Markus Schneider-Pargmann wrote:
> > > This controller is present on several mediatek hardware. Currently
> > > mt8195 and mt8395 have this controller without a functional difference,
> > > so only one compatible field is added.
> > >
> > > The controller can have two forms, as a normal display port and as an
> > > embedded display port.
> > >
> > > Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> > > ---
> > >  .../display/mediatek/mediatek,dp.yaml         | 89 +++++++++++++++++++
> > >  1 file changed, 89 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > new file mode 100644
> > > index 000000000000..f7a35962c23b
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,dp.yaml
> > > @@ -0,0 +1,89 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/display/mediatek/mediatek,dp.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Mediatek Display Port Controller
> > > +
> > > +maintainers:
> > > +  - CK Hu <ck.hu@mediatek.com>
> > > +  - Jitao shi <jitao.shi@mediatek.com>
> > > +
> > > +description: |
> > > +  Device tree bindings for the Mediatek (embedded) Display Port controller
> > > +  present on some Mediatek SoCs.
> > > +
> > > +properties:
> > > +  compatible:
> > > +    enum:
> > > +      - mediatek,mt8195-edp_tx
> > > +      - mediatek,mt8195-dp_tx
> >
> > Are these blocks different?
>
> Good point, the registers of these blocks are described in its own
> chapter each. Also I do need to distinguish between both in the driver.
> Would you suggest making this distinction differently or keep it as two
> compatibles?

If the registers are all the same, then it should be the same
compatible. If you still need to distinguish, then you should have a
panel or connector node that will let you do that.

Also, s/_/-/ in the compatible string.

Rob

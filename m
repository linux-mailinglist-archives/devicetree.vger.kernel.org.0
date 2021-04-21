Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B39143662EA
	for <lists+devicetree@lfdr.de>; Wed, 21 Apr 2021 02:11:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233879AbhDUAMI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 20:12:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233752AbhDUAMI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 20:12:08 -0400
Received: from mail-ua1-x931.google.com (mail-ua1-x931.google.com [IPv6:2607:f8b0:4864:20::931])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43C6EC06174A
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 17:11:36 -0700 (PDT)
Received: by mail-ua1-x931.google.com with SMTP id c19so3392916uap.5
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 17:11:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Nr8WfPTD0ymzHIbs2kjYSoWUK3mdmT/dSasQxodVNi4=;
        b=GI0ovTiZqm8iMDijT4AKKjtlbOiJDgwVXdcalz+E7xX62mEZJ37VWi/mWslqbVug/r
         HTOUNI+5vJnyoE73eJbkyqOggquJwm2Loj79niLY//q6M1JrIAk+Mn3llXaADlbTjTxk
         gXyqJcylyjURRI7oYreUxNV7uQgdWHUO/ZYeE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Nr8WfPTD0ymzHIbs2kjYSoWUK3mdmT/dSasQxodVNi4=;
        b=dlVGwoUtQIDIdVI4rF4tmxfqD5lSuDBv6whuFmo+pS3PsV/XBknxp59NbE3XFnW5Bs
         Z5DiX0KsIqJltBEMr+YRxdzq1AZI6DyqLh8IpGaUf1EzDm8/icb10SaSR84LuqNZ5JeF
         y4s1XOs60Iyh8U6TtOxHPotuo/9dNbwJC2i1Xqm3CZ3QNYqGILinxwDFYSdpgaBwZrSG
         CChEZ723fms5nIWKVNTFRkPFEMVTT0cHK0AyoHmsllM/u3g9XBQXrZd+K7OobquKqcl7
         gCysud0X7lMpXma9PtSSq0xuU5Qeteqm6EpXU70Xj1JwuukHfDxcY3WDPFFp23u/MLhA
         FNHg==
X-Gm-Message-State: AOAM533DjiensLiytZ1Y6mMOk8Key7L4YHJ8oRj6epUGJKfXXF6v0Ruu
        k87cBxblEUAg8hkeSCNK3G7caZ7OOfOgg87HNrkiow==
X-Google-Smtp-Source: ABdhPJxUAnIDoIjMJ4cqmCiIvJa73yvdSkT6+oLpfc5i3QoBtmDV3PFojekJpmrhUyBafr5ivJ6qVjyvOPNT7jFjNAk=
X-Received: by 2002:ab0:380e:: with SMTP id x14mr15131536uav.27.1618963895533;
 Tue, 20 Apr 2021 17:11:35 -0700 (PDT)
MIME-Version: 1.0
References: <20210126011759.1605641-1-drinkcat@chromium.org>
 <20210126091747.v11.1.Ie74d3355761aab202d4825ac6f66d990bba0130e@changeid> <CAL_Jsq+gWm+94zF1XN2KiRYgAZewiDkCk5B5bhLB=M+-HbD=fA@mail.gmail.com>
In-Reply-To: <CAL_Jsq+gWm+94zF1XN2KiRYgAZewiDkCk5B5bhLB=M+-HbD=fA@mail.gmail.com>
From:   Nicolas Boichat <drinkcat@chromium.org>
Date:   Wed, 21 Apr 2021 08:11:24 +0800
Message-ID: <CANMq1KCNMx4hS02ZFd0NSOwvw3Xaqm13v8aHO6UMP5Nn3_uX-Q@mail.gmail.com>
Subject: Re: [PATCH v11 1/4] dt-bindings: gpu: mali-bifrost: Add Mediatek MT8183
To:     Rob Herring <robh@kernel.org>
Cc:     Steven Price <steven.price@arm.com>,
        Alyssa Rosenzweig <alyssa.rosenzweig@collabora.com>,
        Fei Shao <fshao@chromium.org>,
        Tomeu Vizoso <tomeu.vizoso@collabora.com>,
        "Kristian H. Kristensen" <hoegsberg@chromium.org>,
        Boris Brezillon <boris.brezillon@collabora.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Devicetree List <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 20, 2021 at 9:01 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jan 25, 2021 at 7:18 PM Nicolas Boichat <drinkcat@chromium.org> wrote:
> >
> > Define a compatible string for the Mali Bifrost GPU found in
> > Mediatek's MT8183 SoCs.
> >
> > Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
> > ---
> >
> > Changes in v11:
> >  - binding: power-domain-names not power-domainS-names
> >
> > Changes in v10:
> >  - Fix the binding to make sure sram-supply property can be provided.
> >
> > Changes in v9: None
> > Changes in v8: None
> > Changes in v7: None
> > Changes in v6:
> >  - Rebased, actually tested with recent mesa driver.
> >
> > Changes in v5:
> >  - Rename "2d" power domain to "core2"
> >
> > Changes in v4:
> >  - Add power-domain-names description
> >    (kept Alyssa's reviewed-by as the change is minor)
> >
> > Changes in v3: None
> > Changes in v2: None
> >
> >  .../bindings/gpu/arm,mali-bifrost.yaml        | 28 +++++++++++++++++++
> >  1 file changed, 28 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > index 184492162e7e..3e758f88e2cd 100644
> > --- a/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > +++ b/Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml
> > @@ -17,6 +17,7 @@ properties:
> >      items:
> >        - enum:
> >            - amlogic,meson-g12a-mali
> > +          - mediatek,mt8183-mali
> >            - realtek,rtd1619-mali
> >            - rockchip,px30-mali
> >        - const: arm,mali-bifrost # Mali Bifrost GPU model/revision is fully discoverable
> > @@ -41,6 +42,8 @@ properties:
> >
> >    mali-supply: true
> >
> > +  sram-supply: true
> > +
> >    operating-points-v2: true
> >
> >    power-domains:
> > @@ -87,6 +90,31 @@ allOf:
> >      then:
> >        required:
> >          - resets
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: mediatek,mt8183-mali
> > +    then:
> > +      properties:
> > +        power-domains:
> > +          description:
> > +            List of phandle and PM domain specifier as documented in
> > +            Documentation/devicetree/bindings/power/power_domain.txt
> > +          minItems: 3
> > +          maxItems: 3
>
> This won't work because the top level schema restricts this to 1. The
> top level needs to say:
>
> power-domains:
>   minItems: 1
>   maxItems: 3
>
> And you need just 'minItems: 3' here and 'maxItems: 1' in the else clause.
>
> And drop the description. That's every 'power-domains' property.
>
> > +        power-domain-names:
> > +          items:
> > +            - const: core0
> > +            - const: core1
> > +            - const: core2
>
> Blank line

Thanks, hopefully all fixed in v12.

> > +      required:
> > +        - sram-supply
> > +        - power-domains
> > +        - power-domain-names
> > +    else:
> > +      properties:
> > +        sram-supply: false
> >
> >  examples:
> >    - |
> > --
> > 2.30.0.280.ga3ce27912f-goog
> >

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D48766707
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 10:27:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232959AbjG1I0p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 04:26:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235051AbjG1IZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 04:25:40 -0400
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com [IPv6:2a00:1450:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CD334203
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 01:24:21 -0700 (PDT)
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b9b6e943ebso34845661fa.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 01:24:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1690532660; x=1691137460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nfg1hAFAFOQRB0/caU2cskMNI6q+Xu+UtevR3ZMivJM=;
        b=Vh9YSeCIoQwXiMdNvouVxbJZmT0mZh2Gc4haKgKJA9lGwQ3+sygkU/zwc2EibPipxv
         BsAzSC5mcVJrgOda1VzsKYsAGxfWclLMaHbvnSpJnNtAeawDY57RzK/h5xpBxhR4qMGa
         TT2nuDK9+2LZD+AX4RH9KGU4mTjEkoeu5FV/cABUqIH4op26G32QtU1tNe33/Vgj/W7J
         LCHToWF/FRxzGzCrC46dgQGamdJI+pr3g+E8VVaZEKaYSRSqpzPreZrgtrR5mQop5jNF
         2hpMy9xdQyz55RLghHhtFpJtPD421ZVHQYkLKceiVplpvPVBGcrzb611v5hslZH8J8/Z
         tGiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690532660; x=1691137460;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Nfg1hAFAFOQRB0/caU2cskMNI6q+Xu+UtevR3ZMivJM=;
        b=k5yvrHyPCJH/txZJJGvr0vbCMpW7Q2PPCuvwm0pkdAArpfGoCbxvhjmN/SgzmbLL59
         PShU/YqHFMGJ1M/iHZXgIUFkE1Uy4cUUvyokjxtj43LyPZZSbPtNn763S+Az/fDrEhHL
         GF6JDJddQzQVpLYBsjmYogm2YOCvtzu4TzouFhcsoEfbGtHz888cfc22kA9Z9BByGxIW
         AcjDfEL54k5Sn5ONBicLkX5Ubm3APBsgVMZn+R6vAfb9tppHI5+tvgT+//nSg++QFw/u
         hgvtPViNJnP27jDZEe+/5prPJmc4SxVdZI2sD87Ch81R8BcTEye/azhZ8qVI5AV6+CJf
         i4fg==
X-Gm-Message-State: ABy/qLZudI5ZoIzlNIIv8PTBa+Ul3FK8UE6d1n3TKO/dXK2ryHVtMkaG
        VKYEY2r+l/jVmcceEwtKCWCaaS0t0aronxzW8RKx7g==
X-Google-Smtp-Source: APBJJlGYU8jwqqvJ9ffCI1R5q4AiQUWDzjeBoyDj90vAwEldx3gDn5udCaGtC9veAeFp5TNq+tXGaZB/BOR4iYCbwq0=
X-Received: by 2002:a2e:9b8b:0:b0:2b9:aac2:710e with SMTP id
 z11-20020a2e9b8b000000b002b9aac2710emr765623lji.7.1690532659661; Fri, 28 Jul
 2023 01:24:19 -0700 (PDT)
MIME-Version: 1.0
References: <20230720135125.21240-1-eric.lin@sifive.com> <20230720135125.21240-2-eric.lin@sifive.com>
 <20230720-slept-guru-216e2803061e@spud> <20230728-facedown-husked-9813fa79d9a0@wendy>
In-Reply-To: <20230728-facedown-husked-9813fa79d9a0@wendy>
From:   Eric Lin <eric.lin@sifive.com>
Date:   Fri, 28 Jul 2023 16:24:08 +0800
Message-ID: <CAPqJEFrObCSEXx+qTOp_JY3m5Ano59x=U4fFCBJ32ufLUx+6PA@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] dt-bindings: riscv: sifive: Add SiFive Private L2
 cache controller
To:     Conor Dooley <conor.dooley@microchip.com>
Cc:     Conor Dooley <conor@kernel.org>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org, zong.li@sifive.com,
        greentime.hu@sifive.com, vincent.chen@sifive.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Conor,

On Fri, Jul 28, 2023 at 3:06=E2=80=AFPM Conor Dooley <conor.dooley@microchi=
p.com> wrote:
>
> On Thu, Jul 20, 2023 at 06:10:51PM +0100, Conor Dooley wrote:
> > Hey Eric,
> >
> > On Thu, Jul 20, 2023 at 09:51:19PM +0800, Eric Lin wrote:
> > > This add YAML DT binding documentation for SiFive Private L2
> > > cache controller
> > >
> > > Signed-off-by: Eric Lin <eric.lin@sifive.com>
> > > Reviewed-by: Zong Li <zong.li@sifive.com>
> > > Reviewed-by: Nick Hu <nick.hu@sifive.com>
> > > ---
> > >  .../bindings/cache/sifive,pl2cache.yaml       | 62 +++++++++++++++++=
++
> >
> > btw, your $subject should be "dt-bindings: cache: ...." rather than
> > "riscv: sifive".
> >

OK, I'll fix it in v3.

> > >  1 file changed, 62 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/cache/sifive,pl=
2cache.yaml
> > >
> > > diff --git a/Documentation/devicetree/bindings/cache/sifive,pl2cache.=
yaml b/Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml
> > > new file mode 100644
> > > index 000000000000..ee8356c5eeee
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/cache/sifive,pl2cache.yaml
> > > @@ -0,0 +1,62 @@
> > > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > > +# Copyright (C) 2023 SiFive, Inc.
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/cache/sifive,pl2cache.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: SiFive Private L2 Cache Controller
> > > +
> > > +maintainers:
> > > +  - Greentime Hu  <greentime.hu@sifive.com>
> > > +  - Eric Lin  <eric.lin@sifive.com>
> >
> > There's extra spaces in these lines for some reason.
> >

OK, I'll fix it in v3.

> > > +
> > > +description:
> > > +  The SiFive Private L2 Cache Controller is per core and
> > > +  communicates with both the upstream L1 caches and
> > > +  downstream L3 cache or memory, enabling a high-performance
> > > +  cache subsystem.
> > > +
> > > +allOf:
> > > +  - $ref: /schemas/cache-controller.yaml#
> > > +
> >
> > I'm pretty sure that I pointed out last time around that you need to ad=
d
> > something like in the ccache driver:
> >
> > select:
> >   properties:
> >     compatible:
> >       contains:
> >         enum:
> >           - sifive,ccache0
> >           - sifive,fu540-c000-ccache
> >           - sifive,fu740-c000-ccache
> >
> > otherwise this binding will be used for anything containing "cache" in
> > the dt-binding.
> > For this binding, I think that the following is sufficient:
> >
> > select:
> >   properties:
> >     compatible:
> >       contains:
> >           const: sifive,pl2cache1
> >

Sorry, I misunderstood your meaning.
To be honest, I'm not quite familiar with the usage of the select property.
When should we use the select property?
May I ask, is there a document to detail introduce each property and
its usage like the device-tree spec?
I think it would be very helpful for beginners writing correct
dt-binding and it can save much reviewers time.
Thanks for your kind explanation, I'll fix it in v3.

> > > +properties:
> > > +  compatible:
> > > +    items:
> > > +      - const: sifive,pl2cache1
> > > +      - const: cache
> >
> > You omitted the pl2cache0 from here, that needs to come back! You'll en=
d
> > up with 2 items entries.

OK, it should be as follows, right?

+properties:
+  compatible:
+    oneOf:
+      - items:
+          - const: sifive,pl2cache0
+          - const: sifive,pl2cache1
+          - const: cache
+      - items:
+          - const: sifive,pl2cache1
+          - const: cache

I'll fix it in v3. Thanks.

> > Either way, I can't take this binding without a soc-specific compatible=
,
> > per sifive-blocks-ip-versioning.txt..
>
> Further, "sifive,perfmon-counters" is an undocumented property.
>

OK, I'll add "sifive,perfmon-counters" property in v3.
Thanks for your kind review.

Best regards,
Eric Lin

> Thanks,
> Conor.

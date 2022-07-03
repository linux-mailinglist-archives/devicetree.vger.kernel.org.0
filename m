Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E07564A98
	for <lists+devicetree@lfdr.de>; Mon,  4 Jul 2022 01:34:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbiGCXed (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Jul 2022 19:34:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55498 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229801AbiGCXec (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Jul 2022 19:34:32 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65B6C2BDE
        for <devicetree@vger.kernel.org>; Sun,  3 Jul 2022 16:34:31 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id v14so11066497wra.5
        for <devicetree@vger.kernel.org>; Sun, 03 Jul 2022 16:34:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=OyFcgjkxOJqhlIzFnDHCHXwpu/03I5/j46jEIBLpRDs=;
        b=ZGf1/ulEaAH+Amg0nAPAOaHgkQlWrSyAiM+Prhsz0T1foJ8ANwub12V/A+LPZUwpyO
         Qm2bJO4UpHYZg7LUIzqCLoKmSLA1iOWerLHLIYue3Y9xasf3lEbZSK+omcIIRJXGuxVr
         dCYLiFVUhfWrxHeRw6R99JMHC7wz0qmDb9ns9xkYFmFgriCQmf8gE6exYjDU1Z5W8Gxt
         nsaOCSLdj4x5IwwSCctppOlQxAYUe89IHIFCwNdury+d+RMTwahrW6zqQSdtxAyIvsvb
         KWNYJzDCfG/JfJ+XfX9jo9C9T9y6vhyYinS+v0YDLt9TYsD1zRuK3ATHlJ0ThcSgUJhq
         V7pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=OyFcgjkxOJqhlIzFnDHCHXwpu/03I5/j46jEIBLpRDs=;
        b=Jksxldc5xdcjeFd7H9v+N0tho2SkgajyEas1P/Mdj8sIFEIU0IH/iKmLU3T2OP8PG2
         5y4a/b5Xy3nblQZ6VEq6U7yqziTKuWYEIcWliCCTz/xkIkJGQH9m1WWHq2/a9hmH7Uxy
         zqE2F7wCXWumAYKs8RquTqPdiELWz3xgSvWUzxkDBjKtTJ0N4BzHMdUW7PsViZngIu+O
         PFzgSrKLRPEpz7kidnoIX5SDlxVm/Y/VH0Ypj4grjTNKT1pSE6MpAPIgNsh1IryYSEUs
         XVVxLSR9pkXmFHBqTlKI42VGotMYnNUb6rOtIKCXjOUQm+/y292x7xHOKljeDIdUyrW2
         OZzg==
X-Gm-Message-State: AJIora9LlgaNS0FSHQZtEy0gwYxdhE7NbDEzXZXz+Jex0xeTd5S8uG5c
        RRZOb/xWjF9scA9ZV4zbFrvcZqzK2sTUzmZuOumztw==
X-Google-Smtp-Source: AGRyM1vBzH5KKASiEpCnhYCIMgsVi8wnrjqFtVHwFp235I5ofJlHH0/H1PEpPyz/dhYQNQuA9CG7IsbhiWquYliE1Q0=
X-Received: by 2002:adf:fb08:0:b0:21b:af81:2ffd with SMTP id
 c8-20020adffb08000000b0021baf812ffdmr24574990wrr.685.1656891269995; Sun, 03
 Jul 2022 16:34:29 -0700 (PDT)
MIME-Version: 1.0
References: <20220613195658.5607-1-brad@pensando.io> <20220613195658.5607-8-brad@pensando.io>
 <20220614213212.GA2682090-robh@kernel.org>
In-Reply-To: <20220614213212.GA2682090-robh@kernel.org>
From:   Brad Larson <brad@pensando.io>
Date:   Sun, 3 Jul 2022 16:34:19 -0700
Message-ID: <CAK9rFnwn6xA5VvgnBaDgEw3DTFukj9o_i-degV-F8wAHUmAm5A@mail.gmail.com>
Subject: Re: [PATCH v5 07/15] dt-bindings: reset: amd,pensando-elbasr-reset:
 Add AMD Pensando SR Reset Controller bindings
To:     Rob Herring <robh@kernel.org>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Al Cooper <alcooperx@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>, blarson@amd.com,
        Catalin Marinas <catalin.marinas@arm.com>,
        Gabriel Somlo <gsomlo@gmail.com>, gerg@linux-m68k.org,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Lee Jones <lee.jones@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Pratyush Yadav <p.yadav@ti.com>,
        Randy Dunlap <rdunlap@infradead.org>, samuel@sholland.org,
        Serge Semin <fancer.lancer@gmail.com>,
        suravee.suthikulpanit@amd.com,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Will Deacon <will@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Jun 14, 2022 at 2:32 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Jun 13, 2022 at 12:56:50PM -0700, Brad Larson wrote:
> > From: Brad Larson <blarson@amd.com>
> >
> > Document bindings for AMD Pensando Elba SR Reset Controller
> >
> > Signed-off-by: Brad Larson <blarson@amd.com>
> > ---
> >  .../reset/amd,pensando-elbasr-reset.yaml      | 62 +++++++++++++++++++
> >  1 file changed, 62 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/reset/amd,pensando-elbasr-reset.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/reset/amd,pensando-elbasr-reset.yaml b/Documentation/devicetree/bindings/reset/amd,pensando-elbasr-reset.yaml
> > new file mode 100644
> > index 000000000000..03bb86ebcfd3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/reset/amd,pensando-elbasr-reset.yaml
> > @@ -0,0 +1,62 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/reset/amd,pensando-elbasr-reset.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: AMD Pensando Elba SoC Reset Controller Device Tree Bindings
> > +
> > +maintainers:
> > +  - Brad Larson <blarson@amd.com>
> > +
> > +description: |
> > +  AMD Pensando Elba SoC reset controller driver which supports a resource
> > +  controller connected to the Elba SoC over a SPI bus.  The Elba reset
> > +  controller must be defined as a child node of the Elba SPI bus
> > +  chip-select 0 node.
> > +
> > +  See also:
> > +  - dt-bindings/reset/amd,pensando-elba-reset.h
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^reset-controller@[0-9a-f]+$"
> > +
> > +  compatible:
> > +    const: amd,pensando-elbasr-reset
> > +
> > +  reg:
> > +    const: 0
> > +
> > +  '#reset-cells':
> > +    const: 1
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - '#reset-cells'
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/reset/amd,pensando-elba-reset.h>
> > +    spi0 {
> > +        #address-cells = <1>;
> > +        #size-cells = <0>;
> > +        num-cs = <4>;
> > +
> > +        spi@0 {
>
> 'spi' is reserved for SPI buses. I thought this was an MFD.

Looking at other drivers/mfd files the naming convention could allow
the following, how about this?

spi@0 {
        sr_regs@0 {
                rstc: reset-controller@0 {

        dw_i2c@1 {

        lattice_i2c@2 {

        flash@3 {

Regards,
Brad

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC0C56F7753
	for <lists+devicetree@lfdr.de>; Thu,  4 May 2023 22:45:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230463AbjEDUpp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 May 2023 16:45:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230396AbjEDUpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 May 2023 16:45:23 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58A241249C
        for <devicetree@vger.kernel.org>; Thu,  4 May 2023 13:43:24 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-2ac7707e34fso11672771fa.1
        for <devicetree@vger.kernel.org>; Thu, 04 May 2023 13:43:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20221208.gappssmtp.com; s=20221208; t=1683232944; x=1685824944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oVXjrmmVPaC86MGd9q8K4xTk3JxmLDQjsYVtmH3P8Vg=;
        b=3BjmTk52FjJ4BZ5C66bWTRr52l9evxxc+bMgjqDSaabztt/bHBF+RohZUSzJQatZyb
         claN4a2I75spURPJHBoUn4s7lpu22YrwaqWj4XPKUalZG/Nid9NWJC1zfEpy8CYq0pKH
         ygTPX8WE4pBaJ5R2+0qomdO/dJsWlmMU/PJ8mREJ3up0fwU3/dppDVSQXU/JZm77RbmP
         G0PMoyVs/M6xOZ+ISzCA8dq8QQmq1zh17PDsPyNzgqNsaYTglDYz5d6e2tCy8StqGQF/
         Z6RSBtQ3Ff+CJt8/AX6Qen7TW6lfpZBKrIDZAdoyt/e+3Sbq/TDS0b1Fbzr3tQFqQorl
         65EA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683232944; x=1685824944;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oVXjrmmVPaC86MGd9q8K4xTk3JxmLDQjsYVtmH3P8Vg=;
        b=kZSvyu+kfbzCiwCxdWHOXwUhWWWw2ivYlyhagVhYuncd0bz7bD2Gc3Yn2TgAtap3cs
         x5Xofu2u9Io9UTQwFTHBV9s86yYnYKsyG8PQrU/44hFHwM7h3/YJxsOXV2T+0FMuvFCq
         9P71yi6vODmHiINRRFFpyfAYRpzQ1DYAQE+L19LZvKpM/3oZM/WXmnQG1KsYwz6sgUwV
         EIWItvO5OSLD4OZsAS8ielHmPjTkjQeZw3TyL0ZHCsw7ILYV0FhQBvBS8F1ErLQ57cHo
         SPMOAbJPl3m78o/Hfb19zMXaf2MQwfRWo8K5eUoaJY14h1dSYk3MV/BrsAXUyMG6tfqB
         G48Q==
X-Gm-Message-State: AC+VfDzo2xYnPU3+Bpx5DlFErRnIGViykUt5eNjUOLUroLcJ6unDsURs
        r0fRtzj58sLxdZ5t6GiWlnfFuJz3B7YYuKkVBJs5rw==
X-Google-Smtp-Source: ACHHUZ5Oc2JEQgYDtMrNqV9XGIAbMc3mAKkNtDt4QLTkADEAez2zfBLXo0ybF6pZVqwkI3T9WtVOyOeQEtC+PYafcWE=
X-Received: by 2002:a2e:9c46:0:b0:298:a840:ec65 with SMTP id
 t6-20020a2e9c46000000b00298a840ec65mr1174533ljj.36.1683232944435; Thu, 04 May
 2023 13:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230404-tractor-confusing-8852e552539a@spud> <20230504202156.GA260181-robh@kernel.org>
In-Reply-To: <20230504202156.GA260181-robh@kernel.org>
From:   Atish Kumar Patra <atishp@rivosinc.com>
Date:   Fri, 5 May 2023 02:12:13 +0530
Message-ID: <CAHBxVyE6Hy8R3BY2_71az5__UxHyOQcjf-hRm6ivTpXNSyCj6Q@mail.gmail.com>
Subject: Re: [PATCH v1] dt-bindings: perf: riscv,pmu: fix property dependencies
To:     Rob Herring <robh@kernel.org>
Cc:     Conor Dooley <conor@kernel.org>,
        Conor Dooley <conor.dooley@microchip.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Andrew Jones <ajones@ventanamicro.com>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 5, 2023 at 1:51=E2=80=AFAM Rob Herring <robh@kernel.org> wrote:
>
> On Tue, Apr 04, 2023 at 07:03:22PM +0100, Conor Dooley wrote:
> > From: Conor Dooley <conor.dooley@microchip.com>
> >
> > Seemingly I mis-implemented the dependencies here. The OpenSBI docs onl=
y
> > point out that the "riscv,event-to-mhpmcounters property is mandatory i=
f
> > riscv,event-to-mhpmevent is present". It never claims that
> > riscv,event-to-mhpmcounters requires riscv,event-to-mhpmevent.
> >
> > Drop the dependency of riscv,event-to-mhpmcounters on
> > riscv,event-to-mhpmevent.
> >
> > Fixes: 7e38085d9c59 ("dt-bindings: riscv: add SBI PMU event mappings")
> > Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> > ---
> >
> > Atish, I'm not 100% on this one but I noticed it while doing dt-validat=
e
> > on a dump of the qemu virt machine which doesn't use the
> > event-to-mhpmevent property.

Yes. That's correct. virt machine uses default encoding specified by
the SBI PMU spec.
Hence, event-to-mhpmevent is not used.

>
> Waiting for comments before I apply this...
>

Sorry for the delay. Not sure why this did not show up in my gmail.
Probably due to all the bouncing issues going on.


Reviewed-by: Atish Patra <atishp@rivosinc.com>

> >
> > CC: Rob Herring <robh+dt@kernel.org>
> > CC: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > CC: Paul Walmsley <paul.walmsley@sifive.com>
> > CC: Palmer Dabbelt <palmer@dabbelt.com>
> > CC: Atish Patra <atishp@rivosinc.com>
> > CC: Andrew Jones <ajones@ventanamicro.com>
> > CC: devicetree@vger.kernel.org
> > CC: linux-riscv@lists.infradead.org
> > CC: linux-kernel@vger.kernel.org
> > ---
> >  Documentation/devicetree/bindings/perf/riscv,pmu.yaml | 1 -
> >  1 file changed, 1 deletion(-)
> >
> > diff --git a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml b/Do=
cumentation/devicetree/bindings/perf/riscv,pmu.yaml
> > index a55a4d047d3f..c8448de2f2a0 100644
> > --- a/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
> > +++ b/Documentation/devicetree/bindings/perf/riscv,pmu.yaml
> > @@ -91,7 +91,6 @@ properties:
> >
> >  dependencies:
> >    "riscv,event-to-mhpmevent": [ "riscv,event-to-mhpmcounters" ]
> > -  "riscv,event-to-mhpmcounters": [ "riscv,event-to-mhpmevent" ]
> >
> >  required:
> >    - compatible
> > --
> > 2.39.2
> >

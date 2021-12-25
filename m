Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A26EC47F259
	for <lists+devicetree@lfdr.de>; Sat, 25 Dec 2021 06:52:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229576AbhLYFwn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Dec 2021 00:52:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52658 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbhLYFwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 25 Dec 2021 00:52:42 -0500
Received: from mail-yb1-xb30.google.com (mail-yb1-xb30.google.com [IPv6:2607:f8b0:4864:20::b30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95D35C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 21:52:42 -0800 (PST)
Received: by mail-yb1-xb30.google.com with SMTP id g17so30805711ybe.13
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 21:52:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=P6HnANFjTp8jsFIseB/eEf8MMj7oCNVSoMrgQeo65vw=;
        b=R0syKmcV5CKw7yyTHPlb1d4nptXIdMTAQTe9rbkEdQV3K3BS4xwPYht3sdvxaEpu1F
         KWeTxEpOoFGTiY/1vU06ygAJCxZHTRAKL3nq6JNE8AExlsLiEUm3dpEfyXXfvyAqXfLE
         cM6cVlwEPsDY83EOBn0yOKXQ5igU8uxq5DAeM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=P6HnANFjTp8jsFIseB/eEf8MMj7oCNVSoMrgQeo65vw=;
        b=rqXl65f1/HJJwsl5E6V51wAHqO2zY6UYkHpfZmA5/sOLqq8I4iwPmR77juxwfJSTy4
         3lmJcaKHetzrt/PwOB5xnG6UxPwnmcHCEv/O6ackrSU/ZcoM0QU6L5lkTEjx9vDWPpUb
         mNUFM/r6gyo+7BDoWwF4bghRLJM6IIKK7Ci4EG2Scpnl2EJWfLKmu6azGI81brmrrQhD
         RT+r1B+91pcD32l6DZ3zS0fMQOdN0de8IngK5fCbmjsK+aRTDTXqwqhDIS3MBYgRom1X
         mWvPdCkRRXgJViyRdpV0a+rY/iG/pve2k4NB9yI3FBuNl/9RUXPCaM2aVCf1zsRueQRz
         nDHQ==
X-Gm-Message-State: AOAM532uhNiKlvIEYwiXltz2Blbpy9x5/Hgt/3bwPv7JDoWMCfSWZt0i
        3pCDmQ2O+mnBRdRwTo15yhBuCegnGs2jCGROk0A7
X-Google-Smtp-Source: ABdhPJzy7zztHHr13ApOoOFSmvI1GzkLIkvZc5Ye5P5YSBvxMrty+r0cu1DiloBKIBLcnbG5red+iRI1AIxFhmR7ruk=
X-Received: by 2002:a05:6902:568:: with SMTP id a8mr13239600ybt.472.1640411561867;
 Fri, 24 Dec 2021 21:52:41 -0800 (PST)
MIME-Version: 1.0
References: <20211224211632.1698523-1-atishp@rivosinc.com> <20211224211632.1698523-3-atishp@rivosinc.com>
 <3188F71E-93A4-452E-A730-A2F393067346@jrtc27.com>
In-Reply-To: <3188F71E-93A4-452E-A730-A2F393067346@jrtc27.com>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Fri, 24 Dec 2021 21:52:31 -0800
Message-ID: <CAOnJCULK54pE1VX=Nt_cLLwSO5ytu_4w_+cnu5+NVnWemdzGeQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] dt-bindings: riscv: Add DT binding for RISC-V ISA extensions
To:     Jessica Clarke <jrtc27@jrtc27.com>
Cc:     "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        Atish Patra <atishp@rivosinc.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Anup Patel <anup@brainfault.org>,
        Damien Le Moal <damien.lemoal@wdc.com>,
        devicetree <devicetree@vger.kernel.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Dec 24, 2021 at 3:25 PM Jessica Clarke <jrtc27@jrtc27.com> wrote:
>
> On 24 Dec 2021, at 21:16, Atish Patra <atishp@atishpatra.org> wrote:
> >
> > RISC-V ISA extensions can be single letter or multi-letter names.
> > The single letter extensions are mostly base extensions and encoded in
> > "riscv,isa" DT property. However, parsing the multi-letter extensions
> > via the isa string is cumbersome and is not scalable.
> >
> > Add a new DT node for multi-letter extensions.
> >
> > Signed-off-by: Atish Patra <atishp@rivosinc.com>
> > ---
> > Documentation/devicetree/bindings/riscv/cpus.yaml | 9 +++++++++
> > 1 file changed, 9 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Docume=
ntation/devicetree/bindings/riscv/cpus.yaml
> > index aa5fb64d57eb..6c4eecf389a9 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -78,6 +78,15 @@ properties:
> >       - rv64imac
> >       - rv64imafdc
> >
> > +  riscv,isa-ext:
> > +    description:
> > +      Identifies the specific RISC-V instruction set architecture exte=
nsions
> > +      supported by one or multiple harts. All the multi-letter extensi=
ons
> > +      should be listed here as a boolean property. This subnode can be=
 under
> > +      /cpus or under individual cpu node. In case of former, it repres=
ent
> > +      the common ISA extensions for all harts. The name of the boolean=
 property
> > +      must match the actual ISA extension name in all lowercase format=
.
>
> I don=E2=80=99t see why this needs explicitly calling out, that=E2=80=99s=
 true in
> general of cpu node properties (3.8p4 of the Devicetree spec v0.4-rc1 /
> v0.3-40-g7e1cc17), not that I like it.
>

Thanks for pointing it out. I did not realize the DT specification
already has a paragraph
about this. I will update the description in the next version.

> Jess
>


--=20
Regards,
Atish

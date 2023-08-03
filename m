Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5A7976DF6D
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 06:35:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231233AbjHCEfa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 00:35:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbjHCEf3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 00:35:29 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F09D510CA
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 21:35:25 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-99bdcade7fbso66061366b.1
        for <devicetree@vger.kernel.org>; Wed, 02 Aug 2023 21:35:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=brainfault-org.20221208.gappssmtp.com; s=20221208; t=1691037324; x=1691642124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Fr6MNDVhgEvRAnXNj84to/nh4ypRKkg1CDzy7x9Q7fA=;
        b=0Pr70O6uN52tYzz4OSDLnSJn+VV5q/W+cvIMtDbYW04msr5UU+AE7vH8anl5DrdbEs
         TzfpDy36OKA2M0cC6KVoqgR2TVPem8wNvhsul9ubo4w9tj/wbYFvUdRox2gnwaxyzirB
         JDbLgfRV5+VrqXVIsHhaB4Xmzvu/xBi8/5qMbe/pVnQr6If7z251daGdQTFBTSo9Voqh
         IC/Yri0MqVAmfuImDCgULppJGyyairsk/V+JruinRpqBtXK862yuqbMEzFmoQzK6IWCp
         4nHDtQmSdqTFhOzf1xRYMK71rfJyb+ZX3p9Z6UEIE8YrCPcxTHjLFKR1QwbBxTwn3W37
         rmXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691037324; x=1691642124;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Fr6MNDVhgEvRAnXNj84to/nh4ypRKkg1CDzy7x9Q7fA=;
        b=UTPOUT5slOdrmN25wkWrx1T2X/fhs88Lp85L3Ybc1C6YIhGsC6CIISdf1YlEeKYJAz
         izvg6r3QwDl2z9l8bFgXSi1eR25k194SzBh9/SEOOuaWt3VVVx8LtGCnn0k36d5vBUEk
         BLuStbLPbx/jd+3451ZDjCA5aWoVD1vwxUjroYxJxaDyDs2CoQ5QEtAw9r2ev4k/fNnM
         HBF1Vw2fJX/LASLCPLHCqKgHqZ8X0lC25lUm7BnQhGNkeCEBrjeyHBiie7WUv6g1GVOQ
         GARVhWJYG4B8wEvTSzff3zjEpJQH6gp6qSA46XScuhT3OeXTiMcCcJqiWzsAA8sRRumb
         WusA==
X-Gm-Message-State: ABy/qLariW8dqnXvAWtoVYaaM5cf7M/tXCPMRHx86fREb2C3IQjCbsgS
        fXTiWEWvEhQLwZWy1QcQrQ1it352xVswoQctXHv6lg==
X-Google-Smtp-Source: APBJJlGZT2a4IIAjkkcSEhL6E4SzgR5Ue5FpgKLD2cz/AP+7iHLTSUwKqbhsi7I/7DuDzkmAIzbrz6Xo1VXwTk9rk/o=
X-Received: by 2002:a17:906:3f5b:b0:99b:5abb:8caf with SMTP id
 f27-20020a1709063f5b00b0099b5abb8cafmr5849495ejj.44.1691037324159; Wed, 02
 Aug 2023 21:35:24 -0700 (PDT)
MIME-Version: 1.0
References: <20230802150018.327079-1-apatel@ventanamicro.com>
 <20230802150018.327079-2-apatel@ventanamicro.com> <20230802-deviancy-vengeful-cbecf4350526@spud>
In-Reply-To: <20230802-deviancy-vengeful-cbecf4350526@spud>
From:   Anup Patel <anup@brainfault.org>
Date:   Thu, 3 Aug 2023 10:05:12 +0530
Message-ID: <CAAhSdy1K-Bh80_h1b9OiSMEjZmw+ghL27EY-Dx_4-Jbq27sLow@mail.gmail.com>
Subject: Re: [PATCH v7 01/15] RISC-V: Add riscv_get_intc_hartid() function
To:     Conor Dooley <conor@kernel.org>
Cc:     Anup Patel <apatel@ventanamicro.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Atish Patra <atishp@atishpatra.org>,
        Andrew Jones <ajones@ventanamicro.com>,
        Sunil V L <sunilvl@ventanamicro.com>,
        Saravana Kannan <saravanak@google.com>,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 2, 2023 at 10:51=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Wed, Aug 02, 2023 at 08:30:04PM +0530, Anup Patel wrote:
>
> > +/* Find hart ID of the INTC fwnode. */
> > +int riscv_get_intc_hartid(struct fwnode_handle *node, unsigned long *h=
artid)
> > +{
> > +     int rc;
> > +     u64 temp;
> > +
> > +     if (!is_of_node(node)) {
> > +             rc =3D fwnode_property_read_u64_array(node, "hartid", &te=
mp, 1);
> > +             if (!rc)
> > +                     *hartid =3D temp;
> > +     } else
> > +             rc =3D riscv_of_parent_hartid(to_of_node(node), hartid);
>
> This branch needs to be enclosed in braces too.

Okay, I will update in the next revision.

>
> > +
> > +     return rc;
> > +}
> > +
> >  DEFINE_PER_CPU(struct riscv_cpuinfo, riscv_cpuinfo);
>

Regards,
Anup

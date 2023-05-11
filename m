Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 42FC06FFCAE
	for <lists+devicetree@lfdr.de>; Fri, 12 May 2023 00:34:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233312AbjEKWeh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 18:34:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229808AbjEKWeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 18:34:36 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D8F31BB
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:34:35 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-643990c5319so6623352b3a.2
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 15:34:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=atishpatra.org; s=google; t=1683844475; x=1686436475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2i0ZAn6fgrs+9yDTMdM995rindzSbWOWY19wFX3F1Cg=;
        b=JMLw0Vd7k+yQLXI7MoQHgBO+VbI2Hzzj0WiGOpVah1cCGrEMrM6teNmcW173sWvWsY
         AB2qypKfpszANXwLnhS3ckRZMV5cdNnKUZYiyloTIwwG/C2qyT+e718WEbwq6vE6DRVp
         qZbHUP+MTUgVk9VXmwZDoOFBvgwYpmqUGwhaU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683844475; x=1686436475;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2i0ZAn6fgrs+9yDTMdM995rindzSbWOWY19wFX3F1Cg=;
        b=Pko4dZ6M+ldiCiHjjuzr47rcH895arAh1qXh4An7obCe3h2FGir6r9B5Ey30feQ27j
         bfmUjT35Ij7hJ6/CGd5k9cj4Dhoe9IatFHwSBxdObd1HRzDhML5vhZuxBv+WPzRrJ4ya
         wgHuyXgZIhxu2jUcSoEzI31yIJQtRzDPpNP91oQa/5lex89PMkICmpjPNKO2d5vgd5zA
         3T3t0zwUgtbKmqSrOuZMMArI8+0eDV5TH4NFupWOB2Uo3mjdwxRV90y/i6DZ/0Qwy2rP
         1AfhoOv5w5M0yDPHZnD/MRLySv2xdswqUuxgJNwcMeiEoIDDSw3WPOa+e24Tp6Pdwto/
         F3jg==
X-Gm-Message-State: AC+VfDwHiADfN0E6bWz7oBEWLRKx30sW6mMF50BTDW8Uj4P5W/CXgY+L
        y5NRoe/5qxEg8E1TQ0CERrFb6OxrmDKz6SYm8pU3
X-Google-Smtp-Source: ACHHUZ6eLRH0exBnb84sK8SjLp9D16l7lD52O5AWhtwAGiuPYq0u7uk6NnPU1czUw/+F+3Wg+rjf7/jhxomtv9uSBvg=
X-Received: by 2002:a05:6a20:1587:b0:101:5171:c880 with SMTP id
 h7-20020a056a20158700b001015171c880mr13578515pzj.62.1683844475064; Thu, 11
 May 2023 15:34:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230508-hypnotic-phobia-99598439d828@spud> <CAOnJCUKM13+qzR-rKJZj6OD=-DWiu0z9atzBJ89j_bRwByiowA@mail.gmail.com>
 <20230511-punctuate-dinghy-0dd9be94270c@spud>
In-Reply-To: <20230511-punctuate-dinghy-0dd9be94270c@spud>
From:   Atish Patra <atishp@atishpatra.org>
Date:   Thu, 11 May 2023 15:34:24 -0700
Message-ID: <CAOnJCUL-JTNJMCrAOgnk80pMxOQq9k2+fv84D6cPWHjZmrkqRA@mail.gmail.com>
Subject: Re: [RFC 0/6] Deprecate riscv,isa DT property?
To:     Conor Dooley <conor@kernel.org>
Cc:     linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
        Conor Dooley <conor+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Yangyu Chen <cyy@cyyself.name>,
        Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Andrew Jones <ajones@ventanamicro.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, May 11, 2023 at 2:47=E2=80=AFPM Conor Dooley <conor@kernel.org> wro=
te:
>
> On Thu, May 11, 2023 at 02:27:44PM -0700, Atish Patra wrote:
>
> > > The other thought I had was that perhaps some software may choose not=
 to
> > > implement version x.y.0 of an extension and only support x.z.0, z > y
> > > for some reason. We'd want to refuse that extension if the extension =
is
> > > found, but the version is not listed as being something compatible wi=
th
> > > x.z.0, and while the ISA spec does say that the default assumption is
> > > 2p0 for unversioned extensions in its current form, I struggle to
> > > extrapolate that to extensions not currently part of the unpriv spec,
> > > but rather defined on their own.
> > >
> >
> > That's a fair point. However, any new RVI ISA extension will only have =
v1.0
> > as per my knowledge. Any new feature will have to be part of a
> > different extension.
> > At least that was the plan discussed last year.
>
> That's more than last year at this point, and nothing has changed in the
> documentation! Talk's cheap, ehh?
>

Yup. I will poke RVI folks to check if it still is the plan or changed !!

> > https://github.com/riscv/riscv-isa-manual/issues/781#issuecomment-98322=
2655
> >
> > Are you aware of any discussion that changes this ?
>
> It's called "trust issues". I am far less worried about the addition of
> new features though than the removal of existing ones.
> Part of me fears for fence.i-less systems for example, but there would
> be other ways to bodge around the mess if it comes to pass.
> If we are *sure* that no extensions will modify features additively or
> subtractively, then this may not be needed at all & I can avoid having
> to bend dt-validate to my will.

Fair enough. Let's get some clarification first from RVI. It must be
documented in unpriv
spec. Otherwise, there is no point of promise :)

> We have no guarantees for vendor extensions on that front either,
> they're free to do what they like w.r.t. versioning, no?

Vendor extensions are wild west. Who knows what scheme they will use.
We will likely have a vendor specific string parsing logic. They can do wha=
tever
in that to figure out the version if they require it.

--=20
Regards,
Atish

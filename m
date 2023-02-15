Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 277936986C3
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 22:01:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230061AbjBOVBd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 16:01:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbjBOVBM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 16:01:12 -0500
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3FD018A5C
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 12:59:18 -0800 (PST)
Received: by mail-ej1-x62a.google.com with SMTP id dr8so60175ejc.12
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 12:59:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rivosinc-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=9J4+2O+6dPLiKhatW215i+nXvajg3X2gqM/YT6Nj4eM=;
        b=qkg3aTo7kPqfzHtYOWxpxv7swca6ZxC//5ANvFMLCd7/fDSMS+9NvRo/7juQnDyhGK
         y2V9ULlE8A5/AZa/1z+T/EZrEUeTy43C9SL5MRGS/DJ5hbK7CXgfPy8QpmUKXRz5O3zx
         1LR/FCPiBy9/29NAsHqIYjwDoYzO1YZUMpyvuy0VmaVvBCyMgcDRbqI3BDx+Q1sVSKuv
         wLNYgVOzr7eWzBCZ35QlZGB6BQPaMvPEnfahNdec/zv3RwQk8yn0WQnZfCgt2lvrKnFj
         u6pvMdn67CBd1GnEUaGeR5dfkcAE0+MGAkNf2Plz6iDOaeKzbax2t4B7TVK/16vtmS4D
         dRvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9J4+2O+6dPLiKhatW215i+nXvajg3X2gqM/YT6Nj4eM=;
        b=lYwB15hhQvATxl7nwLCp/nuiYHZnj9qIo8FXecVhJcM7Z1IixayhbMKBVpbn0+WcKe
         Dy2t4LEtP51fysWG1BnuMjpncr0g1MBSfCJGMfPfiCm+Yy7JPAzfpCtGMoPBuEX12yTx
         1Cgiu1bgS1ouVSr5qaM6DHtl5xM2E/jm/MIXSGAy+0EwJh1LTfeRqd6XgaG3URQFf3yA
         EydiGjNm80vgGBdD5B2EktcxsIwFFTnr+WI/wyoPb4llGDQ7avetpfwAutwzfg7u1FMY
         L1aPFtnvV4QzDywodE8r4aZeB44XOiB/nbzPQhkr0KgmMGqSWqq3E5Zvc+9MuwaaBOuS
         qPQg==
X-Gm-Message-State: AO0yUKVIM2QmcZtP6AZ3nMV0ssPBc6TOVzvGW3MG49d1ngYl3OwlIIaI
        75TOeWLy99zVseVnnHfc1E+EFVQDOXOg5KIEOowFAEuE5RP32Q==
X-Google-Smtp-Source: AK7set+YuOicYHlGgbYbe1IaylJwpRt8UMMp+PnI0BL61bAqsiAV0ZewTgN+WPYQh3nPf0eiV/TydYDXrsOnW/2YBhY=
X-Received: by 2002:a05:6512:3d18:b0:4db:1e7d:5d42 with SMTP id
 d24-20020a0565123d1800b004db1e7d5d42mr2074364lfv.0.1676494243853; Wed, 15 Feb
 2023 12:50:43 -0800 (PST)
MIME-Version: 1.0
References: <20230206201455.1790329-1-evan@rivosinc.com> <20230206201455.1790329-5-evan@rivosinc.com>
 <Y+v8eNlcG+jbB2oy@spud>
In-Reply-To: <Y+v8eNlcG+jbB2oy@spud>
From:   Evan Green <evan@rivosinc.com>
Date:   Wed, 15 Feb 2023 12:50:07 -0800
Message-ID: <CALs-Hsu1K4taqMhZs0PyYsT6t-skSbW4QJWVP5csx3qecfz-3Q@mail.gmail.com>
Subject: Re: [PATCH v2 4/6] dt-bindings: Add RISC-V misaligned access performance
To:     Conor Dooley <conor@kernel.org>
Cc:     Palmer Dabbelt <palmer@rivosinc.com>, vineetg@rivosinc.com,
        heiko@sntech.de, slewis@rivosinc.com,
        Albert Ou <aou@eecs.berkeley.edu>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 14, 2023 at 1:26 PM Conor Dooley <conor@kernel.org> wrote:
>
> On Mon, Feb 06, 2023 at 12:14:53PM -0800, Evan Green wrote:
> > From: Palmer Dabbelt <palmer@rivosinc.com>
> >
> > This key allows device trees to specify the performance of misaligned
> > accesses to main memory regions from each CPU in the system.
> >
> > Signed-off-by: Palmer Dabbelt <palmer@rivosinc.com>
> > Signed-off-by: Evan Green <evan@rivosinc.com>
> > ---
> >
> > (no changes since v1)
> >
> >  Documentation/devicetree/bindings/riscv/cpus.yaml | 15 +++++++++++++++
> >  1 file changed, 15 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > index c6720764e765..2c09bd6f2927 100644
> > --- a/Documentation/devicetree/bindings/riscv/cpus.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
> > @@ -85,6 +85,21 @@ properties:
> >      $ref: "/schemas/types.yaml#/definitions/string"
> >      pattern: ^rv(?:64|32)imaf?d?q?c?b?v?k?h?(?:_[hsxz](?:[a-z])+)*$
> >
> > +  riscv,misaligned-access-performance:
> > +    description:
> > +      Identifies the performance of misaligned memory accesses to main memory
> > +      regions.  There are three flavors of unaligned access performance: "emulated"
>
> Is the performance: emulated the source of the dt_binding_check issues?
> And the fix is as simple as:
> -    description:
> +    description: |
> ?

Yep, I can pass cleanly with that change. Thanks!

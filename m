Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A37EB4DA79A
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 02:53:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353031AbiCPBzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 21:55:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48766 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353026AbiCPBzB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 21:55:01 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DDB633E89
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 18:53:47 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id bu29so1541628lfb.0
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 18:53:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/w6g4UFapgjJyWigEntfY4YR+4uWCSZSSrQixa3u6+g=;
        b=NOuO/gH2k2r8FqAWGTSFu3/K2RelH8l1bUKZJrYmiVaqA+UTjEqKY666OVXfT8d219
         2YlKjBcEbW9rsLFaO+lVQexhLzkDhDnQGUhQ6bY4urMhIT5FyhNYWPgdC5OvZaiN9swo
         /zne3iP33JmXYXygB8OBviNrskeEf2CIACj4MnvcwOiNM9JiuDaFHLDOnvuVC7Hg/n7i
         XrNztpYGFUn6I7YMjneJT3ad4ZI8dzWyZuSAkx4zMcPbHYeRU8K1Y6jjkkV7xw0ze/KC
         +eMZ95j3B3AybgLC9l3crRekrK+Y0eIwj3PxUJeA1TEud6ZXDuDCRYdWKXyGdbPpzgL8
         W0WQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/w6g4UFapgjJyWigEntfY4YR+4uWCSZSSrQixa3u6+g=;
        b=SioE/n0bVkGMdtl1Xbctx8GlVZPAa6qoYjob/cx8nC1tvdxIWOY+IQVpiD43RMb9JR
         T+2EJQC/4vMfHTYYE4JPMNOCYVkkwPhxvgiBdjYroK37hOaBm+3Kew+oM6uOa2sTkBiB
         Qx7GI4NiCk6OUFRo21xHoOuJvQoFV2NmvZakjF2V/AZWhuV/2kjd5aspA7eaaFgHFt1P
         sAwiQWNM3ZW7cM+TWtbY5dXbp+P8Mt5E9qtt8mHPHN5PQ3ftrInRQGOudxScAzRSQlqk
         Zhhk92oK65NtDil94topA8JuRnFMg25c/j03tEo3EauGkHCq2QzT53GLeOeDb0gEH4uP
         W2mw==
X-Gm-Message-State: AOAM5305AITQxN1xxVRkgygrIaoCMzVcn8cFOA0hRDcRvI869DQcq2sw
        jvTk4iFAj5lVA/YfdJBwSLePQyy8xOfzUk5ixEjuKV3mQ/I=
X-Google-Smtp-Source: ABdhPJwJrWMGPCVAe9Kdw4+yO4dxhyREg9HzABowyT5uPfqBiphteSCarJzNDqam5BVctAGvnqC08Kzr648dwxePEXc=
X-Received: by 2002:a05:6512:1510:b0:445:cbc3:a51f with SMTP id
 bq16-20020a056512151000b00445cbc3a51fmr18924746lfb.116.1647395625908; Tue, 15
 Mar 2022 18:53:45 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1646388139.git.zong.li@sifive.com> <db92d209fa700f7da8bc8028083476fcc138d80e.1646388139.git.zong.li@sifive.com>
 <20220315225459.73F2DC340E8@smtp.kernel.org> <20220315225652.CDAD1C340E8@smtp.kernel.org>
In-Reply-To: <20220315225652.CDAD1C340E8@smtp.kernel.org>
From:   Zong Li <zong.li@sifive.com>
Date:   Wed, 16 Mar 2022 09:53:36 +0800
Message-ID: <CANXhq0oAsxqL2PxkB8eOu_8L10pX_oWgwPH5y4edq5tw6ObWiQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] riscv: dts: Change the macro name of prci in each
 device node
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Lee Jones <lee.jones@linaro.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Rob Herring <robh+dt@kernel.org>,
        Palmer Dabbelt <palmer@rivosinc.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 16, 2022 at 6:56 AM Stephen Boyd <sboyd@kernel.org> wrote:
>
> Quoting Stephen Boyd (2022-03-15 15:54:57)
> > Quoting Zong Li (2022-03-04 02:03:19)
> > > We currently change the macro name for fu540 and fu740 by adding the
> > > prefix respectively, these marcos are referenced by some device nodes,
> > > they should be modified as well.
> > >
> > > Signed-off-by: Zong Li <zong.li@sifive.com>
> > > Acked-by: Palmer Dabbelt <palmer@rivosinc.com>
> > > ---
> >
> > Cool. So it looks like I can take the clk patches and not this one and
> > it should be OK?
>
> To speed things up I can take the whole pile. Thanks for fixing the
> bisection problem.

I appreciate that you are willing to pick them up. Many thanks.

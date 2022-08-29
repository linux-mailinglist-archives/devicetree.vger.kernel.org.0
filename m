Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F012A5A43D9
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 09:38:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229636AbiH2Hiz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 03:38:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbiH2Hiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 03:38:54 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F27004E850
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 00:38:52 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id z29so1400640lfb.13
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 00:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=SLnfZ0YtBrAFrby7u2BSMdjwnYBP5EXUc9M7gwySMFc=;
        b=WkuVDoMnPSkj0vEifVC2w2xi1AX9POY3FSxOvaHXLrMCOqmrmhY5AfP0PutPjHEiCu
         a3iQ1fcGwkgc8DqpmTrkUTY0uZgwrtfZwwpxMdnA/ZgDQbe87IF6qWT5tchG9pX4HL7V
         0yfmupIxlEACVzNTL7TyrLR4EavjsVUkupzOcXTRTBKe1eLU9sLAxgPqLjR2OIySU68D
         +jySDLepM+8q4BMNwYn/iYUMKiU5UDBG3GiAPIQQJ3ZjVmxFj6L29awQOJVX3ttZjujo
         9miOIrak/NXwL1uUxotOxJ2cfOZaQTaC6FMLjCrNBCBd0fBrQGqGm6pGr9B1xlRJDNyf
         ECEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=SLnfZ0YtBrAFrby7u2BSMdjwnYBP5EXUc9M7gwySMFc=;
        b=YZmnd7wNYTXl6L1rYIvP97A2qni97SLBaWf503ouz43s1KnHufls+iNKSKYUJqV/8L
         h0C92bVfw+nxtqZlXeVM52qwahqZITGkjBz2XExS2fj2FuUWufMbP92G/4B2RxQxfh25
         QaqwOA87sLGhx/xaVlHJSnbrQL0FM4kfQ7p6AZEfPS0lsE8HKDkjb3yLxmfW01lSonXp
         7RhrEg/qHDM/W/uCFIMQrBWEsjCdeLzGojcchysZFccQ6tn41Zo28bqMfMlHL3HWRe6x
         hdnLZ2y1rsSmVMio7KQJouUcUeilS/fhwEMbghexk1Onb+Aw3adsyEBGB6EH3m2lHbeu
         gf7w==
X-Gm-Message-State: ACgBeo3KdMu1Hvc0oCVS1vdOsUFc7cHx1px83YCjrxHBUHhAH6axTdZN
        vVZOUiXCXnHrSASf77R1opjtVJvzYhRllqvAfSMNrw==
X-Google-Smtp-Source: AA6agR7Z/64kezARSma8q5qNz73IG4E3JSPDN4bXIxxADcRxsY9NxznD3iA75wQjgm9ZxrfLxirk+9UL16NI7RCfhgE=
X-Received: by 2002:a05:6512:3b28:b0:494:6b56:ae0a with SMTP id
 f40-20020a0565123b2800b004946b56ae0amr1267119lfv.498.1661758731260; Mon, 29
 Aug 2022 00:38:51 -0700 (PDT)
MIME-Version: 1.0
References: <20220829062202.3287-1-zong.li@sifive.com> <20220829062202.3287-2-zong.li@sifive.com>
 <d009d829-54d5-7b96-cfbb-3f75515a29fe@microchip.com>
In-Reply-To: <d009d829-54d5-7b96-cfbb-3f75515a29fe@microchip.com>
From:   Zong Li <zong.li@sifive.com>
Date:   Mon, 29 Aug 2022 15:38:38 +0800
Message-ID: <CANXhq0qECPDehan6U4-R166EkZww5VMFntDToOkYjsOiELPi9A@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: sifive-ccache: rename SiFive L2 cache to
 composible cache
To:     Conor Dooley <Conor.Dooley@microchip.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Greentime Hu <greentime.hu@sifive.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-riscv <linux-riscv@lists.infradead.org>,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>
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

On Mon, Aug 29, 2022 at 2:45 PM <Conor.Dooley@microchip.com> wrote:
>
> Hey Zong,
> Couple quick comments for you:
>
> On 29/08/2022 07:22, Zong Li wrote:
> > EXTERNAL EMAIL: Do not click links or open attachments unless you know the content is safe
> >
> > Since composible cache may be L3 cache if private L2 cache exists, it
>
> s/composible/composable
>
> > should use its original name composible cache to prevent confusion.
>
> s/composible/composable
>

I will fix it in each patch.

> >
> > Signed-off-by: Greentime Hu <greentime.hu@sifive.com>
> > Signed-off-by: Zong Li <zong.li@sifive.com>
> > ---
> >   .../riscv/{sifive-l2-cache.yaml => sifive-ccache.yaml}      | 6 ++++--
> >   1 file changed, 4 insertions(+), 2 deletions(-)
> >   rename Documentation/devicetree/bindings/riscv/{sifive-l2-cache.yaml => sifive-ccache.yaml} (92%)
> >
> > diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml b/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
> > similarity index 92%
> > rename from Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> > rename to Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
> > index 69cdab18d629..1a64a5384e36 100644
> > --- a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.yaml
> > +++ b/Documentation/devicetree/bindings/riscv/sifive-ccache.yaml
>
> Binding filenames are supposed to match the first compatible. Since
> it was not named that way in the first place, I suppose naming after
> the generic compatible makes the most sense. The correct filename
> would then be "sifive,ccache0.yaml"
>

Thanks for pointing this out. Let me change the filename.

> > @@ -12,8 +12,8 @@ maintainers:
> >     - Paul Walmsley  <paul.walmsley@sifive.com>
> >
> >   description:
> > -  The SiFive Level 2 Cache Controller is used to provide access to fast copies
> > -  of memory for masters in a Core Complex. The Level 2 Cache Controller also
> > +  The SiFive Composable Cache Controller is used to provide access to fast copies
> > +  of memory for masters in a Core Complex. The Composable Cache Controller also
> >     acts as directory-based coherency manager.
> >     All the properties in ePAPR/DeviceTree specification applies for this platform.
> >
> > @@ -27,6 +27,7 @@ select:
> >           enum:
> >             - sifive,fu540-c000-ccache
> >             - sifive,fu740-c000-ccache
> > +          - sifive,ccache0
>
> Despite what the commit message says, this is more than a rename.
> Thanks,
> Conor.
>
> >
> >     required:
> >       - compatible
> > @@ -37,6 +38,7 @@ properties:
> >         - enum:
> >             - sifive,fu540-c000-ccache
> >             - sifive,fu740-c000-ccache
> > +          - sifive,ccache0
> >         - const: cache
> >
> >     cache-block-size:
> > --
> > 2.17.1
> >
>

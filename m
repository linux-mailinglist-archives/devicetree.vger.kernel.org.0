Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FF2E750E3A
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 18:20:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231593AbjGLQUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 12:20:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233289AbjGLQUZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 12:20:25 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3A02A358B
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:18:25 -0700 (PDT)
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 41FBF3F171
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 16:17:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1689178657;
        bh=n4utYa35TfD5wsVmOiQcm6vCoFn5Vk1dm6HnZfMUVHA=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=BelSOFoEXJZuPw9qSbtmGvAZwt+XdHsvcFLf43IxGxMSwkee5Hc6ER27QMrq7wup4
         3ZcHFnwoihNQSL42Cb7UDdN+nFf6baBp0oRAIXK1UqDZ3OwHuNQPlpPjl8hOpL4wIE
         NElidWowb3vWMqj4RVCIXSN/ldbrDk3Hsno3fynM36GSbLs6piP8PZigfOtkUpMl31
         xP+9jZkJ0+FowcGZ2NPXVyuKJsfiPG33tDG0lnqIlZITV2sy7/7I6ruLVJUmjE0rNe
         /y7XLGBxoe81R+0wgDDKqC9LU3+6xWncIYVOmzP5KJ58etSsfkQXj7dTr81q2d2SLI
         exmDTSLJzqoNQ==
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-400fea3d458so81249051cf.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:17:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689178656; x=1691770656;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=n4utYa35TfD5wsVmOiQcm6vCoFn5Vk1dm6HnZfMUVHA=;
        b=NZ/Jwca1I4e69cZ/luqYvrydzC7clFACtjwiCyE9H8q24qpw9a1Nl6cPy4x0Tctp3h
         2rBJYHfrY4de5oH+6K1C2wOH7WxPHYWnJ3UucISIS6oPo6QExn95C+Nf73mvw1hEmbfP
         mAU78SVLPbu8CqiNI43E7lFTtOuTOEgiPIBYL4yYyQoJtFmiG+Kyce8TooaAOuQZw/oj
         gBWRMy1YPOiOdvAZkxHBSl8TGUfFT17zXgBfo6RXQMadv9Vo4zFl2giNJRVrQ5/46lAy
         JyOcYE0ZHfj+R5aAXcLpMl/O8RIeEf/7H3COsnUhiUANTAZE16929OmNYiElHbO94lf7
         HCeQ==
X-Gm-Message-State: ABy/qLaUFDtyTCma7N4kRu3RM9YeSCyKre3Ko0/+zhweia9cIT2ot1BZ
        nzniHeU/2DrCTMH/iqRXcFYMcpRTy3qlSxqJ+5BL2ECn3Mfpeuuj6NwU3k2dGswaE7ZLep+G6j7
        WrAg7gNUJlmn9+FZelkohnG4Q7y9KQAjIa02c4nQ9CDc0LeJCkMEH/As=
X-Received: by 2002:ac8:5f85:0:b0:3f8:4905:9533 with SMTP id j5-20020ac85f85000000b003f849059533mr23586489qta.50.1689178656007;
        Wed, 12 Jul 2023 09:17:36 -0700 (PDT)
X-Google-Smtp-Source: APBJJlGIBX2v4lrFqkh9MfymlkmrtaXYfI6hDGPQE1rbvkzdatafBb02lOAezmx4BfX0Q5/dFkKHZd/2bxyPDMKAUcQ=
X-Received: by 2002:ac8:5f85:0:b0:3f8:4905:9533 with SMTP id
 j5-20020ac85f85000000b003f849059533mr23586470qta.50.1689178655789; Wed, 12
 Jul 2023 09:17:35 -0700 (PDT)
MIME-Version: 1.0
References: <20230627080620.329873-1-felix.moessbauer@siemens.com> <20230710-villain-dainty-d1a90ce57a27@spud>
In-Reply-To: <20230710-villain-dainty-d1a90ce57a27@spud>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Wed, 12 Jul 2023 18:17:19 +0200
Message-ID: <CAJM55Z_0X+UT1s9s4kqKuyg4hF2JooTMXe4RYTAzoEgY=+8A1Q@mail.gmail.com>
Subject: Re: [PATCH 1/1] riscv: dts: Enable device-tree overlay support for
 starfive devices
To:     Conor Dooley <conor@kernel.org>
Cc:     Felix Moessbauer <felix.moessbauer@siemens.com>,
        Walker Chen <walker.chen@starfivetech.com>,
        Emil Renner Berthing <kernel@esmil.dk>,
        Rob Herring <robh+dt@kernel.org>,
        Daniel Bovensiepen <daniel.bovensiepen@siemens.com>,
        Jan Kiszka <jan.kiszka@siemens.com>,
        linux-riscv@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 10 Jul 2023 at 20:29, Conor Dooley <conor@kernel.org> wrote:
>
>
> Emil, Walker,
>
> On Tue, Jun 27, 2023 at 04:06:20PM +0800, Felix Moessbauer wrote:
> > Add the '-@' DTC option for the starfive devices. This option
> > populates the '__symbols__' node that contains all the necessary symbols
> > for supporting device-tree overlays (for instance from the firmware or
> > the bootloader) on these devices.
> >
> > The starfive devices allow various modules to be connected and this
> > enables users to create out-of-tree device-tree overlays for these modules.
> >
> > Please note that this change does increase the size of the resulting DTB
> > by ~20%. For example, with v6.4 increase in size is as follows:
>
> Whatcha think?

I'm fine with it. I just wonder why it's only the Nvidia Tegra boards
and the VisionFive's that need this. Surely other boards have pins for
expansion cards.

Acked-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
/Emil

> > jh7100-beaglev-starlight.dtb 6192 -> 7339
> > jh7100-starfive-visionfive-v1.dtb 6281 -> 7428
> > jh7110-starfive-visionfive-2-v1.2a.dtb 11101 -> 13447
> > jh7110-starfive-visionfive-2-v1.3b.dtb 11101 -> 13447
> >
> > Signed-off-by: Felix Moessbauer <felix.moessbauer@siemens.com>
> > ---
> >  arch/riscv/boot/dts/starfive/Makefile | 6 ++++++
> >  1 file changed, 6 insertions(+)
> >
> > diff --git a/arch/riscv/boot/dts/starfive/Makefile b/arch/riscv/boot/dts/starfive/Makefile
> > index 170956846d49..0141504c0f5c 100644
> > --- a/arch/riscv/boot/dts/starfive/Makefile
> > +++ b/arch/riscv/boot/dts/starfive/Makefile
> > @@ -1,4 +1,10 @@
> >  # SPDX-License-Identifier: GPL-2.0
> > +# Enables support for device-tree overlays
> > +DTC_FLAGS_jh7100-beaglev-starlight := -@
> > +DTC_FLAGS_jh7100-starfive-visionfive-v1 := -@
> > +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.2a := -@
> > +DTC_FLAGS_jh7110-starfive-visionfive-2-v1.3b := -@
> > +
> >  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-beaglev-starlight.dtb
> >  dtb-$(CONFIG_ARCH_STARFIVE) += jh7100-starfive-visionfive-v1.dtb
> >
> > --
> > 2.39.2
> >
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv

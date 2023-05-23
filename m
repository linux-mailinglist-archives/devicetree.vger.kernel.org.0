Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB29870DD59
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 15:19:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232554AbjEWNT0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 09:19:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50848 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231357AbjEWNTZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 09:19:25 -0400
Received: from mail-yw1-x112f.google.com (mail-yw1-x112f.google.com [IPv6:2607:f8b0:4864:20::112f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6DB59FF
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:19:24 -0700 (PDT)
Received: by mail-yw1-x112f.google.com with SMTP id 00721157ae682-561da492bcbso90534707b3.3
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 06:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684847963; x=1687439963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/y8I9Pv/4V6YStWX5R2hWIwO0b0qZb/p+qZFG9UP80A=;
        b=OIvUK9YMalUppxB8kSu51gObJXvRPS5kRx5ma9aApqEDi59LWrpN5QR7NZohdMM/Z9
         CvKp4N1eOkMX5MA0EPbt5dxeCJqZ8ZRAGq9hG3m1x6Q7CIWML9Zi6pjn0Gwxc0UFOxZo
         KoNv9t0GuZ2wXhQZTfDS1b0gzjoLY9VqGwrozfdW9980ADGshUzbRh/v586Hfc2ZcJvd
         niF/iW4URNhQNhkQs0DwahCAvxMHM0wPFrQ6ZaEt5SibaffLRD/qt3wZLTriyJ3PhPNL
         xSY+/V1cJfM25Iaf5FuAtIY0Ns++qV/NaTMUB4YyXxolaGvnAwS7ovbUofRHQUvjU1ID
         yZsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684847963; x=1687439963;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/y8I9Pv/4V6YStWX5R2hWIwO0b0qZb/p+qZFG9UP80A=;
        b=h2CdgXJfc+A1ZjZOYhP6Wa09YvkAj3zt52ahhHiI+RkAZ3syoG8L6eu8CCg+vRR5yV
         KwZlkc7/3k6ucxOfyLYDGQs0BkGXh7dA+wOgFXyPEAa7Mjgw2rzuV3Kw+d99cMb5R2X8
         ulvgMDqxEjy9G+B4H1nUpBG3JQYTj6SnlFHXJ8bu3gQf+7sPCpdXt7c0APQT2PrsxO3H
         KLVpR9zTWYpNU5BVX8D7CKFC4AvV1yDn0vSNUm9DFwTuTiixGG4mjKrCPqxVT33coyOh
         zq/3s8lbHUnee/hTMQkF4oihOA+qbrPQ5WtPfuGxIP7V6b+tKMV0uQ6ILnfTGc6s+5EW
         mzUQ==
X-Gm-Message-State: AC+VfDyD5Ml2t5IM0a1W619/ZEOzsviMEn5Pbk6jpzGG5XA/VOLewLz0
        +SB9jhkRPQMLNMDE+LtqKFWkyldAlUjCzohqwOgkjQ==
X-Google-Smtp-Source: ACHHUZ4W3lqcYsC4MLnVzY16h0UOyn1i5YCHe1kXkQgAhuKadsLr0wsFOnpwCZsNgNSeBC25L/8YDjH3irN6ShXY8Q4=
X-Received: by 2002:a0d:cb16:0:b0:561:a80b:6647 with SMTP id
 n22-20020a0dcb16000000b00561a80b6647mr13906047ywd.45.1684847963644; Tue, 23
 May 2023 06:19:23 -0700 (PDT)
MIME-Version: 1.0
References: <20230506-seama-partitions-v1-0-5806af1e4ac7@linaro.org>
 <20230509093129.40b30c7a@xps-13> <CACRpkdYLZ36Ad5y7qLUTFix6yx=jBQ=ZvxaB9U-fhqQ_fvvXCQ@mail.gmail.com>
 <20230522164559.6c599c61@xps-13>
In-Reply-To: <20230522164559.6c599c61@xps-13>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 23 May 2023 15:19:12 +0200
Message-ID: <CACRpkdan-iG9po88btAndwTz_VRu0ccUAQDxyZeoBH1jCumUJQ@mail.gmail.com>
Subject: Re: [PATCH 0/2] Add SEAMA partition types
To:     Miquel Raynal <miquel.raynal@bootlin.com>
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
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

On Mon, May 22, 2023 at 4:46=E2=80=AFPM Miquel Raynal <miquel.raynal@bootli=
n.com> wrote:

> > The mtdsplit code uses different magic numbers to identify where
> > the different partitions start.
>
> Is mtdsplit acting on a device or on a partition?

It acts on a partition, usually you use a fixed-partitition scheme to point
out the different chunks in the flash and then mtdsplit comes in to
do its job.

> Right now you define
> a partition to be compatible with seama, I would have imagined the
> partitions container should be compatible with seama instead of
> fixed-partitions, but I haven't looked at the whole implementation, so
> maybe my comment is just wrong.

The NAND flash on my device needs it to be a partition, it looks
like so:

&nandcs {
        /* Spansion S34ML01G2, 128MB with 128KB erase blocks */
        partitions {
                compatible =3D "fixed-partitions";
                #address-cells =3D <1>;
                #size-cells =3D <1>;

                firmware@0 {
                        compatible =3D "seama";
                        label =3D "firmware";
                        reg =3D <0x00000000 0x08000000>;
                };
        };
};

The reason is mainly that other devices may put eraseblocks
aside for other things, and the SEAMA format itself does not
know its extents (it needs to be told where the end of the
partition is).

> > One such type of partition is seama, so the code needs to know
> > that it should look for seama magic to determine the size and
> > split this partition in a kernel and rootfs part. This is the code:
> > https://git.openwrt.org/?p=3Dopenwrt/openwrt.git;a=3Dtree;f=3Dtarget/li=
nux/generic/files/drivers/mtd/mtdsplit;h=3D3e0df856713a84b1decf17190f171cb1=
0ce7a757;hb=3DHEAD
>
> That's very informative, thanks for all the context. I believe this
> could actually be part of the binding description (not the "this is an
> openWRT stuff", of course).

Hm I'll think about what I can put in there...

Yours,
Linus Walleij

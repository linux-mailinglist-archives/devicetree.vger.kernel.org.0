Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C01775A78FB
	for <lists+devicetree@lfdr.de>; Wed, 31 Aug 2022 10:24:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229616AbiHaIYP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 Aug 2022 04:24:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51260 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231635AbiHaIXp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 Aug 2022 04:23:45 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2156C12D0
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 01:23:25 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id z6so18881252lfu.9
        for <devicetree@vger.kernel.org>; Wed, 31 Aug 2022 01:23:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc;
        bh=K2zp9Wv42L7eKkkxe8UYiRlilcrS8JYkof7pXKJ4D9s=;
        b=OdF/JF9THdr/kxnPREDGNkd6h6ZtQwV0dlHtgVVLKG6sdsjYN1jHdM42ZJdBYuZJRf
         GB331f7n1Uai49IrHpA2DQPsq1YpdMiKfl7Df7Y0JwDhQVrL9boPAJdSD1eO+r8Qcj9c
         zE9ZsPC5r5WruxA/AEXra7vAAjdnkRYANYh1+W2HRVV0fzcyFdv38zm96rrwirJylwXg
         YcYGnJ8IjR/N+K4fwVvDq/7mZkaQecimVKPyFBKg1YL8BD/xWWkjJ14fw5rfybyUDuiq
         mABb+8uN0oJT/TLqXRgf0Svj3qR7Hah5p92bT71ePnPiyv8jqoGqwRVnM+ViVzQAlIGJ
         f81Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc;
        bh=K2zp9Wv42L7eKkkxe8UYiRlilcrS8JYkof7pXKJ4D9s=;
        b=Ho2nT8XRfEfU18MLjlo048uyKDsaS0Z6kqTpRSOwMU0JudQMcHPAyZykpKFXYNE0Ol
         CJL7xE6tGYMavV8YhmV4C3vli/azq+BtUIod3MJ+R/Aoa9EuyvWvcs5nylAPrM8lYhMD
         ggcoRf68XgNJbnckkSe50FTgp8W67QVQaOd7GujIUYBluLnTI/9olVlJmoRKTx3M2NAz
         gmHbUQEuNmQt7c1Aj/IXC5fZJ2ufhJuGREq0A8bGFhQ5OzbAm9nYXZBxg0wNVuC8oZCG
         6CIlMNQi1T50eYjdEaow8iATR4JezPL2HFZYiqjLhz9iDf4gWAwdvMQ92BrQxUSxpMcS
         hBKw==
X-Gm-Message-State: ACgBeo1hs3ZF2yDwK2KEr5+5eHg9kmZmR0CnpV3ILbuBXADl/lQMANQR
        ZpbGXFRbOgdjbH+pvljlzioY9caEkb9IVOOVpQVfFylkXVQ=
X-Google-Smtp-Source: AA6agR6h/pDYy+tHgwAZf1tLfVmjf3aCROZaJyd3xuvEi4KwYV4H1SlYEe1bfUo4drWQJY6IY+X724hMk9q69YRHsVc=
X-Received: by 2002:a19:640a:0:b0:492:8df3:f29b with SMTP id
 y10-20020a19640a000000b004928df3f29bmr8378687lfb.306.1661934203634; Wed, 31
 Aug 2022 01:23:23 -0700 (PDT)
MIME-Version: 1.0
References: <20220829062202.3287-1-zong.li@sifive.com> <a0425472-00ed-81dc-e98d-fbccc1e95575@sifive.com>
In-Reply-To: <a0425472-00ed-81dc-e98d-fbccc1e95575@sifive.com>
From:   Zong Li <zong.li@sifive.com>
Date:   Wed, 31 Aug 2022 16:23:11 +0800
Message-ID: <CANXhq0rbMmARbjpijH7G_eFbQsQOb4Hsupoj-OOccrPiG8PY=w@mail.gmail.com>
Subject: Re: [PATCH 0/3] Rename sifive L2 cache to sifive CCACHE
To:     Ben Dooks <ben.dooks@sifive.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        krzysztof.kozlowski+dt@linaro.org,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Greentime Hu <greentime.hu@sifive.com>,
        Conor Dooley <conor.dooley@microchip.com>,
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

On Tue, Aug 30, 2022 at 3:59 PM Ben Dooks <ben.dooks@sifive.com> wrote:
>
> On 29/08/2022 07:21, Zong Li wrote:
> > Since composible cache may be L3 cache if private L2 cache exists, we
> > should use its original name "composible cache" to prevent confusion.
> >
> > This patchset contains the modification which is related to ccache, such
> > as DT binding and EDAC driver.
> >
> > Greentime Hu (1):
> >    soc: sifive: l2 cache: Rename SiFive L2 cache to composible cache.
> >
> > Zong Li (2):
> >    dt-bindings: sifive-ccache: rename SiFive L2 cache to composible cache
> >    EDAC/sifive: use sifive_ccache instead of sifive_l2
> >
> >   ...ifive-l2-cache.yaml => sifive-ccache.yaml} |   6 +-
> >   drivers/edac/Kconfig                          |   2 +-
> >   drivers/edac/sifive_edac.c                    |  12 +-
> >   drivers/soc/sifive/Kconfig                    |   7 +-
> >   drivers/soc/sifive/Makefile                   |   2 +-
> >   drivers/soc/sifive/sifive_ccache.c            | 221 ++++++++++++++++
> >   drivers/soc/sifive/sifive_l2_cache.c          | 237 ------------------
> >   include/soc/sifive/sifive_ccache.h            |  16 ++
> >   include/soc/sifive/sifive_l2_cache.h          |  16 --
> >   9 files changed, 253 insertions(+), 266 deletions(-)
> >   rename Documentation/devicetree/bindings/riscv/{sifive-l2-cache.yaml => sifive-ccache.yaml} (92%)
> >   create mode 100644 drivers/soc/sifive/sifive_ccache.c
> >   delete mode 100644 drivers/soc/sifive/sifive_l2_cache.c
> >   create mode 100644 include/soc/sifive/sifive_ccache.h
> >   delete mode 100644 include/soc/sifive/sifive_l2_cache.h
>
> Is this series available on a git branch anywhere, I have at least
> one other cleanup I was doing in a similar move to rename and make
> it usable as the l3 cache.
>
> I gave the series a quick review and did not find any issues so far.
>

Thanks for your review, I don't push the series to a public
repository, if you needed, I can push it to somewhere.

> --
> Ben
>
>

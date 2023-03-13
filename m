Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 256BC6B71C8
	for <lists+devicetree@lfdr.de>; Mon, 13 Mar 2023 09:57:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230043AbjCMI5b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Mar 2023 04:57:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230398AbjCMI4y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Mar 2023 04:56:54 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A626823A73
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:53:39 -0700 (PDT)
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0DA8341B6C
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 08:53:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1678697600;
        bh=rdDSrE0VIq+XmHMRyMrdPIQatR30pRaMUhYB/xPPqz8=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=kuuSSMJk3hw+ckPBKbJ8SWBZRfZsr3ER/sfAlmC/FdlRBtBMC0Ddab7SGGQ2LGifp
         4sQXgMLYj41Ck0etnk713G/62NB3AGoVY3yk+1fiG+AdBn2919/mk70vzZr7oMh6rF
         woQ4hcLdBMv7SjEv2Lw30ECx3lGzmgU4Fy3K7MUtl7Pr3gMERdpAgh4jf8LPtcS0xY
         I0fie+jqCv7VhJHHUf7u7zeCP6y72eAQL1kavN65NGD0YZtgXjxZlBKchsICWPfhiw
         xw4iyeukNBbaoTr7rEXxg6rTkQCbxiJkDpbQSaXxwyHhp81vnVailyi2FPPG0C32Pq
         Nh93Boayi9abg==
Received: by mail-qk1-f199.google.com with SMTP id eb13-20020a05620a480d00b00742be8a1a17so6134000qkb.18
        for <devicetree@vger.kernel.org>; Mon, 13 Mar 2023 01:53:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678697598;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rdDSrE0VIq+XmHMRyMrdPIQatR30pRaMUhYB/xPPqz8=;
        b=chZN4APwrC3ScxwyNjHnXsX7zY7B28q44kN42a4exTkuvkkj5TA94Lsd0rC34Vj3No
         Qx79rcq2nDGtCa0JzhSnviaKnw1EptikagEE/+p80kUB8HguJ6GRTjEQdtEFwZ0lNamD
         oKoQ/nhBkahW/PaYGD3igH4SezpKl2b6QWlBayaOcDFvV+WR2dLBNzjBghi3r+eohemB
         u0PSVwEFsUrpB8BjcpkeRZLZsmOqF5M1nTwMv9zQr4d6IZ1vKp9aK7Vk8GQo9lK+rO6X
         0SIwS/sTiBcc0i77FozEg7xqU+FusEPP7U0hE34pa1O2ZV/RTrtk1Nw4qJn3z8wwYaYV
         gsgw==
X-Gm-Message-State: AO0yUKWPIteL6hslIe23Q86ISOqZf1icNaIG664GhY/dlYYYaXgEiqIu
        OQnJ08aKrKd81qPAExE+DDXdcmIUz+qXGUE6mBSflVnrPiR/67QJDR0GPdCbqb5oGMVfMCws8xb
        KGY1azEmds/8sk0LufpiC6UN66gaVN2u3LMs4znPx8R3RlLy2HcslLGk=
X-Received: by 2002:ac8:56f7:0:b0:3bf:b9a4:6d41 with SMTP id 23-20020ac856f7000000b003bfb9a46d41mr9407545qtu.5.1678697598308;
        Mon, 13 Mar 2023 01:53:18 -0700 (PDT)
X-Google-Smtp-Source: AK7set8AA0sa2nCnrV8w1Osh5NxDD45ICECbteHeANn3sQWk04rh+36JVMJfWLEQ4krvOlUN6FZfm4pVyPz1TdTFshg=
X-Received: by 2002:ac8:56f7:0:b0:3bf:b9a4:6d41 with SMTP id
 23-20020ac856f7000000b003bfb9a46d41mr9407529qtu.5.1678697597999; Mon, 13 Mar
 2023 01:53:17 -0700 (PDT)
MIME-Version: 1.0
References: <20230311090733.56918-1-hal.feng@starfivetech.com>
 <20230311090733.56918-12-hal.feng@starfivetech.com> <34b0473a-91bd-453b-91dd-01defde92d68@spud>
 <92306b73-d7d2-0d60-de15-87bcd71714ed@starfivetech.com>
In-Reply-To: <92306b73-d7d2-0d60-de15-87bcd71714ed@starfivetech.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Mon, 13 Mar 2023 09:53:01 +0100
Message-ID: <CAJM55Z-zps4gEohCGyia0nESWYWqQmoChnJZXkw2Zmi5TPV2Wg@mail.gmail.com>
Subject: Re: [PATCH v5 11/21] dt-bindings: clock: Add StarFive JH7110 system
 clock and reset generator
To:     Hal Feng <hal.feng@starfivetech.com>
Cc:     Conor Dooley <conor@kernel.org>, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Ben Dooks <ben.dooks@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Mar 2023 at 04:22, Hal Feng <hal.feng@starfivetech.com> wrote:
> On Sat, 11 Mar 2023 13:11:38 +0000, Conor Dooley wrote:
> > On Sat, Mar 11, 2023 at 05:07:23PM +0800, Hal Feng wrote:
> >> From: Emil Renner Berthing <kernel@esmil.dk>
> >>
> >> Add bindings for the system clock and reset generator (SYSCRG) on the
> >> JH7110 RISC-V SoC by StarFive Ltd.
> >>
> >> Signed-off-by: Emil Renner Berthing <kernel@esmil.dk>
> >> Signed-off-by: Hal Feng <hal.feng@starfivetech.com>
> >> ---
> >>  .../clock/starfive,jh7110-syscrg.yaml         | 104 +++++++++
> >>  MAINTAINERS                                   |   8 +-
> >>  .../dt-bindings/clock/starfive,jh7110-crg.h   | 203 ++++++++++++++++++
> >>  .../dt-bindings/reset/starfive,jh7110-crg.h   | 142 ++++++++++++
> >>  4 files changed, 454 insertions(+), 3 deletions(-)
> >>  create mode 100644 Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> >>  create mode 100644 include/dt-bindings/clock/starfive,jh7110-crg.h
> >>  create mode 100644 include/dt-bindings/reset/starfive,jh7110-crg.h
> >>
> >> diff --git a/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml b/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> >> new file mode 100644
> >> index 000000000000..84373ae31644
> >> --- /dev/null
> >> +++ b/Documentation/devicetree/bindings/clock/starfive,jh7110-syscrg.yaml
> >
> >> +  clock-names:
> >> +    oneOf:
> >> +      - items:
> >> +          - const: osc
> >> +          - enum:
> >> +              - gmac1_rmii_refin
> >> +              - gmac1_rgmii_rxin
> >> +          - const: i2stx_bclk_ext
> >> +          - const: i2stx_lrck_ext
> >> +          - const: i2srx_bclk_ext
> >> +          - const: i2srx_lrck_ext
> >> +          - const: tdm_ext
> >> +          - const: mclk_ext
> >> +
> >> +      - items:
> >> +          - const: osc
> >> +          - const: gmac1_rmii_refin
> >> +          - const: gmac1_rgmii_rxin
> >> +          - const: i2stx_bclk_ext
> >> +          - const: i2stx_lrck_ext
> >> +          - const: i2srx_bclk_ext
> >> +          - const: i2srx_lrck_ext
> >> +          - const: tdm_ext
> >> +          - const: mclk_ext
> >
> > Assuming nothing else here is optional,
> > Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
>
> Yeah, nothing else here is optional. Thanks for your review.

Wait, what kind of optional are we talking about here? Surely all the
i2s and tdm external clocks are optional in the sense that you don't
need them on a board that never does any audio processing.

/Emil

>
> Best regards,
> Hal

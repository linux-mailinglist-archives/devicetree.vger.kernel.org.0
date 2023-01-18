Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EFA0670EA4
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 01:34:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229561AbjARAeU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 19:34:20 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229645AbjARAeD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 19:34:03 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA10A5955B
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:01:51 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id q10so12997421wrs.2
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 16:01:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VM4KU2n0HRrYiCXcfwwNwOnDUUhhKsRzFTZMgsrTMWQ=;
        b=Mn26nH7X4O6fTQ38DDIJSJ9ir/bBQxjzAy0eyNGjUQNQHKD2AaThmMuu9uq0PdPwft
         T9FDz74tQjO1j0wOsoj85xFePqaime8vdQEa+mgSGx4ZQoktguIgUW32228cnJB9t5NK
         IFDhy6mKXsdM8fjCM49oipmhbGQZ0I47J2xiz59OadODBEzIQx8pq/mKpNVAGusB8rAs
         Ek2GgndQiI213ZsMO/8+c9G5n923+DqwVu+y5HTbICqgxbczAfL60Ibk5wW+3uz4XeZm
         2G9TSuV+ATOMOqBPzYe4XbpytScrwyWEO+fI187XMZTqPg4mMv51o7PcCR/G3RfGIvUw
         j1KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VM4KU2n0HRrYiCXcfwwNwOnDUUhhKsRzFTZMgsrTMWQ=;
        b=ZcCk0xYtVCDBLhIrWV69ISyqgJm4u6d7RCTdMKjRbbqf5f50e+PP95e9AclXofczMB
         TTtAzO5PtH8s3hF/L1aoN+/tQ4m35qp6naCJOUN+O+cSBgAOIxxV3pwoOrQv7p+TQovz
         gC3UOC/M6VC5VqTDs6b5TLes5c7eQhfbvpjM2y7o/HJxkF0AH/Dlb2stY54ohqzH8Dx9
         4cYW8v7BcI3jxb8cpu9dj7BV2DT3KKIM3NCVLYyllqVkO3MCgZsYE4UX+t2ag1ZOMZ0t
         JIn8k+4BIiZtiimryoCAf7EhmaUsE9DQvs0FgYHfanzboxwAvckQf6np4zVGOx/SZrFp
         Tq4Q==
X-Gm-Message-State: AFqh2kovpSi5YuC0R7ncUwwYFhaawSsD1NPFqgTa2/BGzUBSvzcoBplP
        LAS1vv2ff16Wo4fYJRaO/+6k2XQNWE4=
X-Google-Smtp-Source: AMrXdXvj2R9S/8u6fGMV9/RE1Ku4IlUwQRFE1HUaitb0X8DZCxUK464M/KOHVH6841uiGhus5n88JA==
X-Received: by 2002:adf:e385:0:b0:2bd:d136:9eac with SMTP id e5-20020adfe385000000b002bdd1369eacmr4079144wrm.9.1674000110342;
        Tue, 17 Jan 2023 16:01:50 -0800 (PST)
Received: from archbook.localnet (84-72-105-84.dclient.hispeed.ch. [84.72.105.84])
        by smtp.gmail.com with ESMTPSA id g1-20020a5d46c1000000b00241cfe6e286sm29625200wrs.98.2023.01.17.16.01.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 16:01:49 -0800 (PST)
From:   Nicolas Frattaroli <frattaroli.nicolas@gmail.com>
To:     Michael Tretter <m.tretter@pengutronix.de>
Cc:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>,
        linux-rockchip@lists.infradead.org,
        Shengyu Qu <wiagn233@outlook.com>, devicetree@vger.kernel.org,
        heiko@sntech.de, jacob-chen@iotwrt.com, kernel@pengutronix.de,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        michael.riesch@wolfvision.net, robh+dt@kernel.org,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
Date:   Wed, 18 Jan 2023 01:01:48 +0100
Message-ID: <5241675.okTXgP3Kn8@archbook>
In-Reply-To: <20230117124114.GF23495@pengutronix.de>
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <20221123092841.GB13042@pengutronix.de>
 <20230117124114.GF23495@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Dienstag, 17. Januar 2023 13:41:14 CET Michael Tretter wrote:
> On Wed, 23 Nov 2022 10:28:41 +0100, Michael Tretter wrote:
> > On Tue, 22 Nov 2022 20:47:49 +0100, Nicolas Frattaroli wrote:
> > > On Dienstag, 22. November 2022 00:10:25 CET Peter Geis wrote:
> > > > On Mon, Nov 21, 2022 at 12:34 PM Ezequiel Garcia
> > > > <ezequiel@vanguardiasur.com.ar> wrote:
> > > > > On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com>=
 wrote:
> > > > > > I remember someone said that rga2 has only 32bit address space =
but not
> > > > > > having a mmu or mmu needs to be configured. Better ask by yours=
elf in
> > > > > > pine64 discord since I'm not sure about that.
> > > > > > =E4=BA=8E 2022=E5=B9=B411=E6=9C=8822=E6=97=A5 GMT+08:00 =E4=B8=
=8A=E5=8D=8812:41:16, Michael Tretter <m.tretter@pengutronix.de> =E5=86=99=
=E5=88=B0:
> > > > > > >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> > > > > > >> Someone from pine64 discord found that RGA2 doesn't work pro=
perly on over
> > > > > > >>
> > > > > > >> 4GB memory RK3568 devices. Are you sure current driver works=
 now?
> > > > > > >
> > > > > > >I am absolutely sure that the driver works on a 2GB ROCK3A boa=
rd.
> > > > > > >Unfortunately, I don't have a device with 4GB or more memory a=
nd I cannot test
> > > > > > >the driver with such a device.
> > > > > > >
> > > > > > >As the documentation for the RGA2 is the same in the TRM of th=
e rk3288 and
> > > > > > >rk3568, I would guess that the driver doesn't work on a rk3288=
 with more than
> > > > > > >4GB (if there is such a thing) either and the driver needs to =
be fixed for
> > > > > > >both SoCs.
> > > > > > >
> > > > >
> > > > > In any case, if there's some kind of issue it must be in the driv=
er,
> > > > > and not in the device tree binding (i.e. this patchset).
> > > >=20
> > > > An unfortunate number of Rockchip drivers break on rk356x boards wi=
th
> > > > more than 4GB of ram. I've found requesting memory allocations with
> > > > the GFP_DMA flag solves the problem, as the kernel only allocates
> > > > 32bit addresses for DMA on rk356x. This is similar to the bug with =
the
> > > > ITS MSI allocations.
> > >=20
> > > the problem in this case at least partly seems to be down to the driv=
er
> > > assuming 32 bit addresses, see e.g. [1] (if I understand the code
> > > correctly) and [2]. When I asked in the #armlinux IRC on Libera.chat
> > > about this, Robin Murphy remarked:
> > >=20
> > >   <robmur01> yeesh, the virt_to_phys/dma_sync abuse is even worse
> > >   - in that particular instance I'd be inclined to replace
> > >   {src,dst}_mmu_pages with proper coherent DMA buffers
> > >=20
> > > So the driver in general needs some cleanup, which contributes to the
> > > problem.
> >=20
> > As far as I understand the 4GB are a hardware limitation.
> >=20
> > According to the rk3568 TRM, the RGA2_MMU_SRC_BASE has 28 bits for the =
upper
> > 28 bits of the address of the MMU TLB. Thus the MMU TLB must be located=
 within
> > 4GB memory.
> >=20
> > And within the MMU TLB, the addresses are 32 bit as well (unless I am m=
issing
> > something important). Unfortunately, I couldn't find any documentation =
for the
> > TLB. The downstream driver writes only 32 bit addresses to the TLB as w=
ell.
> > Thus, I assume that all video buffers must be located within 4GB memory=
, too.
> >=20
> > While I agree that the driver needs some cleanup and may use correct ty=
pes for
> > handling the bit size limitation, I think this isn't some driver limita=
tion.
> > Maybe the driver should set the dma mask to 32 bits and should be expli=
citly
> > aware of the 32 bit limit.
> >=20
> > >=20
> > > But as was said, this isn't a problem with the device tree, so it sho=
uld
> > > still make it in. It just means that the driver is broken on 8GB RK35=
6x.
>=20
> Nicolas: Is this your Acked-By?
>=20
> Who would pick up the patch? Heiko?
>=20
> Michael
>=20

Sure,

Acked-by: Nicolas Frattaroli <frattaroli.nicolas@gmail.com>

Though I'm not sure how much weight my Acked-by carries here.

=46or applying the patch, yes that would be done by Heiko.

Cheers,
Nicolas Frattaroli




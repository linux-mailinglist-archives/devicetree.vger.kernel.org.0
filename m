Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E13B520F6D
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 10:08:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237544AbiEJILz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 04:11:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237511AbiEJILx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 04:11:53 -0400
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 84E5C259F90
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 01:07:56 -0700 (PDT)
Received: from mail-yb1-f173.google.com ([209.85.219.173]) by
 mrelayeu.kundenserver.de (mreue010 [213.165.67.97]) with ESMTPSA (Nemesis) id
 1N7iOw-1nsPbE2VMo-014hZ3 for <devicetree@vger.kernel.org>; Tue, 10 May 2022
 10:07:54 +0200
Received: by mail-yb1-f173.google.com with SMTP id r11so29261458ybg.6
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 01:07:54 -0700 (PDT)
X-Gm-Message-State: AOAM530hC0bbkFZ1xXYL64pnFnbFmQZie6W2D9i0ZKMbNwHwl4VuM8CD
        XNDxghgIPkQDGNcQ7hhP1tF9ceVU1eCult/c6zM=
X-Google-Smtp-Source: ABdhPJxZkma0O6QtReHOkgdZVslQ52BEo6cVnAkEKrGL7gi26GMpuYJF5exwXilUaUijrom5XbzZGHxoHSjm/Bt1+OA=
X-Received: by 2002:a25:c604:0:b0:645:d969:97a7 with SMTP id
 k4-20020a25c604000000b00645d96997a7mr16206286ybf.134.1652169585696; Tue, 10
 May 2022 00:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20220510152020.1.I6094f0a935212eabc7d9348d6cb5a2517ccc2514@changeid>
 <CAGXv+5FBJScU_-YC=vhPVM0KEO5vtP=KOH_gRnpFivQaHziU_Q@mail.gmail.com>
In-Reply-To: <CAGXv+5FBJScU_-YC=vhPVM0KEO5vtP=KOH_gRnpFivQaHziU_Q@mail.gmail.com>
From:   Arnd Bergmann <arnd@arndb.de>
Date:   Tue, 10 May 2022 09:59:29 +0200
X-Gmail-Original-Message-ID: <CAK8P3a06-fCBUAu3KWu75yBsdN9M4szkr+7Ngu8FcO+jW+PYhA@mail.gmail.com>
Message-ID: <CAK8P3a06-fCBUAu3KWu75yBsdN9M4szkr+7Ngu8FcO+jW+PYhA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mt8173: add aliases for mt8173 mmc device nodes
To:     Chen-Yu Tsai <wenst@chromium.org>
Cc:     Eizan Miyamoto <eizan@chromium.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "moderated list:ARM/Mediatek SoC..." 
        <linux-mediatek@lists.infradead.org>, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:cQqoutq7QzC9ssbW9A7EV250ab5WeSLCnPcCVLjqJ7rtzcY4/uz
 D+0oPlVMDskDMM6f+Ja0ilZcH2ImQ0F5thUVUHkRmQIFkEicxtiUWOLVGOfUpQA+v+N+WbE
 bwN4yF4G5ZsaSZoshyR5pw8tx8EBXA1x/f9FtwckmetHaEc2FfBC8QRa582HJQhRLfdN2ja
 OmaQQRNDTH5N/s6Om/How==
X-UI-Out-Filterresults: notjunk:1;V03:K0:e4IORBo3zjc=:SpD1yXyTAYSTCBOnBCHtS3
 oaomp5To8UomqNjRX0f7YR86nlnUVN/vopEdFYS5ZYJ/1xStOxIH+KCAhABc5L+JNlTnpDnVa
 y5pxqRP0gPoq/a22V9SF1lymCQYh881w08k3DV32jYSFXhO6vgit1ABiTu2IRUSvxFXxbvqtb
 xiniisydaJX6yz0VoNuGJy7tSceVyPZwqmJ4P+SzgiEP74MCXA/t69tfhpcwv8y8kgMEmu+xJ
 Fqfl8GHK0Uc4pwB2TUQ7znsSE6fQUDsL5siilalNbLf+xcI06Ui/gv6FcPgnqzStfHxvL4/UK
 0mnQB2ub1l1zkDmf5JhPlKK3LFHSKme0+toEDWq8MtF/xdy6ADLHPXl0A5ZTj0gabPrVOAgdn
 zrdYjt2VdSckSZaOEnilxdN7c69piFt2sTyuTLsnAgWNO4kR/dvQUfu74ojK1nrtO6ebozhY2
 OA4PC+N3j9QM4n4JUnplG269YY8aENGbLZvTVqzvi3ReV2TKmCaoB/mTvrxj1hsfDdUs50qON
 3rsw6qNiiAm7/PuWaNhBlmfAERMtazd4hal3AQi4yeSLfs07BHiD8OINS7g65w1/15XTq5hc0
 IDkjzwgTIy/jSTPnU2nZR8T/2v6EM3vYwCSx/dFrK9ebp0JvgiSZ7nsAyPdPOqMRJGS7k77VL
 l+EIuhbn7dOzW6j6ypWmSLKph2J59SbnHiHKNGQkJuiAFIl37BLahWVeORsSJSRNk8q1G7iAa
 DzvmNOHygFWkn8qA9ZxFCVP5jXUke06J5VrbXDbuC4UbZuuialdz0MetmRFX+gJzdVDeCzmDH
 WZdto8f6TSH+IpF3vBi3ILJxTC8I0jTBoG+o29W/BJPqIJ4O64=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_BL,RCVD_IN_MSPIKE_ZBI,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 10, 2022 at 9:36 AM Chen-Yu Tsai <wenst@chromium.org> wrote:
> On Tue, May 10, 2022 at 1:21 PM Eizan Miyamoto <eizan@chromium.org> wrote:
> >
> > Doing this makes them get enumerated in a deterministic order so that
> > the assigned name in /dev that the mmc devices get assigned is
> > consistent across reboots.
>
> Arnd, one of the soc maintainers asked folks not to do this:
>
> https://lore.kernel.org/all/CAK8P3a3_uO23Y0tyfdh26tmCVcyp6XM+ur0WUd4khGUoBb32Hw@mail.gmail.com/
>
> and subsequently all mmc aliases for Rockchip were moved to the board level.

Right, please move the aliases into the per-board dts files, and make sure
to only list the ones that are actually connected on a given machine.

> > See ead9f7d7ea9 ("arm64: dts: qcom: sc7180: Assign numbers to eMMC and
> > SD") for similar work.
>
> I don't know why it didn't happen for Qualcomm though.

It takes a while to get things consistent, need to have another look there.

      Arnd

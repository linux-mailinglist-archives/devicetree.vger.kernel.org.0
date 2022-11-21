Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1586A633080
	for <lists+devicetree@lfdr.de>; Tue, 22 Nov 2022 00:10:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbiKUXKt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 18:10:49 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231302AbiKUXKl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 18:10:41 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D331D06FF
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 15:10:39 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id t4so9553152wmj.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 15:10:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=utZ5LumivO+OC9wzfTv52noCJX/L2vcsR/WMsYswU8Y=;
        b=mEymlC0lSrr8gCvp9nv53tYGEyd6zdngNlqDzkQ5YB5egbSbYshqR2VZ5GzRo443jy
         inbcFMd405X2ZmZLtdDrxvwtOw04bc8eXkzbSDpQal5JVgTnt6qrqsyqhuW9uTAxTrY5
         jLgysul5z+Va11u8bJ2dbilxPk8BzgDrmPciTwDBQBIK5qTE0JzOoA/V7QDSu07wzVD+
         1fRUss0cl8VnQYaCLM5iYjuTUerJ5Pcd2b0NTnNNP/YMmupBo1fb9oN33+JSyUsDhfRE
         fG0INJ/va2nYWbnnUtQlltgxkBtFPvztjV0bwyLSjUlPbEl+zkxxlMLtt5R9g83h6Ocw
         ivfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=utZ5LumivO+OC9wzfTv52noCJX/L2vcsR/WMsYswU8Y=;
        b=DL6kuc0+wgVUUrbE/41OmXTRlAxnpEzbkHGFKgmK8bzy6P/5ZaOKiINP6TfxXuiNZ7
         SvGvVIJflnQRS5IMDRtg2ZbJ1ypFlT0lM+NMlPdR/rWhueKXCrZrfJ/I7TPuv8vD7Oey
         WjnX5YQJAvRMKFC5L2VsTFSh5s7BkINa031pyvh4XD6oO0notPy11WBDrp3kAPMjzPKc
         QoKyuenPvvCm8W44vGIWz8rTmx4t1x2k5Fy5KaW21Qsg1haNcCX6rvMqS7eT+INXor3l
         xDnHWikR29auyS98Gck4he7gJfRH6aOCZrwhBHNmjzqxP7RrkiFsyFLVilaSvzJAPufS
         ZIvg==
X-Gm-Message-State: ANoB5pkO20uejOnQuEqgO0ReHsb5DLo1h3uXLLemvOC+B7YKKYhWjsQD
        xuOdX2dzdoPmvGSVGco1HkhTX8c5tuAtjaYhMLA=
X-Google-Smtp-Source: AA0mqf59gd0PxuJuOoz6ctMvQVZdwYBU10xhRwhWwUUI/QKk0XjLP15zbnj62qrWGOvz+sImByXUEWtpM/2Scp2qvhU=
X-Received: by 2002:a7b:c5c9:0:b0:3cf:cfea:904c with SMTP id
 n9-20020a7bc5c9000000b003cfcfea904cmr3760801wmk.33.1669072237720; Mon, 21 Nov
 2022 15:10:37 -0800 (PST)
MIME-Version: 1.0
References: <20221121151755.2072816-3-m.tretter@pengutronix.de>
 <TY3P286MB2611FB223B1CC437B01BD984980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <20221121164116.GE15565@pengutronix.de> <TY3P286MB261119C709225F2DED97CF81980A9@TY3P286MB2611.JPNP286.PROD.OUTLOOK.COM>
 <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
In-Reply-To: <CAAEAJfC74Am19+GSpCpbWJVpdbgv4n=3pjMHNkpRcCQfwi5xQA@mail.gmail.com>
From:   Peter Geis <pgwipeout@gmail.com>
Date:   Mon, 21 Nov 2022 18:10:25 -0500
Message-ID: <CAMdYzYr68xvNvJRiJw9JyHoN7v12bvucdWLhdkt5j1QJqEuApg@mail.gmail.com>
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: Add RGA2 support to rk356x
To:     Ezequiel Garcia <ezequiel@vanguardiasur.com.ar>
Cc:     Shengyu Qu <wiagn233@outlook.com>,
        Michael Tretter <m.tretter@pengutronix.de>,
        devicetree@vger.kernel.org, heiko@sntech.de, jacob-chen@iotwrt.com,
        kernel@pengutronix.de, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, michael.riesch@wolfvision.net,
        robh+dt@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 12:34 PM Ezequiel Garcia
<ezequiel@vanguardiasur.com.ar> wrote:
>
> Hi Shengyu, Michael,
>
> On Mon, Nov 21, 2022 at 2:13 PM Shengyu Qu <wiagn233@outlook.com> wrote:
> >
> > Hi,
> > I remember someone said that rga2 has only 32bit address space but not =
having a mmu or mmu needs to be configured. Better ask by yourself in pine6=
4 discord since I'm not sure about that.
> >
> > Shengyu
> >
> >
> > =E4=BA=8E 2022=E5=B9=B411=E6=9C=8822=E6=97=A5 GMT+08:00 =E4=B8=8A=E5=8D=
=8812:41:16, Michael Tretter <m.tretter@pengutronix.de> =E5=86=99=E5=88=B0:
> > >Hi,
> > >
> > >On Tue, 22 Nov 2022 00:01:28 +0800, Shengyu Qu wrote:
> > >> Someone from pine64 discord found that RGA2 doesn't work properly on=
 over
> > >>
> > >> 4GB memory RK3568 devices. Are you sure current driver works now?
> > >
> > >I am absolutely sure that the driver works on a 2GB ROCK3A board.
> > >Unfortunately, I don't have a device with 4GB or more memory and I can=
not test
> > >the driver with such a device.
> > >
> > >As the documentation for the RGA2 is the same in the TRM of the rk3288=
 and
> > >rk3568, I would guess that the driver doesn't work on a rk3288 with mo=
re than
> > >4GB (if there is such a thing) either and the driver needs to be fixed=
 for
> > >both SoCs.
> > >
>
> In any case, if there's some kind of issue it must be in the driver,
> and not in the device tree binding (i.e. this patchset).

An unfortunate number of Rockchip drivers break on rk356x boards with
more than 4GB of ram. I've found requesting memory allocations with
the GFP_DMA flag solves the problem, as the kernel only allocates
32bit addresses for DMA on rk356x. This is similar to the bug with the
ITS MSI allocations.

>
> Regards,
> Ezequiel
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

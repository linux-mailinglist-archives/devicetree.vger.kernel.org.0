Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBB665A5B2F
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 07:37:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229556AbiH3FhT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 01:37:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiH3FhT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 01:37:19 -0400
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F4F5B287C
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 22:37:13 -0700 (PDT)
Received: from secure.fukaumi.org ([10.0.0.2])
        by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27U5a9Ob032167;
        Tue, 30 Aug 2022 14:36:09 +0900
From:   FUKAUMI Naoki <naoki@radxa.com>
To:     jagan@amarulasolutions.com
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com,
        robh+dt@kernel.org, stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date:   Tue, 30 Aug 2022 05:35:39 +0000
Message-Id: <20220830053539.181707-1-naoki@radxa.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
References: <CAMty3ZAEetiD4kTLeRVved2wb_uK-MqZ3h3TQByQa-0j9TQqRg@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.8 required=5.0 tests=BAYES_00,KHOP_HELO_FCRDNS,
        SPF_HELO_NONE,SPF_SOFTFAIL,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

> > > +     aliases {
> > > +             mmc0 = &sdmmc;
> >
> > please add
> >
> >                 mmc1 = &sdhci;
> >
> > as like as other ROCK (Pi) 4 series.
> 
> are you sure? other use the same.
> 
> mmc0 = &sdmmc;
> mmc1 = &sdhci;

well... I asked "please do the same", i.e.

mmc0 = &sdmmc;
mmc1 = &sdhci;

is there any problem?

Best regards,

--
FUKAUMI Naoki

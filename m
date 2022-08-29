Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C12D5A55DA
	for <lists+devicetree@lfdr.de>; Mon, 29 Aug 2022 23:02:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229595AbiH2VCG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Aug 2022 17:02:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229692AbiH2VCF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Aug 2022 17:02:05 -0400
Received: from mail.naobsd.org (sakura.naobsd.org [160.16.200.221])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80DCA7E02C
        for <devicetree@vger.kernel.org>; Mon, 29 Aug 2022 14:02:02 -0700 (PDT)
Received: from secure.fukaumi.org ([10.0.0.2])
        by mail.naobsd.org (8.14.4/8.14.4/Debian-4.1ubuntu1.1) with ESMTP id 27TL15mO030743;
        Tue, 30 Aug 2022 06:01:06 +0900
From:   FUKAUMI Naoki <naoki@radxa.com>
To:     jagan@amarulasolutions.com
Cc:     abbaraju.manojsai@amarulasolutions.com, devicetree@vger.kernel.org,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, naoki@radxa.com,
        robh+dt@kernel.org, stephen@radxa.com
Subject: Re: [PATCH 2/2] arm64: dts: rockchip: rk3399: Radxa ROCK 4C+
Date:   Mon, 29 Aug 2022 21:01:03 +0000
Message-Id: <20220829210103.518467-1-naoki@radxa.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
References: <CAMty3ZDxvaFSYpjYniXwpA6Wfyyn=c8mW5XNNUaiuqSb1niC9w@mail.gmail.com>
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

sorry, I noticed I sent previous email to wrong thread (v1, not v2).

> > > +&sdmmc {
> > > +     bus-width = <4>;
> > > +     cap-mmc-highspeed;
> > > +     cap-sd-highspeed;
> > > +     card-detect-delay = <800>;
> > > +     disable-wp;
> > > +     pinctrl-names = "default";
> > > +     pinctrl-0 = <&sdmmc_clk &sdmmc_cd &sdmmc_cmd &sdmmc_bus4>;
> > > +     vqmmc-supply = <&vccio_sd>;
> > > +     status = "okay";
> > > +};
> >
> > does card detect work for you? it doesn't work for me. I think it
> > needs
> 
> Yes. it is detecting for me. I've booted from SD. 2022.03.04 V1.2
> revision board.

I have same board, but I'm using eMMC as boot media. do you have any
eMMC module?

what I tried was inserting uSD card while running Linux on eMMC. it
didn't work.

Best regards,

--
FUKAUMI Naoki

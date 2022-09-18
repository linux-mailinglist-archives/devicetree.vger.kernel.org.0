Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFC625BBCC9
	for <lists+devicetree@lfdr.de>; Sun, 18 Sep 2022 11:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229557AbiIRJ3b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Sep 2022 05:29:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229572AbiIRJ3a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Sep 2022 05:29:30 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 37CF621830
        for <devicetree@vger.kernel.org>; Sun, 18 Sep 2022 02:29:23 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oZqby-0007TB-EG; Sun, 18 Sep 2022 11:29:14 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 5/6] ARM: dts: rockchip: Add Rockchip RV1126 pinctrl
Date:   Sun, 18 Sep 2022 11:29:13 +0200
Message-ID: <2646893.mvXUDI8C0e@diego>
In-Reply-To: <CA+VMnFwb0bmvsmAqbfEN12BGsTXfxPs2UimjNf9cAvayKBLrbQ@mail.gmail.com>
References: <20220915163947.1922183-1-jagan@edgeble.ai> <3182731.oiGErgHkdL@phil> <CA+VMnFwb0bmvsmAqbfEN12BGsTXfxPs2UimjNf9cAvayKBLrbQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Samstag, 17. September 2022, 16:37:45 CEST schrieb Jagan Teki:
> Hi Heiko,
> 
> On Sat, 17 Sept 2022 at 19:56, Heiko Stuebner <heiko@sntech.de> wrote:
> >
> > Hi Jagan,
> >
> > Am Donnerstag, 15. September 2022, 18:39:46 CEST schrieb Jagan Teki:
> > > Add pinctrl definitions for Rockchip RV1126 and the pinctrl
> > > conf's are included it from arm64 rockchip devicetree path.
> >
> > I'm not sure I remember the cause. So could you tell me
> > why they are needed in the arm64-space as well?
> 
> From RK3568 on-wards pinctrl configurations are maintained in common
> conf file rockchip-pinconf.dtsi and it is available in arm64 path
> (arch/arm64/boot/dts/rockchip/rockchip-pinconf.dtsi). So even for
> RV1126 this patch uses that common conf file as these are common
> across all rockchip platforms.
> 
> Let me know if I'm missing anything?

looking at it closely, _now_ I see the inclusion of the arm64
pinconfig dtsi :-D .

While travelling to and from ELCE I somehow missed seeing that.


Heiko



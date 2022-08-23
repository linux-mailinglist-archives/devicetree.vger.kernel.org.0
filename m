Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DCEC59EC13
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 21:19:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231839AbiHWTSu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 15:18:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233734AbiHWTS3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 15:18:29 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31275119F10
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 10:56:21 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oQY8L-0006Mb-Bi; Tue, 23 Aug 2022 19:56:13 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Rob Herring <robh@kernel.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        Jagan Teki <jagan@edgeble.ai>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Finley Xiao <finley.xiao@rock-chips.com>
Subject: Re: [PATCH v3 09/19] clk: rockchip: Add dt-binding header for RV1126
Date:   Tue, 23 Aug 2022 19:56:12 +0200
Message-ID: <3175969.jE0xQCEvom@diego>
In-Reply-To: <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
References: <20220818124132.125304-1-jagan@edgeble.ai> <20220822181009.GA80526-robh@kernel.org> <CA+VMnFwE8jBxXwQPVEzEUosxjuEVMNGB9NnBuHYDw_360qJztQ@mail.gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 23. August 2022, 14:57:20 CEST schrieb Jagan Teki:
> On Mon, 22 Aug 2022 at 23:40, Rob Herring <robh@kernel.org> wrote:
> >
> > On Thu, Aug 18, 2022 at 06:11:22PM +0530, Jagan Teki wrote:
> > > Add the dt-bindings header for the Rockchip RV1126, that gets shared
> > > between the clock controller and the clock references in the dts.
> > >
> > > Signed-off-by: Finley Xiao <finley.xiao@rock-chips.com>
> > > Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> > > ---
> > > Changes for v3:
> > > - update the file name
> > > Changes for v2:
> > > - exclude from clk patch
> > >
> > >  .../dt-bindings/clock/rockchip,rv1126-cru.h   | 632 ++++++++++++++++++
> > >  1 file changed, 632 insertions(+)
> > >  create mode 100644 include/dt-bindings/clock/rockchip,rv1126-cru.h
> > >
> > > diff --git a/include/dt-bindings/clock/rockchip,rv1126-cru.h b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > new file mode 100644
> > > index 000000000000..cfba8226ded2
> > > --- /dev/null
> > > +++ b/include/dt-bindings/clock/rockchip,rv1126-cru.h
> > > @@ -0,0 +1,632 @@
> > > +/* SPDX-License-Identifier: GPL-2.0 */
> >
> > Dual license please. Need an ack from Rockchip for that (and not just
> > on this one).
> 
> Heiko or Kever.
> 
> Can you comment on this?

I guess this is more a question for Kever,

@Kever can Rockchip allow that dual licensing for the dt-binding header
(MIT as second license I think - at least like all the other binding headers)
both in this patch and also in the other header-patches of this series?

Thanks
Heiko



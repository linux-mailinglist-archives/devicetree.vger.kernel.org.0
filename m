Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CFFA8529D8A
	for <lists+devicetree@lfdr.de>; Tue, 17 May 2022 11:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232719AbiEQJLr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 May 2022 05:11:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244422AbiEQJLK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 May 2022 05:11:10 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 976C521E34
        for <devicetree@vger.kernel.org>; Tue, 17 May 2022 02:11:06 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nqtEK-0000za-Qh; Tue, 17 May 2022 11:11:00 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     dri-devel@lists.freedesktop.org,
        Sascha Hauer <s.hauer@pengutronix.de>, robh+dt@kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Peter Geis <pgwipeout@gmail.com>, krzk+dt@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: display: rockchip: make reg-names mandatory for VOP2
Date:   Tue, 17 May 2022 11:10:59 +0200
Message-ID: <8064279.T7Z3S40VBb@diego>
In-Reply-To: <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
References: <20220511082109.1110043-1-s.hauer@pengutronix.de> <6824319.LvFx2qVVIh@phil> <c397bff2-b4c0-3f85-e5b9-22f03bc80a2b@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Dienstag, 17. Mai 2022, 11:02:06 CEST schrieb Krzysztof Kozlowski:
> On 14/05/2022 00:26, Heiko Stuebner wrote:
> > Hi Rob, Krzysztof,
> > 
> > Am Mittwoch, 11. Mai 2022, 10:21:07 CEST schrieb Sascha Hauer:
> >> The VOP2 driver relies on reg-names properties, but these are not
> >> documented. Add the missing documentation, make reg-names mandatory
> >> and increase minItems to 2 as always both register spaces are needed.
> >>
> >> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > 
> > does this look ok now?
> 
> Neither Rob nor me was Cced on original email, so I don't have it in my
> mailbox... I would expect that scripts/get_maintainers.pl is a known tool.

Rob wrote in the past that he's working off of the devicetree-patchwork,
and has reviewed the binding yesterday [0].

But you're right, including all the maintainers get_maintainers.pl suggests
would be better in the future.


[0] https://lore.kernel.org/r/20220516151226.GA2653888-robh@kernel.org



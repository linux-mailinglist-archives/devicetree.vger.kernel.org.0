Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 449054EB4E4
	for <lists+devicetree@lfdr.de>; Tue, 29 Mar 2022 22:54:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232517AbiC2U41 convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Tue, 29 Mar 2022 16:56:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232034AbiC2U40 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Mar 2022 16:56:26 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19F114B41F
        for <devicetree@vger.kernel.org>; Tue, 29 Mar 2022 13:54:41 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=diego.localnet)
        by gloria.sntech.de with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <heiko@sntech.de>)
        id 1nZIrO-0006gC-7o; Tue, 29 Mar 2022 22:54:38 +0200
From:   Heiko =?ISO-8859-1?Q?St=FCbner?= <heiko@sntech.de>
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-rockchip@lists.infradead.org
Subject: Re: arm/rockchip.yaml - many separate entries instead of enums
Date:   Tue, 29 Mar 2022 22:54:37 +0200
Message-ID: <1681233.QkHrqEjB74@diego>
In-Reply-To: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
References: <ce367384-3d44-b7a9-06cd-1ca1f2ddf7e9@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8BIT
Content-Type: text/plain; charset="iso-8859-1"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_NONE,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hey :-) ,

Am Dienstag, 29. März 2022, 19:05:24 CEST schrieb Krzysztof Kozlowski:
> Hi Heiko,
> 
> I found that Documentation/devicetree/bindings/arm/rockchip.yaml uses
> pattern of one board per item in oneOf.
> 
> This leads to quite big file, with many entries, although gives nice
> description for each board.

that was the original intention in doing it this way, preserving the
normal readability while adding machine readability to it :-)

> I find enum-based pattern, like FSL [1], much more readable and compact.
> What do you think? I could re-organize the arm/rockchip.yaml, but I
> don't want to mess with your preference.

I do like the current way as it does only contains one way of doing it.

As far as I can see, the fsl one has multiple types, like the one you
pointed at, for a list of boards + one soc that works for the simple
plethora of regular boards.

But also additional types that do it similarly to Rockchip like the 
	"i.MX6Q Advantech DMS-BA16 boards"
directly below it.


As we have both cases here as well, I really don't like this mix
but instead really like to have only one approach, hence the
one-entry-per-board-family we do in rockchip.yaml [2]

For human readability I really do consider having _one_ way
of describing boards superior to mixing approaches and the
automated parsing doesn't care, as long as the syntax is correct ;-)


Heiko

[2] https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/rockchip.yaml#L507

> [1]
> https://elixir.bootlin.com/linux/latest/source/Documentation/devicetree/bindings/arm/fsl.yaml#L191
> 
> Best regards,
> Krzysztof
> 





Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4FEB6569397
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 22:51:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231841AbiGFUvr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 16:51:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54036 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230375AbiGFUvq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 16:51:46 -0400
Received: from hall.aurel32.net (hall.aurel32.net [IPv6:2001:bc8:30d7:100::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC4021AD82
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 13:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=aurel32.net
        ; s=202004.hall; h=In-Reply-To:Content-Type:MIME-Version:References:
        Message-ID:Subject:Cc:To:From:Date:Content-Transfer-Encoding:From:Reply-To:
        Subject:Content-ID:Content-Description:X-Debbugs-Cc;
        bh=cpsupG4wNSVWGSNGpgP/ZSMxTCTkjn3ZZ2DZK/f6x+E=; b=PmD0CeTOjqgFhCcczhh4k1/tss
        acu5odQz4clZS//sIRDDdE/5fOgKQ8OXZG4Fa0UABAq03WYr3hBeysXfmVbFVJxqW+S/vjvs3zYIz
        Wj7h2Vp0BeKAi9DDFcU0WoT6VGJGaofB54cL0XyPqUvtNSQNjoptyuggxXP/MMmGDYpbc++VEshFK
        jbCUNbmtMfT5ZhqbUDOjhvQowiV8mg2RKinC9CYPZFCDTiag66Aq848fGRmZStMBJU5H/PwpgmSpu
        VJAND4+fpumz/IMc95AhOzQQvUFN3SHWDdxPrpTXOas9fCoh5tCAgl2l8HsV+M3YDl21KylaBN+9X
        ZUYY7gdw==;
Received: from [2a01:e34:ec5d:a741:8a4c:7c4e:dc4c:1787] (helo=ohm.rr44.fr)
        by hall.aurel32.net with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <aurelien@aurel32.net>)
        id 1o9Bzn-004uGC-TB; Wed, 06 Jul 2022 22:51:39 +0200
Received: from aurel32 by ohm.rr44.fr with local (Exim 4.95)
        (envelope-from <aurelien@aurel32.net>)
        id 1o9Bzl-0005Hm-Rq;
        Wed, 06 Jul 2022 22:51:37 +0200
Date:   Wed, 6 Jul 2022 22:51:37 +0200
From:   Aurelien Jarno <aurelien@aurel32.net>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Arnd Bergmann <arnd@arndb.de>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Olof Johansson <olof@lixom.net>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Phil Elwell <phil@raspberrypi.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-rpi-kernel@lists.infradead.org, soc@kernel.org
Subject: Re: [PATCH RESEND 0/2] arm/arm64: dts: Enable device-tree overlay
 support for RPi devices
Message-ID: <YsX12ZQwWMtKfjQN@aurel32.net>
References: <20220427233607.1225419-1-aurelien@aurel32.net>
 <2cfbf1a0-2cef-057d-dce4-13ee50c626d7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2cfbf1a0-2cef-057d-dce4-13ee50c626d7@gmail.com>
User-Agent: Mutt/2.2.4 (2022-04-30)
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_PASS,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-05-18 12:52, Florian Fainelli wrote:
> 
> 
> On 4/27/2022 4:36 PM, Aurelien Jarno wrote:
> > This patchset changes the generation of the Raspberry Pi devices DTB
> > files to improve the support for out-of-tree device-tree overlays, like
> > it has recently been done for the Nvidia SoCs.
> > 
> > I personally only need that for arm64, but I have added a similar patch
> > to do the same on arm.
> 
> This looks good to me, Rob, does that approach work for you?

Any news about that?

-- 
Aurelien Jarno                          GPG: 4096R/1DDD8C9B
aurelien@aurel32.net                 http://www.aurel32.net

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 958CF6FDC00
	for <lists+devicetree@lfdr.de>; Wed, 10 May 2023 12:55:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236641AbjEJKzT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 May 2023 06:55:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236806AbjEJKya (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 May 2023 06:54:30 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 2A80686AC
        for <devicetree@vger.kernel.org>; Wed, 10 May 2023 03:53:52 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id B0B658109;
        Wed, 10 May 2023 10:53:51 +0000 (UTC)
Date:   Wed, 10 May 2023 13:53:50 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Broadcom internal kernel review list 
        <bcm-kernel-feedback-list@broadcom.com>,
        Wei Xu <xuwei5@hisilicon.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Niravkumar L Rabara <niravkumar.l.rabara@intel.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: Change pinconf controller node name to
 pinctrl
Message-ID: <20230510105350.GC14287@atomide.com>
References: <20230510103816.39015-1-tony@atomide.com>
 <d2e65698-8dcc-7d90-9239-cee38f496771@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d2e65698-8dcc-7d90-9239-cee38f496771@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [230510 10:51]:
> On 10/05/2023 12:38, Tony Lindgren wrote:
> > According to the pinctrl binding pinmux and pinctrl are valid controller
> > names. Let's replace pinconf with pinctrl so we don't get new warnings
> > when pinctrl-singl yaml binding gets merged.
> > 
> > Cc: Conor Dooley <conor+dt@kernel.org>
> > Cc: Dinh Nguyen <dinguyen@kernel.org>
> > Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> > Cc: Niravkumar L Rabara <niravkumar.l.rabara@intel.com>
> > Cc: Ray Jui <rjui@broadcom.com>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Scott Branden <sbranden@broadcom.com>
> > Cc: Wei Xu <xuwei5@hisilicon.com>
> > Signed-off-by: Tony Lindgren <tony@atomide.com>
> > ---
> >  arch/arm64/boot/dts/broadcom/stingray/stingray-pinctrl.dtsi | 2 +-
> >  arch/arm64/boot/dts/hisilicon/hi3798cv200.dtsi              | 2 +-
> >  arch/arm64/boot/dts/intel/socfpga_agilex.dtsi               | 2 +-
> >  3 files changed, 3 insertions(+), 3 deletions(-)
> 
> These should be either split by subsystem or you will have to push it
> through soc.

Let's see if Arnd cares to pick it up :)

Regards,

Tony

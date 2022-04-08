Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F0D2F4F9289
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 12:07:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229454AbiDHKJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 06:09:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229518AbiDHKJr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 06:09:47 -0400
Received: from muru.com (muru.com [72.249.23.125])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 9EA209A995;
        Fri,  8 Apr 2022 03:07:44 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
        by muru.com (Postfix) with ESMTPS id 6890C807E;
        Fri,  8 Apr 2022 10:05:19 +0000 (UTC)
Date:   Fri, 8 Apr 2022 13:07:42 +0300
From:   Tony Lindgren <tony@atomide.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-omap@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Keerthy <j-keerthy@ti.com>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>
Subject: Re: [PATCH] dt-bindings: timer: Update TI timer to yaml and add
 compatible for am6
Message-ID: <YlAJbgqpHLEfYIjO@atomide.com>
References: <20220408081258.57213-1-tony@atomide.com>
 <d8ad6a2b-0982-a7f2-c331-cced4e321c7c@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d8ad6a2b-0982-a7f2-c331-cced4e321c7c@linaro.org>
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_NONE,
        SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

* Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org> [220408 08:30]:
> On 08/04/2022 10:12, Tony Lindgren wrote:
> > +required:
> > +  - compatible
> > +  - reg
> 
> Missing interrupts - they were required. Aren't anymore?

There are cases where the interrupts are not routable to Linux yet
the timer registers can be accessible. These timers can still be usable
in a limited way for some PWM cases though.

Thanks for the good comments on the binding, will update accordingly.
Yeah adding a second patch for the new features makes sense as few
things have changed with the new SoCs.

Regards,

Tony

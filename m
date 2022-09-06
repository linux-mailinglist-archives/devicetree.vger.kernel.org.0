Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 384DB5AF015
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 18:16:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237606AbiIFQQH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 12:16:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59888 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231878AbiIFQPn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 12:15:43 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 07DE3857E6
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 08:42:53 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 3998F61561
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 15:42:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63A81C433C1;
        Tue,  6 Sep 2022 15:42:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662478972;
        bh=rD3bGWpWe2C+uPP1gaI4H1iAovRfcZkH+eG2TOcoVYM=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=D7GE1Snk7QwcCa6AhzSHUHOxM/+45E6oWG1ihXt7yDSZK+SrSe8zY90GEPCSbT3S8
         P9rEdNnl94/n2nf2Gjk40IZFbm1GJyRW3oX/uAEYcNW+bIzoxZt27FrbEK7WIh+xJA
         RXmR3WaG+5EhaEh1e2b+1pkQOlPFk1iyeHfviyHw5W5zEn9ETTV0zem0AxM87zh/bT
         cs0YeJBVoaABqmURGJekCxdGctBE24/IN8IFrcpDuHN2bD4LD6vC3DSy+7pCv5sV6e
         Pd1RK3W98kKkGfEPXKTtxvz2EjvBS+c7RmQ6kaZtQEEg/iFgD+pyzrrdtg+sPM9J6Y
         PsJKjp0rU1poA==
Date:   Tue, 6 Sep 2022 16:41:58 +0100
From:   Lee Jones <lee@kernel.org>
To:     Heiko =?iso-8859-1?Q?St=FCbner?= <heiko@sntech.de>
Cc:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <YxdqRpysLtPRh02s@google.com>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
 <4707456.3daJWjYHZt@diego>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4707456.3daJWjYHZt@diego>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 05 Sep 2022, Heiko Stübner wrote:

> Hi Sebastian,
> 
> Am Mittwoch, 31. August 2022, 20:26:27 CEST schrieb Sebastian Reichel:
> > Document rk3588 compatible for QoS registers.
> > 
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> 
> change looks good, but this is a mfd-binding. So while the rest is for me
> to apply, for the mfd syscon we need either Lee to apply it, or an Ack
> from him for me to pick it up.

This patch is not in my inbox.

Would you mind resending it to this inbox please?

> > ---
> >  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > index c10f0b577268..5369a56b8be1 100644
> > --- a/Documentation/devicetree/bindings/mfd/syscon.yaml
> > +++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
> > @@ -59,6 +59,7 @@ properties:
> >                - rockchip,rk3368-qos
> >                - rockchip,rk3399-qos
> >                - rockchip,rk3568-qos
> > +              - rockchip,rk3588-qos
> >                - samsung,exynos3-sysreg
> >                - samsung,exynos4-sysreg
> >                - samsung,exynos5-sysreg
> > 
> 
> 
> 
> 

-- 
Lee Jones [李琼斯]

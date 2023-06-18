Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D8447346A4
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 16:38:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbjFROiO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 10:38:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229512AbjFROiO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 10:38:14 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1D8DB18B
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 07:38:13 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id A3E1060BAC
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 14:38:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B9B51C433C0;
        Sun, 18 Jun 2023 14:38:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687099092;
        bh=MexRQi6ryRiFWia6auG4Bx08XeZUfCYXxh/Eno0wAZ8=;
        h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
        b=dDazEZleoaHmeFViUBfKdmuM5wJ/dRIYho6n49iBIOu79Kp+gLvF13+xMzY8ynIOh
         u+pYmr3Smm3cRvlu6dJn3YQm21jt+cfoYVCcnTllWUPJAilFhAuYKYpXr09ohk8QRz
         T2/AEx4Y3FuRkQL+6xW2HjOT8IQCbVw/6riu0bXasgDSP0PYg8JTNw2NA+gQ4MSUL7
         inHaZuLNIduVW3wD7C3PPdyelSXmTiZ9bJWNQjTYke+n7ckKOpR1mu4Osqrn+KqqbB
         XH8tlIYR15ZYvydUbCQg0UWsZjHrGqMpsv6sJIspwAiu//90vOJoQ8OjZcWCzvH/Bf
         hahenSqrl/fSg==
Message-ID: <f58a0545f4ace43df098d6a08820f658.mripard@kernel.org>
Date:   Sun, 18 Jun 2023 14:38:09 +0000
From:   "Maxime Ripard" <mripard@kernel.org>
To:     "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 3/6] drm/panel: sitronix-st7789v: Use 9 bits per spi
 word by default
In-Reply-To: <20230616163255.2804163-4-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-4-miquel.raynal@bootlin.com>
Cc:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        "Daniel Vetter" <daniel@ffwll.ch>,
        "David Airlie" <airlied@gmail.com>,
        "Krzysztof Kozlowski" <krzysztof.kozlowski+dt@linaro.org>,
        "Maxime Ripard" <maxime@cerno.tech>,
        "Michael Riesch" <michael.riesch@wolfvision.net>,
        "Rob Herring" <robh+dt@kernel.org>,
        "Sam Ravnborg" <sam@ravnborg.org>,
        "Sebastian Reichel" <sre@kernel.org>,
        "Thierry Reding" <thierry.reding@gmail.com>,
        "Thomas Petazzoni" <thomas.petazzoni@bootlin.com>
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Jun 2023 18:32:52 +0200, Miquel Raynal wrote:
> The Sitronix controller expects 9-bit words, provide this as default at
> probe time rather than specifying this in each and every access.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Reviewed-by: Sam Ravnborg <sam@ravnborg.org>
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

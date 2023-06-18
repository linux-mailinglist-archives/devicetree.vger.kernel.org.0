Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E2067346A0
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 16:36:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229565AbjFROgq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 10:36:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjFROgq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 10:36:46 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72E1B10E
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 07:36:45 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 0821A60BC5
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 14:36:45 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEED5C433C8;
        Sun, 18 Jun 2023 14:36:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687099004;
        bh=OqWhpLKbUijtVjVmppYi+rvNyPeXlFZGTPS0plnhhek=;
        h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
        b=XyfaTr3LQOCsNSotlP01U2y4CR3E/G/R4gksWYnobSOWwv3UQ6dFt3tWL/4grg0nF
         9zVMUXExmHUYbTOWq/w8gnrbQACqbNSerRK5aFuaUMaywh3b4LgBwy7QHJ58gUCu3P
         MHS0JbA8lHdqIL4ljG1ojoswjjwcSQZsZZg0g89Q8HisBfBEyKQ+EVotW+ZpJgBUQ8
         Plb8rq8Zaej/zIDYJ6RDqXKKEWZrtTAsVc/xx29dqQn473dLv9mS1Y6tRmF3Awt1Je
         nAS43xznqJZcswsHZwVu13xe6z9ehM5yaHBKwmljEqTEoQUEIyy7X8sbySHAip3SKs
         pKl9M+8Rj0MaA==
Message-ID: <b4cade4a339dd5326ae11525773bfacc.mripard@kernel.org>
Date:   Sun, 18 Jun 2023 14:36:41 +0000
From:   "Maxime Ripard" <mripard@kernel.org>
To:     "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 1/6] dt-bindings: display: st7789v: Add the
 edt,et028013dma panel compatible
In-Reply-To: <20230616163255.2804163-2-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-2-miquel.raynal@bootlin.com>
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
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 16 Jun 2023 18:32:50 +0200, Miquel Raynal wrote:
> The ST7789V LCD controller is also embedded in the ET028013DMA
> panel. Add a compatible string to describe this other panel.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

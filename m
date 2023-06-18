Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D09B47346A8
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 16:40:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229539AbjFROkh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 10:40:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjFROkh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 10:40:37 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 690DE94
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 07:40:36 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id B092760AB7
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 14:40:35 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BFA7EC433C0;
        Sun, 18 Jun 2023 14:40:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687099235;
        bh=Ujtpsjovx5hy0qxvCDoEJZ+gcP2oHPhauWUKKZTft7Y=;
        h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
        b=kBN7tLLb/4sZ4s7RPl5Or76aHeEDG5e3QovBDT4VwM+SZ4O0OZ9eV/SuwIop+GO1d
         gyi8TVuK0nTrG+DElmfS0D3yamiUFyp2ZwncpDDjVF4lp+/Pjd/xOrO2iP4Dy5otnh
         aPBcpB6rWWvJRerBeJp8yE+VA9xF4QWSlRIOsFnVJshvQGPkF37fzCU1WLKMU22V1H
         1gSifACmie7kobSariNKWqbquJ/WYcMDbSqetz4+/l55iDY+4Nq9LjHxumSViGsAyb
         ekikuav7n6Syul1DdWKkKSw8JoSBtOraMhczoMQ8JZk4CnNVxj0lf0nqkizxRotHAB
         9sbWbNHopURRQ==
Message-ID: <40fc54d65894036d182d15256ed2bf1c.mripard@kernel.org>
Date:   Sun, 18 Jun 2023 14:40:32 +0000
From:   "Maxime Ripard" <mripard@kernel.org>
To:     "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 5/6] drm/panel: sitronix-st7789v: Add EDT ET028013DMA
 panel support
In-Reply-To: <20230616163255.2804163-6-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-6-miquel.raynal@bootlin.com>
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

On Fri, 16 Jun 2023 18:32:54 +0200, Miquel Raynal wrote:
> This panel from Emerging Display Technologies Corporation features an
> ST7789V2 LCD controller panel inside which is almost identical to what
> the Sitronix panel driver supports.
> 
> In practice, the module physical size is specific, and experiments show
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

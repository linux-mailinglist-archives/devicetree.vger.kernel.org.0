Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66601754EDA
	for <lists+devicetree@lfdr.de>; Sun, 16 Jul 2023 15:40:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229954AbjGPNkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Jul 2023 09:40:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbjGPNkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Jul 2023 09:40:13 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A04C3E71
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 06:40:12 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 1075A60CF5
        for <devicetree@vger.kernel.org>; Sun, 16 Jul 2023 13:40:12 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6CD1FC433C7;
        Sun, 16 Jul 2023 13:40:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1689514811;
        bh=+VPC5bFm+43XjH7XAqtqGhlQ4PlHcHyxoyChNGxrI0I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=gJTz/ZUKQNsXAPjgf72oNOZaljhbouePTqb+2E5h/gE/BfbA5eXKXWIh1Ko/crg2Q
         vXs/4uOYjIfvCYZhuSwQTcBQ11RXLwJaMLwJrNQudWakw8RJvnCJ/OV1lEwvVLC9tJ
         /kohjDYnQgwgBcKIEETZsoxaUWZsQvsAd+N8XpoYbdC+A2HaRnBNrVYSuKKQmBVqWp
         SuX7eDBi2lKf+iONlW4Gw9h//6ubfncj7KLrxQOWr90a+QPwbn1ZXZtTqqiwcth/nw
         XYfteHpW49oCVf+lRyEY90MKX2BOonWq6MD2pYaWJddQYD5rhwZV+lPyzA1z4TqAPX
         2uMtOYTO7qhkg==
Date:   Sun, 16 Jul 2023 21:39:56 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Markus Niebel <Markus.Niebel@ew.tq-group.com>,
        Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 3/3] ARM: dts: imx6qdl-mba6: Add missing supply regulator
 for lm75 and at24
Message-ID: <20230716133956.GA4048@dragon>
References: <20230503113112.1751886-1-alexander.stein@ew.tq-group.com>
 <20230503113112.1751886-3-alexander.stein@ew.tq-group.com>
 <3268282.VLH7GnMWUR@steina-w>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3268282.VLH7GnMWUR@steina-w>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 16, 2023 at 11:42:19AM +0200, Alexander Stein wrote:
> Hi Shawn,
> 
> Am Mittwoch, 3. Mai 2023, 13:31:12 CEST schrieb Alexander Stein:
> > Fixes the warnings:
> > at24 0-0057: supply vcc not found, using dummy regulator
> > lm75 0-0049: supply vs not found, using dummy regulator
> > 
> > Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> You applied patch 1 & 2. Is something missing for this patch to be applied?

Sorry.  I missed it.  Could you rebase and resend?

Shawn

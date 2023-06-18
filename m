Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C3847346AA
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 16:41:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229542AbjFROlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 10:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229470AbjFROlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 10:41:08 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58ED294
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 07:41:07 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E39B060BBD
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 14:41:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0163FC433C0;
        Sun, 18 Jun 2023 14:41:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1687099266;
        bh=K36LPtS7cFKbuaUZZHHl8/j5LOCx0vREpCqqg84LxhQ=;
        h=Date:From:To:Subject:In-Reply-To:References:Cc:From;
        b=g5FmtpsXsxlyL8WSTaxSAFvrq5V2AHMQrdpxG+NLFPJ2bcfYtsFkxLUJmjDE21toq
         lM6tENWltMRMB+KB27NhSzxW73YnnKTxR7lVdrsONMbGth9/8+BB3oXQTlfdlkTj67
         YkDRn+WCVmQe1N6ADH0xR0LlFUIGolUHAlem7/5Y6/aghaI1PmiwRjUP4v63GvEFh3
         YpnFPne4jkSNhmN+E/H35mka0XtUaW3LbBMax1phFeMzZgiuPMi9HqPUmgYVF1zjHG
         3gjumGPmz8OzUgYA0vxuW82f/E35gdRvhktVFvj66RyybpCUCz2nn2nAow5a6TKMkr
         ixBH++RLpZsfA==
Message-ID: <19d00fbb0a27f1ab5f8685ba45422702.mripard@kernel.org>
Date:   Sun, 18 Jun 2023 14:41:03 +0000
From:   "Maxime Ripard" <mripard@kernel.org>
To:     "Miquel Raynal" <miquel.raynal@bootlin.com>
Subject: Re: [PATCH v2 6/6] drm/panel: sitronix-st7789v: Check display ID
In-Reply-To: <20230616163255.2804163-7-miquel.raynal@bootlin.com>
References: <20230616163255.2804163-7-miquel.raynal@bootlin.com>
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

On Fri, 16 Jun 2023 18:32:55 +0200, Miquel Raynal wrote:
> A very basic debugging rule when a device is connected for the first
> time is to access a read-only register which contains known data in
> order to ensure the communication protocol is properly working. This
> driver lacked any read helper which is often a critical piece for
> speed-up bring-ups.
> 
> [ ... ]

Acked-by: Maxime Ripard <mripard@kernel.org>

Thanks!
Maxime

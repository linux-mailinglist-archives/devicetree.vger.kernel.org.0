Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E1194768584
	for <lists+devicetree@lfdr.de>; Sun, 30 Jul 2023 15:20:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229852AbjG3NUv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Jul 2023 09:20:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229911AbjG3NUu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Jul 2023 09:20:50 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 361C6130
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 06:20:50 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id C842B60C4F
        for <devicetree@vger.kernel.org>; Sun, 30 Jul 2023 13:20:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 66154C433C7;
        Sun, 30 Jul 2023 13:20:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1690723249;
        bh=56NYuRNcJJ9QE0tcV0d/Gq6Ba1lud8Hy5iScF+K4Om8=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=VIFBZSsHfvLK7AWP0/SLj8iL3VNpJMIfKMyNS5Db2pgwcq3J/E7fa1OjPbtbhCGVp
         XPRQOWSAEdbZLmkKPfLhVS1Beu96/JpBODBzzTNG+KProq4O5Rg2/Wy17o7Y/EsybY
         aR6nMWsbxjnSfm3xx37RfTEMplH3IaLD5OpJ+lIV5uYofHYx6xVtFOcCJdgUhxwe2S
         Jw/+EJ8p7U5IDeXy73wAC5wJpN+DT0ufyGgdggY+wUXB1bjpmMT24zB7xsgZQBFUHI
         7BlZ5Oljs/pQjOjD8ARmCdPKUYwG2pbYSYYQZ1A4lFJU9xJ9tK9ob8sWFcy+hsVg8p
         +K4k6OWEYtoQQ==
Date:   Sun, 30 Jul 2023 21:20:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mqnl: Add vcc supply to i2c eeproms
Message-ID: <20230730132036.GO151430@dragon>
References: <20230724091302.399665-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230724091302.399665-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 24, 2023 at 11:13:02AM +0200, Alexander Stein wrote:
> Fixes the warnings:
> at24 0-0053: supply vcc not found, using dummy regulator
> at24 0-0057: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8E23072174F
	for <lists+devicetree@lfdr.de>; Sun,  4 Jun 2023 15:17:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230070AbjFDNRf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Jun 2023 09:17:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229954AbjFDNRe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Jun 2023 09:17:34 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C4B5B8
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 06:17:34 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D545660EE6
        for <devicetree@vger.kernel.org>; Sun,  4 Jun 2023 13:17:33 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DD4D5C433D2;
        Sun,  4 Jun 2023 13:17:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1685884653;
        bh=ytucnj3DSiY8FzSJLNLDwr76gtwET/RAJKWcZZDBVyQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=buRyQNtdWT3aeaQgneJ87NoTmh8Emww/EKqdWYw3CJLLNBgkivutCirbFK6O8afio
         wd7/1/YA3XPQhFlOjliUeJMsYuZzfms5m8QX+UXBnrNvxfWg1U/73yoXSiKIlM4b5Y
         Nc4qO5ibzjvfM4KC3W94Q1Xuws5DqN7YmODSnAXAzCnd/ObNYHD4kNB+iXJRE8KHhp
         0OwvtiQNthgwGtmMPP9pIQTy8RSSOEN81S4nNEh2AkMMqWjePAdgZ04nND1Yg3bkFR
         NwWFNhHE1zjaF3s96ticaWcO0pFZBNGEJRjJ0mSmqTxcMsh1SEOQ2y1iwe3+DLkAJE
         Vo2GMz6+zn0xQ==
Date:   Sun, 4 Jun 2023 21:17:22 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>, linux@ew.tq-group.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: tqma8mqml: Add vcc supply to i2c eeproms
Message-ID: <20230604131722.GQ4199@dragon>
References: <20230530141234.407118-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230530141234.407118-1-alexander.stein@ew.tq-group.com>
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 30, 2023 at 04:12:34PM +0200, Alexander Stein wrote:
> Fixes the warnings:
> at24 0-0053: supply vcc not found, using dummy regulator
> at24 0-0057: supply vcc not found, using dummy regulator
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied, thanks!

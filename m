Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20E6759B2CE
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 10:39:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229379AbiHUIjB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 04:39:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229653AbiHUIjA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 04:39:00 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 525BB2183D
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 01:39:00 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E157A60DD3
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 08:38:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C121DC433D6;
        Sun, 21 Aug 2022 08:38:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661071139;
        bh=3HN9w8r8oKm2T/heU1020WS3Ul5h+j58+kHEpu96AVI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=MR/TcTpmGR6YPib2dCLyLmRXgeEOgguIb+Qn1eP37tzPQfMCzcmKmQTaxApB7Nhzw
         gdCOQlyyGpWB/gaf6JvNeEsqIlcSj6fH9a4IFBZLxV9GFqMgHZ/zAfm9c60bZj5tkh
         /QS8zz2TBrMIpamAETvG+c2kSZcfl6wus057f6QJMetJuudBPsvWP9iIDGJP4RaFCT
         115CCduR/1SOZwLlEVPp9nEkjju2XG0zswCYK7vXBIrO1+MTsM/ENqyv4uTNoOf3wU
         V/+RmzOyGwyAIxa29dtFwphRWKfuWZeYxfqsNDGschmkX/vgh6uEaJhdaSyBzLTrDq
         BSgSjWrGZ0qIg==
Date:   Sun, 21 Aug 2022 16:38:53 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     haibo.chen@nxp.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
        linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH] arm: dts: imx7d-sdb: config the max pressure for tsc2046
Message-ID: <20220821083853.GV149610@dragon>
References: <1658744182-570-1-git-send-email-haibo.chen@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1658744182-570-1-git-send-email-haibo.chen@nxp.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 06:16:22PM +0800, haibo.chen@nxp.com wrote:
> From: Haibo Chen <haibo.chen@nxp.com>
> 
> Use the general touchscreen method to config the max pressure for
> touch tsc2046(data sheet suggest 8 bit pressure), otherwise, for
> ABS_PRESSURE, when config the same max and min value, weston will
> meet the following issue,
> 
> [17:19:39.183] event1  - ADS7846 Touchscreen: is tagged by udev as: Touchscreen
> [17:19:39.183] event1  - ADS7846 Touchscreen: kernel bug: device has min == max on ABS_PRESSURE
> [17:19:39.183] event1  - ADS7846 Touchscreen: was rejected
> [17:19:39.183] event1  - not using input device '/dev/input/event1'
> 
> This will then cause the APP weston-touch-calibrator can't list touch devices.
> 
> root@imx6ul7d:~# weston-touch-calibrator
> could not load cursor 'dnd-move'
> could not load cursor 'dnd-copy'
> could not load cursor 'dnd-none'
> No devices listed.
> 
> And accroding to binding Doc, "ti,x-max", "ti,y-max", "ti,pressure-max"
> belong to the deprecated properties, so remove them. Also for "ti,x-min",
> "ti,y-min", "ti,x-plate-ohms", the value set in dts equal to the default
> value in driver, so are redundant, also remove here.
> 
> Signed-off-by: Haibo Chen <haibo.chen@nxp.com>

Applied, thanks!

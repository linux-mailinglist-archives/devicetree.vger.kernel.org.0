Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B65859B3BE
	for <lists+devicetree@lfdr.de>; Sun, 21 Aug 2022 14:25:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229471AbiHUMZm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 21 Aug 2022 08:25:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230173AbiHUMZk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 21 Aug 2022 08:25:40 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 44AA023BE6
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 05:25:40 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id E7909B80D09
        for <devicetree@vger.kernel.org>; Sun, 21 Aug 2022 12:25:38 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E7B1C433C1;
        Sun, 21 Aug 2022 12:25:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1661084737;
        bh=aPKIXpAUTMhWyiD9SEh+kwQDlhfb73jqb9glcIotxJQ=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=rrKdzwtlPYe6IIq00q9/25KAeZ+P61RCwa4Aroe69Y8urOc28W306YBhjXZMTYeyt
         Yv4JRyuejRfLkNnLfA7LdHLOmtP5j3zqjvLNRyl2wMDbl6SQB+fme7vQeYsua9rXmp
         UBmZLpYefCLnwOwU3Mxop4dJNPUZtSLNrWWCentHiP+/Vpl0Zg1bTbKP+N30cd41wN
         qNQPldaFQQuuv8jw70PrF04xVtnI+32L0AQpiFjPgW5pUgbXUzUFLpDCMf1elGpN3k
         ruCEcZJXcCmwtQ7RgUhF+bgFPcIl63qcs69MvnQBFsxXpW7XZ9xQ6PUt7wm+SoM9Q3
         8DBhKE/rXeYhg==
Date:   Sun, 21 Aug 2022 20:25:32 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/4] ARM: dts: imx6qdl-kontron-samx6i: move phy reset
 into phy-node
Message-ID: <20220821122532.GY149610@dragon>
References: <20220726130523.2985735-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726130523.2985735-1-m.felsch@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jul 26, 2022 at 03:05:20PM +0200, Marco Felsch wrote:
> Add ethernet-phy node so we can drop the deprecated fec phy-reset-gpios
> property. The reset-assert-us value is taken from the existing logic
> since the fec driver will add an 1ms assert delay per default if
> phy-reset-gpios is used and phy-reset-duration is not specified.
> 
> Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>

Applied all, thanks!

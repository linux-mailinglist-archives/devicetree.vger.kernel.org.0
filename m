Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3258F67B472
	for <lists+devicetree@lfdr.de>; Wed, 25 Jan 2023 15:29:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234833AbjAYO3R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 Jan 2023 09:29:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34106 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229571AbjAYO3Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 Jan 2023 09:29:16 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2350B448
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 06:29:15 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id A4B19B819A2
        for <devicetree@vger.kernel.org>; Wed, 25 Jan 2023 14:29:14 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 80F59C433D2;
        Wed, 25 Jan 2023 14:29:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1674656953;
        bh=/8iL+eLjjDUX15rzUKs6LSSY7QQkdcX4nnlbul5lJdo=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=mNTdsMAboEikPDCCoP+NQyJEEVVV+ayglp9jMT05a49ONZlUGHgKfpErMg+9wYk98
         2QxSxOTrsY3kUXKMcAfs6a4lL6OJhnbXldFJau3QZ5kV258RmJ3iwEKnniPlTPgCNJ
         5rVR0oN/NnxxNP6SEMbEWQVAaZAz+ELjPny/ev6JyGS3B28lFquPoBHo7AcSYgFTdZ
         vChP2LkdInH+JX6jXchNfsQs5etWrfVgf8Gk/5UjDVeEzCz5Vu0OTBCypEOBdhP3Yw
         rFGrSHBCOsEucpRe1PtEPxpbWydxjj70UtW/p+6thJGfpWTJZiWu8WfWH7O1h9acNG
         Ib0HUJmZTn5Ig==
Date:   Wed, 25 Jan 2023 22:29:05 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Alexander Stein <alexander.stein@ew.tq-group.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/2] arm64: dts: imx8mp: Add LCDIF2 & LDB nodes
Message-ID: <20230125142904.GB20713@T480>
References: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221208090842.2869374-1-alexander.stein@ew.tq-group.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 08, 2022 at 10:08:41AM +0100, Alexander Stein wrote:
> LCDIF2 is directly attached to the LVDS Display Bridge (LDB).
> Both need the same clock source (VIDEO_PLL1).
> 
> Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Applied both, thanks!

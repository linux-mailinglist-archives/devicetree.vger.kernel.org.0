Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 32DEA550E34
	for <lists+devicetree@lfdr.de>; Mon, 20 Jun 2022 02:58:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229520AbiFTA6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 19 Jun 2022 20:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231699AbiFTA6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 19 Jun 2022 20:58:15 -0400
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69AC010FD
        for <devicetree@vger.kernel.org>; Sun, 19 Jun 2022 17:58:11 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 03D5CB80E07
        for <devicetree@vger.kernel.org>; Mon, 20 Jun 2022 00:58:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 63D54C34114;
        Mon, 20 Jun 2022 00:58:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1655686688;
        bh=poUBIIBJ22A+4hB1ta6A7G4rj8EEcQwODFNZcOjUsqw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=nAEFtP8DAShJ9+pq/fT86T74d3gVJhQRKDhw1nvM+hYW2Mt1nJEzmjzniJfzITcox
         3ARjBxlFyhv16/oBwPfXfRbqSkxDO1yPO+ssJ6hK/xPtGBQpeGkvruu/ujwcS+EOAb
         v8WqhXp4e+vWTKHFmF2sOObO3nFr0EcqRbuaeajcGwGT44FM4c46mW/FO4PWUzCuAM
         8yhqXU+F932OcwiqnwXnjzdUV91enng+QuNcVnubxOpKLaJT1CUDGeN5Ng1GHrAxM1
         MrMUbUxf839EwBowKyIA2bsZBB1WpxPonUQ9CCHEWA4MiXvIOVho+SnEJr+BnuHpl6
         JUIXF2K5KXneA==
Date:   Mon, 20 Jun 2022 08:58:02 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>, kernel@pengutronix.de,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2] arm64: freescale/imx8mp-evk.dts: reorder nodes
 alphabetically
Message-ID: <20220620005802.GQ254723@dragon>
References: <20220617173254.340007-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220617173254.340007-1-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-7.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 17, 2022 at 07:32:54PM +0200, Uwe Kleine-König wrote:
> The nodes after the root nodes are supposed to be ordered
> alphabetically. There is however an expection for &pinctrl that some
> consider to be good placed at the end of the file. So only move flexcan1
> and flexcan2 to their proper place.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

Applied, thanks!

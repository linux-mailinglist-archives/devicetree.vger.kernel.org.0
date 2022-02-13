Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6FD4B38DA
	for <lists+devicetree@lfdr.de>; Sun, 13 Feb 2022 03:03:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232842AbiBMCDn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 12 Feb 2022 21:03:43 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230179AbiBMCDn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 12 Feb 2022 21:03:43 -0500
Received: from ams.source.kernel.org (ams.source.kernel.org [IPv6:2604:1380:4601:e00::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8CC315FF1C
        for <devicetree@vger.kernel.org>; Sat, 12 Feb 2022 18:03:38 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 5006CB80761
        for <devicetree@vger.kernel.org>; Sun, 13 Feb 2022 02:03:37 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 702BAC340E7;
        Sun, 13 Feb 2022 02:03:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1644717816;
        bh=TE9/f+EiAV5lIHWPRpGrEFS3x0ysKunuse6R56h5SVE=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=ppFUvaANddEDGXBRMZYE1Tyd+6e7j0GUDAC/P00+3O7fr36e2lBkY1jFDR+csYpJp
         EQYHUIAK3+E3SY+cCQxxQ2Uip5MDCio7ESF0KdKX6kOe2llFPsFsoLWm1giXiH16ix
         J57AxVDpSXBGPMpJZ4Q9hTid65GFX9gAk3oNZn86tylUlhTJFGCs7xepm1IRhD3/vD
         WAF789NzDqyCSfH2bVptadcTrh7H+v3iuiJv/Z8rKfndme13BIYJGK4+pZ4UrgQDam
         DazgVH7FH3LK31fb/7/YXZkeIHIJJk52xTVXFNByTo8VWYTGQujYIJL/tIM2aegDmv
         vyPlnpHRJWmLA==
Date:   Sun, 13 Feb 2022 10:03:30 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v2 4/9] dt-bindings: power: imx8mp: add defines for HSIO
 blk-ctrl domains
Message-ID: <20220213020330.GF4909@dragon>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-4-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-4-l.stach@pengutronix.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 07, 2022 at 08:25:42PM +0100, Lucas Stach wrote:
> This adds the defines for the power domains provided by the HSIO
> blk-ctrl on the i.MX8MP.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>

Applied, thanks!

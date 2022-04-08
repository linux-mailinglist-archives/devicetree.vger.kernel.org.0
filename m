Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0F6064F969A
	for <lists+devicetree@lfdr.de>; Fri,  8 Apr 2022 15:26:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231284AbiDHN2l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Apr 2022 09:28:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229546AbiDHN2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Apr 2022 09:28:40 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 480AB39696
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 06:26:31 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id D92466100F
        for <devicetree@vger.kernel.org>; Fri,  8 Apr 2022 13:26:30 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E43EC385A1;
        Fri,  8 Apr 2022 13:26:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1649424390;
        bh=ld6qBN85C85dI/h3VnpYiINNPBVx6bEyTVIIGEKN3Ak=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=qR1l4bBPwoTtMd8yM7TH1mD/38sYioXkyMtCb/KimQrVr05D5P5e1g5ZaRaFwOcKz
         L5TyQohfFway3Gv5M0mqVuJJKUHgYItRmRgk2vLX5+em2XNLSVtDI2WHO9HP3ZgtAH
         llmuJ6CdHIH+bHj8Tho5z4fTCA7YQDyFbXOKL3ipIPWgyEX509sMXHYD4evZoP5nTb
         9QLzxZ+YTCwbnIgqUJwPG9yOAVDdg1Db5dc37Eb4VlEcOncAmQDjxb9gYf32tx+hyI
         qxmIKo2wIC0/ZBkEF2FSO4LIJI0BEvrTpTfz/K9PSRRC4H7xI2HbjKPfwlShtyJEZN
         9I0GAPPYj8ZfA==
Date:   Fri, 8 Apr 2022 21:26:23 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, Marek Vasut <marex@denx.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Alexander Stein <alexander.stein@ew.tq-group.com>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de
Subject: Re: [PATCH v4 2/5] dt-bindings: power: add defines for i.MX8MP power
 domain
Message-ID: <20220408132623.GW129381@dragon>
References: <20220330104620.3600159-1-l.stach@pengutronix.de>
 <20220330104620.3600159-3-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220330104620.3600159-3-l.stach@pengutronix.de>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 30, 2022 at 12:46:17PM +0200, Lucas Stach wrote:
> This adds the DT defines for the GPC power domains found on the
> i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> Acked-by: Rob Herring <robh@kernel.org>

This one has landed into v5.18-rc1, so only applied the rest.

Shawn

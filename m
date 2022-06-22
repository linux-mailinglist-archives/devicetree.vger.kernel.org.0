Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7D079554CAB
	for <lists+devicetree@lfdr.de>; Wed, 22 Jun 2022 16:17:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358242AbiFVORs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jun 2022 10:17:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358244AbiFVORX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jun 2022 10:17:23 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C9EB3D1CF
        for <devicetree@vger.kernel.org>; Wed, 22 Jun 2022 07:16:32 -0700 (PDT)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1o419h-0006ep-Lu; Wed, 22 Jun 2022 16:16:29 +0200
Message-ID: <98769f04d7b7445939a1808cc7e5236635aa3313.camel@pengutronix.de>
Subject: Re: [PATCH v3 4/7] dt-bindings: usb: dwc3-imx8mp: add power domain
 property
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Rob Herring <robh@kernel.org>
Cc:     Marek Vasut <marex@denx.de>, devicetree@vger.kernel.org,
        patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Date:   Wed, 22 Jun 2022 16:16:27 +0200
In-Reply-To: <Yh+ru3drWx5nwybv@robh.at.kernel.org>
References: <20220228201731.3330192-1-l.stach@pengutronix.de>
         <20220228201731.3330192-5-l.stach@pengutronix.de>
         <Yh+ru3drWx5nwybv@robh.at.kernel.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Am Mittwoch, dem 02.03.2022 um 11:39 -0600 schrieb Rob Herring:
> On Mon, Feb 28, 2022 at 09:17:28PM +0100, Lucas Stach wrote:
> > The USB controllers in the i.MX8MP are located inside the HSIO
> > power domain. Add the power-domains property to the DT binding
> > to be able to describe the hardware properly.
> > 
> > Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> > ---
> >  Documentation/devicetree/bindings/usb/fsl,imx8mp-dwc3.yaml | 6 ++++++
> >  1 file changed, 6 insertions(+)
> 
> Acked-by: Rob Herring <robh@kernel.org>
> 
This patch hasn't landed anywhere, yet.

Rob, can you take it directly, or should I resend to go trough the
USB(?) tree?

Regards,
Lucas


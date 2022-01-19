Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EB541493BB3
	for <lists+devicetree@lfdr.de>; Wed, 19 Jan 2022 15:07:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350177AbiASOHy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Jan 2022 09:07:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40008 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350170AbiASOHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Jan 2022 09:07:54 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 72109C061574
        for <devicetree@vger.kernel.org>; Wed, 19 Jan 2022 06:07:53 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=[IPv6:::1])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <l.stach@pengutronix.de>)
        id 1nABct-0001wQ-IO; Wed, 19 Jan 2022 15:07:51 +0100
Message-ID: <c015be6087309d5533bb05974777907d9e1f2985.camel@pengutronix.de>
Subject: Re: [PATCH 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO
 blk-ctrl
From:   Lucas Stach <l.stach@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, patchwork-lst@pengutronix.de,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Date:   Wed, 19 Jan 2022 15:07:49 +0100
In-Reply-To: <CAOMZO5DRkVJ++aTB3jtU9u7PqUMjMb96DdJkZjEfmnsHPmfSjA@mail.gmail.com>
References: <20220119134027.2931945-1-l.stach@pengutronix.de>
         <20220119134027.2931945-6-l.stach@pengutronix.de>
         <CAOMZO5DRkVJ++aTB3jtU9u7PqUMjMb96DdJkZjEfmnsHPmfSjA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.4 (3.40.4-1.fc34) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

Am Mittwoch, dem 19.01.2022 um 10:49 -0300 schrieb Fabio Estevam:
> Hi Lucas,
> 
> On Wed, Jan 19, 2022 at 10:40 AM Lucas Stach <l.stach@pengutronix.de> wrote:
> 
> > +++ b/Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> > @@ -0,0 +1,78 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/soc/imx/fsl,imx8mm-disp-blk-ctrl.yaml#
> 
> Should be http://devicetree.org/schemas/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml#
> 
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: NXP i.MX8MM DISP blk-ctrl
> 
> Should be NXP i.MX8M HSIO blk-ctrl

Urgh. Thanks, fixed locally.

Regards,
Lucas


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC55E4B0CBD
	for <lists+devicetree@lfdr.de>; Thu, 10 Feb 2022 12:48:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241201AbiBJLr7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Feb 2022 06:47:59 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:46044 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234873AbiBJLr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Feb 2022 06:47:56 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54A4ACF4
        for <devicetree@vger.kernel.org>; Thu, 10 Feb 2022 03:47:57 -0800 (PST)
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nI7vR-00068e-Gs; Thu, 10 Feb 2022 12:47:49 +0100
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
        (envelope-from <sha@pengutronix.de>)
        id 1nI7vO-0003JB-MC; Thu, 10 Feb 2022 12:47:46 +0100
Date:   Thu, 10 Feb 2022 12:47:46 +0100
From:   Sascha Hauer <s.hauer@pengutronix.de>
To:     Johan Jonker <jbx6244@gmail.com>
Cc:     dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de, Andy Yan <andy.yan@rock-chips.com>,
        Benjamin Gaignard <benjamin.gaignard@collabora.com>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        Sandy Huang <hjc@rock-chips.com>,
        Heiko =?iso-8859-15?Q?St=FCbner?= <heiko@sntech.de>,
        Peter Geis <pgwipeout@gmail.com>
Subject: Re: [PATCH v5 19/23] arm64: dts: rockchip: rk3568-evb: Enable VOP2
 and hdmi
Message-ID: <20220210114746.GX18637@pengutronix.de>
References: <20220209095350.2104049-1-s.hauer@pengutronix.de>
 <20220209095350.2104049-20-s.hauer@pengutronix.de>
 <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3492afbf-b9fc-d5f5-6f7a-2157442d8209@gmail.com>
X-Sent-From: Pengutronix Hildesheim
X-URL:  http://www.pengutronix.de/
X-IRC:  #ptxdist @freenode
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-Uptime: 12:15:38 up 61 days, 20:01, 81 users,  load average: 0.29, 0.17,
 0.17
User-Agent: Mutt/1.10.1 (2018-07-13)
X-SA-Exim-Connect-IP: 2001:67c:670:100:1d::c0
X-SA-Exim-Mail-From: sha@pengutronix.de
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

On Thu, Feb 10, 2022 at 01:10:32AM +0100, Johan Jonker wrote:
> Hi Sascha,
> 
> Something with port and endpoint gives notifications.
> Somehow with the conversion of rockchip,dw-hdmi.txt to YAML not all SoC
> options were checked/covered (see rk3328 and rk3568).
> 
> Allow multiple vop:
> port or
> port@0
> 1x vop -> endpoint
> 
> 2x vop -> endpoint@0
>        -> endpoint@1
> 
> Also allow for connector:
> (not all existing DT have this yet)
> port@1
>       -> endpoint
> 
> See also at graph.yaml

Ok, let me see if I get this right. The HDMI can either have one or two
ports. It has one when the HDMI connector is not described in the device
tree and two when it is. Also the first (or only) port can have one or
two endpoints. It has one endpoint when the SoC has a single VOP and two
endpoints when the SoC has two VOPs.

It's been a painful morning because my YAML knowledge is fairly limited,
but here's what I came up with:

  ports:
    $ref: /schemas/graph.yaml#/properties/ports
    unevaluatedProperties: false
    patternProperties:
      "^port(@0)?$":
        $ref: /schemas/graph.yaml#/properties/port
        description: Input of the DWC HDMI TX
        properties:
          endpoint:
            description: Connection to the VOP
          endpoint@0:
            description: Connection to the VOPB
          endpoint@1:
            description: Connection to the VOPL
    properties:
      port@1:
        $ref: /schemas/graph.yaml#/properties/port
        description: Output of the DWC HDMI TX

Does this look sane to you? With this a make dtbs_check on this binding
doesn't generate warnings anymore, and even better it does generate
warnings when I add some wrong nodes/properties to the dts files.

> ===
> 
> dtc -I dtb -O dts rk3568-evb1-v10.dtb
> <stdout>: Warning (avoid_unnecessary_addr_size):
> /hdmi@fe0a0000/ports/port@1: unnecessary #address-cells/#size-cells
> without "ranges" or child "reg" property
> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@0:
> graph node has single child node 'endpoint@0',
> #address-cells/#size-cells are not necessary
> <stdout>: Warning (graph_child_address): /hdmi@fe0a0000/ports/port@1:
> graph node has single child node 'endpoint', #address-cells/#size-cells
> are not necessary

That's easy. I dropped the @0 suffix and reg property from the node.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

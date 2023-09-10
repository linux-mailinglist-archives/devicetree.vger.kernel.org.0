Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 550C9799DE2
	for <lists+devicetree@lfdr.de>; Sun, 10 Sep 2023 13:29:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344757AbjIJL30 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Sep 2023 07:29:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238186AbjIJL30 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Sep 2023 07:29:26 -0400
Received: from metis.whiteo.stw.pengutronix.de (metis.whiteo.stw.pengutronix.de [IPv6:2a0a:edc0:2:b01:1d::104])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99095CD5
        for <devicetree@vger.kernel.org>; Sun, 10 Sep 2023 04:29:20 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qfIci-00087k-4n; Sun, 10 Sep 2023 13:29:04 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
        by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <mfe@pengutronix.de>)
        id 1qfIch-005J5N-6b; Sun, 10 Sep 2023 13:29:03 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
        (envelope-from <mfe@pengutronix.de>)
        id 1qfIcg-004RCb-Ir; Sun, 10 Sep 2023 13:29:02 +0200
Date:   Sun, 10 Sep 2023 13:29:02 +0200
From:   Marco Felsch <m.felsch@pengutronix.de>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] arm64: dts: imx8mp-debix-som-a-bmb: Fix EEPROM
 #size-cells
Message-ID: <20230910112902.2iardwma5ojxc77j@pengutronix.de>
References: <20230909013547.958134-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230909013547.958134-1-festevam@gmail.com>
User-Agent: NeoMutt/20180716
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: mfe@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Fabio,

thanks for the fix.

On 23-09-08, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The mac-address is passed as a subnode of the eeprom and its 'reg'
> property describe a range of addresses in the eeprom.
> 
> Therefore, #size-cells should be set to 1 instead of 0.
> 
> This fixes the following schema warnings:
> 
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: #size-cells:0:0: 1 was expected
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@0:reg: [[0], [12]] is too long
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: mac-address@c:reg: [[12], [12]] is too long
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> imx8mp-debix-som-a-bmb-08.dtb: eeprom@52: Unevaluated properties are not allowed ('#address-cells', '#size-cells', 'mac-address@0', 'mac-address@c' were unexpected)
> 	from schema $id: http://devicetree.org/schemas/eeprom/at24.yaml#
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

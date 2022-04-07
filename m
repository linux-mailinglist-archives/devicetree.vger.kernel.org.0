Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 30CA34F8224
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 16:50:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234829AbiDGOvz convert rfc822-to-8bit (ORCPT
        <rfc822;lists+devicetree@lfdr.de>); Thu, 7 Apr 2022 10:51:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241089AbiDGOvx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 10:51:53 -0400
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ED261C8A81
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 07:49:49 -0700 (PDT)
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncTSF-0000CE-HC; Thu, 07 Apr 2022 16:49:47 +0200
Received: from [2a0a:edc0:0:900:1d::4e] (helo=lupine)
        by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncTSF-001d7A-SZ; Thu, 07 Apr 2022 16:49:46 +0200
Received: from pza by lupine with local (Exim 4.94.2)
        (envelope-from <p.zabel@pengutronix.de>)
        id 1ncTSD-000ABL-Br; Thu, 07 Apr 2022 16:49:45 +0200
Message-ID: <afe02568e9e12688b3319b9575e82af488ea3c6f.camel@pengutronix.de>
Subject: Incompatible bindings for brcm,bcm63138-pmb
From:   Philipp Zabel <p.zabel@pengutronix.de>
To:     =?UTF-8?Q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     devicetree@vger.kernel.org
Date:   Thu, 07 Apr 2022 16:49:45 +0200
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8BIT
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:c01:1d::a2
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
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

Hi,

I looked at converting the remaining .txt files in
Documentation/devicetree/bindings/reset to yaml and was told off by
dt_binding_check that there are two incompatible bindings for
"brcm,bcm63138-pmb" in v5.18-rc1. The reset controller binding:

  Documentation/devicetree/bindings/reset/brcm,bcm63138-pmb.txt,

referenced by:

  Documentation/devicetree/bindings/arm/bcm/brcm,bcm63138.txt

and apparently used in arch/arm/boot/dts/bcm63138.dtsi.
And the power domain binding:

  Documentation/devicetree/bindings/power/brcm,bcm-pmb.yaml

which matches drivers/soc/bcm/bcm63xx/bcm-pmb.c driver.
Could you help sort this out?

regards
Philipp

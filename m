Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C52A35499B2
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 19:21:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238968AbiFMRU6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 13:20:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239391AbiFMRUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 13:20:41 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D56C625E92
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 05:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123650; x=1686659650;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=msnzqIMuquFV89P3h3NjflQJtAauBEbNBXlf4HB/A5s=;
  b=pK3BocH5iWDCBcZ3gefNRGcv/JQ76HpBVXA7dfemRGBjPnz7VFATOVDU
   f/J+KwK50mOddSyiHM5jQDsOK48TUMpdamLzD697HFIm74FNbZWAnQ/JO
   lOHqk1XUvzvtVWB42vAa69xzvP5NJevl6isllsCEqgCW/VCDnMi5uJycR
   orh/0/1//eK8XloE+7vuw13SIBvL21o6lbHi9mVj7GrEuEnvMDSVVdKsN
   qYgj9BsnqIUAdNuTGXQDLxJOEoZIlRgAn0w/Gtv0zMAReKVs3E1NYw/MM
   PQnNHfQnBC+42yVqNZhcfNuHZGrHfmGfAx0BC8JX1Y2tY71RoWzZoxuth
   g==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418713"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 13 Jun 2022 14:34:04 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Mon, 13 Jun 2022 14:34:04 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Mon, 13 Jun 2022 14:34:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1655123644; x=1686659644;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=msnzqIMuquFV89P3h3NjflQJtAauBEbNBXlf4HB/A5s=;
  b=VFl8/v5t6sYpN1QolePL4832Rpa5IiLL4HENmuBj+yje63laM9DS6PMI
   Ih1nGQrm+WUvgKMhfnU+W4vHn3VL4i8cFJSPy73zZrpJIigOiWB9TGgGH
   19Vke+RVyyodsPjoiA9MmB2JRn4SD2R9c2c9cd4gXN+QGmzsb6JzX4jxJ
   I78pEbXEemFFS5ILV6dJEJ6IFpXVsb9t20GG0OjAo/AC10LYskLh2q4jG
   5LYicdnZY87AwCSNshoB6GktWtdQh432B5ijzyScrTf5g8gbKt+iBL9I+
   aNhmFQ5ddRLGOlWO70AYjhDODjRPvgn6mXiIqHtIPSHKtPaSh29ILrPV9
   g==;
X-IronPort-AV: E=Sophos;i="5.91,297,1647298800"; 
   d="scan'208";a="24418712"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 13 Jun 2022 14:34:04 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 15C6A280074;
        Mon, 13 Jun 2022 14:34:04 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 7/7] ARM: dts: imx6ul: fix qspi node compatible
Date:   Mon, 13 Jun 2022 14:33:57 +0200
Message-Id: <20220613123357.441779-7-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
References: <20220613123357.441779-1-alexander.stein@ew.tq-group.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

imx6ul is not compatible to imx6sx, both have different erratas.
Fixes the dt_binding_check warning:
spi@21e0000: compatible: 'oneOf' conditional failed, one must be fixed:
['fsl,imx6ul-qspi', 'fsl,imx6sx-qspi'] is too long
Additional items are not allowed ('fsl,imx6sx-qspi' was unexpected)
'fsl,imx6ul-qspi' is not one of ['fsl,ls1043a-qspi']
'fsl,imx6ul-qspi' is not one of ['fsl,imx8mq-qspi']
'fsl,ls1021a-qspi' was expected
'fsl,imx7d-qspi' was expected

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6ul.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul.dtsi b/arch/arm/boot/dts/imx6ul.dtsi
index 1dda3cddcbf2..52ac0d8292d8 100644
--- a/arch/arm/boot/dts/imx6ul.dtsi
+++ b/arch/arm/boot/dts/imx6ul.dtsi
@@ -1028,7 +1028,7 @@ pxp: pxp@21cc000 {
 			qspi: spi@21e0000 {
 				#address-cells = <1>;
 				#size-cells = <0>;
-				compatible = "fsl,imx6ul-qspi", "fsl,imx6sx-qspi";
+				compatible = "fsl,imx6ul-qspi";
 				reg = <0x021e0000 0x4000>, <0x60000000 0x10000000>;
 				reg-names = "QuadSPI", "QuadSPI-memory";
 				interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.25.1


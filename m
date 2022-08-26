Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C4F965A2089
	for <lists+devicetree@lfdr.de>; Fri, 26 Aug 2022 07:53:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234108AbiHZFx5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Aug 2022 01:53:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244963AbiHZFxw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Aug 2022 01:53:52 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8DE5D0762
        for <devicetree@vger.kernel.org>; Thu, 25 Aug 2022 22:53:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493231; x=1693029231;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/bJy2guejH+98oR42EfOHxdfE3OlpVj7nduqGZnFADE=;
  b=GlmLCMFRKE/aWCGaz4SDxyaed+a4BteMqj2kmwUqQljUpkkce4U/ZGq3
   aVpq4pMCSeNiqQ5lscRzbA+BGDCwSotxHqzj1STF/i6Jl/9s3nH6nGzQt
   THm41bZyciWZbEIxVYAjoKz0rgsO9Da7KIxa3+jX6U3Yw14q3UX4WagzY
   auO0rGXTjGuQUxO7PFF47B4Z15jYqeay9/HLoSIfOMrc6uQePibTcCc2x
   7n5DdoH7Ypnik367O+oZk9k3ywqQ5gYNEkhJ45SgdrN+E3po3nwKvSV/E
   +xIZTaNbAyGmfmiA22Ehd+ybU7yk0kQ6m8zyAWCGHxiayINCfUwWaToSN
   g==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816952"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Fri, 26 Aug 2022 07:53:41 +0200
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Fri, 26 Aug 2022 07:53:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1661493221; x=1693029221;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=/bJy2guejH+98oR42EfOHxdfE3OlpVj7nduqGZnFADE=;
  b=i2QYoz5UwfzGqsCr9UBYjjBrIKwm96XVCqtSJG8/j/LETLoQdruZxTen
   av5HBRXxVvS7NVPkjYgCtg2t/oA6JhaqWcU7GGbg8N2fzEhMKvHwU1ls6
   x2TqnVo0/sDcu8IV9Zsa1c6RaQ+g0lWtzp8AOgpzly3JfZN51QvQ5tQBC
   miuE5Uk7w+rm7kZ90mHgR0tnr1aGxmKrYZ0i38dN72Jx0/8iJCIZ9sOQo
   ZvwTvQSXem3m6IpjBiSV3taU20/whrF4mkNHKuixYzjq9cGKryTJD/XPK
   Xt7hBe9kfA9yLMqvdl+cq89Xm/yIzIiAZwHzMLkgeNh7cnB2FAlwrcUnO
   A==;
X-IronPort-AV: E=Sophos;i="5.93,264,1654552800"; 
   d="scan'208";a="25816951"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 26 Aug 2022 07:53:41 +0200
Received: from steina-w.tq-net.de (unknown [10.123.49.11])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 89563280072;
        Fri, 26 Aug 2022 07:53:41 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 5/6] ARM: dts: imx6sll: add missing properties for sram
Date:   Fri, 26 Aug 2022 07:53:35 +0200
Message-Id: <20220826055336.2821876-6-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
References: <20220826055336.2821876-1-alexander.stein@ew.tq-group.com>
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

All 3 properties are required by sram.yaml. Fixes the dtbs_check warning:
sram@900000: '#address-cells' is a required property
sram@900000: '#size-cells' is a required property
sram@900000: 'ranges' is a required property

Signed-off-by: Alexander Stein <alexander.stein@ew.tq-group.com>
---
 arch/arm/boot/dts/imx6sll.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boot/dts/imx6sll.dtsi b/arch/arm/boot/dts/imx6sll.dtsi
index d4a000c3dde7..2873369a57c0 100644
--- a/arch/arm/boot/dts/imx6sll.dtsi
+++ b/arch/arm/boot/dts/imx6sll.dtsi
@@ -115,6 +115,9 @@ soc {
 		ocram: sram@900000 {
 			compatible = "mmio-sram";
 			reg = <0x00900000 0x20000>;
+			ranges = <0 0x00900000 0x20000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
 		};
 
 		intc: interrupt-controller@a01000 {
-- 
2.25.1


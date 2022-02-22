Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8317D4BF480
	for <lists+devicetree@lfdr.de>; Tue, 22 Feb 2022 10:17:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229774AbiBVJQp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Feb 2022 04:16:45 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55018 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230135AbiBVJQo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Feb 2022 04:16:44 -0500
Received: from cpanel.siel.si (cpanel.siel.si [46.19.9.99])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C07FA108BC6
        for <devicetree@vger.kernel.org>; Tue, 22 Feb 2022 01:16:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=norik.com;
        s=default; h=Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:
        Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
        List-Post:List-Owner:List-Archive;
        bh=OCHaKeobTVA2a7b2N7KFkbDTzraYCtjYuUBlyO1WxsQ=; b=ZDGG3IojRqjPCqXgAxSlbCI+sT
        4A8SdhdyRrrDeRyuG19mPJMOEBacKhbxWlb3eS5g86nATqynSlrGpGLK7YvNEJS1BVkc7+NJ2z/yn
        ac6VwjAuU4tEalH/xK0u/sk3C9ttK858dxF72D6ufSivNs1xiR487bg1FX78V/QhjK+cgH2KyZ4MJ
        YIhD1EBDvBkS+2R2uA3rpYCT9ZtGmrtaq+UUBozxbMKM71LxtxyfvAq4YAs66JB1W8QOf9PLUtijf
        ye/YB8+1mo54ista7Hdu4ZKRpRQNZiBLzQFecRMUmYl8ixK2vHCeFI+IgGRruUXSFBoTqlpW8atp/
        wPfFLKRg==;
Received: from [89.212.21.243] (port=33310 helo=localhost.localdomain)
        by cpanel.siel.si with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.94.2)
        (envelope-from <andrej.picej@norik.com>)
        id 1nMRHA-001d57-DC; Tue, 22 Feb 2022 10:16:12 +0100
From:   Andrej Picej <andrej.picej@norik.com>
To:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     robh+dt@kernel.org, kernel@pengutronix.de, shawnguo@kernel.org,
        leoyang.li@nxp.com, krzysztof.kozlowski@canonical.com,
        festevam@gmail.com, linux@rempel-privat.de, arnd@arndb.de,
        linux-imx@nxp.com, y.bas@phytec.de
Subject: [PATCH v2 3/3] ARM: dts: imx6ul: peb-av-02: move to 3 cell pwm
Date:   Tue, 22 Feb 2022 10:16:06 +0100
Message-Id: <20220222091606.530581-4-andrej.picej@norik.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220222091606.530581-1-andrej.picej@norik.com>
References: <20220222091606.530581-1-andrej.picej@norik.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel.siel.si
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - norik.com
X-Get-Message-Sender-Via: cpanel.siel.si: authenticated_id: andrej.picej@norik.com
X-Authenticated-Sender: cpanel.siel.si: andrej.picej@norik.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H5,
        RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Instead of changing default pwm-cells property, use the default
"#pwm-cells = <3>" and add the third option.

Signed-off-by: Andrej Picej <andrej.picej@norik.com>
---
Changes in v2:
 - no change
---
 arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
index 7cda6944501d..6ce534a896ef 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
@@ -11,7 +11,7 @@ backlight_lcd: backlight-lcd {
 		brightness-levels = <0 4 8 16 32 64 128 255>;
 		default-brightness-level = <5>;
 		power-supply = <&reg_backlight_en>;
-		pwms = <&pwm3 0 5000000>;
+		pwms = <&pwm3 0 5000000 0>;
 		status = "disabled";
 	};
 
@@ -91,7 +91,6 @@ lcdif_parallel_out: endpoint {
 };
 
 &pwm3 {
-	#pwm-cells = <2>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_pwm3>;
 	status = "disabled";
-- 
2.25.1


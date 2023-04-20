Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC2396E9444
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 14:29:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231820AbjDTM3t (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 08:29:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230231AbjDTM3s (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 08:29:48 -0400
Received: from smtp-out1.suse.de (smtp-out1.suse.de [195.135.220.28])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E4A35FEA
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 05:29:45 -0700 (PDT)
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by smtp-out1.suse.de (Postfix) with ESMTPS id 7143D219FF;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=suse.de; s=susede2_rsa;
        t=1681993784; h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=n7KqzZ53Bqetayq7fLUITqZmZD9Kd9Jl8L8VLaUQzHM=;
        b=KCbZGP1+PpPX8QfoEh/2gGuzNBqeyu5sTWF/7diLKSbP8xZbMisn6uxjldzwW1PTA17tnH
        lD9fAKSohdHEs38gVc83Xfil6KISa4SmXm3BvU+3rUWxLlZBuof2J0BBAfNBs8FNc8VUHr
        pfiwqPG+XiKQrGgyGSLeBwcXa/eJZt0=
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=suse.de;
        s=susede2_ed25519; t=1681993784;
        h=from:from:reply-to:date:date:message-id:message-id:to:to:cc:cc:
         mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=n7KqzZ53Bqetayq7fLUITqZmZD9Kd9Jl8L8VLaUQzHM=;
        b=a6o5UBbQnyceSVkmX2w8xUbJrx4M99I2Svvdf6rNUYmHMZR+Mb7q6YOPOU4N1/xF9q87RM
        wfba/cdUsbh88YAQ==
Received: from imap2.suse-dmz.suse.de (imap2.suse-dmz.suse.de [192.168.254.74])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
        (No client certificate requested)
        by imap2.suse-dmz.suse.de (Postfix) with ESMTPS id 57F0D1333C;
        Thu, 20 Apr 2023 12:29:44 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
        by imap2.suse-dmz.suse.de with ESMTPSA
        id wFNUFTgwQWSueQAAMHmgww
        (envelope-from <iivanov@suse.de>); Thu, 20 Apr 2023 12:29:44 +0000
From:   "Ivan T. Ivanov" <iivanov@suse.de>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Stefan Wahren <stefan.wahren@i2se.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Tim Gover <tim.gover@raspberrypi.com>,
        "Ivan T . Ivanov" <iivanov@suse.de>
Subject: [PATCH v3 2/3] ARM: dts: Add nvmem node for BCM2711 bootloader public key
Date:   Thu, 20 Apr 2023 15:29:23 +0300
Message-Id: <20230420122924.37997-3-iivanov@suse.de>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20230420122924.37997-1-iivanov@suse.de>
References: <20230420122924.37997-1-iivanov@suse.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Tim Gover <tim.gover@raspberrypi.com>

Make a copy of the bootloader secure-boot public key available to the OS
via an nvmem node. The placement information is populated by the
Raspberry Pi firmware[1] if a public key is present in the BCM2711
bootloader EEPROM.

[1] https://www.raspberrypi.com/documentation/computers/configuration.html#nvmem-nodes

Signed-off-by: Tim Gover <tim.gover@raspberrypi.com>
[iivanov] Added link to documentation.
Signed-off-by: Ivan T. Ivanov <iivanov@suse.de>
---
 arch/arm/boot/dts/bcm2711-rpi.dtsi | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/boot/dts/bcm2711-rpi.dtsi b/arch/arm/boot/dts/bcm2711-rpi.dtsi
index 98817a6675b9..e30fbe84f9c3 100644
--- a/arch/arm/boot/dts/bcm2711-rpi.dtsi
+++ b/arch/arm/boot/dts/bcm2711-rpi.dtsi
@@ -15,6 +15,7 @@ aliases {
 		ethernet0 = &genet;
 		pcie0 = &pcie0;
 		blconfig = &blconfig;
+		blpubkey = &blpubkey;
 	};
 };
 
@@ -67,6 +68,19 @@ blconfig: nvram@0 {
 		no-map;
 		status = "disabled";
 	};
+
+	/*
+	 * RPi4 will copy the binary public key blob (if present) from the bootloader
+	 * into memory for use by the OS.
+	 */
+	blpubkey: nvram@1 {
+		compatible = "raspberrypi,bootloader-public-key", "nvmem-rmem";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		reg = <0x0 0x0 0x0>;
+		no-map;
+		status = "disabled";
+	};
 };
 
 &v3d {
-- 
2.35.3


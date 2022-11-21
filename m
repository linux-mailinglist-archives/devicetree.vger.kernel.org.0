Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38F3F63297F
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 17:32:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229971AbiKUQcD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 11:32:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230274AbiKUQbw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 11:31:52 -0500
Received: from mail-oa1-x2b.google.com (mail-oa1-x2b.google.com [IPv6:2001:4860:4864:20::2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F15ED02C5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:31:47 -0800 (PST)
Received: by mail-oa1-x2b.google.com with SMTP id 586e51a60fabf-142b72a728fso6538387fac.9
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 08:31:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QXe/nzLEIpGbfRs0c+FK3bZBgjBA4+ixzaE9K+0flCg=;
        b=FtYq80NNcld01xusXa+BlllcTJoKOBN1ljNs3MUaG9rm7eC2DiaHi9baWOiYtDnRT8
         dU1prvrJP9gjXS7Bo3ofJ+YVuryy5t4PJuIZdeMcfghlM3Voe6CNDAWCO+Fey0CcYP2V
         xfx7hkj/n+FL53e91qYjgHzT3KMKvH34if7SDL8M9qiX3JShuVT6ZqTI2PGO7Cu0yKxV
         6k7msxhB/iBRTLqOR/kqd57DPWh9TVnpH6MgNoUbM3GrbMJTzn0ZXo3GSVym4k90ICr5
         23UqG9or5t7/nntCtlVmY9KaseavbWnUZYAbOD5aPIeVw7C5P4PRBHuZF4uWfqv7VFsJ
         BLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QXe/nzLEIpGbfRs0c+FK3bZBgjBA4+ixzaE9K+0flCg=;
        b=iLc1YgMCiDUXzklaKyTnc6qE0vOzI3PbRlN0pifq61nLq14IPSEYMZWcph5etxuaP4
         a5T1LwO8j/k3obtars50QLez82go9LGerUTqn6r4uybpGbEe4+iaj9lZbl5mMVqOHa4U
         1PYOP2pxNzVs8p64hjy1fH6KVrMCTCC2lmltvtfPwGWXgo91hJITsQxvrOlk3XlPZj1K
         8sciM5ig5qV8IsSHvAKWMTs4JWw5ujEUjyZSD0RO6sC2CFMPXfDUlA0BuBCP5JB9c76n
         9aVsVLxJ3eO0KfNpuZq3ltgP1vsyDUISoKnnOAtorZlbm7LRWRjr/bsBbzLMdGrkLwTp
         ve7Q==
X-Gm-Message-State: ANoB5pmCbm7GrgFUwxmbxrmBt66NtqL2qVc/90YSW4aVheKsrxKA8eer
        g37Q1GZwYm819iGufgUHCKsyUFNrHTs=
X-Google-Smtp-Source: AA0mqf6Xy+x6nocOeBS20rpqM5KHbv3N7Atk/rnB+I936wdF7LmvRIwxRKEffB90PP9S4ZayGa1+CA==
X-Received: by 2002:a05:6870:d98:b0:13b:ef13:b2de with SMTP id mj24-20020a0568700d9800b0013bef13b2demr1224653oab.24.1669048306677;
        Mon, 21 Nov 2022 08:31:46 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4b69:5204:9130:9b29:a926])
        by smtp.gmail.com with ESMTPSA id n18-20020a056870241200b00140d421445bsm6258698oap.11.2022.11.21.08.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Nov 2022 08:31:46 -0800 (PST)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] ARM: dts: imx6ul-pico-dwarf: Use 'clock-frequency'
Date:   Mon, 21 Nov 2022 13:31:23 -0300
Message-Id: <20221121163124.2378017-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

'clock_frequency' is not a valid property.

Use the correct 'clock-frequency' instead.

Fixes: 47246fafef84 ("ARM: dts: imx6ul-pico: Add support for the dwarf baseboard")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Fix typo in commit log.

 arch/arm/boot/dts/imx6ul-pico-dwarf.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx6ul-pico-dwarf.dts b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
index 162dc259edc8..5a74c7f68eb6 100644
--- a/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
+++ b/arch/arm/boot/dts/imx6ul-pico-dwarf.dts
@@ -32,7 +32,7 @@ sys_mclk: clock-sys-mclk {
 };
 
 &i2c2 {
-	clock_frequency = <100000>;
+	clock-frequency = <100000>;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2c2>;
 	status = "okay";
-- 
2.25.1


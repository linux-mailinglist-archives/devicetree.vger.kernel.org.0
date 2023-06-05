Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92645722EE7
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 20:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234380AbjFESqz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 14:46:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235452AbjFESqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 14:46:50 -0400
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38CD510B
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 11:46:47 -0700 (PDT)
Received: from mail-yw1-f199.google.com (mail-yw1-f199.google.com [209.85.128.199]) by mx-outbound43-10.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 05 Jun 2023 18:46:44 +0000
Received: by mail-yw1-f199.google.com with SMTP id 00721157ae682-568a8704f6dso75987527b3.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 11:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1685990804; x=1688582804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ka0dLgOU3SOSpHh8q74Sw3feQDmjVZ2vWBXiiwU0uuo=;
        b=bg0l+zOIkieXj2sARvT8rzf/fc6F01hKWlxctJGfb6Jtgco2ICrd5M+WtOv1pomA3e
         I0AQ16jF45DQo+xn6XLCkRopmLyy4zE4ZXcO0s45JDvMvDP+GtzAqw/LDYZ5IZRkwkBQ
         Gv5elZcN0S/I5XBRIxOzvarjD+cGpTxXtKvLI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685990804; x=1688582804;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ka0dLgOU3SOSpHh8q74Sw3feQDmjVZ2vWBXiiwU0uuo=;
        b=G4lqjLaa+guHmFSx3ngV7tmhlyxJTPnrsvFJ5rTesdtot/G5x0IszJPkthSH+eN1Cd
         LFyamXYEUg21jHtPKGaaIOPkgyBtWdg5mUyxPs+UrTn8EG56vZsMeVHo99sRwzyolBl/
         1hJaXDx09bpavqjHsRwBwRfhfS0SWDv2Scr6ZLMvoKwMN56pfu78rzW3DxseoDfd+hPK
         y17ueBgxiCtzNjH5ydmYycUEDiM2Hm8CnZ3tXuFLHTxcQ7ld6CFB9TJzQ25Xd0qAdSY0
         khynhZ3KOGf1h09o6FrC1I8CGaxEc246/7qZtDcSZhzHXocxce0Vw0TDxhb2NmTMsh2f
         MdUQ==
X-Gm-Message-State: AC+VfDzxDr74XGR4LQ/n1zg9gkXSIhP9HWWvl6c3GkCtw89tJoukANl7
        qgAKSSZWMvByQhX8mdxGGUGdrE8RdEknLaQnmI+LBgTLDIw1qDPtPNHUfEvckJK+H/3DZdpUSzO
        aK+2fBM2mtddv31cpYrQJRWF+DrYLo5Yz+d2ZiBp7MWAsknq9HXDA5Vyw6A==
X-Received: by 2002:a17:903:2305:b0:1b0:61dd:e523 with SMTP id d5-20020a170903230500b001b061dde523mr5054984plh.41.1685987159012;
        Mon, 05 Jun 2023 10:45:59 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ5dFGH5RUHSCIKrPt8pUW9EBcAJtw6hTNlCcT2vaMXJ2vPnVhOOyVumgmm7oF8ujFweztfoAw==
X-Received: by 2002:a17:903:2305:b0:1b0:61dd:e523 with SMTP id d5-20020a170903230500b001b061dde523mr5054968plh.41.1685987158744;
        Mon, 05 Jun 2023 10:45:58 -0700 (PDT)
Received: from LAP789U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id f10-20020a170902860a00b001aaecc0b6ffsm6816616plo.160.2023.06.05.10.45.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 10:45:58 -0700 (PDT)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, afd@ti.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sabiya.d@mistralsolutions.com,
        Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am69-sk: Add eMMC mmc0 support
Date:   Mon,  5 Jun 2023 23:15:51 +0530
Message-Id: <20230605174551.160262-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1685990804-311018-5451-28576-1
X-BESS-VER: 2019.1_20230525.1947
X-BESS-Apparent-Source-IP: 209.85.128.199
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrKyMDYGMjKAYoapKZZpRmmmyR
        ZGqQZmZmkG5sbmSSaGJomW5uaGaYbmSrWxABee2KFAAAAA
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.248613 [from 
        cloudscan18-126.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

Add support for eMMC card connected to main sdhci0 instance.

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index 4b7d9280d76f..ab8ec2cb396e 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -22,6 +22,7 @@ chosen {
 
 	aliases {
 		serial2 = &main_uart8;
+		mmc0 = &main_sdhci0;
 		mmc1 = &main_sdhci1;
 		i2c0 = &main_i2c0;
 	};
@@ -191,6 +192,14 @@ exp1: gpio@21 {
 	};
 };
 
+&main_sdhci0 {
+	/* eMMC */
+	status = "okay";
+	non-removable;
+	ti,driver-strength-ohm = <50>;
+	disable-wp;
+};
+
 &main_sdhci1 {
 	/* SD card */
 	status = "okay";
-- 
2.25.1


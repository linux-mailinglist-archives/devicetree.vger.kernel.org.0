Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B1B253C5A6
	for <lists+devicetree@lfdr.de>; Fri,  3 Jun 2022 09:02:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242361AbiFCHCY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Jun 2022 03:02:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44908 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242306AbiFCHBj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Jun 2022 03:01:39 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32B9BE0D6
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 23:59:29 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id s6so11169998lfo.13
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 23:59:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=y5fnCbT6pV3770HPEOFrw72v0s1ib7hyazGd68SatYM=;
        b=TKhiCnK1kmZG/fpGFFJ3Ape86OiOt3cDgpibzXpc9d9/wULO6w12oD7N2h9UQahDcQ
         PE3AxwGstUR+jILm2MUKibZU+BdC03oP0Jn76pzGlJJGl7mfJJveZ50FcA/Z50F12NEX
         9QzeZzKWKbvRdzkbSW5xFy05E9I2ilYkeVeCfV3kVxitozLPk2SR+15F7jpuodMul0ZR
         QCePMmuELZxfPC+zCts0S2PrC3qXcyfM7Q17mcuVQIyT4wswNlrOP6L0QSbxDIULUTFO
         qeHQE2/gWWYagitik8vzCYWtoX9kKWXibxzl+ti6Rx2wKaqWSxetpC6Ddl91lb9vT7CA
         IGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=y5fnCbT6pV3770HPEOFrw72v0s1ib7hyazGd68SatYM=;
        b=L3FOnkTBdoIAYDm6Jh8TQSZD293LGwvk+q5pW0mhgRHSwo6TRFlpuTxDF7NrRvpr15
         4+5ykJg+i1sCotH9o+aHuvDlyZV/wsZ1Gk9/PTnPKekiVauQepc5jihL2lbORw/0hvLT
         bNDo+qvtMfhjYQV0Qtomo+T/eBtnSSus6ZvkxFd0rwj7LviwXi46vArNvJRMbJMfJMyQ
         jPVV/6jXlvs8O0Z/xsV0pxUh3Drt1u3pY5Gsvy4U5/C7rae/Flq+nkZsStdEyVnw0oXd
         IYQPhrr2w0lfBzw+dmrXmvRH8ZalCIvUsC7ByFBO7sHDL34lVPKNF3iqf4h+AAC75pdB
         KzHA==
X-Gm-Message-State: AOAM5313l3iarCQ8NDGm8R1ooTzI51EYwEPrxN0ECl4Updla/pW6lfek
        7YO72bSZZSpB5K7iybqXXjp3ug==
X-Google-Smtp-Source: ABdhPJwCvwZXoPjUzhLVY2GSbh466VVUaxaedPyI7Z4tX0Z+7YioNtOJ2w5lhGjPcVto6vX0U3pxXA==
X-Received: by 2002:a05:6512:3f9a:b0:478:1:6ad with SMTP id x26-20020a0565123f9a00b00478000106admr5972890lfa.558.1654239567411;
        Thu, 02 Jun 2022 23:59:27 -0700 (PDT)
Received: from panikiel.roam.corp.google.com (staticline-31-182-204-250.toya.net.pl. [31.182.204.250])
        by smtp.gmail.com with ESMTPSA id b8-20020ac247e8000000b004786321c697sm1056447lfp.138.2022.06.02.23.59.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 Jun 2022 23:59:27 -0700 (PDT)
From:   =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        dinguyen@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, amstan@chromium.org,
        upstream@semihalf.com,
        =?UTF-8?q?Pawe=C5=82=20Anikiel?= <pan@semihalf.com>
Subject: [PATCH v3 3/5] ARM: dts: socfpga: Add atsha204a node to Mercury+ AA1 dts
Date:   Fri,  3 Jun 2022 08:58:14 +0200
Message-Id: <20220603065816.87952-4-pan@semihalf.com>
X-Mailer: git-send-email 2.36.1.255.ge46751e96f-goog
In-Reply-To: <20220603065816.87952-1-pan@semihalf.com>
References: <20220603065816.87952-1-pan@semihalf.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add atsha204a node to Mercury+ AA1 dts

Signed-off-by: Paweł Anikiel <pan@semihalf.com>
---
 arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
index b0d20101cd00..ad7cd14de6b6 100644
--- a/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
+++ b/arch/arm/boot/dts/socfpga_arria10_mercury_aa1.dtsi
@@ -1,4 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0
+/*
+ * Copyright 2022 Google LLC
+ */
 
 #include "socfpga_arria10.dtsi"
 
@@ -54,6 +57,11 @@ phy3: ethernet-phy@3 {
 };
 
 &i2c1 {
+	atsha204a: crypto@64 {
+		compatible = "atmel,atsha204a";
+		reg = <0x64>;
+	};
+
 	isl12022: isl12022@6f {
 		compatible = "isil,isl12022";
 		reg = <0x6f>;
-- 
2.36.1.255.ge46751e96f-goog


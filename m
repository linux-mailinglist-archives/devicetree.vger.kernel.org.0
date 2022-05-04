Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 86B6851AF4C
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 22:35:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239808AbiEDUi7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 16:38:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1378201AbiEDUiy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 16:38:54 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F21B109D
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 13:35:15 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id b19so3499300wrh.11
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 13:35:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod.ie; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u32JFIRC//emCZL/Ld3yABcbdL+d3UQ5fDlVHIQccNo=;
        b=EqFAmxuYJmI2kg2xatXiw/7b//+XA/+XzJzcDLMsLcAOX1ovCEd1KFfehGAAlyE/4f
         xiEsAoP4ivzt5ag/BNffjzP+vfNzGXwAIK22vNZQHW+NcP7O09lV3mpCC7Y6loIiONrA
         TTsShcURvOoV0uUpDVoGQAxc1Bl2gAypo/gfEHlcSVj5tO79VuX+dc+7lB+A2Y42au5l
         H7WUi6m66kT551TvD/5W6zFWyscv1V1s17bypijpwcglt/NXM9J0zI3zkSpgFPF+rZVs
         ZbH1OXkxjFCSbAD6w2PvEQE0c1NTq4S6bPHM+Pn78i4aywVaF3Meg/7ZOF1rAk3WinHd
         YsQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u32JFIRC//emCZL/Ld3yABcbdL+d3UQ5fDlVHIQccNo=;
        b=1HLd8zrYN6+qXz/XXxYlCzNAGWK77cSdPKNj7NTjgTQE4HtqIvIoi+LMEYcNywlJED
         Z6DMUTTPlQ0uWKBHN1dp0g2fmNtg5m7NubOwAbonnLVa8AxS2CVWqTzkrt/cDLUoyCJQ
         ywMt50VtTkCO26cCKwoGR+UsegusGReYCx9YdRvFfsS/yBPqk4faAUW6oBAcFIQfANoH
         4c3Vx0WQJbmxlzmums2hfxqOH8rWGXxLXNIeKEjb+4ym4jVYutEG8bQF93HvfHPwhihs
         ljNMa9BYBjj+FWAQoapOBMCCAlX3a6ALDIZUsqoC2n0+agW8d6LhFfqa++/BM6EJ8q7S
         8EuQ==
X-Gm-Message-State: AOAM530/0XOaaXH68VIRkoUI8Btw5FXrmfrS5X8xILAQFYoJAx9yR99S
        ROVpvH+HYiA28iPl3yWbzp7F6Q==
X-Google-Smtp-Source: ABdhPJzdiW4qElFhKIrkosBG7ULnYOtaYvUC52RzTtbzq9l2iyrkPzwTsFVvo1mh5bSHLcpQlZiRLA==
X-Received: by 2002:adf:f6c1:0:b0:20a:c408:4aeb with SMTP id y1-20020adff6c1000000b0020ac4084aebmr17411494wrp.74.1651696514483;
        Wed, 04 May 2022 13:35:14 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id l20-20020adfc794000000b0020c5253d8dfsm13330101wrg.43.2022.05.04.13.35.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 May 2022 13:35:13 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        heiko@sntech.de, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/8] riscv: dts: microchip: move sysctrlr out of soc bus
Date:   Wed,  4 May 2022 21:30:46 +0100
Message-Id: <20220504203051.1210355-3-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220504203051.1210355-1-mail@conchuod.ie>
References: <20220504203051.1210355-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

The MPFS system controller has no registers of its own, so move it out
of the soc node to avoid dtbs_check warnings:
arch/riscv/boot/dts/microchip/microchip-mpfs-icicle-kit.dtb: soc: syscontroller: {'compatible': ['microchip,mpfs-sys-controller'], 'mboxes': [[15, 0]], 'status': ['okay']} should not be valid under {'type': 'object'}

Reported-by: Palmer Dabbelt <palmer@rivosinc.com>
Suggested-by: Rob Herring <robh@kernel.org>
Fixes: 528a5b1f2556 ("riscv: dts: microchip: add new peripherals to icicle kit device tree")
Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
---
 arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
index 746c4d4e7686..bf21a2edd180 100644
--- a/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
+++ b/arch/riscv/boot/dts/microchip/microchip-mpfs.dtsi
@@ -146,6 +146,11 @@ refclk: mssrefclk {
 		#clock-cells = <0>;
 	};
 
+	syscontroller: syscontroller {
+		compatible = "microchip,mpfs-sys-controller";
+		mboxes = <&mbox 0>;
+	};
+
 	soc {
 		#address-cells = <2>;
 		#size-cells = <2>;
@@ -446,10 +451,5 @@ mbox: mailbox@37020000 {
 			#mbox-cells = <1>;
 			status = "disabled";
 		};
-
-		syscontroller: syscontroller {
-			compatible = "microchip,mpfs-sys-controller";
-			mboxes = <&mbox 0>;
-		};
 	};
 };
-- 
2.36.0


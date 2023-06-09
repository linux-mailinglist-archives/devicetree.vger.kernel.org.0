Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C18AB72932F
	for <lists+devicetree@lfdr.de>; Fri,  9 Jun 2023 10:32:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239258AbjFIIcH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Jun 2023 04:32:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240838AbjFIIbR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Jun 2023 04:31:17 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D7241988
        for <devicetree@vger.kernel.org>; Fri,  9 Jun 2023 01:30:41 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id d2e1a72fcca58-6563ccf5151so1613239b3a.0
        for <devicetree@vger.kernel.org>; Fri, 09 Jun 2023 01:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1686299440; x=1688891440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pV7h1an/oO2QW199ipAcSJcet1wN/x+kczYWmCEHXCs=;
        b=b0G1iIy8jk/1e2oWh3myUohkTqLjDg0Tq4CI+kRftvzNkQ+LNJSu9h43XZZDqjHAcF
         aVFHd6NQRs/njmFY3G5znn5uTEUTh8V7mtbk62R4LQdUwfocAsD1FguzA4P6CavM94M6
         81xCOIZEPqOUAAig7M5fAjSrPCkXkQO5Lpl9o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686299440; x=1688891440;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pV7h1an/oO2QW199ipAcSJcet1wN/x+kczYWmCEHXCs=;
        b=Tx9fHx9m+oKMxOV7/+wvvwqBuwhESW/eUapOWJqMgFAzLBy6idUCWCDFtymb35ZxlO
         Ju8V5CVfsHQDZI0Y9nt61QvTlu/TdiVe8ED1VRr/MYSSnpQ5ZM02AM44XXgpYG4HptNW
         1443RBWdJ0amnlj3S7lrBnZD5ptgEzM1hDAxICaLtbadNlBVMUcxZvRfRlPGu8Pui4s/
         2GDG5iHR84nFObnw8iVoXveF/+feYfcZFFoEJJ+8bl7Uo0vk543k2MQV3Vw8m4n0Qgsk
         bvlx1Dp7o7a41of/CgZ4JlF9ARlxgX2lTcXEWDM7xOq+LiHoUupLUrmzs4quPtfu0fqD
         54wQ==
X-Gm-Message-State: AC+VfDzn1Q4qTJeJbZhLsXZZ4x/0LPMGSQ16OOT7M/XWmf7xdAczfpur
        7MI92OqRh27+67vl89JhsTqWStBpd94/CSAV5UE=
X-Google-Smtp-Source: ACHHUZ7p3XkQr5FHYZbK/Vmz8eSNTD+4ARfbwf52+TqDOmtzhBxLxHEzsmwDfC/hfUuoqPRfSuN+wg==
X-Received: by 2002:a05:6a00:1783:b0:662:c48b:47e2 with SMTP id s3-20020a056a00178300b00662c48b47e2mr922501pfg.19.1686299440039;
        Fri, 09 Jun 2023 01:30:40 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:c2ea:d8e4:1fe8:21f0])
        by smtp.gmail.com with ESMTPSA id 23-20020aa79157000000b0063b806b111csm2184327pfi.169.2023.06.09.01.30.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 01:30:39 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/9] regulator: dt-bindings: mt6358: Drop *_sshub regulators
Date:   Fri,  9 Jun 2023 16:29:59 +0800
Message-ID: <20230609083009.2822259-3-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.162.gfafddb0af9-goog
In-Reply-To: <20230609083009.2822259-1-wenst@chromium.org>
References: <20230609083009.2822259-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The *_sshub regulators are actually alternate configuration interfaces
for their non *_sshub counterparts. They are not separate regulator
outputs. These registers are intended for the companion processor to
use to configure the power rails while the main processor is sleeping.
They are not intended for the main operating system to use.

Since they are not real outputs they shouldn't be modeled separately.
Remove them. Luckily no device tree actually uses them.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 .../bindings/regulator/mt6358-regulator.txt   | 22 +++++--------------
 1 file changed, 5 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt b/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
index b22b956d1cbe..b6384306db5c 100644
--- a/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
+++ b/Documentation/devicetree/bindings/regulator/mt6358-regulator.txt
@@ -8,14 +8,14 @@ Documentation/devicetree/bindings/regulator/regulator.txt.
 
 The valid names for regulators are::
 BUCK:
-  buck_vdram1, buck_vcore, buck_vcore_sshub, buck_vpa, buck_vproc11,
-  buck_vproc12, buck_vgpu, buck_vs2, buck_vmodem, buck_vs1
+  buck_vdram1, buck_vcore, buck_vpa, buck_vproc11, buck_vproc12, buck_vgpu,
+  buck_vs2, buck_vmodem, buck_vs1
 LDO:
   ldo_vdram2, ldo_vsim1, ldo_vibr, ldo_vrf12, ldo_vio18, ldo_vusb, ldo_vcamio,
   ldo_vcamd, ldo_vcn18, ldo_vfe28, ldo_vsram_proc11, ldo_vcn28, ldo_vsram_others,
-  ldo_vsram_others_sshub, ldo_vsram_gpu, ldo_vxo22, ldo_vefuse, ldo_vaux18,
-  ldo_vmch, ldo_vbif28, ldo_vsram_proc12, ldo_vcama1, ldo_vemc, ldo_vio28, ldo_va12,
-  ldo_vrf18, ldo_vcn33, ldo_vcama2, ldo_vmc, ldo_vldo28, ldo_vaud28, ldo_vsim2
+  ldo_vsram_gpu, ldo_vxo22, ldo_vefuse, ldo_vaux18, ldo_vmch, ldo_vbif28,
+  ldo_vsram_proc12, ldo_vcama1, ldo_vemc, ldo_vio28, ldo_va12, ldo_vrf18,
+  ldo_vcn33, ldo_vcama2, ldo_vmc, ldo_vldo28, ldo_vaud28, ldo_vsim2
 
 Example:
 
@@ -346,17 +346,5 @@ Example:
 				regulator-max-microvolt = <3100000>;
 				regulator-enable-ramp-delay = <540>;
 			};
-
-			mt6358_vcore_sshub_reg: buck_vcore_sshub {
-				regulator-name = "vcore_sshub";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1293750>;
-			};
-
-			mt6358_vsram_others_sshub_reg: ldo_vsram_others_sshub {
-				regulator-name = "vsram_others_sshub";
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1293750>;
-			};
 		};
 	};
-- 
2.41.0.162.gfafddb0af9-goog


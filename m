Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DAFF6798856
	for <lists+devicetree@lfdr.de>; Fri,  8 Sep 2023 16:12:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238207AbjIHOMx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Sep 2023 10:12:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243725AbjIHOMw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Sep 2023 10:12:52 -0400
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E38B1BEA
        for <devicetree@vger.kernel.org>; Fri,  8 Sep 2023 07:12:48 -0700 (PDT)
Received: by mail-ot1-x32b.google.com with SMTP id 46e09a7af769-6bf106fb6a0so303564a34.0
        for <devicetree@vger.kernel.org>; Fri, 08 Sep 2023 07:12:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1694182367; x=1694787167; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eXNM64tRJJGEcjfINNPgEos1uZjyxcMFx/0phrRVNsQ=;
        b=jNJDQvfJi+D/mUetTuoKW1z1d0VtYe3rn69y1f2r68ZMiVVLFC6zRiv5N/F0kP4MTi
         41sshefrfl8+7zvO5Xcr+PYxWImtpUSjHoR5OgSnrIlP8vrJvWkfsX4HuXwYFfiy/T5t
         AJtHzXR1vF4jFLxzrCM9EqzlaKpa5WvOnKbu+h/FZ7Rt96bwSNv5Pt/pcOz3qKDfGxqM
         JFF1swlh80rHkxW0y23raj0Sq+6vsstqDMoJHA/XeHAz5mlv2CrKjz4roG8SCJr2yHxz
         Nm6VkLc5blHctNirgUwSf++P5FEkX0tgaIK54vOENz9kIhXIe5Vq32h0RCNm8aX2FvB6
         sgsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694182367; x=1694787167;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eXNM64tRJJGEcjfINNPgEos1uZjyxcMFx/0phrRVNsQ=;
        b=rcQ2jtc9Ym4sCI7+4GrTjOCdeI7uiCVvXVjmFO4zF7lI1+sKKCa0+cTaHYWvFL0dwL
         kP72uOgPTPKSmu7eLMmAr0v53LvknqyZTEQ+ymAwfZ9sx/maVStZjQ9VDcNvhCV+ErOG
         Awu9kT1c+h1lLG7InmiYHqwAe1DZMVxkDz38AGNw/F4xiAhDrcw4Z4BvBaoW40gyRlqh
         cZHE848xo6AHrLakDn53P0Kfx8nRwB3MI2OkynGgz79RrVS4saziHmTrpEiAk5172iUi
         GNzb0xZ7pDgqBJ+sp1vEyfZoExJLz8CL3gqbkqBzuFF5AcbueksRqOqPP44JOIn0Sfgg
         /MDQ==
X-Gm-Message-State: AOJu0YwRb/cIMOpc5O77uGn85VdmlY0GsgaPBdCFMmY3coLl4VBMuXDz
        S2fByxKBkqGAC4bdBl7VgL0=
X-Google-Smtp-Source: AGHT+IFR+KGAdBmDa+3pxXdpFdywG8cjfwj8u58SwMJ6wEONd91QQ4FbL82G09gBcyuhdSLHg8GStQ==
X-Received: by 2002:a05:6830:204a:b0:6c0:c1ba:8f78 with SMTP id f10-20020a056830204a00b006c0c1ba8f78mr2825817otp.0.1694182367602;
        Fri, 08 Sep 2023 07:12:47 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b61:71e9:644b:bd6f:e558])
        by smtp.gmail.com with ESMTPSA id y22-20020a056830109600b006b74bea76c0sm731833oto.47.2023.09.08.07.12.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Sep 2023 07:12:47 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Date:   Fri,  8 Sep 2023 11:12:38 -0300
Message-Id: <20230908141238.642398-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230908141238.642398-1-festevam@gmail.com>
References: <20230908141238.642398-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.

Change it accordingly to fix the following schema warning:

imx8qm-apalis-eval.dtb: jpegenc@58450000: compatible: 'oneOf' conditional failed, one must be fixed:
	'nxp,imx8qm-jpgdec' is not one of ['nxp,imx8qxp-jpgdec', 'nxp,imx8qxp-jpgenc']
	'nxp,imx8qm-jpgenc' was expected
	'nxp,imx8qxp-jpgdec' was expected

Fixes: 5bb279171afc ("arm64: dts: imx8: Add jpeg encoder/decoder nodes")
Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Improve the commit log.

 arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
index 7764b4146e0a..2bbdacb1313f 100644
--- a/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8qm-ss-img.dtsi
@@ -8,5 +8,5 @@ &jpegdec {
 };
 
 &jpegenc {
-	compatible = "nxp,imx8qm-jpgdec", "nxp,imx8qxp-jpgenc";
+	compatible = "nxp,imx8qm-jpgenc", "nxp,imx8qxp-jpgenc";
 };
-- 
2.34.1


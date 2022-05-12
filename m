Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0286B524D64
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:49:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234486AbiELMtS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353943AbiELMtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:17 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E9CF24D595
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:16 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id dk23so10006793ejb.8
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=JRHr7fdKzwvGcxbeg/0F2EjB5DJIbPSUWRot3RR3KEM=;
        b=5qOD4m+rBHldN3nysblgLsH8WptxZXeWg5hx6uJu3cbY2IGpK+yqPo0D9LlT2NN16E
         E4OyeFyGj8+nWQkxMG8rwSFnrfjUh5s8zg/81RhxraPhqufoajLtqieo5ayU+N7neqd3
         etBerYcEppc3g1dczYesZFKENQWRT0NwCJaILKYNQLpJ/QQ/olSeXlsikKdYeDNNg77t
         KiJVbi7iyF3TcBkZpDGTblA++wOYF3NOivBt+zUs7zdVvoJwilBBiCZ4WKeRj++svovi
         ePsQubUWVxw1v87rHF1GKT/qmQtofag1Vpkn025cWjwVpPwnGVMOVE2SgThziS/AXCvu
         qwgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=JRHr7fdKzwvGcxbeg/0F2EjB5DJIbPSUWRot3RR3KEM=;
        b=XJfz9D7yBgclS+AJpSgTrzPQahY11NGKwzjiZCCF81tA0N+KQiD7er1jpUFzBcK5cC
         kl+0IQM9gy76tOi2S3PlxG0o4L8/LLFn9CUXssXnVK38uEbnx7zmXGqiNLASRKbgT0ue
         pKehMyXcfImDZS1wA+OavSVMhYmI1phGd0IwbwBF75i4Eor2t37bAp6AUh0aovof4Azb
         vXmSaYl4Bw1gBFsExZs3Ag8HKDVTdiipXdvwR+zw7J9uZRNXvyXs0kk7g4IIjlKkrp+W
         wyPZ6VLOYlkRZXP2XZet3ha706narMsUOsZalSpiNt/vaDhZ8P1j1v+VUV8ziRcGbslp
         Sigg==
X-Gm-Message-State: AOAM531RL+mGW+u92lCWOtgklWaDLvvP4Tl2gA3xp6FlL/6fa+Luy5n/
        4QL0AnwMxLkoLVEceeHO7nCxcA==
X-Google-Smtp-Source: ABdhPJypzDPM2tzbDNyHxubPQ3WDgA0YQyMnGC3nOD27vkwpwtsGZKgEbnWRKML0sYHEC6aYdbAS5w==
X-Received: by 2002:a17:907:7b89:b0:6f4:9b92:c2ac with SMTP id ne9-20020a1709077b8900b006f49b92c2acmr29566908ejc.409.1652359755126;
        Thu, 12 May 2022 05:49:15 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:14 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 03/11] arm64: dts: marvell: espressobin-ultra: add generic Espressobin compatible
Date:   Thu, 12 May 2022 14:48:57 +0200
Message-Id: <20220512124905.49979-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Espressobin Ultra is part of the Espressobin family and shares the basic
design, so add the generic "globalscale,espressobin" compatible to it as
well.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 070725b81be5..1b2ed63ae6a2 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -12,8 +12,8 @@
 
 / {
 	model = "Globalscale Marvell ESPRESSOBin Ultra Board";
-	compatible = "globalscale,espressobin-ultra", "marvell,armada3720",
-		     "marvell,armada3710";
+	compatible = "globalscale,espressobin-ultra", "globalscale,espressobin",
+		     "marvell,armada3720", "marvell,armada3710";
 
 	aliases {
 		/* ethernet1 is WAN port */
-- 
2.36.1


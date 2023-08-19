Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA4C8781724
	for <lists+devicetree@lfdr.de>; Sat, 19 Aug 2023 05:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245209AbjHSDWO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 23:22:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47432 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245204AbjHSDVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 23:21:40 -0400
Received: from mail-oa1-x31.google.com (mail-oa1-x31.google.com [IPv6:2001:4860:4864:20::31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F3CDB4684
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:20 -0700 (PDT)
Received: by mail-oa1-x31.google.com with SMTP id 586e51a60fabf-1c8d895a602so908042fac.2
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 20:21:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692415274; x=1693020074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CAWiVInAKzqGBVby1FaYIzHdUGUf09+39fdPYx5btro=;
        b=bYQeSQCbaYWSHd09XebwHUv+l1I1FH2pN/5X75qDYckyXvLxhFGJAXXmzAehlgtWCW
         j6EN285Jd1VZyDtx4Cy3poVb5g0U2CjBea/DSs/wYt5iwrJF+9GcR6YzQUfiXWY1JVMt
         gAMzWegYIwSxzo0PLLzaHxrLV1TArMW/VR/ve/lkRz0dKmm/BTaBCmy3nsB+0njZ3Do9
         tmWpWHTMAh0H2/EsOQUvFrGYEQafnSgTXfrSsrkrMDFR8nJk+FJhrud876yCwCythJEt
         +RowKx832ROffLiTbyK89q+OsxI/hbBYJhwHiTuPrxrvapoTXHqQsSnHKYnl4wfcchqr
         q2Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692415274; x=1693020074;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CAWiVInAKzqGBVby1FaYIzHdUGUf09+39fdPYx5btro=;
        b=bA8JRAsTNtVGlCfIQrmf5O+QHfCGCg8Tu+nU73d970FjkZRHaAneU89QZ/oYX4sDN1
         j+5Tz7dJmwNYmppmdPV9CKf95BZjTKG3k3AtA8PdoKHLvZxOxY7TChGQLmrCVDKzUz7O
         ad645B5NU4D841xZgg7ju74vHJNNjqX/GzKx2zFIOjSB0V0tEQLMJiepX0zNyaqa6jfP
         iViNsegu530jJx0D7wTObhDso5g3Y4olHEWRodcSgQXusHdiHtjkQRECAFh0oOWYv8tu
         fRtPnAO6xuVJ9RcHKGlyXVqshvXI80XnIbP+oExsNMG2sPX6cXFu80JGEVcH1UHRVMm0
         JqPg==
X-Gm-Message-State: AOJu0YxqwJwiEteZAEsS3ypNPcEwzabGBkqVaABTJpR9w4sUHUbayDw9
        UXHp+Xe53nJBEjJLakXSw2Y=
X-Google-Smtp-Source: AGHT+IFFJLGutK6XtXwAVSVazDKOH5tCGLYrJwKo7JUO7MBC16dR65lsZ8kiKKkbo8s31ky15qprlA==
X-Received: by 2002:a05:6870:14d4:b0:1bb:88f0:f41a with SMTP id l20-20020a05687014d400b001bb88f0f41amr1320486oab.26.1692415274708;
        Fri, 18 Aug 2023 20:21:14 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id ch16-20020a056871c41000b001c02f12abd0sm1728265oac.38.2023.08.18.20.21.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Aug 2023 20:21:14 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, me@crly.cz,
        uwu@icenowy.me, samuel@sholland.org, jernej.skrabec@gmail.com,
        wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/4] ARM: dts: sun8i: V3: add alias to cpu node
Date:   Fri, 18 Aug 2023 22:21:02 -0500
Message-Id: <20230819032105.67978-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230819032105.67978-1-macroalpha82@gmail.com>
References: <20230819032105.67978-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,
        SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Add alias to CPU node to allow board specific CPU information to be
added.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
index 3b9a282c2746..2b76a5b8ec19 100644
--- a/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
+++ b/arch/arm/boot/dts/allwinner/sun8i-v3s.dtsi
@@ -71,7 +71,7 @@ cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		cpu@0 {
+		cpu0: cpu@0 {
 			compatible = "arm,cortex-a7";
 			device_type = "cpu";
 			reg = <0>;
-- 
2.34.1


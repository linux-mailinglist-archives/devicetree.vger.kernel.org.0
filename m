Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 745F126B744
	for <lists+devicetree@lfdr.de>; Wed, 16 Sep 2020 02:21:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726882AbgIPAUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 20:20:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33090 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726881AbgIOOVk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 10:21:40 -0400
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com [IPv6:2a00:1450:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00A6EC06121C
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:21:28 -0700 (PDT)
Received: by mail-wr1-x442.google.com with SMTP id s12so3495151wrw.11
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 07:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DTvsmjEM2lW/ZwZbzC+TCSlbB+G1GjCjHr0oK7IJyxs=;
        b=t2Noy8y7o+XObToSQaHOp+GXTJXFcjePrskT5ToMvKO7kgZbM8U7Q/uTMW/P3FhT1m
         mTDGe0GdM7OiGcsJu0bNabxHb6DWuGLaYggRBUpEQgT1Jk9g4GEVZZRKr1jvDtTNM/vP
         6r7H3DoeUQSiHMFIbCSvEh12RwAqliWY5FOL5JTH6NXPcP72DxKfC/U82QrDG+1xcO4G
         aePtQwdnZJni2zpFJBGN3hvbUa8Yx6uE1dxhPQPVq8SHy7pqF+2WMm0EbB1TDED7AzqK
         GZMDkdlbnPYl9fD0elNRRO38dgr0ywNsY/S0lqM1wk4M0DRnDE0WLpTOiraCTAl258pr
         79fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DTvsmjEM2lW/ZwZbzC+TCSlbB+G1GjCjHr0oK7IJyxs=;
        b=apDwhIulPpk4AwHzrdeyuKg70Kp2a5PYWC7GRyGVSt01ndDxiQWIu6kZPdUxF4LNws
         4OtRhiww7PutzJPLUyvazX0ev7Ed8JLSvgEtQa/R+9zpnzVGwTqFRPe6YBCp9bd1xz2K
         +Gop5in/nLsmfDkqHKggPe88dtI6dBVO2Ue796MKjpD/MD25Nac6CJPYbJsuDvr8QEzL
         aEgPGxfPBhOQ3DDjiPS3BOVjNaPcacHE36SvA497H+etBUXa4ijy3VJFNL5zwD2+zKxZ
         9sybvYCKDgY3oXfvPqpK/JNrtC/tmLSXDTMtEexIU8V/OqdLCqBJ71dJ+Jdq48AK7E1g
         jI7A==
X-Gm-Message-State: AOAM530PPqChrxOuW5pBsVrPcbZoVzMPWpZ5ucR5LoHkgBz2oRBLLHZ3
        q90Mn/MxDQBrVr26Kiovrb9zDQ==
X-Google-Smtp-Source: ABdhPJyjl6rqOWY1S7WLDZu6mXCWM0Z4pZdx8q2N5Ha+62OK1OtJ0l6bXqTFP10p/0KNziTp7BJZqg==
X-Received: by 2002:adf:e8c3:: with SMTP id k3mr22146078wrn.228.1600179687587;
        Tue, 15 Sep 2020 07:21:27 -0700 (PDT)
Received: from starbuck.baylibre.local (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id d2sm27821482wro.34.2020.09.15.07.21.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 07:21:26 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: amlogic: add support for libretch s905x cc v2
Date:   Tue, 15 Sep 2020 16:19:20 +0200
Message-Id: <20200915141921.57258-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.25.4
In-Reply-To: <20200915141921.57258-1-jbrunet@baylibre.com>
References: <20200915141921.57258-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the 2nd version of the libretch aml-s905x-cc.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 5eba9f48823e..1c29d7ff8edf 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -96,6 +96,7 @@ properties:
               - hwacom,amazetv
               - khadas,vim
               - libretech,aml-s905x-cc
+              - libretech,aml-s905x-cc-v2
               - nexbox,a95x
           - const: amlogic,s905x
           - const: amlogic,meson-gxl
-- 
2.25.4


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C9EC8496051
	for <lists+devicetree@lfdr.de>; Fri, 21 Jan 2022 15:04:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380955AbiAUOEN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jan 2022 09:04:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380951AbiAUODx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jan 2022 09:03:53 -0500
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A83D8C06175C
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 06:03:30 -0800 (PST)
Received: by mail-wm1-x331.google.com with SMTP id l12-20020a7bc34c000000b003467c58cbdfso29264910wmj.2
        for <devicetree@vger.kernel.org>; Fri, 21 Jan 2022 06:03:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=b9Qbow8A0YPWPn3/lM+2GnA7PMQAnbZ2M1lFPHFZxvI=;
        b=iLBvT1rCA9fzZwk3qDs+fOqABHEY57jiB8s6aoCN2xtmXNgFBPi8cTSJ6M+sjOxfKD
         ML5LjOJJmQaxWaMgHGMOkqXx9FAKKH0RSJ1gxob9voRk1h+hqcb65A5NZPYuLrnO8+oQ
         +fUCJzkLi8vOoZ+YUkDI9ZNFiaoLd8UJ8E1xmD2qhNdmzv6lIUii/8wLPBslyy5gyxy5
         ieiVr8m+9jjE5ZKvDwjg0mCUp/wjjSs4n0VXMOsRmZ14yBIGPZqIcBMt8uqGi9S+jzvd
         3qZTi3PzWk/oNQMoTRkjYQ/Rk35xR1gJyFyjXMa4cWfPOUwATdabAQivzxwD6yRZ0NBF
         b4RA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=b9Qbow8A0YPWPn3/lM+2GnA7PMQAnbZ2M1lFPHFZxvI=;
        b=X2EcvkmvVcdQSsBzDDEWdLQbqlQK1lfFcnk5cFRoq1QuatwPmYsgarC/2dZFeG6AIM
         Azare3ggb5QMOcICIxrAL+pI3+Ib2yGv+z6mEaSABG7cZaLaqwpMEdC15bfYy1Xc6nH5
         0GsjH/8YKQBQc52Hgy/vV52d6aJyGY0k9llQ/L2s/OHmySJNJX8pZOVr9BzXbmI4sOe2
         7UKyQ9Q9Gpiosv/zN4OAXXEdvram0T9Sl6cx3zdYa+qIduJypw6LpST0u0GZtlYlt21u
         3JsylNjSdIqabmz0t6GK5KagpPhirYaaK/i46HnZ/7JOeUKihWIkXY19h4CPzVJuYhdl
         BOuQ==
X-Gm-Message-State: AOAM530cEAF4DV/Tv6bh+xSyS+r+b5rzFkPkAR3d0AJOctCSGR+ihyNt
        dZ4J5cPvUDCBVHmhyguhQUCp75j2ofLCDQ==
X-Google-Smtp-Source: ABdhPJze8JkZPt8YeJNz4+qQXr+QI1NypQGJpv1iLMTMx8IGenCg7ujdHDkOBgABZTcC58knzAWJHg==
X-Received: by 2002:a1c:1d45:: with SMTP id d66mr899724wmd.24.1642773809302;
        Fri, 21 Jan 2022 06:03:29 -0800 (PST)
Received: from groot.home (lfbn-tou-1-205-205.w86-201.abo.wanadoo.fr. [86.201.52.205])
        by smtp.gmail.com with ESMTPSA id p29sm9225129wms.5.2022.01.21.06.03.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Jan 2022 06:03:29 -0800 (PST)
From:   Mattijs Korpershoek <mkorpershoek@baylibre.com>
To:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>,
        linux-input@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Mattijs Korpershoek <mkorpershoek@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/4] dt-bindings: input: mtk-pmic-keys: add MT6358 binding definition
Date:   Fri, 21 Jan 2022 15:03:21 +0100
Message-Id: <20220121140323.4080640-3-mkorpershoek@baylibre.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220121140323.4080640-1-mkorpershoek@baylibre.com>
References: <20220121140323.4080640-1-mkorpershoek@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the binding documentation of the mtk-pmic-keys for the MT6358 PMICs.

MT6358 is a little different since it used separate IRQs for the
release key (_r) event

Signed-off-by: Mattijs Korpershoek <mkorpershoek@baylibre.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/input/mtk-pmic-keys.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
index 535d92885372..9d00f2a8e13a 100644
--- a/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
+++ b/Documentation/devicetree/bindings/input/mtk-pmic-keys.txt
@@ -9,7 +9,10 @@ For MT6397/MT6323 MFD bindings see:
 Documentation/devicetree/bindings/mfd/mt6397.txt
 
 Required properties:
-- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+- compatible: Should be one of:
+	- "mediatek,mt6397-keys"
+	- "mediatek,mt6323-keys"
+	- "mediatek,mt6358-keys"
 - linux,keycodes: See Documentation/devicetree/bindings/input/input.yaml
 
 Optional Properties:
-- 
2.32.0


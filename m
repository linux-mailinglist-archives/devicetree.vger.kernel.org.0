Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04C4625F87B
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 12:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728896AbgIGKeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 06:34:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728832AbgIGKdW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 06:33:22 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41875C061574
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 03:33:20 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a9so13706609wmm.2
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 03:33:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zDegqVmimS9dIJwNDMtty6LSuyVmgMvA+oa1ZvHmVIY=;
        b=gdjLbdpOV3gN6yZT5yR6EraPQlcFbNhhBhstzpB/HgTvOuSG9WyZjmNruLe4HpYA9e
         edlT0TL47uetSEnv9IJ154SPP1ssMzk3ow7nILL3yxn7K5loUHfAm6umGcLDOnseHI5M
         fH1Qlt3eKv19wdRfn6a9BgfVUj69P/VgMkW718b9aWdPkevXrl2ZHZxKfCWZFGd1t4fr
         hQg86QKqz6nQ0DdoYmuT3PEBzw1kthhlKrWGc/fzAZehYPMJF0/EDWdX1QlqAMVIKsHR
         yGBN93/uJuBddwRyC5Hj76ehMUXFzYCRX+HuFc3fqu1/vZSl235e7nOdyY2if9Tock/h
         Qgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=zDegqVmimS9dIJwNDMtty6LSuyVmgMvA+oa1ZvHmVIY=;
        b=nrvHRAU5KiHafclCC1NcNmaE508xYsifbl5sTNjcPNnDi0oduoCguPb4zeo19A7SBY
         XXD0kYyaADQZDMb3TKC9RYM0ZMwhenZYUrN7w4EBVdOJ6swToJgeB5/yVhXQUHt22ORh
         HfBiGpK+aWld8lmM5YgYtHk6n///38MWyww3O0hwap7sUETX/2WF1ecsodfVV9amshyC
         PZgkhmfmrK2SWQrCvzqRDbmUgMSsFYgwvTpdklOUN183gnkx04S94nSHMwSsYLNuuWmL
         bqQ1xlpU3Edy7Cnit3m9Kd2qQjC7J2+sUWnbvtRNyBEeVrFjSzkw/LwRKhww2ABnDPrE
         JsfQ==
X-Gm-Message-State: AOAM531fuqSkW4vYhf37R4C1WIkdd19yVB0B2ANPdurrEydWHS28bBWG
        4Lw+mcWmrjMUt5gNEb71UHfaQQ==
X-Google-Smtp-Source: ABdhPJwmKB1R49xT+gzxzJMk8hfpF7xfzlN8Z3JZRv87J9pj6lSBqqi2dBpFwiLaZ9qbxtlErOlEOg==
X-Received: by 2002:a7b:cbd4:: with SMTP id n20mr21202627wmi.105.1599474798946;
        Mon, 07 Sep 2020 03:33:18 -0700 (PDT)
Received: from localhost.localdomain (122.105.23.93.rev.sfr.net. [93.23.105.122])
        by smtp.gmail.com with ESMTPSA id i1sm32395936wrc.49.2020.09.07.03.33.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 03:33:18 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     linux-kernel@vger.kernel.org, linux-mediatek@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Cc:     hsin-hsiung.wang@mediatek.com, lee.jones@linaro.org,
        matthias.bgg@gmail.com, robh+dt@kernel.org,
        dmitry.torokhov@gmail.com, Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 1/3] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date:   Mon,  7 Sep 2020 12:33:09 +0200
Message-Id: <20200907103311.1601907-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-mfd-by: Lee Jones <lee.jones@linaro.org>
---

V5:
	* Rebased, removed regulator documentation because it will be send later
	on in another patch series

V4:
	* No change

V3:
	* No change

V2:
	* New patch

---
 Documentation/devicetree/bindings/mfd/mt6397.txt | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/mt6397.txt b/Documentation/devicetree/bindings/mfd/mt6397.txt
index 2661775a3825..f051a951ba72 100644
--- a/Documentation/devicetree/bindings/mfd/mt6397.txt
+++ b/Documentation/devicetree/bindings/mfd/mt6397.txt
@@ -21,6 +21,7 @@ Required properties:
 compatible:
 	"mediatek,mt6323" for PMIC MT6323
 	"mediatek,mt6358" for PMIC MT6358
+	"mediatek,mt6392" for PMIC MT6392
 	"mediatek,mt6397" for PMIC MT6397
 
 Optional subnodes:
@@ -52,7 +53,10 @@ Optional subnodes:
 
 - keys
 	Required properties:
-		- compatible: "mediatek,mt6397-keys" or "mediatek,mt6323-keys"
+		- compatible:
+			- "mediatek,mt6323-keys"
+			- "mediatek,mt6392-keys", "mediatek,mt6397-keys"
+			- "mediatek,mt6397-keys"
 	see ../input/mtk-pmic-keys.txt
 
 - power-controller
-- 
2.28.0


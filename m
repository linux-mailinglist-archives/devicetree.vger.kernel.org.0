Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6AD5E29C613
	for <lists+devicetree@lfdr.de>; Tue, 27 Oct 2020 19:26:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1825633AbgJ0SMm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Oct 2020 14:12:42 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:38070 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1825624AbgJ0SMI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Oct 2020 14:12:08 -0400
Received: by mail-wm1-f68.google.com with SMTP id l8so740719wmg.3
        for <devicetree@vger.kernel.org>; Tue, 27 Oct 2020 11:12:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=er1O3yHYE2dfZAtg9MYR2G3dWLGNVrruH1edHcefbnw=;
        b=bsloMzFYU+sjn0EHCNX05u0v3HMhR+DRCYOINuw9yP83GdKxOWN/pwJB6ENsBqk+BP
         XcKN7YCcvKAcNJ/Eym826aUQFudPqSpHk/rSkprBQ/WThjLkTBak4eUvLD55f3xB7DmG
         yQRmXNFymQbfm+s2BJaWBQAsv20oLjMmdbvRj/yMpZLz6icRS39vvtotJZV1jU6fFm3c
         wbsV+vgtPg903HKuTKoA0HiLK9Je16Irz5+2MdRP+bGmGVHuz7gWvcQFkyH7OXyA4yLC
         HNsipqvMDqVKgfW4vQ6XBnl/8k8xvpwDK9ikVyglSIWlGg6M2NZTj+opD30VLYOzXA/6
         mjSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=er1O3yHYE2dfZAtg9MYR2G3dWLGNVrruH1edHcefbnw=;
        b=dDuTRmed3EZIgBG1ReUBsZdbrwHWxtOc7wA2jEtEXM02e/AKFLDvlVpSQRVHTyhXPu
         Jpm+TkTzzmCLBf73GktoYI+iQC0W2oh2BnY3AAlD1z7kchJCtDhmTHWuYUNuQVXHl7rm
         VEUdc5oA6lOh59Ebjc20A8sIyJYibh7/pGFwtV8zPFXALOh9PrfQNtFSSMvOyrqlcqSg
         Ga8wbMS+T7fpZGOOyKqOSXWwlzZl5zNef6YmnU8RsPVeyQ0ooCPF/0JvSDgBDXUpBxOU
         FSiyYSvMU1jpZkeBUuVEuEE1bo7DflUlo2r0lk5bBSgcXnMsZhv24rh2a3oMaQN+sMyu
         JhdQ==
X-Gm-Message-State: AOAM533FNqOoIA5aRDK5bXJu3Cy9i2ac2PUGfGWd7FIz9522YmKHdScD
        EuZNUu6bl5wJfgU47bqA8hyGVA==
X-Google-Smtp-Source: ABdhPJzOJI8JYV3oC0Xp3xAlpwU1KLwVOsla33zNeb7gIVy1xaeHbaIkQWpOBckqDBLzb/eLYApw9Q==
X-Received: by 2002:a1c:98d2:: with SMTP id a201mr3882929wme.166.1603822326283;
        Tue, 27 Oct 2020 11:12:06 -0700 (PDT)
Received: from localhost.localdomain (159.174.185.81.rev.sfr.net. [81.185.174.159])
        by smtp.gmail.com with ESMTPSA id h206sm2801224wmf.47.2020.10.27.11.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 11:12:05 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v6 RESEND 1/3] dt-bindings: mfd: mt6397: Add bindings for MT6392 PMIC
Date:   Tue, 27 Oct 2020 19:11:54 +0100
Message-Id: <20201027181157.862927-1-fparent@baylibre.com>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the currently supported bindings for the MT6392 PMIC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>
---

V6:
	* No changes
V5:
	* Rebased, removed regulator documentation because it will be send later
	on in another patch series
V4:
	* No change
V3:
	* No change
V2:
	* New patch

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


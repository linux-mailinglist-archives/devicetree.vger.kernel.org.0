Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C92AE73038
	for <lists+devicetree@lfdr.de>; Wed, 24 Jul 2019 15:50:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727295AbfGXNuK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Jul 2019 09:50:10 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:35550 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726422AbfGXNuK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Jul 2019 09:50:10 -0400
Received: by mail-lj1-f194.google.com with SMTP id x25so44636530ljh.2
        for <devicetree@vger.kernel.org>; Wed, 24 Jul 2019 06:50:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GxqeVRAu8+l8yYzPd+gthwrK7cvPO4f9RTksijZqcJM=;
        b=d1/AnXTfzDzVuH3U4c14o6CjsffFRHEIXFK61k8yjmHBtjYsRXCI8J21a3mMiuOZI4
         cqi9X+qktXY7k6uIkJWNTyUqlmX1j5ZE8he8iSQf00NnLzNPDU0YEupQRP3GzB5UH8Bc
         lRzT5SOlICV5aBQRhmR2ENhfOy5p31b14kq9Mi+uUQjM6t+9ODltdwGlXUa2gtRdc9Vs
         8MpubM4sI5gEz3UrdBNEE0K4ArMbranHmxtrcC9qf4fzsvdI8cNhTit/Plb7VmgS7uQg
         3URQ/Yd84UBvEDZhPbwywE7NiULvU6bqY+oLkzJMY4phkWqhRrdlhHBhcxMu9Sm+APVO
         r/rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GxqeVRAu8+l8yYzPd+gthwrK7cvPO4f9RTksijZqcJM=;
        b=oR0pZ17j4XKiYwWvR3ejzDew1QxQ3ZKtiJV23JeEk+4FDZgiPd7u/4j55mHqvuiy+w
         G/8DleFSVQyxLAI6JkSNg89o+DPcz2dfMoYiJgZtVtJNIAaFfW2egfbORfbZBPdIO9tE
         pIEx3ymQpXyhfrnvR5Kb/SqKKWCT7LEVzZ1Bbh1qLD6OoMfCyH7PimULSvN++GXZzsUA
         HfTNJIpKAGAPSQXKPmVmy057YUYuOKkK10vl7fwrHpVb57bPh5k89gustpF/AOaoe7+d
         DcGMAi3IA/vyOs2ddKrSE29NPn+l7BONuWLM+/aiG6SLTGsTRVCsFkDMF9oW53inmo8u
         EaiQ==
X-Gm-Message-State: APjAAAXH+wLbkNzjeAvjFdX4YF8tW97NswqGSeVnGTna18MLKBzSCMqc
        huTP5XqtsBMyhRMvyKuJjrcZfA==
X-Google-Smtp-Source: APXvYqxzSdpNJ5lm69QpIMQiYQwP+Ttd8WTQhr71TgFYZTiSnOeiyQuQys/rPXrnmuRfo4P1uwlcBQ==
X-Received: by 2002:a2e:9857:: with SMTP id e23mr42374872ljj.217.1563976207815;
        Wed, 24 Jul 2019 06:50:07 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
        by smtp.gmail.com with ESMTPSA id v4sm8586483lji.103.2019.07.24.06.50.06
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 06:50:06 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     dri-devel@lists.freedesktop.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <Liviu.Dudau@arm.com>, devicetree@vger.kernel.org
Subject: [PATCH 1/2] drm/pl111: Deprecate the pads from the DT binding
Date:   Wed, 24 Jul 2019 15:49:58 +0200
Message-Id: <20190724134959.2365-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The pads were an earlier workaround for the internal image
pipeline in the Linux fbdev subsystem. As we move to generic
definition of display properties and drivers that no longer
need this to work, deprecate this property.

Cc: Sam Ravnborg <sam@ravnborg.org>
Cc: Pawel Moll <pawel.moll@arm.com>
Cc: Liviu Dudau <Liviu.Dudau@arm.com>
Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/display/arm,pl11x.txt | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/arm,pl11x.txt b/Documentation/devicetree/bindings/display/arm,pl11x.txt
index 572fa2773ec4..3f977e72a200 100644
--- a/Documentation/devicetree/bindings/display/arm,pl11x.txt
+++ b/Documentation/devicetree/bindings/display/arm,pl11x.txt
@@ -39,9 +39,11 @@ Required sub-nodes:
 
 - port: describes LCD panel signals, following the common binding
 	for video transmitter interfaces; see
-	Documentation/devicetree/bindings/media/video-interfaces.txt;
-	when it is a TFT panel, the port's endpoint must define the
-	following property:
+	Documentation/devicetree/bindings/media/video-interfaces.txt
+
+Deprecated properties:
+	The port's endbpoint subnode had this, now deprecated property
+	in the past. Drivers should be able to survive without it:
 
 	- arm,pl11x,tft-r0g0b0-pads: an array of three 32-bit values,
 		defining the way CLD pads are wired up; first value
@@ -80,7 +82,6 @@ Example:
 		port {
 			clcd_pads: endpoint {
 				remote-endpoint = <&clcd_panel>;
-				arm,pl11x,tft-r0g0b0-pads = <0 8 16>;
 			};
 		};
 
-- 
2.21.0


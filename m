Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A4D972DB1F
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:56:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726581AbfE2K4v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:56:51 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:43034 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726411AbfE2K4v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:56:51 -0400
Received: by mail-pg1-f195.google.com with SMTP id f25so1145408pgv.10
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:56:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/HOJUJPmu0DEDj06ebaN852o3ZXmTIE5qbyIrE/4RCQ=;
        b=grc4vc5ccDjj9vGZrQtKPLDitASXNBkw5h02ZiZKrmHLtsjSNj70fuqjGVRCQ14aRU
         7XJhUM2Pw9Boghtdessngp/2nRsKNIwLs0YzadVFrG2srOi5gqGysUxZ1iEocuhjGiUs
         G1BHkYB+bvxir0JgGl83waMzduEA5pjUWIGn4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/HOJUJPmu0DEDj06ebaN852o3ZXmTIE5qbyIrE/4RCQ=;
        b=ed4FkxUebWZvQgwD5aRwUHXaiB6EHIZDA/uHAaOkmnMgwXPrN6bt9w/cvF24pw3H+O
         4yWy8ii8p/KhSASegydFxKSW6GTNxFr1Eaqwx1DfWIF5KS1EUJ51Qkl7IR/e+c6mN3hu
         30SNwUaRsmyinGOYTpEh5amAWy84vtmWnwt5hqrkxHuZhk70D5nplWiEyiKqwcXAf7wk
         XVL1+lL0zp6r1KUg9eZAgqWzy0Knq35eEzOmCCw3qNbwO1r4AX9dj2uabZGLTmCTkJBT
         omMWbKN3g09W7Yw9NrTeTyHJq8mKvmj9jtByIu434yiegGpeZh2WUNMqVHq4BNw27Kh4
         e2Fg==
X-Gm-Message-State: APjAAAXyUShkNPa5FSM7SfsN9UsRq7Njeb89fnUMN1zuG/OjDSg7slp+
        /oO3evTv4+33Z+40vJMPgGg7/w==
X-Google-Smtp-Source: APXvYqwkDEN5ViwUhtjeUodU3pfOZQ1pY/mLl+5Nf3Rvnz+8uPjdcVebnc1VS0CfP684+zNGbbjsZw==
X-Received: by 2002:a63:ff0c:: with SMTP id k12mr31032943pgi.32.1559127410770;
        Wed, 29 May 2019 03:56:50 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
        by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 03:56:50 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        devicetree@vger.kernel.org, linux-sunxi@googlegroups.com,
        linux-amarula@amarulasolutions.com,
        Sergey Suloev <ssuloev@orpaltech.com>,
        Ryan Pannell <ryan@osukl.com>, bshah@mykolab.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v9 2/9] dt-bindings: sun6i-dsi: Add A64 DPHY compatible (w/ A31 fallback)
Date:   Wed, 29 May 2019 16:26:08 +0530
Message-Id: <20190529105615.14027-3-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI PHY controller on Allwinner A64 is similar
on the one on A31.

Add A64 compatible and append A31 compatible as fallback.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 9877398be69a..d0ce51fea103 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -38,6 +38,7 @@ D-PHY
 Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dphy
+    * allwinner,sun50i-a64-mipi-dphy, allwinner,sun6i-a31-mipi-dphy
   - reg: base address and size of memory-mapped region
   - clocks: phandles to the clocks feeding the DSI encoder
     * bus: the DSI interface clock
-- 
2.18.0.321.gffc6fa0e3


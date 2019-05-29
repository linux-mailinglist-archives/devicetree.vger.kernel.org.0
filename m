Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC7322DB1D
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2019 12:56:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726628AbfE2K4r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 06:56:47 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:41602 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725990AbfE2K4q (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 06:56:46 -0400
Received: by mail-pf1-f193.google.com with SMTP id q17so1385454pfq.8
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 03:56:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ckydVo2IPZQfXMKYGz1uqlUzm7n70fMIZ1xjq1PJknE=;
        b=V0jQzMibWyqWK10H6MvY76fJcwPWlGrRY8e7Df827n8zYmV9xEN/F62M7y906QKzhy
         xoeISZnEqS7mw55e65yCWO7PijGBgJGHsLydsQoE9PlcgzZ466LkuT5qH+47NCdA5P9Z
         1YRFF+E28l166xBoI+WV7zEvpSlDNH63GJ2Qo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ckydVo2IPZQfXMKYGz1uqlUzm7n70fMIZ1xjq1PJknE=;
        b=bTxRlW0o1Gj+SVp6IjMZyAk5MaiRXN3ALDGrZuExvBbStWrEEQ4HDMvg1QLvROarzF
         RkCMlpzn0Y5lA8/MH4DteemYKWmRbpkfXNMJJwHT6dJi7S9jLuGVzZTx1ZbHI/GO5XEK
         /n1f+JC5EvnuAvSn/2+9X3XgPwTmklrjXBGiZQwNHzxp8I7xqsCIEiFiAMd3JQ8TYLrm
         zRKBaa+qoBIuSukHgqqr7Sdg400jDX1WircYzRw3sVV0FZzuRb6UEeRkjb2nnlTycwwJ
         v+Wwwo+2P/yakKOMVgpBK1uvtORojPY2Q3LJtHQ8r6SOGwRfEIePRI6iSCsdicubqQWh
         8Qow==
X-Gm-Message-State: APjAAAVAQnp3nfnvx1EHGGaG4P4UMtCn4zRWrIpD8v+EBBLj/GVHc/Ir
        otfGo9qlslRf3U4F3xEm/N26fg==
X-Google-Smtp-Source: APXvYqxAqeyPUCEfsLpzPpNkG6VxtpiEQSBzycYxUZb/YK7f/rdLKTkrj+3tN8YOGJs1FXUIwvLy1A==
X-Received: by 2002:a63:4d56:: with SMTP id n22mr110949138pgl.307.1559127406146;
        Wed, 29 May 2019 03:56:46 -0700 (PDT)
Received: from localhost.localdomain ([49.206.202.218])
        by smtp.gmail.com with ESMTPSA id 184sm18974479pfa.48.2019.05.29.03.56.42
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 May 2019 03:56:45 -0700 (PDT)
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
Subject: [PATCH v9 1/9] dt-bindings: sun6i-dsi: Add A64 MIPI-DSI compatible
Date:   Wed, 29 May 2019 16:26:07 +0530
Message-Id: <20190529105615.14027-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190529105615.14027-1-jagan@amarulasolutions.com>
References: <20190529105615.14027-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MIPI DSI controller in Allwinner A64 is similar to A33.

But unlike A33, A64 doesn't have DSI_SCLK gating so it is valid
to with separate compatible for A64 on the same driver.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Tested-by: Merlijn Wajer <merlijn@wizzup.org>
---
 Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
index 1cc40663b7a2..9877398be69a 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun6i-dsi.txt
@@ -12,6 +12,7 @@ The DSI Encoder generates the DSI signal from the TCON's.
 Required properties:
   - compatible: value must be one of:
     * allwinner,sun6i-a31-mipi-dsi
+    * allwinner,sun50i-a64-mipi-dsi
   - reg: base address and size of memory-mapped region
   - interrupts: interrupt associated to this IP
   - clocks: phandles to the clocks feeding the DSI encoder
-- 
2.18.0.321.gffc6fa0e3


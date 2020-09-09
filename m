Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB98D262BD1
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 11:28:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725917AbgIIJ2h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 05:28:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726440AbgIIJ2f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 05:28:35 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 943ABC061757
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 02:28:33 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id n25so2623846ljj.4
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 02:28:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wTyfCsTaDrOHACqOceFvOnNFS4vgFYT28JXZt0L83HA=;
        b=ycidf9eWNxxWUgW1fKGQNdPXYwseYW4xi4HSzwn/rr/KbgqHAgIu8ILcbUzrsMTVCQ
         kKNqefAx6mzw6drvw7f62Iit5oOpMdB5TX7h2HtmpYQrVPcxT3mzI3qGVWzxYR8laybB
         apdHFhBh+XSkwF0E5LBYwNd2nePpg0kjPoWJiisLoIEUIswTiXYbGKZAQT+NwONLQ2by
         pds1zmJ2CxCqTekV1IUZ88xrly7GjQ9JOTUEOjucl9YQk9s1JVZtgiJoKHjCSRe5jfSY
         uFE0puOvAzW0vcAe4/exK4YushaqIcMWNjEfe49f4MOihKHO9pnzeivteYvqsOA1fxfV
         U47w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wTyfCsTaDrOHACqOceFvOnNFS4vgFYT28JXZt0L83HA=;
        b=hE9UVLxoJbx+I5ElszDX/GRUh9lCmTZJQE+hgyas7g0wB2J8AjceEs5Eo3vdRr2tjr
         yAJLK7vXE2zt2ZZZazBgIS2nRtaManWv3hv6rJqwr9iT4BzpmZNeJdABWrFmf3+t5FbP
         T2kuHNcit4icL54591nj5ZQ7qKjEkNaNmINz8Dyprh+X3sDEb108LAJwtR3q2wJiQDTh
         e8R3p2C00T+tsgjnFFbAxZnhqqvS4uiYw2NjKEqeJeBlpI72Z6rBEPjSJt+M+aKUjYvh
         IIPkFgjBlDwuNT1SO+u68nL/uKQVHjGO4wlG+El0OzKL2NdIyOnQ/xUqumIH2gpV8xWI
         pWNA==
X-Gm-Message-State: AOAM531PknO7AET9uJcf7xkITMssaT7PyLNkPQ4y3XoExpRR05VL9VeT
        XAqzoBmbTuo4WkZMEmsbguMVWOJD098mlw==
X-Google-Smtp-Source: ABdhPJwmdxMqZFi68OkqjC4L+d0jC3/H/ejGfsllvbJVbXfrxbcqyw6U40F4PEkv1PpGabRW8RVwjw==
X-Received: by 2002:a2e:8907:: with SMTP id d7mr1419781lji.206.1599643711528;
        Wed, 09 Sep 2020 02:28:31 -0700 (PDT)
Received: from eriador.lan ([188.162.64.180])
        by smtp.gmail.com with ESMTPSA id s8sm595870ljo.11.2020.09.09.02.28.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 02:28:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        linux-arm-msm@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: Add documentation for LT9611UXC
Date:   Wed,  9 Sep 2020 12:28:22 +0300
Message-Id: <20200909092823.64810-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20200909092823.64810-1-dmitry.baryshkov@linaro.org>
References: <20200909092823.64810-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Lontium LT9611UXC is a DSI to HDMI bridge which supports 2 DSI ports
and I2S port as input and one HDMI port as output. The LT9611UXC chip is
handled by a separate driver, but the bindings used are fully compatible
with the LT9611 chip, so let's reuse the lt9611.yaml schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Acked-by: Vinod Koul <vkoul@kernel.org>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
---
 .../devicetree/bindings/display/bridge/lontium,lt9611.yaml   | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
index d60208359234..7a1c89b995e2 100644
--- a/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/lontium,lt9611.yaml
@@ -4,18 +4,19 @@
 $id: http://devicetree.org/schemas/display/bridge/lontium,lt9611.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Lontium LT9611 2 Port MIPI to HDMI Bridge
+title: Lontium LT9611(UXC) 2 Port MIPI to HDMI Bridge
 
 maintainers:
   - Vinod Koul <vkoul@kernel.org>
 
 description: |
-  The LT9611 is a bridge device which converts DSI to HDMI
+  The LT9611 and LT9611UXC are bridge devices which convert DSI to HDMI
 
 properties:
   compatible:
     enum:
       - lontium,lt9611
+      - lontium,lt9611uxc
 
   reg:
     maxItems: 1
-- 
2.28.0


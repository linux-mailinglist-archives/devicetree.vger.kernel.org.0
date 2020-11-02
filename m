Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2EE32A22B7
	for <lists+devicetree@lfdr.de>; Mon,  2 Nov 2020 02:14:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727409AbgKBBOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Nov 2020 20:14:50 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727373AbgKBBOu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Nov 2020 20:14:50 -0500
Received: from mail-lf1-x144.google.com (mail-lf1-x144.google.com [IPv6:2a00:1450:4864:20::144])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7E3DC061A47
        for <devicetree@vger.kernel.org>; Sun,  1 Nov 2020 17:14:48 -0800 (PST)
Received: by mail-lf1-x144.google.com with SMTP id j30so15296824lfp.4
        for <devicetree@vger.kernel.org>; Sun, 01 Nov 2020 17:14:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=D3qK0eMfgjtMBd7j8FvFD/NLuDeADd/n94mpG4jKjqU=;
        b=gabMc+bvYdsA/guaHCPW8iTHSohpSpQxwXmOwm8Sa/iz/b0BCzx96h3ugHOsdfGd98
         Dp73do/szfQNeKj66Mj8Fw1qWQR8hRvRm+wtj7tHGYx7ocv2MJZxZkoTmft6h7NSp2QW
         58jwVu9UfqgxBi04S7q47zGEO65rr5/YeNAbWFJuxB3N3yHqVXAkPlfGKQkkPVCL4eK4
         V+wSc9zURScyQNnjL/hC8WU9VkZ41w1u+PDPF3nzemLsFrCqZQFyd8fSZoUFVEDORef0
         oqL/YhzdfoXTaUtk7HQyB0Vilf6ji1PwCQBxxpAJ+WJwSshJwiquSuWWpqjTHGJ20mCb
         mrFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=D3qK0eMfgjtMBd7j8FvFD/NLuDeADd/n94mpG4jKjqU=;
        b=HxJmT1g2yGCCr3RwWq+e47vNqwBQmi9b1R5hc2ip+KwuLlW78g/zYeFC3+BBQSyp14
         ibJg2x1pyfa2OgbU3HgxLZL5JiMkRXS4OmMQgAfXRDG1cJW95HJLJxjFpCQb/s50KSC3
         SdsFzn4cUcbbuaiXpWxHh1lTr9J5PBk9fm0EwqOlq0VBCiBUWlbRd4Ul+PXZ9q9Um4zs
         EwJWqLnn657lNWFunNHbNl77vkJdTqemX018Tryje4j/k5UckIuXb9RAgAvQs8P7UBOl
         vvv3vcnnlrRUlGONuVmOSW1kN95R+JWzXnHEEOl3kxCtkxjp4FzCTBSm6OLZijIFWVMs
         VH/g==
X-Gm-Message-State: AOAM531nk6cLnY3JOAp2LAwFI6VK0Q+qteXnv2VN6O3ZmcGki29WBRhb
        GUkNUU917M/xT5r2soYkc325nwAgdEXrCfRO
X-Google-Smtp-Source: ABdhPJz0FBh9/6eNoYPd23mYiafWiCwQNP3smH541lnwegB+AZnnzupLy0eBlBQc/OMWzpg3eTyXbA==
X-Received: by 2002:ac2:5e64:: with SMTP id a4mr5197210lfr.109.1604279686940;
        Sun, 01 Nov 2020 17:14:46 -0800 (PST)
Received: from eriador.lan ([94.25.229.254])
        by smtp.gmail.com with ESMTPSA id 127sm2101004ljf.118.2020.11.01.17.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Nov 2020 17:14:46 -0800 (PST)
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
        Vinod Koul <vkoul@kernel.org>, Sam Ravnborg <sam@ravnborg.org>,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Subject: [PATCH v4 1/2] dt-bindings: display: bridge: Add documentation for LT9611UXC
Date:   Mon,  2 Nov 2020 04:14:34 +0300
Message-Id: <20201102011435.1100930-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201102011435.1100930-1-dmitry.baryshkov@linaro.org>
References: <20201102011435.1100930-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
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
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
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


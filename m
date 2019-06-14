Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5932C4648E
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2019 18:43:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726063AbfFNQnq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 Jun 2019 12:43:46 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:41965 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725869AbfFNQnp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 Jun 2019 12:43:45 -0400
Received: by mail-pf1-f196.google.com with SMTP id m30so1784331pff.8
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2019 09:43:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vlwa0s5nqheQS3zabJv02XXNAZF54w3RCaO1lz7mJ5Q=;
        b=qyDQb+/76FQ6lTl+mdRWZykq7uCJj62GkbjTONISkaUVyPOfFAVxh65BAsgt6CPzut
         9ZhtdcgyXulLsQ1H3JMr+aIhTmdWStjDH33vZohhqIgSFCH9Bmt1KPxsjMRXuFEmqAAd
         VsjLDD8ARz48aonbrS/nKu3429nfJ9hSppYtE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vlwa0s5nqheQS3zabJv02XXNAZF54w3RCaO1lz7mJ5Q=;
        b=t7zgMFC0JIyMjA1/kgrwNjKAk65aoTFCK0QIGvOmv3vPKnQgtknOiRd/AE2aIeVE/c
         yaU+jDPwgRV2HvXlY6X3yX+mSjjS152/mN+1H09BRolUI58R3OVn702UiHEe7OGl5EWc
         jQyHARjFqWFC1vbs4lPYiNt0IKKt/pCG6f5F4Vl2PPr92P7ZWqVRgbiQPafJYv2HS4xY
         3Vp5fx95dEXYJVSUvY3gHhuQH4vc5JCqLYue48m2Duwd3tC/LHsyuYBVa+7DAIgMEKHe
         u581fqGPtgc/s/1SgEpjch62DhbN8EA26Hvy2DYI5uyiVBrhCxxNoFF15xqayG/FVUce
         eZcw==
X-Gm-Message-State: APjAAAVHCqJIr9EuOyGBEuh6a+82tzovClrXmcFJBz2MhslhhHzMVm0X
        OMGIkY3pyNo48gx2Cy/hyKTCDQ==
X-Google-Smtp-Source: APXvYqzxQKiNS3nurPOM/V2GvxzGm9mKdD7TK0cz5nTv+lySbEQRBjB51s0f2UVYbHxtO6KpqnOlHw==
X-Received: by 2002:a17:90a:af8e:: with SMTP id w14mr12320434pjq.89.1560530625092;
        Fri, 14 Jun 2019 09:43:45 -0700 (PDT)
Received: from localhost.localdomain ([115.97.180.18])
        by smtp.gmail.com with ESMTPSA id 85sm1639583pfv.130.2019.06.14.09.43.40
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 14 Jun 2019 09:43:44 -0700 (PDT)
From:   Jagan Teki <jagan@amarulasolutions.com>
To:     Maxime Ripard <maxime.ripard@bootlin.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Cc:     Michael Trimarchi <michael@amarulasolutions.com>,
        linux-sunxi@googlegroups.com, linux-amarula@amarulasolutions.com,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH v2 1/9] dt-bindings: display: Add TCON LCD compatible for R40
Date:   Fri, 14 Jun 2019 22:13:16 +0530
Message-Id: <20190614164324.9427-2-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190614164324.9427-1-jagan@amarulasolutions.com>
References: <20190614164324.9427-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Like TCON TV0, TV1 allwinner R40 has TCON LCD0, LCD1 which
are managed via TCON TOP.

Add tcon lcd compatible R40, the same compatible can handle
TCON LCD0, LCD1.

Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
Acked-by: Chen-Yu Tsai <wens@csie.org>
---
 Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
index 31ab72cba3d4..9e9c7f934202 100644
--- a/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
+++ b/Documentation/devicetree/bindings/display/sunxi/sun4i-drm.txt
@@ -160,6 +160,7 @@ Required properties:
    * allwinner,sun8i-a33-tcon
    * allwinner,sun8i-a83t-tcon-lcd
    * allwinner,sun8i-a83t-tcon-tv
+   * allwinner,sun8i-r40-tcon-lcd
    * allwinner,sun8i-r40-tcon-tv
    * allwinner,sun8i-v3s-tcon
    * allwinner,sun9i-a80-tcon-lcd
-- 
2.18.0.321.gffc6fa0e3


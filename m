Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E1FB94301F5
	for <lists+devicetree@lfdr.de>; Sat, 16 Oct 2021 12:22:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244082AbhJPKYt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 06:24:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244045AbhJPKYs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 06:24:48 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70543C061765
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 03:22:40 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id d3so48106557edp.3
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 03:22:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=L0Q4wbPx25npnHXSTuPpnP12kJs52O+N8TRBg77edyU=;
        b=Rk45p+n5dJliPHK1SQZkAydrXdOtBwuXZofnk138jmSEEe2XKqn8pKIv5S8IVdeWdn
         kTElIRRrsUKWHNcT0zapV9io+hzuuzzwgTHN2anhkxFVELox6trjx7SV/Dg9mt44Uvyr
         XMlDuPsOpUsCGm334yV//+kktPVMg8G5xa0to=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=L0Q4wbPx25npnHXSTuPpnP12kJs52O+N8TRBg77edyU=;
        b=UzgFio37lFnKq3+O9f5cfvfVa9GU6mZL90iHsQafnWf0ctQ1oVFM7S8wNpMYeX9eYk
         +AXIagniHexvy6F+a68alOpmUyHNm+svnGwYmVqXtQAK8AH7qgIRr1BhtjANzx9GOPQo
         AK2xFkT5UW6Hv/2GHL5IihXyXXRIxcVgaTlcb7XwpF1oykKBhH/lfOJDhRo6lu124Yvb
         b6CJP2zeU4KCU6PAj+R7dFsRj7+tl69HUShhrwmVIezXC7xfjeBJaxXdz/ZfEo6CBgJA
         zWjSfgBrNroYC/GHPvkjo4eMenvs9EQ9pppFrL0uNKj+8MeSz98iQ5QZnWqNHo1PwLpA
         Jo1Q==
X-Gm-Message-State: AOAM5320ZmWqXtraJTc9VTIJSKCqGZ2vcnE0zt7wc5aW1j+cMUWsgB81
        saOKuCfdpowo3JgqeVc21bhCow==
X-Google-Smtp-Source: ABdhPJxrwkhAK72JOqkJ82YTTRvBONSKXSXXnA0GYp0UgFy52AlsWhvK4GP9sxru4Y3LWCL9L0gbdw==
X-Received: by 2002:a17:906:d979:: with SMTP id rp25mr13065511ejb.355.1634379758951;
        Sat, 16 Oct 2021 03:22:38 -0700 (PDT)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
        by smtp.gmail.com with ESMTPSA id la1sm6117361ejc.48.2021.10.16.03.22.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Oct 2021 03:22:38 -0700 (PDT)
From:   Michael Trimarchi <michael@amarulasolutions.com>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>
Cc:     devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: ili9881c: add compatible string for Wanchanglong w552946aba
Date:   Sat, 16 Oct 2021 10:22:30 +0000
Message-Id: <20211016102232.202119-4-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211016102232.202119-1-michael@amarulasolutions.com>
References: <20211016102232.202119-1-michael@amarulasolutions.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It utilizes an Ilitek ILI9881D controller chip, but its
compatible with ili9881c so should be added to ilitek,ili9881c file.

Add the compatible string for it.

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 .../devicetree/bindings/display/panel/ilitek,ili9881c.yaml       | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
index b2fcec4f22fd..2d4a5643a785 100644
--- a/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
+++ b/Documentation/devicetree/bindings/display/panel/ilitek,ili9881c.yaml
@@ -15,6 +15,7 @@ properties:
       - enum:
           - bananapi,lhr050h41
           - feixin,k101-im2byl02
+          - wanchanglong,w552946aba
       - const: ilitek,ili9881c
 
   backlight: true
-- 
2.25.1


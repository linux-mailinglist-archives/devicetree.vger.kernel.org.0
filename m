Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDF943F1555
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 10:41:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237533AbhHSImM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 04:42:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237489AbhHSImI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 04:42:08 -0400
Received: from mail-pf1-x42c.google.com (mail-pf1-x42c.google.com [IPv6:2607:f8b0:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC889C061756
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 01:41:30 -0700 (PDT)
Received: by mail-pf1-x42c.google.com with SMTP id j187so4821226pfg.4
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 01:41:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9pbcm30VIAQ9iEVPI1FIF1aW9JXXtwoO9LwunNGqeRE=;
        b=uQ+TV2dmDfLzGr1GVXfjxEdsSOSUyKADcD9YJ/DldFGx161UmaoatkQNUwJtppzWdE
         hJFXNJE4hsWMM4SJNU+Df4CeN/NI4Rhm/TOiqtw+d6ZN5zl0laiF+hCSeBHN0Vi+Olnw
         Zy6eLN3eVzA9s2P8+FT4jpCYa5mHeklX+0RlrYgq2J+UgIJsoZ57jSvAS4uf+Bkh+lyV
         8o1FFJaAg9qzYDfNIY9FJWJnAe0xEGIl5w/b8ziyoWMKFxFUBYnL4NYHqNb8gWP0dX2u
         OGWOaS6UCqPv/RHUgUTm1tGu5Cc1lxL6dc/k5gGwWFqIt4Wy1ymo/rDqZ4u1Jj4wLXXx
         4DYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9pbcm30VIAQ9iEVPI1FIF1aW9JXXtwoO9LwunNGqeRE=;
        b=i6MS1HkG0SEHvaQVl0khEnvBlxHHPih8Ig96xvry134f91gErB+CSiNJf3FvTtnZvo
         TCgcYdgzjygv/jdzhctnIECSp8k9IaAyRW97U41o4fNfrY+jVH/4oYmJPVLyxEDoFvi7
         4izgdODrx2Nv/N9jHZNJAWh/F48FKiEMGI9XjDgXzuu7NQVavX61gTcREVOqlXtaNapn
         FPCCOGGJwq98z9JPnz1qe2WYrTjoTOrHjgWL/tVEcB/rV5v0uDi0HcRxKcFWGz4t/SVr
         D9pmGQByPhBeplwU0j3lrjrKTaWOmRmJx+wCWmmaM1HnPLODTg1ds1PhrTUngs+6k2pL
         86kQ==
X-Gm-Message-State: AOAM531Oyz6VJUUzZYUMp9ga7bf9upL335Cxzgom8A9Tcx4KPG6PIq39
        T0KAQhaQuBYMP5d3Ns6FCKNqsQ==
X-Google-Smtp-Source: ABdhPJzR04yhvKJlt13IzOaH4nIHK2sk5Tc60iEvZaCr6+pEZukHAif4mEjTv24VWeEydJ7NwjmMkA==
X-Received: by 2002:a05:6a00:1484:b0:3e2:51da:7a1c with SMTP id v4-20020a056a00148400b003e251da7a1cmr13353848pfu.56.1629362490548;
        Thu, 19 Aug 2021 01:41:30 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.214])
        by smtp.gmail.com with ESMTPSA id c26sm3027492pgl.10.2021.08.19.01.41.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 01:41:30 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, robh+dt@kernel.org, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v1 2/2] dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Thu, 19 Aug 2021 16:41:11 +0800
Message-Id: <20210819084111.717459-3-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819084111.717459-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210819084111.717459-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The auo,b101uan08.3 panel (already supported by this driver) has
a 3.3V rail that needs to be turned on. For previous users of
this panel this voltage was directly output by pmic. On a new
user (the not-yet-upstream sc7180-trogdor-mrbland board) we need
to turn the 3.3V rail on.

Signed-off-by: yangcong <yangcong5@huaqin.corp-partner.google.com>
---
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml   | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 38bc1d1b511e..e45de7a4360e 100644
--- a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
+++ b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
@@ -36,6 +36,9 @@ properties:
   pp1800-supply:
     description: core voltage supply
 
+  pp3300-supply:
+    description: core voltage supply
+
   avdd-supply:
     description: phandle of the regulator that provides positive voltage
 
@@ -52,6 +55,7 @@ required:
   - reg
   - enable-gpios
   - pp1800-supply
+  - pp3300-supply
   - avdd-supply
   - avee-supply
 
-- 
2.25.1


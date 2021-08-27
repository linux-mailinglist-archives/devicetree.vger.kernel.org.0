Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 341CD3F9609
	for <lists+devicetree@lfdr.de>; Fri, 27 Aug 2021 10:25:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244627AbhH0IZY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Aug 2021 04:25:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244594AbhH0IZQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Aug 2021 04:25:16 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DA9C0613CF
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 01:24:27 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id q21so3485821plq.3
        for <devicetree@vger.kernel.org>; Fri, 27 Aug 2021 01:24:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=huaqin-corp-partner-google-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=l5UjOdchXs6TvxgAlQ1PtdmA7+D4r3Icdkw2qZVkuTU=;
        b=zktf+/p86fTWqdQ8mVamuslYY1EqZYgEv8DP2sHNp7YY3OUMJ01Mvi5DMFzUzREusI
         kgoWYfZOV5zYZDs8wyU70siIKTHq/PtU7G+Jukqy8QgCU4gSkmEZ37ItWUkcb+3Lr8/y
         8YKD14+joyXg7nggTF3l0v4+7tPy7zhbrVBdti2yjwgo2oICln+Pg58Waf7ISvMK8xtl
         ZNe/ZPilCU9WtOHp+yZ+xvX7WA4CtMUO8mlxlEI6870WVE8ru64GHaddlJj+5i+kBZxW
         xzhhVqW0i2Dsua5u5R0CwVh245aXbARdLgSo5Wd53QM4dQv2YEdfu9r5S+u054tP3It+
         iW5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=l5UjOdchXs6TvxgAlQ1PtdmA7+D4r3Icdkw2qZVkuTU=;
        b=TlD/qmDIMB5qdFjckaYQ/A9ZJRV5HAJqmylN8sXxxjb3wbQy4TmcTEnigTMqt/hswJ
         6Dv1Hrkm2fHWpbYLdyGM7hkpI3sKpUs2jd1gUtI/I0agtYuEhDUZCt/xPtSC17h7eVDe
         RChAWWv+3EGCik/WMX+GxbbxJco3Hc9ReeJ1uYrzcFr3XxCa+zQ9bZNhJQ0lysVCyRPz
         UWc6hulh32VKeeLysOfCiO4hLSNd4i2CXsHCpzUTyXa1/H/h8ma1mJBZnVZzI+wk5ORW
         xLiALC6D2cLTbOPMMi/UJs+o/m8mtNMG7ayuxev3KBkTEtTvR/HaazJG1i4OOlR317N+
         jpTA==
X-Gm-Message-State: AOAM5315mZxSvYBV7Qj6DVBEi08Q1+v/d2u6x8byg0v3HvN7zc2BhSbJ
        66E7Wsz5jLveLU3bNu8wOoLE9w==
X-Google-Smtp-Source: ABdhPJwjwFm5HrTFTcrFg2ztSmUwlihs33RfTHwXzh7mjp4UZQEbCqjNfmZSMh/nrYp/7xoYHd51MQ==
X-Received: by 2002:a17:90a:ab8f:: with SMTP id n15mr9463755pjq.154.1630052667348;
        Fri, 27 Aug 2021 01:24:27 -0700 (PDT)
Received: from yc.huaqin.com ([101.78.151.213])
        by smtp.gmail.com with ESMTPSA id m18sm5391371pjq.32.2021.08.27.01.24.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Aug 2021 01:24:27 -0700 (PDT)
From:   yangcong <yangcong5@huaqin.corp-partner.google.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org, airlied@linux.ie,
        daniel@ffwll.ch, dianders@google.com
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        yangcong <yangcong5@huaqin.corp-partner.google.com>
Subject: [v3 2/4] dt-bindings: drm/panel: boe-tv101wum-nl6: Support enabling a 3.3V rail
Date:   Fri, 27 Aug 2021 16:24:05 +0800
Message-Id: <20210827082407.101053-3-yangcong5@huaqin.corp-partner.google.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210827082407.101053-1-yangcong5@huaqin.corp-partner.google.com>
References: <20210827082407.101053-1-yangcong5@huaqin.corp-partner.google.com>
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
 .../devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml    | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml b/Documentation/devicetree/bindings/display/panel/boe,tv101wum-nl6.yaml
index 38bc1d1b511e..a7091ae0f791 100644
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
 
-- 
2.25.1


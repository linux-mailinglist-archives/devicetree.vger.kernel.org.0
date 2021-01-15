Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A724F2F88B9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 23:47:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727935AbhAOWpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 17:45:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728146AbhAOWpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 17:45:40 -0500
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECD7BC06179A
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:44:52 -0800 (PST)
Received: by mail-pf1-x434.google.com with SMTP id q20so6404511pfu.8
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 14:44:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=FEhRjbUNCR1Hk02j8Xf/vg8e/9gEkRjaydiv70kLOXo=;
        b=WtVSiq1xRJf/azOoRgkZu0P+6BgKHV3frEFxWd4je9YJyusVNv13pnUz3hhXDuRGJn
         /SRt98VRKQnSIBPJO4m7J26UDOsfyCfmsfaLC8NaC4j1M7BpDB3SnUdg8s2+Kz970sAn
         qSdjRtw4AvTloiTj1OmxODP7o3c3wmo9xiug8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=FEhRjbUNCR1Hk02j8Xf/vg8e/9gEkRjaydiv70kLOXo=;
        b=j9IpZk2Rd7vazvWOVRZSaZNvqq+bBepHGU3OXGem3zYiPevHmgcGqgRc32oElXo+aT
         pLvMv4nzs3gcmlc4lL4pP9mgkTC+P8AXSNFsv2GZCjS3+yEQpkIzMKVYfencrpU2HNZP
         jnEbKc6XOIOVr8WHObRACU28/6SbCyJ4VALj+IJ4bQZDkvxWaIg5bihSWfcsOA6g5jjs
         TmEDR/wGdMSYpqhDT+UoJ9sJhCLB4HST+uAUwlgAvjToOUyTpH5+C9U+Q9EnORXRA9F6
         KdllUUlcZ7nN5PN/qgh2MhEhl1ztXGAcO65heWSe5PECaRYLGDbC9JjNeRCeW0eoGTfq
         3y7w==
X-Gm-Message-State: AOAM533ZgP/KvHff0ZJPDwcrgrZrBeXeADcD4X/Jytp1ZLsPD6JnuGRD
        90URppfD+xOh8y8l4z5P03IdsQ==
X-Google-Smtp-Source: ABdhPJyKVdXbmgrldR0ZGLdeKMcYo4sYZP34Sje2L0pdmwZnmj3LCoFn7nX19ZSe2u2WkkD81f2X9A==
X-Received: by 2002:a63:9811:: with SMTP id q17mr15175105pgd.238.1610750692473;
        Fri, 15 Jan 2021 14:44:52 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id q16sm9131100pfg.139.2021.01.15.14.44.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 14:44:52 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     Rob Clark <robdclark@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 4/5] dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1
Date:   Fri, 15 Jan 2021 14:44:19 -0800
Message-Id: <20210115144345.v2.4.I6889e21811df6adaff5c5b8a8c80fda0669ab3a5@changeid>
X-Mailer: git-send-email 2.30.0.284.gd98b1dd5eaa7-goog
In-Reply-To: <20210115224420.1635017-1-dianders@chromium.org>
References: <20210115224420.1635017-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Another simple eDP panel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- ("dt-bindings: dt-bindings: display: simple: Add N116BCA-EA1") new for v2.

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 35b42ee4ed1d..a2db2a8def15 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -160,6 +160,8 @@ properties:
         # Innolux Corporation 12.1" G121X1-L03 XGA (1024x768) TFT LCD panel
       - innolux,g121x1-l03
         # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
+      - innolux,n116bca-ea1
+        # Innolux Corporation 11.6" WXGA (1366x768) TFT LCD panel
       - innolux,n116bge
         # InnoLux 13.3" FHD (1920x1080) eDP TFT LCD panel
       - innolux,n125hce-gn1
-- 
2.30.0.284.gd98b1dd5eaa7-goog


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C7102AC9FE
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 02:01:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731207AbgKJBBf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Nov 2020 20:01:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48468 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730947AbgKJBB1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Nov 2020 20:01:27 -0500
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com [IPv6:2607:f8b0:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF540C0613CF
        for <devicetree@vger.kernel.org>; Mon,  9 Nov 2020 17:01:26 -0800 (PST)
Received: by mail-pl1-x643.google.com with SMTP id y22so585922plr.6
        for <devicetree@vger.kernel.org>; Mon, 09 Nov 2020 17:01:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=14VTgiY3J1DkS809KMo7JX51yfO5bkg2PgfquBGtPA8=;
        b=krww8wV3YuApCkppnf2RTIzO1OYotX+3z+QRuDhGbfuwrWYJL02uHUrSj3P0eDYs/R
         OT1B7tJPbE2l30lZ7b3cBjy1ENUkeG6I4GO2OCobLSJjCfXJw3gdlL4RM9aKDG0jisLP
         b1Y5qdfVUEoMxFEiQ++LIHpPs+3CFehRHSGTE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=14VTgiY3J1DkS809KMo7JX51yfO5bkg2PgfquBGtPA8=;
        b=AbfBQXI1BRR6uI2lmPplfiisyQe+z+fT0IQU+8mVGlRjxcNDUgFOwylVqBnQpcyWLJ
         ePiVf3ecbSvK5mMVf6RM0Vxev3l/nm8DOrsurx6IV/rhWAwOG/FpYcou2oWyg5g656bH
         e8I3XtqOsGW6+IwWQ2XSUTi3gLjqCNekA5Q8aUpciyp4PLZuQwEP+zSa2TBjUAioJlY1
         BNbi9rZpdXO+c9geFAs7MHQQVlr5B4ncgkgjCasKDuLqCwRBgH3LgPBR7RtooonahEg3
         jSsM9Opp8WMr/Oo6rbpWwNBAVB12atp/GiHh+o+FinuKlUvWb/4in4cFiJTxpIhMeJxL
         RTzg==
X-Gm-Message-State: AOAM53276K4paX5sj1WUB97DHmkZredAz43CWj+je/rR4k9mH73hZLhi
        cQDOHTbm93XoXFAl6uV+wc6Dtg==
X-Google-Smtp-Source: ABdhPJzhSHxgjOLoORdgG+4r0b+0cOWu2vss87Kh/HovkatcLKmN39fxjXD9ovm7q74kcYZMbZt03g==
X-Received: by 2002:a17:902:c38b:b029:d7:cb4b:9555 with SMTP id g11-20020a170902c38bb02900d7cb4b9555mr11903488plg.66.1604970086470;
        Mon, 09 Nov 2020 17:01:26 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:42b0:34ff:fe3d:58e6])
        by smtp.gmail.com with ESMTPSA id u197sm7283233pfc.127.2020.11.09.17.01.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Nov 2020 17:01:25 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>, robdclark@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 5/5] dt-bindings: dt-bindings: display: simple: Add BOE NV110WTM-N61
Date:   Mon,  9 Nov 2020 17:00:59 -0800
Message-Id: <20201109170018.v4.5.I28d9e32b3cc0aae980ecc39d364263a3f9871298@changeid>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
In-Reply-To: <20201109170018.v4.1.Icaa86f0a4ca45a9a7184da4bc63386b29792d613@changeid>
References: <20201109170018.v4.1.Icaa86f0a4ca45a9a7184da4bc63386b29792d613@changeid>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add yet another eDP panel.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---

(no changes since v1)

 .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index f9750b0b6708..994c19c357de 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -76,6 +76,8 @@ properties:
         # BOE OPTOELECTRONICS TECHNOLOGY 10.1" WXGA TFT LCD panel
       - boe,nv101wxmn51
         # BOE NV133FHM-N61 13.3" FHD (1920x1080) TFT LCD Panel
+      - boe,nv110wtm-n61
+        # BOE NV110WTM-N61 11.0" 2160x1440 TFT LCD Panel
       - boe,nv133fhm-n61
         # BOE NV133FHM-N62 13.3" FHD (1920x1080) TFT LCD Panel
       - boe,nv133fhm-n62
-- 
2.29.2.222.g5d2a92d10f8-goog


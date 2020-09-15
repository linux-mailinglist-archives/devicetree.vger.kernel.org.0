Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 12FDF26A4F8
	for <lists+devicetree@lfdr.de>; Tue, 15 Sep 2020 14:21:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726135AbgIOMUa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Sep 2020 08:20:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42184 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726466AbgIOMTT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Sep 2020 08:19:19 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 54899C061788
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:19:19 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id s13so3144871wmh.4
        for <devicetree@vger.kernel.org>; Tue, 15 Sep 2020 05:19:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=i0xP//LC/JAnxfnl6E8AG6wYjP1bfMTZSmuoa8PLIdQ=;
        b=1GseTMFv3VBD+l/ZbJu70sdyna8HX7Q9Y3kd9CNWJfzpgmcxj50frrDrMlisuErsz+
         XZvKQDDLuVqe4Rr/4XizNQyWt150VGfmxP4tUAoX2BEGFilReRHbwPYgTmWbNcwe0d5z
         Un/x6V6eDqLFZf8/C7VnXiT/BgkcN3Q7WJCPikvDNr7EK59Gi/Wc+J6/10LTgzksvFV0
         ddlyn4S8++wymZGcymJ+DvypBpjPPGBRl9I9qAz5gHapBfPyw/No727HNejEKyj5qnCp
         ABnDEkFdHy9iZwrYcf+PQbhgBwfOgseEfitn5UJUtrJkUC6VSm79gUIPrRK3v4LumHqk
         saqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=i0xP//LC/JAnxfnl6E8AG6wYjP1bfMTZSmuoa8PLIdQ=;
        b=EvBq6or5YI4xDKetPbFfkigBydxwRRAWc3BT0EDcdPRcfaHVg3lvpPvq0qh7le0cjf
         LJocVrkD6Y7yQlk4JfDLQdeolXD2806rqX63bkM65rN3da/I1LgTaoW8OX9wt3KKkRUd
         yKqQNanCHxwRzh4DMfcRZ3Fea5UY9xnwwdqPXFUpPllo9VvT/djydHvyS0mEjRWxMSAB
         iwtGcgYOBB72gIESkCvMpNl522/c7FB5jPzVuRfVeyip5M76eLaUqTjWxAhPasFGHV4m
         +Fl11CyNSJWyE+hVhpNqGyjcy/p8e4FUGqifO8nPkSR8XyKqO1IvLhht+G2T4A6W1OL6
         S68Q==
X-Gm-Message-State: AOAM530jWXna/Ev0LJAjOBJy9xaDiWd14JIOQQLmqC2O0oi8URNDufxD
        BGHfwbH1f4wGX5Gf69jCSEilT0QeN3xKALf3
X-Google-Smtp-Source: ABdhPJybSb0kYSEofFmaWgshAySRgZC//CUx/9p1zAMvIm0aMmbt7ZrLqp91l2b0uPGrWrXR6CHjUg==
X-Received: by 2002:a1c:f003:: with SMTP id a3mr4474794wmb.170.1600172357860;
        Tue, 15 Sep 2020 05:19:17 -0700 (PDT)
Received: from bender.baylibre.local (home.beaume.starnux.net. [82.236.8.43])
        by smtp.gmail.com with ESMTPSA id 2sm18271411wmf.25.2020.09.15.05.19.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 05:19:17 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v4 1/4] dt-bindings: vendor-prefixes: Add Shanghai Top Display Optolelectronics vendor prefix
Date:   Tue, 15 Sep 2020 14:19:09 +0200
Message-Id: <20200915121912.4347-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200915121912.4347-1-narmstrong@baylibre.com>
References: <20200915121912.4347-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Shanghai Top Display Optolelectronics Co., Ltd  is a display manufacturer
from Shanghai.
Web site of the company: http://www.shtdo.com/

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a1e4356cf522..fecdc7200b40 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1037,6 +1037,8 @@ patternProperties:
     description: Trusted Computing Group
   "^tcl,.*":
     description: Toby Churchill Ltd.
+  "^tdo,.*":
+    description: Shangai Top Display Optoelectronics Co., Ltd
   "^technexion,.*":
     description: TechNexion
   "^technologic,.*":
-- 
2.22.0


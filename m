Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D88B821B292
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 11:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728009AbgGJJqS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 05:46:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727992AbgGJJqO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 05:46:14 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 33AE9C08C5CE
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:14 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id x11so2032870plo.7
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+lxJpUZmbIP8WtaPYkeWggcG2CfEZeJKxP7Ov+QkUq8=;
        b=bEPkhEJhMyo+7fM5al3P6QkH+uUZYUDpaYJWnTA/Z1w0qxxHdyG8In1x3dIke6d7bu
         GUBQxhZagBqRmWtbTXaX8MwSphswCos/RoVpMtoMfybb26uZ/AXDf90DdWmgYBZ9vupg
         aU8Nu9T9o6ZNKcMZu/0FJFxLdN4wf010gw+bs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+lxJpUZmbIP8WtaPYkeWggcG2CfEZeJKxP7Ov+QkUq8=;
        b=nn6GFq0Mtn8vbQ6EMITi/GsTD9Z6/efUFpL87KMdvS8vNhzqgToSn6+K6JE2c/b7J9
         qhT+lhoRKMACKkuIbHXvaD95i6dS0oD67cP6u0p8Yp2NKCY7lzrYYoxHIC5/De7KW0UW
         iE1ACGSIBHNiQ4njiGTcPFaMgZ9xsZyDfAm083q2whXWAjixYs27Ar21Srsf78js/C6F
         qd8BFp/zs0+K2fT3vcnPVjBXoRit26AqSzlmnLvc67p3PPxIan0lthAE/BM3WeHJIvJy
         9u6PSNvnRt84CYd8x/BqSfPE83hSxr1TRawaaASgrDhqoldzyKbOLUi7Ou+sbwc5IFJv
         YIUQ==
X-Gm-Message-State: AOAM530cObmdnJSk+lFp4ZyckIHcyIF3UECMyPZo0isCgvJo6YHmzM87
        J8uQDI2PTGQKMYTWzT43ydAqdg==
X-Google-Smtp-Source: ABdhPJwPiyAsSpz6/dGW2By7TLuAjGOMXxDU5eb6gp85lvMSrEQHzLkKD3fL8nDC2+fxWwEKTDd0zA==
X-Received: by 2002:a17:90a:b10e:: with SMTP id z14mr1373899pjq.146.1594374373705;
        Fri, 10 Jul 2020 02:46:13 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id z9sm5133213pgh.94.2020.07.10.02.46.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 02:46:13 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux@armlinux.org.uk, arnd@arndb.de,
        afaerber@suse.de, maz@kernel.org, w@1wt.eu,
        Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v5 04/12] dt-bindings: vendor-prefixes: Add thingy.jp prefix
Date:   Fri, 10 Jul 2020 18:45:36 +0900
Message-Id: <20200710094544.430258-5-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710094544.430258-1-daniel@0x0f.com>
References: <20200710094544.430258-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add prefix for thingy.jp

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 53cd050668e6..c209b3dc7ecc 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1038,6 +1038,8 @@ patternProperties:
     description: Three Five Corp
   "^thine,.*":
     description: THine Electronics, Inc.
+  "^thingyjp,.*":
+    description: thingy.jp
   "^ti,.*":
     description: Texas Instruments
   "^tianma,.*":
-- 
2.27.0


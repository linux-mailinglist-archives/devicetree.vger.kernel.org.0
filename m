Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 574EB3960A6
	for <lists+devicetree@lfdr.de>; Mon, 31 May 2021 16:29:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232076AbhEaOam (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 May 2021 10:30:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42192 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233874AbhEaO1g (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 May 2021 10:27:36 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45001C08E8AC
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 06:47:00 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id l10-20020a17090a150ab0290162974722f2so10807pja.2
        for <devicetree@vger.kernel.org>; Mon, 31 May 2021 06:47:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=nigauri-org.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vJMi78mWq5HtlB9ulTeayHA8zLqcXh/C4DEKGpxzKBs=;
        b=tOQcg02H2G99bgAhpIXY4UA4Uxk3AvlreiKnqu2WJXRRuaLDQX9qpJ0527Clrakkls
         fw9QrHLm6U0vWl7dK/tbGP477df8dt/y9mGRnsHcTh9jwJJ6E6dEe6KGLGIMZTYWrUtv
         evIsBSNG/SVHFuaQiurGW3Om65552fCExZ/LqZNs2xafD1WNBXLiPyfppOxuYwiamC8j
         P/yIxdtuS11mFA9abzsxwIUtxHCog6xf5tWIUieN/IBbk2Hu0PmNxvSHYLRAUR76gyqf
         AzNZ4foUkt+cmR4Tb/If/WVnTik/e9tZoVoP2QeET+tsrCoE3MkGEmkS4PsHeXwLJ2Sz
         6vcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=vJMi78mWq5HtlB9ulTeayHA8zLqcXh/C4DEKGpxzKBs=;
        b=gOaiBs+KvI/XRWkaSuxlS830SCeCk/iedLG0RIoX/PUSMKtBAIIll8d3yu+QWv3u9O
         1ysUUwpbROGB0Yjx99GHsesgWgvq9jgRUYzon3rLLG1x0BwrfPtBsR/NXzCKNVNkI6m7
         hRLTKXXgCiWT1DJDWuF3qPTUjDCSKK8DtmQ3WtejRBhTf31OfX3OG78mShz1YO5IQLsT
         FrsZwA5mYjJcolN23eleFlRfb4LIg7FEavfBkiEyRf4kzcwKmmfGY9Rxvmavru6gSIwh
         FEOMdenrHCkzpH2BgFmw/ApvH8gq9F34nbF3CwWfzD3O3uwQ0yK5lkJOWhuLMhwCv1RI
         VS2A==
X-Gm-Message-State: AOAM533feMFQ5b6h82Zq0RgS8mgQu7DOXNZzeCXw+UhlnHnh8L9K9n0k
        MJvzxhH+wN26FwA4nEwvqq+T
X-Google-Smtp-Source: ABdhPJwz7ahaRAzjNH/I54t0SlMWfy5SJoD/YLCA10mESWScv0fwZ5XZbyaLSrXlauiw4+5Qy2xcgA==
X-Received: by 2002:a17:902:728e:b029:101:c3b7:a47f with SMTP id d14-20020a170902728eb0290101c3b7a47fmr12962198pll.21.1622468819856;
        Mon, 31 May 2021 06:46:59 -0700 (PDT)
Received: from localhost ([2405:6581:5360:1800:7285:c2ff:fec2:8f97])
        by smtp.gmail.com with ESMTPSA id t7sm11087433pjr.29.2021.05.31.06.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 May 2021 06:46:59 -0700 (PDT)
From:   Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
To:     Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc:     linux-hwmon@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Subject: [PATCH] dt-bindings: hwmon: Fix typo in TI ADS7828 bindings
Date:   Mon, 31 May 2021 22:46:55 +0900
Message-Id: <20210531134655.720462-1-iwamatsu@nigauri.org>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix typo in example for DT binding, changed from 'comatible'
to 'compatible'.

Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
---
 Documentation/devicetree/bindings/hwmon/ti,ads7828.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/hwmon/ti,ads7828.yaml b/Documentation/devicetree/bindings/hwmon/ti,ads7828.yaml
index 33ee575bb09da1..926be9a29044b2 100644
--- a/Documentation/devicetree/bindings/hwmon/ti,ads7828.yaml
+++ b/Documentation/devicetree/bindings/hwmon/ti,ads7828.yaml
@@ -49,7 +49,7 @@ examples:
         #size-cells = <0>;
 
         adc@48 {
-            comatible = "ti,ads7828";
+            compatible = "ti,ads7828";
             reg = <0x48>;
             vref-supply = <&vref>;
             ti,differential-input;
-- 
2.30.0


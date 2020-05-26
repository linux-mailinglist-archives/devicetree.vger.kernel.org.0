Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CDB651B8430
	for <lists+devicetree@lfdr.de>; Sat, 25 Apr 2020 09:25:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726097AbgDYHZd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 25 Apr 2020 03:25:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60024 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726128AbgDYHZb (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Sat, 25 Apr 2020 03:25:31 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4B222C09B04A
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2020 00:25:30 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id j14so9591117lfg.9
        for <devicetree@vger.kernel.org>; Sat, 25 Apr 2020 00:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=konsulko.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VX6tMFQF79i/ftypgBXXLpWGwJKO5n2LFJJUQCNDLbI=;
        b=Uo90dT5qPFrkcewUW3XrA/N8YnnL403bBnWwdV7jRRtGXXyZahUOZOdo2ZzQynkY6X
         uY+kcqOW0yAFC1dWc0cYDq/Fw/+ivtTzfTs/wZnho+A3QAU1+f+aO5ZdgLrvNWYZG/Of
         4fSNYgJJgUTIviXFwB6FETyky1jYRWVYIpuHg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VX6tMFQF79i/ftypgBXXLpWGwJKO5n2LFJJUQCNDLbI=;
        b=Bpjw7VevKa4wa/XSV+4eJgxBQgE+ZvvlWGQc3rkHs0dbruVHa0ZFbtoaZA3OnIn6Ye
         tMJYdtyOTkFPSMA61MGEqdycNPS+wSvEabJPCwbWbsBRVDcCOEF3FTbxixwmreqEgNJ/
         +7mP+iL1XG2/kfjnwQt80tbekgx0Fc+0KQxhd607Z1CzXcG2fK+hhV5Uw9d8Gpu8UjRj
         1aVuEH1GTbMAO4tVqJOsl45AZy0E8UgbYIORbtaa4tdFf5EaA2zinnEodXkytpAXh1SV
         +X3Q9fpAwHANCD4PZgvvrW+4ugSkShPytIEPK2RX5uCVexpMSUYwYoAZmOzAAvLa8DIc
         lF0A==
X-Gm-Message-State: AGi0PuY6VMwrEGew6I7V15Xuw2X0B0PieeU8WYooe3YZLMhMuvowgDsM
        ZOaRGSI0z8nekVBPaGe2a/OiZg==
X-Google-Smtp-Source: APiQypJuEBS7Xvm9F8pFZcCse1J92wNQtBwuXXu188KX3znHaJRiJE2W0LQD7dNqwL+USSVDVZiDLQ==
X-Received: by 2002:a19:c78d:: with SMTP id x135mr8655245lff.151.1587799528695;
        Sat, 25 Apr 2020 00:25:28 -0700 (PDT)
Received: from taos.konsulko.bg (lan.nucleusys.com. [92.247.61.126])
        by smtp.gmail.com with ESMTPSA id t8sm6382662lfe.31.2020.04.25.00.25.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 25 Apr 2020 00:25:28 -0700 (PDT)
From:   Matt Ranostay <matt.ranostay@konsulko.com>
To:     jic23@kernel.org
Cc:     linux-iio@vger.kernel.org,
        Matt Ranostay <matt.ranostay@konsulko.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v3 1/2] dt-bindings: iio: chemical: add Atlas Scientific RTD-SM sensor docs
Date:   Sat, 25 Apr 2020 10:25:19 +0300
Message-Id: <20200425072520.27776-2-matt.ranostay@konsulko.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200425072520.27776-1-matt.ranostay@konsulko.com>
References: <20200425072520.27776-1-matt.ranostay@konsulko.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Cc: devicetree@vger.kernel.org
Signed-off-by: Matt Ranostay <matt.ranostay@konsulko.com>
---
 .../devicetree/bindings/iio/chemical/atlas,sensor.yaml          | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/chemical/atlas,sensor.yaml b/Documentation/devicetree/bindings/iio/chemical/atlas,sensor.yaml
index edcd2904d50e..0e510a52920d 100644
--- a/Documentation/devicetree/bindings/iio/chemical/atlas,sensor.yaml
+++ b/Documentation/devicetree/bindings/iio/chemical/atlas,sensor.yaml
@@ -17,6 +17,7 @@ description: |
     http://www.atlas-scientific.com/_files/_datasheets/_oem/EC_oem_datasheet.pdf
     http://www.atlas-scientific.com/_files/_datasheets/_oem/ORP_oem_datasheet.pdf
     http://www.atlas-scientific.com/_files/_datasheets/_oem/pH_oem_datasheet.pdf
+    http://www.atlas-scientific.com/_files/_datasheets/_oem/RTD_oem_datasheet.pdf
 
 properties:
   compatible:
@@ -25,6 +26,7 @@ properties:
       - atlas,ec-sm
       - atlas,orp-sm
       - atlas,ph-sm
+      - atlas,rtd-sm
 
   reg:
      maxItems: 1
-- 
2.20.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CBB042EE9E4
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 00:43:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729250AbhAGXnD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Jan 2021 18:43:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726720AbhAGXnD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Jan 2021 18:43:03 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67D06C0612FA
        for <devicetree@vger.kernel.org>; Thu,  7 Jan 2021 15:42:14 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id x126so5063632pfc.7
        for <devicetree@vger.kernel.org>; Thu, 07 Jan 2021 15:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5v4P5OpFzV6txdYAKpaZWpOyrHHIe3zcVp3Rukxxyc=;
        b=Sb4QUpYXJYB3MxUccAbxoLT60+fhUPaDc9jzWhqd+btYg+/EXUlC94hh8E+UVfzVeG
         4uDEuZSZwlF9dLau98IGiSBYK17qYj4OjYNk7Ld9hFkJml8wYn1kqs1kZjV/l0FvIqdQ
         ySBnxgmbI49OObsvXhvQowgx8/5uT+g0MGgsk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=F5v4P5OpFzV6txdYAKpaZWpOyrHHIe3zcVp3Rukxxyc=;
        b=lMxVlzmrG8AUeQj4/HA84C58FiRwzRUSUalTTW9bVAayPG1XjXcyM5C2HPPMPnPMZ0
         5W8fYU4FfGU9+t6HUfynXqXXtTE5Q/gwXJAaxGcQuuHRDUVjYviEjl1G0dr8Snev22/3
         EYwIeICzPtu3a6Q+4+FQ+J1dZ+wA5MHGirjWl+s9nf/AGBMBJdOU/U4Delgdak4gWtdB
         k2IjJYxjdCS2nzU6w3FBYtsVE9gAUhznhFFAPLpQ79/kABq94eKZ7TDlicjYP+nGFZcI
         nCde0CWjTFvEIi1z8ItLfqGvML+ZMt7vg6GzBOtdc+X6PPHkJ2m8gz3QUu9O/L7xVkLg
         bIkg==
X-Gm-Message-State: AOAM531aYPafYncCYlb7o7Bs+tIzFjrHnG6ugC7zScqQ9CX3q2JNlT7a
        Fprla8jYyYjHU+Y0cqWbAbRrhg==
X-Google-Smtp-Source: ABdhPJyzdeewliRoHZ8WITDN6ypLVV0dl1cubmfzDl+xHifecx0A5pXaGRh+E1Om9wMFyWYEFO7Rkg==
X-Received: by 2002:aa7:8649:0:b029:19e:16df:e5f8 with SMTP id a9-20020aa786490000b029019e16dfe5f8mr944645pfo.41.1610062933987;
        Thu, 07 Jan 2021 15:42:13 -0800 (PST)
Received: from philipchen.mtv.corp.google.com ([2620:15c:202:201:a6ae:11ff:fe11:fd59])
        by smtp.gmail.com with ESMTPSA id h8sm7376487pjc.2.2021.01.07.15.42.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Jan 2021 15:42:13 -0800 (PST)
From:   Philip Chen <philipchen@chromium.org>
To:     LKML <linux-kernel@vger.kernel.org>, dmitry.torokhov@gmail.com
Cc:     swboyd@chromium.org, dianders@chromium.org,
        Philip Chen <philipchen@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Simon Glass <sjg@chromium.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v4 1/2] dt-bindings: input: cros-ec-keyb: Add a new property
Date:   Thu,  7 Jan 2021 15:42:08 -0800
Message-Id: <20210107154200.v4.1.I025fb861cd5fa0ef5286b7dce514728e9df7ae74@changeid>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds a new property `function-row-physmap` to the
device tree for the custom keyboard top row design.

The property describes the rows/columns of the top row keys
from left to right.

Signed-off-by: Philip Chen <philipchen@chromium.org>
---

(no changes since v2)

Changes in v2:
- add `function-row-physmap` instead of `google,custom-keyb-top-row`

 .../devicetree/bindings/input/google,cros-ec-keyb.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
index 8e50c14a9d778..7acdb33781d30 100644
--- a/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
+++ b/Documentation/devicetree/bindings/input/google,cros-ec-keyb.yaml
@@ -31,6 +31,16 @@ properties:
       if the EC does not have its own logic or hardware for this.
     type: boolean
 
+  function-row-physmap:
+    $ref: '/schemas/types.yaml#/definitions/uint32-array'
+    description: |
+      An ordered u32 array describing the rows/columns (in the scan matrix)
+      of top row keys from physical left (KEY_F1) to right. Each entry
+      encodes the row/column as:
+      (((row) & 0xFF) << 24) | (((column) & 0xFF) << 16)
+      where the lower 16 bits are reserved. This property is specified only
+      when the keyboard has a custom design for the top row keys.
+
 required:
   - compatible
 
-- 
2.26.2


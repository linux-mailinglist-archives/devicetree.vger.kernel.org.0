Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2E749CC8DC
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 10:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727466AbfJEIz4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 04:55:56 -0400
Received: from mail-pg1-f202.google.com ([209.85.215.202]:40856 "EHLO
        mail-pg1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725976AbfJEIz4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 04:55:56 -0400
Received: by mail-pg1-f202.google.com with SMTP id w5so5989023pgp.7
        for <devicetree@vger.kernel.org>; Sat, 05 Oct 2019 01:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=kmoQ5EfiuLPugExVdasoEEQ+xSgNc8VlrAlw91YpZWU=;
        b=cJpLy7YHnMDaIZiQzeucIuhSVgVwX/T/uIRDaMaSWPVblQ1e6ymh7GXJqCSmCo4GXT
         Jc4Zmu6OfUG4aPCpr9xLNxy2Pg7kez9HhFw8cfrclIghRTESqS1mpvNj3dUYHfUXsT5A
         FULp7yHNmqg+oQw3WzNeS+HE5cZIT4WPaZZ0opOgmdiLNNd1hvFoVNmUaw/zSuc4dbDk
         BdzwAmte2M0xqJHk/PLUy9QFN8/zwxad23V4tOmwXFHOMEZN0kU9WkcdO+Pt2hyF8zgF
         1jvdGrqX3/r0jRSgdQYggIbZf4ZTaHWpAXTxyVZOuqWfWuRCvqMdkBgJBUu/oLmJkBov
         gRuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=kmoQ5EfiuLPugExVdasoEEQ+xSgNc8VlrAlw91YpZWU=;
        b=RyjcvIyHM0yi/a/SVlSLiHodmenEShtsHcBjmgTifzcl90REoS8DGlju09OULCn9kK
         i/ycZy0NPGBoxHmf9TTU4j/ZTAtEf/mSuP+Y7yZV7WnUmJX994fgzcOtDMz0R1qSPdAL
         IPV7NC/adMGdL3a+64tG8Di2852WFejb3h/oKuEN9E0rQxa7l4A61sMOpJsCtXpjbjTj
         +k3uoYKRDwyQujMXWc75Ktn+/OcGCV4/x1DBptEKH3JYEK/xCpctgmwwovHucATR4YdC
         F6uP5s1+8ZODJg7k+K5S8mVUNlcrk63NfC7toqYxI7gM64C9BvctqIwxCrUYHlEFtljY
         fDwQ==
X-Gm-Message-State: APjAAAUs8GgVaDdO1O72ANuWL58cx3v/agrWsqiDZJGEMJyNM5kALwbB
        fwvaSAnlkcLaYNlQi9osctEfy4c+eici
X-Google-Smtp-Source: APXvYqwynwoYoFkQk/iqR6Um03rnnEYqoeUKYCC03KFr+9G5mr1Gtv+8iqBgDOJh+ZT7W5oEvjXdNeqyTLf/
X-Received: by 2002:a63:1515:: with SMTP id v21mr1565875pgl.270.1570265755484;
 Sat, 05 Oct 2019 01:55:55 -0700 (PDT)
Date:   Sat,  5 Oct 2019 16:55:05 +0800
In-Reply-To: <20191005085509.187179-1-tzungbi@google.com>
Message-Id: <20191005164320.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
Mime-Version: 1.0
References: <20191005085509.187179-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH v2 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM bindings
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- Add "ec-shm" for binding to shared memory exposed by EC.
- Add "memory-region" for binding to memory region shared by AP.

Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/google,cros-ec-codec.txt   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
index 0ce9fafc78e2..cb46bc082b4b 100644
--- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
+++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
@@ -10,8 +10,26 @@ Required properties:
 - compatible: Must contain "google,cros-ec-codec"
 - #sound-dai-cells: Should be 1. The cell specifies number of DAIs.
 
+Optional properties:
+- ec-shm: Shared memory region from EC.  It contains 3 unsigned 32-bit
+          integer.  The first 2 integers combine to become an unsigned
+	  64-bit address.  The last one integer is length of the shared
+	  memory.
+- memory-region: Shared memory region to EC.  A "shared-dma-pool".  See
+                 ../reserved-memory/reserved-memory.txt for details.
+
 Example:
 
+{
+	...
+
+	reserved_mem: reserved_mem {
+		compatible = "shared-dma-pool";
+		reg = <0 0x52800000 0 0x100000>;
+		no-map;
+	};
+}
+
 cros-ec@0 {
 	compatible = "google,cros-ec-spi";
 
@@ -20,5 +38,7 @@ cros-ec@0 {
 	cros_ec_codec: ec-codec {
 		compatible = "google,cros-ec-codec";
 		#sound-dai-cells = <1>;
+		ec-shm = <0x0 0x10500000 0x80000>;
+		memory-region = <&reserved_mem>;
 	};
 };
-- 
2.23.0.581.g78d2f28ef7-goog


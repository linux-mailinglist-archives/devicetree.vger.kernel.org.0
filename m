Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7DBDCC83C
	for <lists+devicetree@lfdr.de>; Sat,  5 Oct 2019 07:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726831AbfJEF7E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Oct 2019 01:59:04 -0400
Received: from mail-qt1-f202.google.com ([209.85.160.202]:48423 "EHLO
        mail-qt1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726636AbfJEF7D (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Oct 2019 01:59:03 -0400
Received: by mail-qt1-f202.google.com with SMTP id r19so8971773qtk.15
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 22:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=kmoQ5EfiuLPugExVdasoEEQ+xSgNc8VlrAlw91YpZWU=;
        b=pwuDtpdQkUw37uPBkawWEH5UEbyKj/92rsZLEWnMWLxMfJsAhZ9w0XOUMla9UL+ict
         zwTJ951sb4e9imqEeEaRAqKqbyUKdpUPjfonRAMwhU6n29cI0HDW69Uvn5a03TSrTvLt
         C0879QsGt9rxTp4jVoYBu64vGTnrB/BrwXDw3x9E1W/6mZkccSQi+fJAKqPWzEUkY8/7
         iukTLAEUGlZQm/jIBZREsZ0YcZmrPvfs5qjfFoXn8PeK168mCKeBATVj+Jud/JL0gM1y
         yYq66LTRfNBzUT4sWo4jigQOdsPTM1xBqZ7SqxJUir6hmFrdERt+j+8hqfYWpmJZc86s
         Ochg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=kmoQ5EfiuLPugExVdasoEEQ+xSgNc8VlrAlw91YpZWU=;
        b=CTw3H9d5mI3glNmUErP8wFofjU5L1HWFfUqJmQbNbDSMzKkVP9ri+jUWM+glBMhnqS
         Icyrg1ZGQ7FMPu6zSl2z8XIOKiyjEjnR7FEouPyZI/F0Fnn0cM3z6VJYh8w2jYb8aoUd
         FiSfrepKfxnnCLKCE4UOhWvktXdYqcMw94C8Hz9395NwEiaUBw/Op16FINeshFyLiUZ0
         nhNmNwQ8S40SkiPcStA3XW9opHCtfBmLaoKviDn2GOmQOtOi01/gv5IvAro52ZFdCF7X
         CnODIfKHbexHIwaaqHBWGQnB35O8+GHje3oYSS0uDxZc2WKevyGRWHSOFAvDPXc6iowN
         Wkmw==
X-Gm-Message-State: APjAAAXT6rk6KOPLkIEqGTmHrg3FpSypcpBOO4XQi7Oi5v+ik9hbgB2P
        Gp+9ZtszHORy+FE6QLQT+4GiLUEBS3Xh
X-Google-Smtp-Source: APXvYqwJeuGRCNWl0Jv58EQx56XvBq9ESjXplaVSwszfGBRajq9VaPPIgdc6Sw1gP56WuO7IHjsEaEu7Mh72
X-Received: by 2002:a05:6214:1189:: with SMTP id t9mr17900493qvv.89.1570255142531;
 Fri, 04 Oct 2019 22:59:02 -0700 (PDT)
Date:   Sat,  5 Oct 2019 13:58:04 +0800
In-Reply-To: <20191005055808.249089-1-tzungbi@google.com>
Message-Id: <20191005130552.6.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
Mime-Version: 1.0
References: <20191005055808.249089-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.581.g78d2f28ef7-goog
Subject: [PATCH 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM bindings
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


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5C6F5DAEF9
	for <lists+devicetree@lfdr.de>; Thu, 17 Oct 2019 16:01:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2439757AbfJQOBG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Oct 2019 10:01:06 -0400
Received: from mail-vk1-f202.google.com ([209.85.221.202]:32923 "EHLO
        mail-vk1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2437401AbfJQOBF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Oct 2019 10:01:05 -0400
Received: by mail-vk1-f202.google.com with SMTP id a130so977636vke.0
        for <devicetree@vger.kernel.org>; Thu, 17 Oct 2019 07:01:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=NOI1mPAa3UePrvEcyGGunRNPwSdTxXGP0axdxShAK4g=;
        b=co8u00mkNN4YqCXon4IqCiiYFPoEvBQ3dyNyGtx43GJvnTt1HTGWkdHp1AF7H295In
         ojScYXCnfdl607cZ3fMAhlTwq9G3/97EJ9XXNiHyAutDJhDBMDrM+xskz9VT0RDwOCNr
         HAmnARLBIZ4jRg1otlN3dmLatXmqQ6tOj2qFPQOQ8bsqhSjPmnlSKxO4mA761Trr9/sz
         9l6r0JOVhV+08enzyZA1gc3p4FcZwkvrgMTY8vZ6nnJbM/8AkVD3dQQDwBH7rj2uWYbm
         rIg9rxmMeBYoEkccod418osq33OnrabkZ50XW4b8ylTN+RZUN7FqwaFQaw1ssV3sblNE
         Rfiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=NOI1mPAa3UePrvEcyGGunRNPwSdTxXGP0axdxShAK4g=;
        b=JEDAHR7RrxQM0i+Eso6ukrWgONRzzpUs3TaU7+jP6u9POjRY43sBX3n9UgarpeDGlj
         Ad6qtgqgI1THN2XfgJg//1uX1x5Z2TwOtFIupAsBA/NaeoEY6xlBlbC+Kh6bTr9dLtAf
         U2GXCDFkw7AQMsnzfalB8DJzXLe68GO6dmdBQk79EOxdLQxphPDxNs8f+ENPXwu5ZRNf
         CgmZLNPtT/vXMWarSjD7qO7AOchP2mgku7Xt/5XuBzVE4N0A0a/0rxum6PyJ3mtAIu7E
         DQECr6CSu4NayLldjy8QVU17kb2wgwRcYNsjTjIrfheNIoDwLgPLnVyh3de7MYeubiS0
         XdLg==
X-Gm-Message-State: APjAAAUHrMLcLEd6VMPS1GKtenUPMogebV+3tzqF2DCNBW9sM4DD+IOc
        4Um6qZuHCBZumijo1GBh3i8462QvpD57
X-Google-Smtp-Source: APXvYqxgcLB2fmxnEjzm9XFMmssqasHVsiK0nsCfeENxnDCDnfxF/CHrxmAxhwYjplMkMFfm0mGjb2gr9zfO
X-Received: by 2002:a1f:5ed4:: with SMTP id s203mr1996971vkb.61.1571320863872;
 Thu, 17 Oct 2019 07:01:03 -0700 (PDT)
Date:   Thu, 17 Oct 2019 22:00:11 +0800
In-Reply-To: <20191017213539.00-tzungbi@google.com>
Message-Id: <20191017213539.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
Mime-Version: 1.0
References: <20191017213539.00-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v4 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM bindings
From:   Tzung-Bi Shih <tzungbi@google.com>
To:     broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, enric.balletbo@collabora.com,
        bleung@google.com, gwendal@google.com, drinkcat@google.com,
        cychiang@google.com, dgreid@google.com, tzungbi@google.com,
        Rob Herring <robh@kernel.org>,
        Benson Leung <bleung@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

- Add "reg" for binding to shared memory exposed by EC.
- Add "memory-region" for binding to memory region shared by AP.

Acked-by: Rob Herring <robh@kernel.org>
Acked-by: Benson Leung <bleung@chromium.org>
Signed-off-by: Tzung-Bi Shih <tzungbi@google.com>
---
 .../bindings/sound/google,cros-ec-codec.txt   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
index 0ce9fafc78e2..8ca52dcc5572 100644
--- a/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
+++ b/Documentation/devicetree/bindings/sound/google,cros-ec-codec.txt
@@ -10,8 +10,26 @@ Required properties:
 - compatible: Must contain "google,cros-ec-codec"
 - #sound-dai-cells: Should be 1. The cell specifies number of DAIs.
 
+Optional properties:
+- reg: Pysical base address and length of shared memory region from EC.
+       It contains 3 unsigned 32-bit integer.  The first 2 integers
+       combine to become an unsigned 64-bit physical address.  The last
+       one integer is length of the shared memory.
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
+		reg = <0x0 0x10500000 0x80000>;
+		memory-region = <&reserved_mem>;
 	};
 };
-- 
2.23.0.700.g56cf767bdb-goog


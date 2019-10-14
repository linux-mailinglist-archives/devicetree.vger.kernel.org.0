Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id F01C2D5FF4
	for <lists+devicetree@lfdr.de>; Mon, 14 Oct 2019 12:21:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731333AbfJNKVJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Oct 2019 06:21:09 -0400
Received: from mail-yw1-f73.google.com ([209.85.161.73]:40860 "EHLO
        mail-yw1-f73.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731305AbfJNKVJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Oct 2019 06:21:09 -0400
Received: by mail-yw1-f73.google.com with SMTP id w22so13326017ywa.7
        for <devicetree@vger.kernel.org>; Mon, 14 Oct 2019 03:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=XgqYLp8QE4sKY6T/CHyXC6pEfRRtY39w1iQMg2ui9u8=;
        b=N3zOlB/4lch/asTMrEw8d0DdWtHMiByItCHgG594nS9uGJk9pHpSGFLAAgTOPQ0Wuu
         QC3BE2xnZTzOpFbK2bDNqOKLYxaz622c9Q2dda7XzcPzTOCSNdVTLHfTeGettDUdTJ+w
         Uin7vDYg6fUemhstw8yuaSr51r1mTueBstArhZMdIcjUpNVI0cmPE8OmtXZuET0CZS70
         JrGZs2qsEA2EzKA96zA6kb/jA0O8Od5tQUSkxx92ynkhwE3sPiGeipTN3mfHkVZqTRbe
         MRh/F+L5vy0R3QYPq8GzSg2ohnADcor8mS2xzrxlXs+sJuMxqhVXr3Vh65D58qfijuUS
         ioBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=XgqYLp8QE4sKY6T/CHyXC6pEfRRtY39w1iQMg2ui9u8=;
        b=ZEifDgTvlUYvLxGPzbHyda49hV5hCnrTZX1I8N8DpYyrX9ExXNgqqitmQnHXBJid0q
         mQxSU877EighIQ/F1JfrCLW4OiYhiRWKcrOCq4TasXw5l7yMyCGhpCqCSKDmwUe0qMmq
         HJ1v++B4FVAl39BCXb8umFCvgnOcunt9lujzzllcB9iFbmD2wSJvmKa0hPOoLf03fUCB
         qGSf6UMXrsDy/WBWd+ACt0pb500L/GDCdQslK5/D+7kCZyYBOp4Xv/eGBzVlL3oJWr/v
         2ScUrWgSv2bDUBy16n3Ug/KmWN2YBLeC4EW2ff7FAJsSla41rhqczgBgqXBaaTlMWQBX
         cOSA==
X-Gm-Message-State: APjAAAUd4hEhMP0uvhRpDG3KI7qD6MnzB5xG+AwsASCxdIzKhdmx3e3k
        sBmaVNDyRRMjmVdEw6xZjF2YzTC8r6bU
X-Google-Smtp-Source: APXvYqwW5i75j27W0HgQo7RU9ozz6st1lqaUFAeJy25+lpciXO2LUkFk2QK1CfASkPeZuZWzuRlff+frMdcE
X-Received: by 2002:a0d:dd08:: with SMTP id g8mr12992732ywe.194.1571048468353;
 Mon, 14 Oct 2019 03:21:08 -0700 (PDT)
Date:   Mon, 14 Oct 2019 18:20:18 +0800
In-Reply-To: <20191014102022.236013-1-tzungbi@google.com>
Message-Id: <20191014180059.06.I0df85fe54162426e31f60a589d9b461c65df2faa@changeid>
Mime-Version: 1.0
References: <20191014102022.236013-1-tzungbi@google.com>
X-Mailer: git-send-email 2.23.0.700.g56cf767bdb-goog
Subject: [PATCH v3 06/10] ASoC: dt-bindings: cros_ec_codec: add SHM bindings
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

- Add "reg" for binding to shared memory exposed by EC.
- Add "memory-region" for binding to memory region shared by AP.

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


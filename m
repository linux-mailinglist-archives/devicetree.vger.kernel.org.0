Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1AB49C4147
	for <lists+devicetree@lfdr.de>; Tue,  1 Oct 2019 21:46:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726300AbfJATqZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Oct 2019 15:46:25 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:38331 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726009AbfJATqZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Oct 2019 15:46:25 -0400
Received: by mail-pg1-f196.google.com with SMTP id x10so10412839pgi.5
        for <devicetree@vger.kernel.org>; Tue, 01 Oct 2019 12:46:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XlhrzqUm99LPeCzy1CLEgqtATY57KMRZvj7FJwTHt3Y=;
        b=BlBJdPd6a2yhJnwOoQBdMYStVorzzB/7/Pgx9fDxjOWfHKarl/Zo2QgvysyxIqo1+0
         i97TAjJYwGkgXByGwikNWZ1UfK9uTK2SuMuLQKGFFpyo3fMz7Ccu2w11k5CBFYGs5wLx
         IaCpSD4yOVbqxCjwMRd8jnWIgbdNeUg0r2kPk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XlhrzqUm99LPeCzy1CLEgqtATY57KMRZvj7FJwTHt3Y=;
        b=meVtp5ah+x2wOZr+yOse65ZqOqnQ6m7ZcmqhMEFjjcCaL/UXMLtcYsYI/Sy9X2iOo8
         2N++sSJ6+e9K1sDiYttsxS+8m6sFDqpT2bA4j8QJ3d79B4lMLLhAi3pUfWi3x1cNb6Fi
         I8AFHSmYTlUvb3PLtPrLGTuXBW0Jq5ANlTspsFkmNz5UN3gwRIE6BVQwoiKSnnPsfyxw
         j9uo8qBE2bgKYxJ9ZIgfyqfPu77TdGHz3BtnngLLKl/dxdd8CP2nQwFlQN4YIKWKhE6z
         2RCY/iyYvkhr4+3vgkkxeJrQpycnpU+Mis52/pyp/Gs7x+ScPadJ1A9YtlmE/1RpUsUi
         cRaA==
X-Gm-Message-State: APjAAAVlX53m0zK3Mh/Yl6S429h54cd7kAxbbyNC4AYBh1XXdL6yGn1d
        5S9ha91WeMDhePh5XgTC0lkwwRHbSVQ=
X-Google-Smtp-Source: APXvYqz+yD3csXdcsd3rQlyvJ8ra69IQckYVL2z4i1SenQUZV2eCKmQUdHAuU32HEA1rPGoK8gCTaw==
X-Received: by 2002:a63:6783:: with SMTP id b125mr23576873pgc.125.1569959184577;
        Tue, 01 Oct 2019 12:46:24 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id y4sm17013919pga.60.2019.10.01.12.46.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Oct 2019 12:46:24 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Mark Brown <broonie@kernel.org>, Rob Herring <robh+dt@kernel.org>
Cc:     Marco Felsch <m.felsch@pengutronix.de>,
        ckeepax@opensource.cirrus.com, zhang.chunyan@linaro.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel@vger.kernel.org, Mark Rutland <mark.rutland@arm.com>
Subject: [PATCH v2] regulator: Document "regulator-boot-on" binding more thoroughly
Date:   Tue,  1 Oct 2019 12:45:54 -0700
Message-Id: <20191001124531.v2.1.Ice34ad5970a375c3c03cb15c3859b3ee501561bf@changeid>
X-Mailer: git-send-email 2.23.0.444.g18eeb5a265-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The description of "regulator-boot-on" was a little unclear, at least
to me.  Did this property mean that we should turn the regulator on at
boot?  Or perhaps it was intended only to be used for regulators where
we couldn't read the state at bootup to indicate what state we should
assume?  The answer, it turns out, is both [1].

Let's document this.

[1] https://lore.kernel.org/r/20190923181431.GU2036@sirena.org.uk

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

Changes in v2:
- Don't mention Linux.  Duh.

 Documentation/devicetree/bindings/regulator/regulator.yaml | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/regulator/regulator.yaml b/Documentation/devicetree/bindings/regulator/regulator.yaml
index 02c3043ce419..92ff2e8ad572 100644
--- a/Documentation/devicetree/bindings/regulator/regulator.yaml
+++ b/Documentation/devicetree/bindings/regulator/regulator.yaml
@@ -38,7 +38,12 @@ properties:
     type: boolean
 
   regulator-boot-on:
-    description: bootloader/firmware enabled regulator
+    description: bootloader/firmware enabled regulator.
+      It's expected that this regulator was left on by the bootloader.
+      If the bootloader didn't leave it on then OS should turn it on
+      at boot but shouldn't prevent it from being turned off later.
+      This property is intended to only be used for regulators where
+      software cannot read the state of the regulator.
     type: boolean
 
   regulator-allow-bypass:
-- 
2.23.0.444.g18eeb5a265-goog


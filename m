Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 22E01326FE
	for <lists+devicetree@lfdr.de>; Mon,  3 Jun 2019 05:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726976AbfFCDq3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jun 2019 23:46:29 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:44450 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726968AbfFCDq2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jun 2019 23:46:28 -0400
Received: by mail-pg1-f194.google.com with SMTP id n2so7447060pgp.11
        for <devicetree@vger.kernel.org>; Sun, 02 Jun 2019 20:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=u2+3ufyPAWIhb1gzUN3AC00i4o3W7fSexVAwlsvXQ3Q=;
        b=Waeh71G0Ao1gbz1gGuip9FpIHrx26lgkHbAgkR19pHfCu7TvYgueGuaPVx4Mcdy6Ef
         vQNKz9k9oxD/jly0kskdV8xH2XSdTex2YlfZr4jp7qyThgug7nJcl+DbCT4XvB4BTTVk
         NspEAHxABmDsYqqJgS4E4rwrHOTXf5aOGXzXQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=u2+3ufyPAWIhb1gzUN3AC00i4o3W7fSexVAwlsvXQ3Q=;
        b=XxmZuIViz0+Fu4Vb0JXjdeAz5xZCdhpTZFboJiwu5tB6J5i1TRkO0VSfedzFbejSic
         VDHCoLA9CV7lA23KGPnOk/5zs+jnqfCnmYzjlJpqTi+fdqw2v6WuB0tq07i/K+G8dxgr
         LQ+cYPXTSY7Ake52JKjL2d8PHPhNMDqU3BeU2Z2+n5J7YbLVq4IWf2INueoRYKmkcbKB
         o+k/6WgaR7DLRTX/fVud7jaHWLGNXMxpdLaoq3CwnT/6tG0g68ErGdJlvc5MHSJW6X85
         YJIm5Bs+udjrnq2ndFX5j2BQvae+ZDtz6ycpTqFb9JPCozBO1CbY6/U5Zc79XCv/WxiB
         ee8w==
X-Gm-Message-State: APjAAAWh1gC+OVgfjSELPv23vvwTNLat4iiYGd2BA/+2cKj9gsbTFapd
        OtHBecUkZnwR8NvY52//z0Q0hA==
X-Google-Smtp-Source: APXvYqxA86g7RB5zmpCBeLVzvhTmzexBqmGiaS3L94z+SeYH3BCOZ2TPh9/hptbmEkwx7N5xz9seOw==
X-Received: by 2002:a62:1692:: with SMTP id 140mr27847686pfw.166.1559533587828;
        Sun, 02 Jun 2019 20:46:27 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id i73sm11878960pje.9.2019.06.02.20.46.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 02 Jun 2019 20:46:27 -0700 (PDT)
From:   Pi-Hsun Shih <pihsun@chromium.org>
Cc:     Pi-Hsun Shih <pihsun@chromium.org>, Rob Herring <robh@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Guenter Roeck <groeck@chromium.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS), linux-kernel@vger.kernel.org (open list)
Subject: [PATCH v10 5/7] dt-bindings: Add binding for cros-ec-rpmsg.
Date:   Mon,  3 Jun 2019 11:45:10 +0800
Message-Id: <20190603034529.154969-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190603034529.154969-1-pihsun@chromium.org>
References: <20190603034529.154969-1-pihsun@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
To:     unlisted-recipients:; (no To-header on input)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a DT binding documentation for ChromeOS EC driver over rpmsg.

Signed-off-by: Pi-Hsun Shih <pihsun@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes from v9, v8, v7, v6:
 - No change.

Changes from v5:
 - New patch.
---
 Documentation/devicetree/bindings/mfd/cros-ec.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/cros-ec.txt b/Documentation/devicetree/bindings/mfd/cros-ec.txt
index 6245c9b1a68b..4860eabd0f72 100644
--- a/Documentation/devicetree/bindings/mfd/cros-ec.txt
+++ b/Documentation/devicetree/bindings/mfd/cros-ec.txt
@@ -3,7 +3,7 @@ ChromeOS Embedded Controller
 Google's ChromeOS EC is a Cortex-M device which talks to the AP and
 implements various function such as keyboard and battery charging.
 
-The EC can be connect through various means (I2C, SPI, LPC) and the
+The EC can be connect through various means (I2C, SPI, LPC, RPMSG) and the
 compatible string used depends on the interface. Each connection method has
 its own driver which connects to the top level interface-agnostic EC driver.
 Other Linux driver (such as cros-ec-keyb for the matrix keyboard) connect to
@@ -17,6 +17,9 @@ Required properties (SPI):
 - compatible: "google,cros-ec-spi"
 - reg: SPI chip select
 
+Required properties (RPMSG):
+- compatible: "google,cros-ec-rpmsg"
+
 Optional properties (SPI):
 - google,cros-ec-spi-pre-delay: Some implementations of the EC need a little
   time to wake up from sleep before they can receive SPI transfers at a high
-- 
2.22.0.rc1.257.g3120a18244-goog


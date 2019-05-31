Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 32E6B3097D
	for <lists+devicetree@lfdr.de>; Fri, 31 May 2019 09:39:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726957AbfEaHjY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 May 2019 03:39:24 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39877 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726956AbfEaHjX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 May 2019 03:39:23 -0400
Received: by mail-pg1-f194.google.com with SMTP id 196so3566673pgc.6
        for <devicetree@vger.kernel.org>; Fri, 31 May 2019 00:39:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=amLWzMGEOrMIVY/i8SOjRUFJFk74K5wA9+AH20vWRFI=;
        b=S2Wnzsu8nCvTtm8EV4HrqG9J3QxY0JvdrwvVbqX3A5HD0hk1y2+7TjzwQxNUHg338R
         aTLOrA+4U5i+eEQ6BJa/8aWfXg2K57v2wUesXPDBNu+I6SB+1Smw5cxfXrmyJHisv2Cp
         o9wxb+pic8FbNdC+Bj10EmTxsQIhA+kntf/c8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=amLWzMGEOrMIVY/i8SOjRUFJFk74K5wA9+AH20vWRFI=;
        b=dT+xF3G5ADW4iqmNEJ9ntKiRLWf3FhFJrcloUU1ow6yLtf/gX3T/IKn8hF8YD8ANsm
         mOnBuweIn87zoZ4oQpZFP4854FP09AsZhZbvS+78w1QIKiG6nEDKwaxNxGMlM8IXV7GO
         G5GQGQzfIPru3CjmcV4gUltta4Msl4qH9jFsGu0k/K6e+oF9wi8KQJlRCNFEzje4/dXl
         MULsJKuOdV87VFy2LBMy4veSSGOmjlq0dL1Q0jDF0xjGqJoAQeFWicw8bgfH6D+Lq4zo
         1Y9SRYgMR4AFa1/lNd4QpnYQyW4Sti89/3IyVpHnWAus48hGH2XyfxNyK8gwRzrN4nM8
         hhZw==
X-Gm-Message-State: APjAAAWOt/qQUAOVULhCDDfMNsKRe0WmNA8/OwTKJKtXCar0W9Fto3yg
        D54nBLSXsUVRxkpwU54kSWJrPw==
X-Google-Smtp-Source: APXvYqyT5uZjk09V1ef9FcAAvx5WcXHLlC6rFD9TvjX/1wVBTG9vVJRPgKSB40SLpJjEtmzqOCaDeQ==
X-Received: by 2002:a63:1b0e:: with SMTP id b14mr7604009pgb.365.1559288362674;
        Fri, 31 May 2019 00:39:22 -0700 (PDT)
Received: from pihsun-z840.tpe.corp.google.com ([2401:fa00:1:10:7889:7a43:f899:134c])
        by smtp.googlemail.com with ESMTPSA id r71sm17051741pjb.2.2019.05.31.00.39.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 31 May 2019 00:39:22 -0700 (PDT)
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
Subject: [PATCH v9 5/7] dt-bindings: Add binding for cros-ec-rpmsg.
Date:   Fri, 31 May 2019 15:38:46 +0800
Message-Id: <20190531073848.155444-6-pihsun@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.257.g3120a18244-goog
In-Reply-To: <20190531073848.155444-1-pihsun@chromium.org>
References: <20190531073848.155444-1-pihsun@chromium.org>
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
Changes from v8, v7, v6:
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


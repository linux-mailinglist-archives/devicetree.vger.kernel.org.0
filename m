Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 417E92206FE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2020 10:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729827AbgGOIZt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jul 2020 04:25:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729792AbgGOIZs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jul 2020 04:25:48 -0400
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 87469C061755
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:25:48 -0700 (PDT)
Received: by mail-pf1-x444.google.com with SMTP id u185so1787272pfu.1
        for <devicetree@vger.kernel.org>; Wed, 15 Jul 2020 01:25:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AvUYaZdTBJOJT4skplAAvkJuJ1Wq6R9AP4tH75ZrRy8=;
        b=a03ni/S+QZlAxNdYtn54fZdmDTQtr3DBCOJOCY8BRoSjPtfaoL9nZOJDyXCOWVZFDC
         ADCkB+1YpTIf5E2eCiCBDrnbGDkFRKf+au4RFU01ZmH8oeoETZuTZHG3wKi2MeEBD51D
         kDRgi3ll1SSf0CKFiAluKcYqgUS7NQstGyGYs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AvUYaZdTBJOJT4skplAAvkJuJ1Wq6R9AP4tH75ZrRy8=;
        b=slcXzXWi4OFwSYBRMU6/FNzjOtwD9b+xT7AzEoBXPbpVYzI/hLrM+L67SXL+ZJovcd
         c6+SuMXtcPzmB/etH5jsCPfbqHcU+6o9Q21DogNIbV5fWzmr8a60/hCGlh1nfyjfdRVe
         oEukx+m6jvxcMOv1OAeIlvVKoLu1lZADTO6qE47RCKhAMyVXjiVhjIf9sU6K2GBRoO4a
         ztgiBU205lLh6REaqrDKwjApuPGgnU+bWBHFPf+cetS9toPXEO+fS3eIWBF3gZw9RmnA
         mpa6QMIdGqf0MtAZ6qnquosHtjSfAun2SPg3ASU99GqekxgZEf4JnibMA0ZBip6khgYw
         96nw==
X-Gm-Message-State: AOAM53388xKn0/s6Z+pxdDnA43Vs0e5bL1uNOgY5Pp2ZnczYXcplIe9E
        yXgm5kr85Vt0UO2VEshTZ2NQ5w==
X-Google-Smtp-Source: ABdhPJw3+nKTM6LEEm7fZCBVsDT/JQ2nZBNipQhAObPQb7nADYjtnszvy9WpDZDlB3q5QahBcnbcQA==
X-Received: by 2002:a63:925a:: with SMTP id s26mr7072727pgn.21.1594801548068;
        Wed, 15 Jul 2020 01:25:48 -0700 (PDT)
Received: from bhanumaiya-glaptop.hsd1.ca.comcast.net ([2601:646:9500:590:250:b6ff:fe8e:b459])
        by smtp.gmail.com with ESMTPSA id y7sm1093627pfq.69.2020.07.15.01.25.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jul 2020 01:25:47 -0700 (PDT)
From:   Bhanu Prakash Maiya <bhanumaiya@chromium.org>
X-Google-Original-From: Bhanu Prakash Maiya <bhanumaiya@google.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Lee Jones <lee.jones@linaro.org>,
        Furquan Shaikh <furquan@chromium.org>,
        Raul E Rangel <rrangel@chromium.org>,
        Eric Peers <epeers@google.com>,
        Duncan Laurie <dlaurie@google.com>,
        Benson Leung <bleung@chromium.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Bhanu Prakash Maiya <bhanumaiya@chromium.org>,
        Guenter Roeck <groeck@chromium.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Rob Herring <robh@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.Kernel.org,
        Bhanu Prakash Maiya <bhanumaiya@google.com>
Subject: [PATCH v2 2/2] dt-bindings: mfd: Add DT compatible string "google,cros_ec_uart"
Date:   Wed, 15 Jul 2020 01:25:26 -0700
Message-Id: <20200715082526.1760426-2-bhanumaiya@google.com>
X-Mailer: git-send-email 2.27.0.389.gc38d7665816-goog
In-Reply-To: <20200715082526.1760426-1-bhanumaiya@google.com>
References: <20200715082526.1760426-1-bhanumaiya@google.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Bhanu Prakash Maiya <bhanumaiya@chromium.org>

Add DT compatible string in
Documentation/devicetree/bindings/mfd/cros_ec.txt

Series-to: LKML <linux-kernel@vger.kernel.org>
Series-cc: Raul E Rangel <rrangel@chromium.org>, Furquan Shaikh <furquan@chromium.org>, Duncan Laurie <dlaurie@google.com>, Eric Peers <epeers@google.com>, Benson Leung <bleung@chromium.org>, Enric Balletbo i Serra <enric.balletbo@collabora.com>, Guenter Roeck <groeck@chromium.org>, linux-kernel@vger.kernel.org, Lee Jones <lee.jones@linaro.org>, Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org

Signed-off-by: Bhanu Prakash Maiya <bhanumaiya@chromium.org>
Change-Id: Icfeab15fa04daaffc61280faf5a75cd9b23ee822
Signed-off-by: Bhanu Prakash Maiya <bhanumaiya@google.com>
---
 Documentation/devicetree/bindings/mfd/cros-ec.txt | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mfd/cros-ec.txt b/Documentation/devicetree/bindings/mfd/cros-ec.txt
index 4860eabd0f729..ec8c5d7ecc266 100644
--- a/Documentation/devicetree/bindings/mfd/cros-ec.txt
+++ b/Documentation/devicetree/bindings/mfd/cros-ec.txt
@@ -3,7 +3,7 @@ ChromeOS Embedded Controller
 Google's ChromeOS EC is a Cortex-M device which talks to the AP and
 implements various function such as keyboard and battery charging.
 
-The EC can be connect through various means (I2C, SPI, LPC, RPMSG) and the
+The EC can be connect through various means (I2C, SPI, UART, LPC, RPMSG) and the
 compatible string used depends on the interface. Each connection method has
 its own driver which connects to the top level interface-agnostic EC driver.
 Other Linux driver (such as cros-ec-keyb for the matrix keyboard) connect to
@@ -17,6 +17,10 @@ Required properties (SPI):
 - compatible: "google,cros-ec-spi"
 - reg: SPI chip select
 
+Required properties (UART):
+- compatible: "google,cros-ec-uart"
+- reg: UART baudrate, flowcontrol
+
 Required properties (RPMSG):
 - compatible: "google,cros-ec-rpmsg"
 
@@ -72,5 +76,6 @@ spi@131b0000 {
 	};
 };
 
-
 Example for LPC is not supplied as it is not yet implemented.
+
+Example for UART is not supplied as it is not yet implemented.
-- 
2.27.0.389.gc38d7665816-goog


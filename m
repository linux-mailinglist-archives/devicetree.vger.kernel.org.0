Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48DC033C7D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 02:32:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726653AbfFDAcf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Jun 2019 20:32:35 -0400
Received: from mail-pl1-f201.google.com ([209.85.214.201]:51096 "EHLO
        mail-pl1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726530AbfFDAcd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Jun 2019 20:32:33 -0400
Received: by mail-pl1-f201.google.com with SMTP id o12so12804542pll.17
        for <devicetree@vger.kernel.org>; Mon, 03 Jun 2019 17:32:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=2KTzGfh7kv2d74sdNHCbcBSbV7diWdzXOMvg7FHNFO4=;
        b=EqR/6lt+NpIeCzQKsguoNIfebTcbW58o4uF8UjA2VmZtMhVvZq0NCpV2geMVB9IZb8
         AqiWkgI+VJ/QGzumXNhOngU3dN4k+xYHwFqyuBFxa2plaPw7Ep/EHRt3KFkOeAbNc1Nd
         x3j1C6mSwZMLissFCqpR8G8m6f7xPalu8Efd9pe6LUE2zrKOUdltYXQ94aH8x/wKGN1o
         gQo9ePtghT8W++raYKrkPiX0gpLrC65tiphdmJoeVCpnxr4M8n8SFZK1+LcW+WIMlZEO
         3xgANuL+07NGwF/cmTfVuRulDSx+5EjGX5wkkAVUH8bLVnj+9Nhxcs9QMbgNU3Q3AkxM
         xd1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=2KTzGfh7kv2d74sdNHCbcBSbV7diWdzXOMvg7FHNFO4=;
        b=OJcXmXNm4I2JdObpLBqyFIPgIPs+1YP+l2XnoIEGkRbl/Lrkz9gSS7ut43MS7oM3Uw
         U0y+2XMgBu6WVzg0yru3792T5F1eJPH4If91L9IWLda94rQhv3mgKFGXeECLbhlS50II
         sp9NugWONgnyuqbcsQxGfLo1EUP49NVSyxoeJtNOYy8O7WruHXn5/wAgGKHJSamD1KJT
         ng8+8m3iRMMPs1JQ4gl5Do/EMSBKS0zHp1x3QgjW4IzRD8B7LaZkglwjCv+1ahc7XFXs
         2j+WH0n+oP8Aqb5khcZbJ8GOfz5bq5vwtc+Pvze6avc7X92vUimRh+Qplp3cB/MMYDgS
         qUvA==
X-Gm-Message-State: APjAAAVvrNUPUli6MhzVRmMd7imlrcBwA1MqN9Lp0Vy6zlDOKHEE6X6m
        ed+CE8OcBREQvOBoG9lVh3wtB7MPlshf6eU=
X-Google-Smtp-Source: APXvYqwmEeWS8ozxJF5RfZj9Gtzd0ufeiTQ52H8arltr4tbYi/DlHHZq9tosKc4KOx47fLR9mK0Rxmw3dZdX6BU=
X-Received: by 2002:a63:2d41:: with SMTP id t62mr32132172pgt.113.1559608352800;
 Mon, 03 Jun 2019 17:32:32 -0700 (PDT)
Date:   Mon,  3 Jun 2019 17:32:16 -0700
In-Reply-To: <20190604003218.241354-1-saravanak@google.com>
Message-Id: <20190604003218.241354-4-saravanak@google.com>
Mime-Version: 1.0
References: <20190604003218.241354-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [RESEND PATCH v1 3/5] dt-bindings: Add depends-on property
From:   Saravana Kannan <saravanak@google.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     Saravana Kannan <saravanak@google.com>,
        David Collins <collinsd@codeaurora.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel-team@android.com
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The depends-on property is used to list the mandatory functional
dependencies of a consumer device on zero or more supplier devices.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 .../devicetree/bindings/depends-on.txt        | 26 +++++++++++++++++++
 1 file changed, 26 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/depends-on.txt

diff --git a/Documentation/devicetree/bindings/depends-on.txt b/Documentation/devicetree/bindings/depends-on.txt
new file mode 100644
index 000000000000..1cbddd11cf17
--- /dev/null
+++ b/Documentation/devicetree/bindings/depends-on.txt
@@ -0,0 +1,26 @@
+Functional dependency linking
+=============================
+
+Apart from parent-child relationships, devices (consumers) often have
+functional dependencies on other devices (suppliers). Common examples of
+suppliers are clock, regulators, pinctrl, etc. However not all of them are
+dependencies with well defined devicetree bindings. Also, not all functional
+dependencies are mandatory as the device might be able to operate in a limited
+mode without some of the dependencies.
+
+The depends-on property allows marking these mandatory functional dependencies
+between one or more devices. The depends-on property is used by the consumer
+device to point to all its mandatory supplier devices.
+
+Optional properties:
+- depends-on:	A list of phandles to mandatory suppliers of the device.
+
+
+Examples:
+Here, the device is dependent on only 2 of the 3 clock providers
+dev@40031000 {
+	      compatible = "name";
+	      reg = <0x40031000 0x1000>;
+	      clocks = <&osc_1 1>, <&osc_2 7> <&osc_3 5>;
+	      depends-on = <&osc_1>, <&osc_3>;
+};
-- 
2.22.0.rc1.257.g3120a18244-goog


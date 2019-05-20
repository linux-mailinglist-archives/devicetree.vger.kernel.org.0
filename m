Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id EC27023988
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 16:12:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388344AbfETOMZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 10:12:25 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:44319 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388366AbfETOMZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 10:12:25 -0400
Received: by mail-pf1-f196.google.com with SMTP id g9so7281702pfo.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 07:12:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references;
        bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
        b=neXNGxozyGNOnI4VsziWA4VruFF8zUCzBysSiP5LjXEiF8fHcIMiigECAhrR2GFm6B
         QBVMG98vXqb0BIqvNBwJbsU8PuXQ54Ih/NWwWJaLD7xJ/ng2UE4UFK2Ih7Tgbt0X4KHp
         LdmwQFTNTzaqgjGTJOE6QJEO4UWxz3lyH7pAaakcN41ujsiFXAgwo+I0zySeK8uOyZhc
         m5BKaNr08paRzhkoyv1IHakeg5qKRsvNfV1HHKy1TVuwx2jZewdKSu7oZwf+WyAnT5mt
         rlcrM2RE+GNbV16AVFvjHOrP+0H3k/vnUtMmipdu0qOENw5+VZ/Ti0vU2QbTPFA4SwLT
         Vuww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references;
        bh=bw14u18P9i//6PFBBpNeMD35DBcnBuJpaE6hMWzLBZ0=;
        b=n6Qw1MQc7jjk4Gz5sdlfGYBp/5NYeV5JA4plBa//mhB8cQyNDwvoSCVkL4HwOWjQd6
         u6hMr3dGXtpDs44zVDCCXfm/roZ0NXCoFeTA0+BC8d0F11KSGC8Y6LCdD6db8SUN2V2Y
         nx4PeNv8GKDAv+o3O6yYFZGjFXGMRzYZBVV51jFlKyrxPgFg0ZRtpBklucynfrpQqqz0
         hVegDuL41ekf7n1pxl7D37+buzseoy0lriYZrDiONBw5OnyS3lf8iQu6kfpMs8quuwAR
         8TNigFwKKSI/wLFNy6dpXU6wV2aZX4DsN/5f2vbCURpz2Cs0zIKu1GVFXss9Jk4X2KIp
         NxTg==
X-Gm-Message-State: APjAAAUNCikbm5UvYg5GJvBWF8cDy2PeNmZ04wtf1qAHrqkfdA8F9+7C
        h6+Gdhr/yot2hP1p/2NzasT6mA==
X-Google-Smtp-Source: APXvYqwx23KuGQQBy9STDE5n426D1HSIXniwr8IKWPZNfYVVORKQwGVsqu5A72EeHAWoa2liK0MOsA==
X-Received: by 2002:a63:f703:: with SMTP id x3mr73780717pgh.394.1558361544460;
        Mon, 20 May 2019 07:12:24 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id a9sm26388248pgw.72.2019.05.20.07.12.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 20 May 2019 07:12:23 -0700 (PDT)
From:   Sagar Shrikant Kadam <sagar.kadam@sifive.com>
To:     robh+dt@kernel.org, mark.rutland@arm.com, peter@korsgaard.com,
        andrew@lunn.ch, palmer@sifive.com, paul.walmsley@sifive.com,
        sagar.kadam@sifive.com, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/3] dt-bindings: i2c: extend existing opencore bindings.
Date:   Mon, 20 May 2019 19:41:16 +0530
Message-Id: <1558361478-4381-2-git-send-email-sagar.kadam@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
References: <1558361478-4381-1-git-send-email-sagar.kadam@sifive.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add FU540-C000 specific device tree bindings to already
available i2-ocores file. This device is available on
HiFive Unleashed Rev A00 board. Move interrupt and interrupt
parents under optional property list as these can be optional.

The FU540-C000 SoC from sifive, has an Opencore's I2C block
reimplementation.

The DT compatibility string for this IP is present in HDL and available at.
https://github.com/sifive/sifive-blocks/blob/master/src/main/scala/devices/i2c/I2C.scala#L73

Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
---
 Documentation/devicetree/bindings/i2c/i2c-ocores.txt | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
index 17bef9a..b73960e 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
+++ b/Documentation/devicetree/bindings/i2c/i2c-ocores.txt
@@ -2,8 +2,11 @@ Device tree configuration for i2c-ocores
 
 Required properties:
 - compatible      : "opencores,i2c-ocores" or "aeroflexgaisler,i2cmst"
+                    "sifive,fu540-c000-i2c" or "sifive,i2c0".
+		    for Opencore based I2C IP block reimplemented in
+		    FU540-C000 SoC.Please refer sifive-blocks-ip-versioning.txt
+		    for additional details.
 - reg             : bus address start and address range size of device
-- interrupts      : interrupt number
 - clocks          : handle to the controller clock; see the note below.
                     Mutually exclusive with opencores,ip-clock-frequency
 - opencores,ip-clock-frequency: frequency of the controller clock in Hz;
@@ -12,6 +15,8 @@ Required properties:
 - #size-cells     : should be <0>
 
 Optional properties:
+- interrupt-parent: handle to interrupt controller.
+- interrupts      : interrupt number.
 - clock-frequency : frequency of bus clock in Hz; see the note below.
                     Defaults to 100 KHz when the property is not specified
 - reg-shift       : device register offsets are shifted by this value
-- 
1.9.1


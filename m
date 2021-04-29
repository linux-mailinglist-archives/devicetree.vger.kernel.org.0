Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3E30E36EA1B
	for <lists+devicetree@lfdr.de>; Thu, 29 Apr 2021 14:12:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230148AbhD2MMu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Apr 2021 08:12:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38050 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233862AbhD2MMu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Apr 2021 08:12:50 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 912BEC061342
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:12:03 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id x5so16411559wrv.13
        for <devicetree@vger.kernel.org>; Thu, 29 Apr 2021 05:12:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ymSp8rfZSWXVKAoyrk1VB6kKAVSstzHQFijBzDCf7V4=;
        b=0WXvLpbTLG1tRoZSII9grqKOVMmJ//5onbjzjw3Hrr7ozsslJOL1Q1fWdQg27qyJMA
         R1jsnOIFEYIMlxrQGpCtvWc1Vwm+TESo6CHKznijk5dAYL+RbcsPNA5x/sh5Vfp2vmbq
         ucWGTQ2KmC5N2Qo4KODwjQY6kV3Ko0p/BwzC7Q9Xh9yiVniGIoWsSBqXK8KSvIZYS+r2
         pgT1oRfr6+S77L3hPsyfPhxKyC666pPZypgYMdtuJYqb5WzwKnMS7Cc0iIIQYPBQflpK
         XeCyT4tVITG9AJFXBVBdoCPg4wNdX4d2uulqw9v+xn+I6PzRWVX0WGDQ+UPsGLpACh7C
         uxRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ymSp8rfZSWXVKAoyrk1VB6kKAVSstzHQFijBzDCf7V4=;
        b=l8olpMWrm8AT9AY2n0S7zkRXav5YpYb0+CpuPoAnZDyFJuFH76tQYXBiB1NB1vYnfT
         pZAwUA7vvKGg+3YEylBhx7o4s2BYFX70l5v0jVJEJ5z4e4HkZXFQmCXKJ7EcN2AVll4h
         3WKvYyaSXjrHwF6OghdnzsoxxCusrV9978+XDoHXNpccRo+H1ZlqJOv5ZHQ6a9gzUv2P
         BK1jPELcM+/1eDnb1foRYZq/Cn0FdQKmzIxlYbUkaeQm0mK/hhmTDjuilMkl709cSwmm
         vysQB+KChhSxQKl3vEkinet8o55NwPgls32fOM8duc9OU0SNV4slCnUn98JUQKzXDYif
         1Jtg==
X-Gm-Message-State: AOAM5335Q1oBsxJ0N/PtIsUJ2/v+U8TX71plGJj83v7LPO+UwMY/Qcm4
        jMcjXXHjNBECxh2uVp2ZSMap5kKwWiILJGF3cek=
X-Google-Smtp-Source: ABdhPJwmckvmYiN8ROxPFgYNNcFNtN9hKA8kcQk2aMDqu0TsLAaRfAW+3HnF6cPy+5U99P52ncQQzw==
X-Received: by 2002:adf:e7c2:: with SMTP id e2mr23171822wrn.180.1619698322290;
        Thu, 29 Apr 2021 05:12:02 -0700 (PDT)
Received: from localhost.localdomain (dh207-97-15.xnet.hr. [88.207.97.15])
        by smtp.googlemail.com with ESMTPSA id 18sm10075640wmo.47.2021.04.29.05.12.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Apr 2021 05:12:01 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     jdelvare@suse.com, linux@roeck-us.net, corbet@lwn.net,
        linux-hwmon@vger.kernel.org, linux-doc@vger.kernel.org,
        linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] dt-bindings: hwmon: Add Texas Instruments TMP1075
Date:   Thu, 29 Apr 2021 14:11:50 +0200
Message-Id: <20210429121150.106804-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210429121150.106804-1-robert.marko@sartura.hr>
References: <20210429121150.106804-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the DT compatible for TI TMP1075 which
is a LM75 compatible sensor.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/hwmon/lm75.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/hwmon/lm75.yaml b/Documentation/devicetree/bindings/hwmon/lm75.yaml
index 96eed5cc7841..72980d083c21 100644
--- a/Documentation/devicetree/bindings/hwmon/lm75.yaml
+++ b/Documentation/devicetree/bindings/hwmon/lm75.yaml
@@ -30,6 +30,7 @@ properties:
       - st,stds75
       - st,stlm75
       - microchip,tcn75
+      - ti,tmp1075
       - ti,tmp100
       - ti,tmp101
       - ti,tmp105
-- 
2.31.1


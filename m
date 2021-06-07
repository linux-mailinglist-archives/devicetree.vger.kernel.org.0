Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 52FAE39D9C8
	for <lists+devicetree@lfdr.de>; Mon,  7 Jun 2021 12:35:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230256AbhFGKha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Jun 2021 06:37:30 -0400
Received: from mail-ed1-f46.google.com ([209.85.208.46]:46594 "EHLO
        mail-ed1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230193AbhFGKha (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Jun 2021 06:37:30 -0400
Received: by mail-ed1-f46.google.com with SMTP id r11so19666283edt.13
        for <devicetree@vger.kernel.org>; Mon, 07 Jun 2021 03:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vgsncdvLmdHsU/1c1h0SAn08txT9+pvHmgBRKaZGxnU=;
        b=Y5+sYcP12AU9+nSL0rR24Tm+WCMD6ByYuo/k6ES3uomE0fKDJ/gtc+GnLCYf94OkVJ
         Pa/ZWB+1ueMshsQimx8jXXo0KRg+sJUVw06w70HBb8XxnsUIo/d3SR9Paj/RQl4iWHrh
         9v+my4x8gN/HM4sM4tYv43PL5E1eE+V0emvn7dwRmvES4wNzRE/nO7+YAkhfbHPsk456
         8OgFqIMuTToDbniBWzoBh0CfMmPnJ28IBjr+J55l7Pz+Qd8lNeyJQ/R9vHc1zY9fX+Z+
         o5HtIT965jQ5byQEsVpuShiPD3KUiomQeUeQ3OGw+Mk8VgvA3qlWZCb9cIlJetM7yoJP
         +0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vgsncdvLmdHsU/1c1h0SAn08txT9+pvHmgBRKaZGxnU=;
        b=UYZEry9PCbLSLgfATCKzYHd5uSHi1FSEYuKv+lfpBpOGyx0ij1sd/pUq0asyS7OhGw
         fAgD80EV+JGd0+RiRrNLjsKbdd7tp370aYo9fswZNfg3n3MRu7fSRYbjET3QMbfz3zp3
         Ifvypt0QVWZpYNK2BuDTHK7Tn6LqFgF3vqFJCQE9ZXID5kaFXotyzg9e23jAP55wqis8
         LDhZryZPGV+5feDwIISWOU5XKh+e1Jp9UfkZzbxxqM6nHDPfUx5xo4jEzzf2S5enzgJZ
         29XJmTze0gH2Yt51G+DDNWTmgAdW8lPX0pFy0JUAYkH/AdrccXdpKSlI9/v8+mzv4JF+
         qaQw==
X-Gm-Message-State: AOAM530kDCvOTk4bHsZvvFgcr93ZlG48jeHrlHVXzeq9fCo9A9/QgE+i
        Xko10vnMNiZumqdnfG9JtuXx1g==
X-Google-Smtp-Source: ABdhPJz+jLvE5NKH5gEqXje/mFle1nM9LSCeJiOfsSqvHNWYSi82AU4IlfFsbyKOw0XIedpyBsljuQ==
X-Received: by 2002:a50:ee18:: with SMTP id g24mr19439130eds.11.1623062078574;
        Mon, 07 Jun 2021 03:34:38 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-76.xnet.hr. [88.207.96.76])
        by smtp.googlemail.com with ESMTPSA id b25sm7521037edv.9.2021.06.07.03.34.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jun 2021 03:34:38 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
        corbet@lwn.net, trivial@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v4 2/3] dt-bindings: trivial-devices: Add Delta DPS920AB
Date:   Mon,  7 Jun 2021 12:34:30 +0200
Message-Id: <20210607103431.2039073-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210607103431.2039073-1-robert.marko@sartura.hr>
References: <20210607103431.2039073-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add trivial device entry for Delta DPS920AB PSU.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v2:
* Drop custom bindings file and use trivial-devices

 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index a327130d1faa..1cb6c1fc0903 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -68,6 +68,8 @@ properties:
           - dallas,ds4510
             # Digital Thermometer and Thermostat
           - dallas,ds75
+          # Delta Electronics DPS920AB 920W 54V Power Supply
+          - delta,dps920ab
             # 1/4 Brick DC/DC Regulated Power Module
           - delta,q54sj108a2
             # Devantech SRF02 ultrasonic ranger in I2C mode
-- 
2.31.1


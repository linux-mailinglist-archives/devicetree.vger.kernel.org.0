Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1298339BC08
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 17:37:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231229AbhFDPjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 11:39:07 -0400
Received: from mail-ej1-f51.google.com ([209.85.218.51]:38714 "EHLO
        mail-ej1-f51.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbhFDPjH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 11:39:07 -0400
Received: by mail-ej1-f51.google.com with SMTP id og14so9850199ejc.5
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 08:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vgsncdvLmdHsU/1c1h0SAn08txT9+pvHmgBRKaZGxnU=;
        b=WxFvvZ7ytpu8pbbafBQ3vDj5PCFFeuHUAbbuMy++NR52CT2AZDkMax9W5ei9Rsovta
         NIC7XdfLDCqP4wxj5HeM3CtxzlPc3sBPG8ZeIndDS0Etvi6vqaf7W5/j7OMCTMEFmNqV
         4XjugU7I0yc4UVAdg5iJ4FWKL30/x4GwN7+PVb70pMPR/tkODslVprpBr8Q7ceHrXGiu
         +ZmueAkrRbBNiiMrlL7gJSsVrMjHwHo05Y9iXxJh1OHhRDHdCQIbzbB6WhKzhLz+39Jr
         QG+q3zPWLxjvY+LftG618RXcyMFydQFfPyHh9PkOMYugun0mvVTzLH2c2vRjWdqYh1xB
         pYgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vgsncdvLmdHsU/1c1h0SAn08txT9+pvHmgBRKaZGxnU=;
        b=oRBbnBXAEquMQrEr64tnaNIX2G7uzdqXnNScsBICLRdlmxq9yLyMQ8aump4bMSOGyh
         Y5V8Yl6ZnZow4Jo/jXsCTrcTknr1Zfg34PE0Wuw4/DPbd7tnHH+SRUF6aqCFjPsAjgwJ
         1gaB/xJHULgeFrR+Q9XxYq0E/jc2ChWev9LrIUfo/NHRds7TOd/i7AwqOvFadPbgpS4L
         Nu8WFl3rKiqGKPfc+RQLf6RpBnXbWRqGSikSByDKS0EXFYBXnqpsAVIkqdmwnK3tIv3B
         k9+6mz1BrtOPJcErIqqoDOPJsaPvPLHSss9HRegGThFpppVD8upgFsxs14klkVke7tMp
         DIfQ==
X-Gm-Message-State: AOAM5306aVjjqXVUbFoTD8vFw3eu8/p+b3eTZGlWpSKFXjtCPCa8Gcn/
        5nB0g6x+gOD/2CDAL4t0iQh5sQ==
X-Google-Smtp-Source: ABdhPJy6yowrPH6iOmmolwxffXLnUaq1Su9DUF6BRwcefj17ww5Q/sb+ufd4qxCN/Myl9zkHQFi/Yg==
X-Received: by 2002:a17:906:b2d6:: with SMTP id cf22mr4786557ejb.29.1622820980221;
        Fri, 04 Jun 2021 08:36:20 -0700 (PDT)
Received: from localhost.localdomain (dh207-96-250.xnet.hr. [88.207.96.250])
        by smtp.googlemail.com with ESMTPSA id d25sm2909038ejd.59.2021.06.04.08.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 08:36:19 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, jdelvare@suse.com, linux@roeck-us.net,
        corbet@lwn.net, trivial@kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hwmon@vger.kernel.org,
        linux-doc@vger.kernel.org
Cc:     luka.perkov@sartura.hr, jmp@epiphyte.org, pmenzel@molgen.mpg.de,
        buczek@molgen.mpg.de, Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 2/3] dt-bindings: trivial-devices: Add Delta DPS920AB
Date:   Fri,  4 Jun 2021 17:36:11 +0200
Message-Id: <20210604153612.2903839-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210604153612.2903839-1-robert.marko@sartura.hr>
References: <20210604153612.2903839-1-robert.marko@sartura.hr>
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


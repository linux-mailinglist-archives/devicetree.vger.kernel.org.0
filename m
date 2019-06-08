Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C994A39B0C
	for <lists+devicetree@lfdr.de>; Sat,  8 Jun 2019 06:43:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727686AbfFHEnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Jun 2019 00:43:50 -0400
Received: from mail-vk1-f201.google.com ([209.85.221.201]:55721 "EHLO
        mail-vk1-f201.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726252AbfFHEnu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Jun 2019 00:43:50 -0400
Received: by mail-vk1-f201.google.com with SMTP id h84so1565426vke.22
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 21:43:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=yAz3k7OzPjxwzR5iBZENxEm1ewgrxin9ITMqtF0yTXk=;
        b=h16Y4HD/UPQ8Qdd8puBUJX6swjYiLioJGWRuDvWtjxgSH5taeUQyhOx79lWt1tEXh9
         WP5jLzggF4W2BJI+QMCOkRsdE+R1jjdoA/MyslRnGDBrarPhPv3O8V8nQTinkxBX78O2
         1u0gp3xytA+oINw+NizDSVapwgPCn8UIlQOweBTlg/DxloT62xhbeR2/KfYcCT+CR5n5
         FoD1m0WGw4gEanoi/kzNuz3zX9MzXvrhLeBaEwvfiV/uRWD+3BXr7MVff/SrZVEp99DR
         PApeHHYPaL01eGLGrhz5jFMOkLLYRpS4qdRTDJpXZ3wAWpZH4ZBZ7YEA8XQwMnCpnccL
         1ZNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=yAz3k7OzPjxwzR5iBZENxEm1ewgrxin9ITMqtF0yTXk=;
        b=WPeA7fd461WgG+cLLxMtdUJHirko9QHkZyiJC/073nyhYdo2RdtzIhOBceQn8f/KXC
         X5qmtYHreSAGtVEgg8T9OBoQobwWwXFChnutnYkvWagcYluJOIB9E5PKTEZ1j3OTB6b4
         ADvxJlttwMAQAWu6KAbga4cUno3oOo+ZAaiqcGyXxwx4f75C6V3F5+Ck3W4O75JADhNM
         +bC5Vbp9g/LV2bxqCO+g4OlJJTWbTmfKwUVR0HY2gY9wmP/XCkQMTAgdo8iu1MFDmjfz
         rAgnj/1tQ0WCphQLNkG7jeP9YXux3WJQvCVXLG61k5J5BGGR5ZNw2yByp5ZwkSAuQVDc
         GSfA==
X-Gm-Message-State: APjAAAVtoPvXf9wRsaUncpI1NpeNqxK2BfZ8EpV5E6k0s/W4yrKT0I1x
        wcbCdA1/Wt6t8uPSXqZfMWafhNloyiI9dnk=
X-Google-Smtp-Source: APXvYqzgoCdbmtERP8lXY/RLG0ooX+4jcXs9QIN2JZHB94tDUDQbpKEPFjga7MoFGI0pHJDoAp7O7S8tT1TDM6M=
X-Received: by 2002:a67:1ec1:: with SMTP id e184mr19214210vse.83.1559969029067;
 Fri, 07 Jun 2019 21:43:49 -0700 (PDT)
Date:   Fri,  7 Jun 2019 21:43:31 -0700
In-Reply-To: <20190608044339.115026-1-saravanak@google.com>
Message-Id: <20190608044339.115026-2-saravanak@google.com>
Mime-Version: 1.0
References: <20190608044339.115026-1-saravanak@google.com>
X-Mailer: git-send-email 2.22.0.rc2.383.gf4fbbf30c2-goog
Subject: [PATCH v1 1/9] dt-bindings: opp: Introduce opp-peak-KBps and
 opp-avg-KBps bindings
From:   Saravana Kannan <saravanak@google.com>
To:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc:     Saravana Kannan <saravanak@google.com>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Jordan Crouse <jcrouse@codeaurora.org>,
        vincent.guittot@linaro.org, bjorn.andersson@linaro.org,
        amit.kucheria@linaro.org, seansw@qti.qualcomm.com,
        daidavid1@codeaurora.org, evgreen@chromium.org,
        sibis@codeaurora.org, kernel-team@android.com,
        linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Interconnects often quantify their performance points in terms of
bandwidth. So, add opp-peak-KBps (required) and opp-avg-KBps (optional) to
allow specifying Bandwidth OPP tables in DT.

opp-peak-KBps is a required property that replace opp-hz for Bandwidth OPP
tables.

opp-avg-KBps is an optional property that can be used in Bandwidth OPP
tables.

Signed-off-by: Saravana Kannan <saravanak@google.com>
---
 Documentation/devicetree/bindings/opp/opp.txt | 15 ++++++++++++---
 1 file changed, 12 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/opp/opp.txt b/Documentation/devicetree/bindings/opp/opp.txt
index 76b6c79604a5..c869e87caa2a 100644
--- a/Documentation/devicetree/bindings/opp/opp.txt
+++ b/Documentation/devicetree/bindings/opp/opp.txt
@@ -83,9 +83,14 @@ properties.
 
 Required properties:
 - opp-hz: Frequency in Hz, expressed as a 64-bit big-endian integer. This is a
-  required property for all device nodes but devices like power domains. The
-  power domain nodes must have another (implementation dependent) property which
-  uniquely identifies the OPP nodes.
+  required property for all device nodes but for devices like power domains or
+  bandwidth opp tables. The power domain nodes must have another (implementation
+  dependent) property which uniquely identifies the OPP nodes. The interconnect
+  opps are required to have the opp-peak-bw property.
+
+- opp-peak-KBps: Peak bandwidth in kilobytes per second, expressed as a 32-bit
+  big-endian integer. This is a required property for all devices that don't
+  have opp-hz. For example, bandwidth OPP tables for interconnect paths.
 
 Optional properties:
 - opp-microvolt: voltage in micro Volts.
@@ -132,6 +137,10 @@ Optional properties:
 - opp-level: A value representing the performance level of the device,
   expressed as a 32-bit integer.
 
+- opp-avg-KBps: Average bandwidth in kilobytes per second, expressed as a
+  32-bit big-endian integer. This property is only meaningful in OPP tables
+  where opp-peak-KBps is present.
+
 - clock-latency-ns: Specifies the maximum possible transition latency (in
   nanoseconds) for switching to this OPP from any other OPP.
 
-- 
2.22.0.rc2.383.gf4fbbf30c2-goog


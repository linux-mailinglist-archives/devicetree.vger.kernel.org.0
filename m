Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 36F63AF04D
	for <lists+devicetree@lfdr.de>; Tue, 10 Sep 2019 19:15:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2437072AbfIJRPB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Sep 2019 13:15:01 -0400
Received: from mail-qt1-f193.google.com ([209.85.160.193]:36119 "EHLO
        mail-qt1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394250AbfIJROn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Sep 2019 13:14:43 -0400
Received: by mail-qt1-f193.google.com with SMTP id o12so21689031qtf.3
        for <devicetree@vger.kernel.org>; Tue, 10 Sep 2019 10:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=pHdUSG06S1sXGHlL1sjMEDPrOFbJ84fKCAwVrFTIeNI=;
        b=LFhaFNAnkVRzT4lYKU7W1WSI9NH7ihO+uv0URMnSVT/UJgUfAuZJwBrSprbLW9Yy/B
         b5xcVb8rR3KvFvMYkhC/BaG/aXaeGihJMNQruiK49G0/BQ/BPp/JQwhcKgRh0gLSkRS/
         M1+Ui3smnc76FrOKXcWBcZ4JrQ7L5EWsjUoxBfA2td/AgchlqPqgt+tGKBK/JQl74eiE
         o59VD762axYy8+O7ySYNCY1WsgQXUrgaTxp96cX8ZKg4Ns5egLEuOYVlP2gJFR5Ckc3i
         wS9/nev0koEcsSbVXyg84TU7vP4DYfFBmoAZnUe61GwMq4oush4Fh7KqqC4PQpn+/1zV
         hjgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=pHdUSG06S1sXGHlL1sjMEDPrOFbJ84fKCAwVrFTIeNI=;
        b=hu9fg6rIRqmMOuwJfq/ajguVpiY/PBSLqAG5kZ4jayF5G1YaJ0TdayjW/uYVZRDSSj
         RKpdrH/VEV1Nk8UgKrlXQskqUVVz2hX8cJh3+fZJrhis2QE+g+URF0M/Vet0HP0za8bP
         4lUEVnNxIDL8CLZ5xD+ZzhHp7Xqyu/p8piU9tz8Ee8KJnz36jx6kSVix4osn5yZ6QiFH
         59e/ZeSzQEaTpqbMq4yw3JMTnOllA0O59MIDrPTdfs9wf6hMdMkg+wHE1NAlgxbPUFAv
         Xb/kY33h6hih+ofVBjSMPjhgCFVWpT/2nuVtK3DaawWB927HA3HAssg8TmJEEmrykVFG
         Fv4A==
X-Gm-Message-State: APjAAAX/E7yt8n0GLSY9ZTkRLjeDVtO3o0jDd2Pfofp2YZOuG3U2RzuA
        Lys/Ze1FluO5NbPioFnSxBU0Uw==
X-Google-Smtp-Source: APXvYqzJLerY/k43OHwIVaiwNYn4guYcGyo1M1aaZ+k4SiKXSX8RWI41bTdRmjsTdpTncWtL1Ei5VA==
X-Received: by 2002:a05:6214:15d1:: with SMTP id p17mr19340829qvz.74.1568135682152;
        Tue, 10 Sep 2019 10:14:42 -0700 (PDT)
Received: from Thara-Work-Ubuntu.fios-router.home (pool-71-255-246-27.washdc.fios.verizon.net. [71.255.246.27])
        by smtp.googlemail.com with ESMTPSA id g45sm3400713qtc.9.2019.09.10.10.14.41
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 10 Sep 2019 10:14:41 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     edubezval@gmail.com, rui.zhang@intel.com, ulf.hansson@linaro.org,
        daniel.lezcano@linaro.org, bjorn.andersson@linaro.org,
        robh+dt@kernel.org, agross@kernel.org
Cc:     amit.kucheria@verdurent.com, mark.rutland@arm.com,
        rjw@rjwysocki.net, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 3/5] dt-bindings: thermal: Add generic power domain warming device binding
Date:   Tue, 10 Sep 2019 13:14:34 -0400
Message-Id: <1568135676-9328-4-git-send-email-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1568135676-9328-1-git-send-email-thara.gopinath@linaro.org>
References: <1568135676-9328-1-git-send-email-thara.gopinath@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding to define power domains as thermal warming
devices.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 .../bindings/thermal/pwr-domain-warming.txt        | 32 ++++++++++++++++++++++
 1 file changed, 32 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/thermal/pwr-domain-warming.txt

diff --git a/Documentation/devicetree/bindings/thermal/pwr-domain-warming.txt b/Documentation/devicetree/bindings/thermal/pwr-domain-warming.txt
new file mode 100644
index 0000000..25fc568
--- /dev/null
+++ b/Documentation/devicetree/bindings/thermal/pwr-domain-warming.txt
@@ -0,0 +1,32 @@
+* Generic power domain based thermal warming device.
+
+This binding describes the power domains that can be used as a
+thermal warming device.
+
+- compatible:
+	Usage: required
+	Value type: <string>
+	Definition: must be "thermal-power-domain-wdev"
+
+- #temp-reg-cells:
+	Usage: required
+	Value type: <u32>
+	Definition: Must be 2
+
+- power-domains:
+	Usage: required
+	Value type: <phandle>
+	Definition: reference to power-domains that match power-domain-names
+
+- power-domain-names:
+	Usage: required
+	Value type: <stringlist>
+	Definition: The power-domains that can behave as warming devices
+
+Example 1
+thermal_wdev: rpmhpd_mx_wdev {
+		compatible = "thermal-power-domain-wdev";
+		#cooling-cells = <2>;
+		power-domains =  <&rpmhpd SDM845_MX>;
+		power-domain-names = "mx";
+	};
-- 
2.1.4


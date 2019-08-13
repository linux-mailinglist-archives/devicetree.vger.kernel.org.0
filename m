Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2EC198BAB1
	for <lists+devicetree@lfdr.de>; Tue, 13 Aug 2019 15:47:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729161AbfHMNqw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Aug 2019 09:46:52 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:42471 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728933AbfHMNqw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Aug 2019 09:46:52 -0400
Received: by mail-pg1-f193.google.com with SMTP id p3so987967pgb.9
        for <devicetree@vger.kernel.org>; Tue, 13 Aug 2019 06:46:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=cHdPS6LfhQ0chTOP4Jgo7vkl2dbGuOfOJrvTrwDU67U=;
        b=zBgk4VX//4dk1T3BhqLSAMAWe1tDwqyu9zEyHnfwXMClq8bvZ8KpxxcdahTS+OvPWg
         ktSqGVOnKCdrrIHvxz8Hk13Ni8Ny9rB/WK/zIh1KCV2gBAcmCmBuVDdhutPw1X3G9FgK
         7WRy0jUjeipkxhRvznEl/0FItIb9XI2cwieYWuQ1ZrRLMFKyF30bNXeFo86aVuHSb3OG
         zZkDx5O4tYbHxVbzfierIdMi1Y1JqhjFQGFfSm7Q6QMRqmJeFEp9CmN3fr9Ugl/fmwcn
         23y103lPDsx/v4ScGLYtipqfWh5PNgGbjwRLL9hlMVRPUoEBqMEBTdyZOzAV2YuwWnLF
         ms9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=cHdPS6LfhQ0chTOP4Jgo7vkl2dbGuOfOJrvTrwDU67U=;
        b=BsH5HIYVX22tKlZQqkCSvxvYpqAaKVQOQZhvyOWSreQ9DCgjYGXGxxu4Jdn6lW1llI
         FQnRKtpZ4H+A+SkTA+ru6V+PgobHcoP5ewC9T7mr5lfRj+xDSgT4k7BZrgWsR0Hw0VC2
         ZjUDRT0i/rHY9zaYnREXreHopqRQoULzeXJAA5dnBPa4wV2IluioizkIy3lkIp6+eLgj
         K1E/ZFaJ8e10t1sPa2gV9Vb3OxIQU4YyNJPxlWrON1LxhjSdtc4KklzUdLBVmwTuSRcO
         XfYGrOV1qKbdcfVP4IwDdxGdkNfaLnkwcwXZzTdt/YLP1DFfXHZho3HJlUQcEJiCW1VI
         nKWg==
X-Gm-Message-State: APjAAAXoN2enIbrH2nBBFwz4JveFM1AQMfzVZs/gAJZncPBXwZXIWbpu
        bc0q2Uf09en3B4PG6PseckLTqw==
X-Google-Smtp-Source: APXvYqyDj1kNGKtmrHhfB2Wuc0ta9AuD5DhObEKkiBr2JixNIIEHOG+ML3Fg9vUceywtNMdWdgvjbA==
X-Received: by 2002:a63:fe17:: with SMTP id p23mr34436115pgh.103.1565704011820;
        Tue, 13 Aug 2019 06:46:51 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id x67sm114266432pfb.21.2019.08.13.06.46.49
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 13 Aug 2019 06:46:51 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     thierry.reding@gmail.com, robh+dt@kernel.org
Cc:     u.kleine-koenig@pengutronix.de, mark.rutland@arm.com,
        orsonzhai@gmail.com, zhang.lyra@gmail.com, baolin.wang@linaro.org,
        vincent.guittot@linaro.org, linux-pwm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: pwm: sprd: Add Spreadtrum PWM documentation
Date:   Tue, 13 Aug 2019 21:46:40 +0800
Message-Id: <f9d2c7cb01cbf31bf75c4160611fa1d37d99f355.1565703607.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Spreadtrum PWM controller documentation.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
Changes from v1:
 - Use assigned-clock-parents and assigned-clocks to set PWM clock parent.
---
 Documentation/devicetree/bindings/pwm/pwm-sprd.txt |   38 ++++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pwm/pwm-sprd.txt

diff --git a/Documentation/devicetree/bindings/pwm/pwm-sprd.txt b/Documentation/devicetree/bindings/pwm/pwm-sprd.txt
new file mode 100644
index 0000000..e6cf312
--- /dev/null
+++ b/Documentation/devicetree/bindings/pwm/pwm-sprd.txt
@@ -0,0 +1,38 @@
+Spreadtrum PWM controller
+
+Spreadtrum SoCs PWM controller provides 4 PWM channels.
+
+Required porperties:
+- compatible : Should be "sprd,ums512-pwm".
+- reg: Physical base address and length of the controller's registers.
+- clocks: The phandle and specifier referencing the controller's clocks.
+- clock-names: Should contain following entries:
+  "pwmn": used to derive the functional clock for PWM channel n (n range: 0 ~ 3).
+  "enablen": for PWM channel n enable clock (n range: 0 ~ 3).
+- assigned-clocks: Reference to the PWM clock entroes.
+- assigned-clock-parents: The phandle of the parent clock of PWM clock.
+- #pwm-cells: Should be 2. See pwm.txt in this directory for a description of
+  the cells format.
+
+Example:
+	pwms: pwm@32260000 {
+		compatible = "sprd,ums512-pwm";
+		reg = <0 0x32260000 0 0x10000>;
+		clock-names = "pwm0", "enable0",
+			"pwm1", "enable1",
+			"pwm2", "enable2",
+			"pwm3", "enable3";
+		clocks = <&aon_clk CLK_PWM0>, <&aonapb_gate CLK_PWM0_EB>,
+		       <&aon_clk CLK_PWM1>, <&aonapb_gate CLK_PWM1_EB>,
+		       <&aon_clk CLK_PWM2>, <&aonapb_gate CLK_PWM2_EB>,
+		       <&aon_clk CLK_PWM3>, <&aonapb_gate CLK_PWM3_EB>;
+		assigned-clocks = <&aon_clk CLK_PWM0>,
+			<&aon_clk CLK_PWM1>,
+			<&aon_clk CLK_PWM2>,
+			<&aon_clk CLK_PWM3>;
+		assigned-clock-parents = <&ext_26m>,
+			<&ext_26m>,
+			<&ext_26m>,
+			<&ext_26m>;
+		#pwm-cells = <2>;
+	};
-- 
1.7.9.5


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 419CE18C341
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2020 23:48:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727639AbgCSWsj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Mar 2020 18:48:39 -0400
Received: from mail-pg1-f202.google.com ([209.85.215.202]:41114 "EHLO
        mail-pg1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727505AbgCSWse (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Mar 2020 18:48:34 -0400
Received: by mail-pg1-f202.google.com with SMTP id t3so3220218pgo.8
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2020 15:48:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc;
        bh=p2FECenFo/SV+lvmBUFJN/N3tCfRxwr2b4eodVl25VI=;
        b=a3I+KiTG8nWWCWq5o/hbNf7tgyx9XDAThb0tz5gwUfh0lfIOPV14Y+uE5vbEhILmxN
         xkAUviA4XsZ6iaKNhkGwT+Asbp+hEu/fyIVBR8Zroy967ppdGOV9aVyvD8HVoKpZRXkI
         b7/axSYnJ87E4WNgdOeBRJS7oeBQbPBXSAijU+4JTuPtzhaKm6TifdtGeHdBKV+6nA5x
         /kfXfwsPxHTPKl28em94wM71Ug+hSPn26/Fh163ZsHYgliNWvAxA7ZIBhtp9zwBKnSuK
         k9x6fHhO8VJ7k9i159tiGWe/STUBqXq7Blv3A7H+ZZYf877JDX228pSNax2iTD2avlAW
         m57A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc;
        bh=p2FECenFo/SV+lvmBUFJN/N3tCfRxwr2b4eodVl25VI=;
        b=aPElTr2U60CN4L0Ql9oL+CNLBIVuT6mgCcTT7ar81vAx9dfOzQpj5OWJxYwZUqkXgc
         i83Hku51CK7i/9XtBUzNf/QXYBA/n+lu+4oQ+5bIdpyRHzftZi7QB5m6e6V43Vlv/HvT
         UzK0oT+3p/fz2/Ghx2LAEp2qO5e2Yh0ru9ZhPC4wcfUbbA3dbAULrlQkM/vYopW6Gtw8
         R1/7q+oTXWZn8y/QuFhJm8XjSz4rbZNQhSFrji+t6YWP6AmPUaAihnKioDUjyuEkLYnV
         aparkkW+djTo/GQVIQYg+ov2l9YEf8Uy7QypM9Pze4wAjlxi1m+vFFkizAU3SioSJ0S/
         V17g==
X-Gm-Message-State: ANhLgQ1f+Zi0qHprseyHbe6LD2MUffcykmU72v+VOBQvFm6R2bHoFMdl
        Ar+vv6uZNg3qMShU1tjm14K2qB+FYQ==
X-Google-Smtp-Source: ADFU+vsiwSXNqmafTIi8B+BiMHfBtFjBqB+UtENXanP1PQfB14qdA7ZVWXrhzSCXbwWiNFPLFow4n0qFDA==
X-Received: by 2002:a63:c54b:: with SMTP id g11mr5703406pgd.164.1584658111321;
 Thu, 19 Mar 2020 15:48:31 -0700 (PDT)
Date:   Thu, 19 Mar 2020 15:48:12 -0700
In-Reply-To: <20200319224812.202013-1-kunyi@google.com>
Message-Id: <20200319224812.202013-4-kunyi@google.com>
Mime-Version: 1.0
References: <20200319224812.202013-1-kunyi@google.com>
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH linux hwmon-next v1 3/3] dt-bindings: (hwmon/sbtsi_tmep) Add
 SB-TSI hwmon driver bindings
From:   Kun Yi <kunyi@google.com>
To:     jdelvare@suse.com, linux@roeck-us.net, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     Kun Yi <kunyi@google.com>, openbmc@lists.ozlabs.org,
        joel@jms.id.au, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document device tree bindings for AMD SB-TSI emulated temperature
sensor.

Signed-off-by: Kun Yi <kunyi@google.com>
---
 .../devicetree/bindings/hwmon/sbtsi_temp.txt       | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/hwmon/sbtsi_temp.txt

diff --git a/Documentation/devicetree/bindings/hwmon/sbtsi_temp.txt b/Documentation/devicetree/bindings/hwmon/sbtsi_temp.txt
new file mode 100644
index 000000000000..4020f075699e
--- /dev/null
+++ b/Documentation/devicetree/bindings/hwmon/sbtsi_temp.txt
@@ -0,0 +1,14 @@
+*AMD SoC SB-TSI hwmon driver.
+
+Required properties:
+- compatible: manufacturer and chip name, should be
+	"amd,sbtsi",
+
+- reg: I2C bus address of the device
+
+Example:
+
+sbtsi@4c {
+	compatible = "amd,sbtsi";
+	reg = <0x4c>;
+};
-- 
2.25.1.696.g5e7596f4ac-goog


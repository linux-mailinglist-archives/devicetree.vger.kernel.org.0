Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D7820900E8
	for <lists+devicetree@lfdr.de>; Fri, 16 Aug 2019 13:44:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727007AbfHPLon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Aug 2019 07:44:43 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:40639 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726565AbfHPLom (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Aug 2019 07:44:42 -0400
Received: by mail-pl1-f193.google.com with SMTP id a93so2366098pla.7
        for <devicetree@vger.kernel.org>; Fri, 16 Aug 2019 04:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=Dgm6VT8fTmmCb1jZnEdSW+leRgGmCydPnLOI7W3wDlI=;
        b=N1niofBkE6D2I0syRjQZNDQD+QG1NnGlLTO1FvgUnskj2HhRzVPZMqKp2GO/Fq7oRG
         sBe7bvSUvHXuQMg7nRGg4MpN06IcAgnktpN/UMDveI7dzz/f7D7KfwaZH+gv0VFThGqb
         jFGURPxxDqKA0rjA9t0tqca11eXl1q5DHLf84jTMopb3VMsKKRAovR+78tmKDANXnc+T
         pjocQbXPaeqR3MvJY8Dl2LJ1Xkht890homiEa5+U7wlMQyL7TIxV9YzCpC7OK2a5tY6s
         nBxhdl1gXFuIMpfEiqdKEMM9Iu+aYK9YwONzgLAifR1fyewFXcgsa2d8YelJxdb/7S4t
         FV9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Dgm6VT8fTmmCb1jZnEdSW+leRgGmCydPnLOI7W3wDlI=;
        b=i1ogt5hOnxVQRfD7serYqoCCk/rs2lQIk+FKtkQa3xXAd6DH+rjcVORUO3JhfoaMTx
         eYxduZoVnplndWKxZeb9M2pCADGLbjbskfA/smR+J831cHXRDHSDaSHJ3y64VavsZQbQ
         P22tHld0y6+XWzkuri1otb6uEz26kVxLtZM33+4L7LGEz715xidcWqNYsqD5oc9/GWbN
         ctYW9NbNUaPEAgiarb63U5pVdElqdyBIGCRKCW/3KNFcMSZdQX6g3CnZYN9xXFjFleVT
         282J9tbpjwCsaQGKwXHDa4cnOgQrrNw5dHgCxqd/hc3w5XYdCj2ZTMgpoV9oYZO4tC97
         uToA==
X-Gm-Message-State: APjAAAWqg1aTNkAZL3J36+1CeTN+TWKHj8WlSmj83l68eVzE1nl6DDlp
        Zt65m/BMVzldTDfl3dTQFJ6abQ==
X-Google-Smtp-Source: APXvYqzvj74KbwruABpcHy06jN1+C098iteIL/Dmwbg2X2HoCetV/Ni0GGlOmWZEv91KlAvEugd16Q==
X-Received: by 2002:a17:902:5a1:: with SMTP id f30mr9045760plf.64.1565955882050;
        Fri, 16 Aug 2019 04:44:42 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
        by smtp.gmail.com with ESMTPSA id v22sm4693952pgk.69.2019.08.16.04.44.39
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Aug 2019 04:44:41 -0700 (PDT)
From:   Baolin Wang <baolin.wang@linaro.org>
To:     srinivas.kandagatla@linaro.org, robh+dt@kernel.org,
        mark.rutland@arm.com
Cc:     orsonzhai@gmail.com, zhang.lyra@gmail.com, baolin.wang@linaro.org,
        freeman.liu@unisoc.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: nvmem: Add Spreadtrum eFuse controller documentation
Date:   Fri, 16 Aug 2019 19:44:16 +0800
Message-Id: <80b6cf41d2dc2660a710e611e06faae753e2e09a.1565955745.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Freeman Liu <freeman.liu@unisoc.com>

This patch adds the binding documentation for Spreadtrum eFuse controller.

Signed-off-by: Freeman Liu <freeman.liu@unisoc.com>
Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 .../devicetree/bindings/nvmem/sprd-efuse.txt       |   39 ++++++++++++++++++++
 1 file changed, 39 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/nvmem/sprd-efuse.txt

diff --git a/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt b/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt
new file mode 100644
index 0000000..96b6fee
--- /dev/null
+++ b/Documentation/devicetree/bindings/nvmem/sprd-efuse.txt
@@ -0,0 +1,39 @@
+= Spreadtrum eFuse device tree bindings =
+
+Required properties:
+- compatible: Should be "sprd,ums312-efuse".
+- reg: Specify the address offset of efuse controller.
+- clock-names: Should be "enable".
+- clocks: The phandle and specifier referencing the controller's clock.
+- hwlocks: Reference to a phandle of a hwlock provider node.
+
+= Data cells =
+Are child nodes of eFuse, bindings of which as described in
+bindings/nvmem/nvmem.txt
+
+Example:
+
+	ap_efuse: efuse@32240000 {
+		compatible = "sprd,ums312-efuse";
+		reg = <0 0x32240000 0 0x10000>;
+		clock-names = "enable";
+		hwlocks = <&hwlock 8>;
+		clocks = <&aonapb_gate CLK_EFUSE_EB>;
+
+		/* Data cells */
+		thermal_calib: calib@10 {
+			reg = <0x10 0x2>;
+		};
+	};
+
+= Data consumers =
+Are device nodes which consume nvmem data cells.
+
+Example:
+
+	thermal {
+		...
+
+		nvmem-cells = <&thermal_calib>;
+		nvmem-cell-names = "calibration";
+	};
-- 
1.7.9.5


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04150292907
	for <lists+devicetree@lfdr.de>; Mon, 19 Oct 2020 16:10:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729305AbgJSOKc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Oct 2020 10:10:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38464 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729404AbgJSOKa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Oct 2020 10:10:30 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3FF6C0613D0
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:10:28 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id gv6so5788854pjb.4
        for <devicetree@vger.kernel.org>; Mon, 19 Oct 2020 07:10:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1yRFSCl/mRcUkS6OvmVba08bS0ib90mEnvumV93631A=;
        b=PpbzUn3bSYybM/B+P67kwVSTJcSculclJ5cYp+qp02sY9e/t2qzNdkZoyBhy1uYr/G
         ihQHQwNUe/HNv99lgh72wXRgzmFk0PD3Jaxkj4mdBrs6csNqGxPob+KkU30UKCpyayu4
         HFSlbcGJutFyRy5lWg97w43r3cIY7W+gesEZ4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1yRFSCl/mRcUkS6OvmVba08bS0ib90mEnvumV93631A=;
        b=midbgbqnmH1rhft1WRkSpDSLa5RFV6ZevCIZCGyyz2TJn+wCD0oYP7ZFMySvhXhpDY
         r6wJhaxUKM7fIaavb9McNcZFp64kyHyCfEPflD6JjKFK5KjQvQToBdwiQnRszwD8AEPL
         JFgzvoH5k3rGJxtSlO3P5ElMju/4JRt6WgvfVuwbBVrF+l/L7+Uz3Dsvdajirim7oSYV
         W6PXu3hQtxrUQGzrEPrNNPm9JqtAln09eXzZ1zclvBs6wXx/A+/zS1AwGpH+tBpamw6o
         G2cXhgc3hgBNK4v/OoaSN87l7uQfsKWD+DcpcuMs0gh4i7nZkJtlwLJw76DcewSa/ypn
         44+A==
X-Gm-Message-State: AOAM530KBfqfBN+x0eOzkEaC48GxyGOAugtNcUl/Ub5a7S1QwDjSN24q
        R3sbL9j1iuxgGZnCCt7Gcn3Jwg==
X-Google-Smtp-Source: ABdhPJyICwRj7p9WMfp/BM1uvsfQPI+SYkKUzGl5TcvdYBXqf14o3hbbIsviNl3qL3r4B3WvD+HnFQ==
X-Received: by 2002:a17:90a:3e4a:: with SMTP id t10mr17389449pjm.151.1603116628488;
        Mon, 19 Oct 2020 07:10:28 -0700 (PDT)
Received: from shiro.work (p1268123-ipngn200803sizuokaden.shizuoka.ocn.ne.jp. [118.13.124.123])
        by smtp.googlemail.com with ESMTPSA id 131sm78999pfy.5.2020.10.19.07.10.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Oct 2020 07:10:27 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linus.walleij@linaro.org,
        Daniel Palmer <daniel@0x0f.com>
Subject: [PATCH v2 5/5] ARM: mstar: Fill in GPIO controller properties for infinity
Date:   Mon, 19 Oct 2020 23:10:08 +0900
Message-Id: <20201019141008.871177-6-daniel@0x0f.com>
X-Mailer: git-send-email 2.28.0
In-Reply-To: <20201019141008.871177-1-daniel@0x0f.com>
References: <20201019141008.871177-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fill in the properties needed to use the GPIO controller
in the infinity and infinity3 chips.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
---
 arch/arm/boot/dts/mstar-infinity.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm/boot/dts/mstar-infinity.dtsi b/arch/arm/boot/dts/mstar-infinity.dtsi
index cd911adef014..0bee517797f4 100644
--- a/arch/arm/boot/dts/mstar-infinity.dtsi
+++ b/arch/arm/boot/dts/mstar-infinity.dtsi
@@ -6,6 +6,13 @@
 
 #include "mstar-v7.dtsi"
 
+#include <dt-bindings/gpio/msc313-gpio.h>
+
 &imi {
 	reg = <0xa0000000 0x16000>;
 };
+
+&gpio {
+	compatible = "mstar,msc313-gpio";
+	status = "okay";
+};
-- 
2.28.0


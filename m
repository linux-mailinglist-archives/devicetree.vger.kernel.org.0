Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 740309242F
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2019 15:02:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727763AbfHSNCe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 09:02:34 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:37437 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727758AbfHSNCb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 09:02:31 -0400
Received: by mail-pf1-f196.google.com with SMTP id 129so1145323pfa.4
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 06:02:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=I5oxOMlmoNOBbAK8yXgi9UgRNTFhNomtkzu3X2QO8e9IumF8D/Lpl6NMi/w1GZX9Sf
         ZK5Byq71nZ2OzppGvc/p/9fED/etHr5cTRub8ov86DfOJWPaLZOe1KVajuiPObzWDsR6
         LKJy5pR8DRMaByo2/gse9aaVTDzG31cYw9Fw5DlEoIw89cnqiwqGHVFu17YvBt9wrKmC
         3zA7TriDC5WL4umb/J4R1JektpkfFtoX+dcJvA+bh/0sihHUaITD5cKPOFKmYqXFpwQY
         jqHuiPHRSm+X1JFjqWLu1emfp3f2lpIM1sjpcCFQBb68yXVS83d0gRXS4lU4bHtqYQzX
         GXww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=pkrjVfDB64kEfcObUHHivFPmamuISWTFa98j2DJUVXW3PRPnqESVFURKjw4NmCmEba
         yRHwZ2Q0KlZuoSpsdGvfDJH7R38br317EzfOE3lkJN9iOxp2bed5J4EmAiW5ZipaMTsG
         pU3FVJPEr7XJN6ibSG7+lhjVTeOM9MefIevIhLhdm+Cvbn4YUso8SiElpfNp4X6TMnQ+
         VlrAmxtiyo+aV6JWSgSb6WqRXw4gkrxbZm03oV4BHDRmrPX7X3Wzi7sEzyMu9AUWwg5x
         ytnb4n+0TV39+T8A4Ra9WrksXgNIKijMcsVKKVfUkRWSOKF2yfKgmYXMHGzASqPwwmGh
         6IpQ==
X-Gm-Message-State: APjAAAW8IYHUIc94ol+7yeOw8T264aG9c3WeKJC1KmXrdm7QHwArP+mN
        0xT1BkAHOOHkp24kuo4FYkeU
X-Google-Smtp-Source: APXvYqz3130G3+QPHySpMazLaiDQvFYHTuB7P2bgiUvNOFEeeEsILzEH24tPP6zr7ff0S/wJPaVKPw==
X-Received: by 2002:a65:64c4:: with SMTP id t4mr18405715pgv.298.1566219749465;
        Mon, 19 Aug 2019 06:02:29 -0700 (PDT)
Received: from localhost.localdomain ([103.59.133.81])
        by smtp.googlemail.com with ESMTPSA id l123sm20626464pfl.9.2019.08.19.06.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 06:02:28 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date:   Mon, 19 Aug 2019 18:31:43 +0530
Message-Id: <20190819130143.18778-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
References: <20190819130143.18778-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MAINTAINERS entry for Bitmain BM1880 SoC clock driver.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 MAINTAINERS | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 997a4f8fe88e..280defec35b2 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -1503,8 +1503,10 @@ M:	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
 L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
 S:	Maintained
 F:	arch/arm64/boot/dts/bitmain/
+F:	drivers/clk/clk-bm1880.c
 F:	drivers/pinctrl/pinctrl-bm1880.c
 F:	Documentation/devicetree/bindings/arm/bitmain.yaml
+F:	Documentation/devicetree/bindings/clock/bitmain,bm1880-clk.yaml
 F:	Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
 
 ARM/CALXEDA HIGHBANK ARCHITECTURE
-- 
2.17.1


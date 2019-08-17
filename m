Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 99A769124D
	for <lists+devicetree@lfdr.de>; Sat, 17 Aug 2019 20:37:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726463AbfHQShF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Aug 2019 14:37:05 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:39380 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726447AbfHQShE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Aug 2019 14:37:04 -0400
Received: by mail-pg1-f194.google.com with SMTP id u17so4580045pgi.6
        for <devicetree@vger.kernel.org>; Sat, 17 Aug 2019 11:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=dqguwweGv8m3jWuayl4ZIpq5unEXOopx/JAA/LfCxYiy9ROeW2F9g9c+65zQR5QPwB
         9CIN004auoeyYJTCT7vFNVgWqtJCaKHi3t/sSswuwQlv2+IOVxbQltyLVHe962wvKUnl
         JS2iIPVwDoaIkZ55RK7mxUwoOOLZxHpjnwrryQIcrznqxk7Ye1SdNSzfCqrI2mTtCi1C
         EKm3qhWNnQVYpGM61n/jCF3PYQcBnnyAfPOoOFFZK5UcM6Fm8/swH/zKlrhrqMenB9NG
         J3KtLdHMGMfVvdZUq1ikT1b8Eaf3EfuVQaaGP5Hqhfu1M83iWm2uOMVn/N8i8p0pyaIC
         GaIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=Uk0QOydKQYrnSSlToJ1Hhh9qGEd0i17kBdazR5+Lba9PPYOqnUNL9Yqa1gi39cZtTG
         GL7eLdRK0Bud4rN2xxZD6g/d5PuCL70qupz8/naywD7lG0orirnkDZyFwsa7czmrIpb8
         UsIiuYoeUvumvS4Dw9jFTuKZPo9QrJTfmIfxHr6nhRxmzR0kQIWMFvCpmIRqSnBMYtUw
         2d4NlkUmZCzg2KYgogaEtSBLmYUbi4PUTo9YGSFOpOhNzmEM3B+bKSF9iLVpDdIUvyr0
         V4es6RHKxX7TFvUT2D8m3qqSxCFL26ls0smFXoPV7uVHYrG2nJVMOzBAyHalwg7mJr4v
         7L5A==
X-Gm-Message-State: APjAAAV6TW51HcE4Izgo6OP0rzz3TF8C/+YZQ+Ca4XKGKUZvlerQk9L2
        1EijypFOgkflVvs+yssF9Yus
X-Google-Smtp-Source: APXvYqyNYDKZVgPbO6xvWKY8Qk0vt2+wG3ehY9XlYnpkjyxRyqxyasCLT5TPNa25fa8LpeGDa6KhLA==
X-Received: by 2002:a17:90a:2629:: with SMTP id l38mr13445995pje.71.1566067023939;
        Sat, 17 Aug 2019 11:37:03 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:909:4559:9185:a772:a21d:70ac])
        by smtp.gmail.com with ESMTPSA id 33sm8588640pgy.22.2019.08.17.11.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 17 Aug 2019 11:37:03 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 5/7] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date:   Sun, 18 Aug 2019 00:06:12 +0530
Message-Id: <20190817183614.8429-6-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
References: <20190817183614.8429-1-manivannan.sadhasivam@linaro.org>
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


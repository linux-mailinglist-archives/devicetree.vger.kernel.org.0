Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 62D15B3EAB
	for <lists+devicetree@lfdr.de>; Mon, 16 Sep 2019 18:16:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389876AbfIPQPl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Sep 2019 12:15:41 -0400
Received: from mail-pf1-f194.google.com ([209.85.210.194]:44545 "EHLO
        mail-pf1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2389857AbfIPQPk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Sep 2019 12:15:40 -0400
Received: by mail-pf1-f194.google.com with SMTP id q21so167455pfn.11
        for <devicetree@vger.kernel.org>; Mon, 16 Sep 2019 09:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=GKCX6scHAe3UgbcWbSYj9UhGEhnAp5igFirmxVhIfdKD8kUhLG7HkdCa3KCBbyZhAH
         rIqB/2HAR4MJMVczIAFlhjR5sVZ7da7ARxPGdNx/3HjK3U9OsDPIaESzw/6d3XA+XLiw
         rWOES6DHJZCepE4RMrM71uDIgj/gOim8P4/CxBzgQmAlfHMFPDPYH1EMw385Vhmj7kRg
         xxr0K3OY3BQpgGKupuHIJxDAqQ6On0B7Q+4+zFXLCMzZ2J14y38HeSZbZ4XNO9nZYtZE
         gB0CKeHt6XChPihg5meAzZLbTLYT3C1+k31AiUqHJ15NKzADZwQ2mAOng2KtEJdDfpUX
         cdTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=K+pJPk2iXl0LixGuiysFHZxmO1vjBGFGOdrJivWtPCQ=;
        b=umwP0vd1XT8AtkJaL8LlKt7J4M6pQ3rcH7fUnLIse8HBHj4eIpCsHNo/T8Yn5qSjgv
         XiX0YVmWnlhrZuPc+zIq4AuOPtVEKX2V8yLmDROjmQgdS6AR0ZwxqtTT6x3CEj2uambf
         w3wZbs+3n8DuAA+oZ6MmDEvIYbUOhiTDE8L0oq3CD0Ny7ptmCl4Sh2s+BvuHIb/1k3sT
         SCBvMc+y9fpH2qSgI/qMKBUiZz55DnqGcUows5/bb6/JGj+KQo1NGJFPZHqNZH0+huMk
         DXsHZCd8wlJUtXYOi43xSTPMtk2j2oZwHHm3XbBt/zOgmze5/weekm23Kp11JY/cw3Mk
         8hLQ==
X-Gm-Message-State: APjAAAWBqaPl1B2d+BpbJOtUaFRi3G3eaQwxtwA+9CCmERxF5J5kVYe/
        VYoEqiKdCdjxqX5sCfwhSm49
X-Google-Smtp-Source: APXvYqwaTIjGBFw6rlJrBeKVPsJzm0fIpIu190y0N7zwgbmlpXO1k7N9rTebjfrkX62HrT6vruUWJA==
X-Received: by 2002:a65:57ca:: with SMTP id q10mr877pgr.52.1568650539809;
        Mon, 16 Sep 2019 09:15:39 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:90b:91ce:94c2:ef93:5bd:cfe8])
        by smtp.gmail.com with ESMTPSA id h66sm614134pjb.0.2019.09.16.09.15.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 09:15:39 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     sboyd@kernel.org, mturquette@baylibre.com, robh+dt@kernel.org
Cc:     linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        fisher.cheng@bitmain.com, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v5 8/8] MAINTAINERS: Add entry for BM1880 SoC clock driver
Date:   Mon, 16 Sep 2019 21:44:47 +0530
Message-Id: <20190916161447.32715-9-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
References: <20190916161447.32715-1-manivannan.sadhasivam@linaro.org>
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


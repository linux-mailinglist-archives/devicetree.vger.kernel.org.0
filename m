Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8DE5022EDD
	for <lists+devicetree@lfdr.de>; Mon, 20 May 2019 10:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731064AbfETIbW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 May 2019 04:31:22 -0400
Received: from mail-pf1-f193.google.com ([209.85.210.193]:44891 "EHLO
        mail-pf1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730636AbfETIbW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 May 2019 04:31:22 -0400
Received: by mail-pf1-f193.google.com with SMTP id g9so6841959pfo.11
        for <devicetree@vger.kernel.org>; Mon, 20 May 2019 01:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=YDxVfW0Drk7B/WkdvCIQOYRuq9nRhmzNbEq0alSDlGc=;
        b=eh592mysWWaYmUlTdrJu5JmfPhAPRF044bjHqVn0RRF+Cc2Qvpf8BdsBT/qFoMgXr2
         5WYW6pVaaaLsonApbGcCNPZ64vDP375PnN9spMsi/O/4+77Pa5K5j+U0G1JW8Hdlyk26
         ZaQGBEK8AmtDo3XTJyJ/tr1m7f1jRs8XBBzfie8q34ToPxL2G5ZgqZta6ZbrlNa0QKBP
         9+5BtOhM+2XG1ULJyQ48cve2UX73EL2Pf0oCJiVjDqWl2NMnFFNFgylX31O0ATpjy7It
         F0a3ZSGbmOfL7Ps8dHG3idQuEu8vAl7OWF/agtQUTaHdNgLG8oZuNVZB47QJDzevNA+4
         Zztw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=YDxVfW0Drk7B/WkdvCIQOYRuq9nRhmzNbEq0alSDlGc=;
        b=LmV+Bfd8Ua9aAKEtB/LGw7MuGXe94mzi3LNU+dq6hvDUEDXcaRBI2ycVSujrdByb/A
         QAhtm66bRFGyhTQ/4kQU51n6nAMOLg9Y7X5uoNUYMZZJR4/i2JBt92XUcYyUT4jOcyeF
         nxO0MTP0tV5ZXXQZsMwnQ82UFIglWZ6NXmLxMbi2oRr52Sn3FshVxpnmf0qkezl5MWQi
         fKmUTS9bO6Gy1Xs15P8rJPrmsH/4sR4C5vGrxlUANwKM6pn7N5eShX0Utbj6osVxPQQO
         UkS6LpkUQJhDGEahxoG3ptOHHHJhZiWqtUBTqi/JC87JbJ4zIBs8fvAmjKUcgbFZEElX
         SLZw==
X-Gm-Message-State: APjAAAXlEJXeIgXYiGO+ugszAU6PNKxHZFglIeBgmh9kgPeme+Vwx9Le
        Z4NoxQV6ycEYNY2IUbfRng1A
X-Google-Smtp-Source: APXvYqwIB4PznKqCQ1cB5xDX9ohSxJ3Q8ajVmP/fHvwxtLD7sXxbiRog+BtNITGhoESjpgVTOlJXAA==
X-Received: by 2002:a63:7909:: with SMTP id u9mr67807558pgc.223.1558341081560;
        Mon, 20 May 2019 01:31:21 -0700 (PDT)
Received: from localhost.localdomain ([2405:204:7203:2717:7d22:7fdb:b76e:242c])
        by smtp.gmail.com with ESMTPSA id s72sm24068220pgc.65.2019.05.20.01.31.17
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 May 2019 01:31:21 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     linus.walleij@linaro.org, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        haitao.suo@bitmain.com, darren.tsao@bitmain.com,
        linux-gpio@vger.kernel.org, alec.lin@bitmain.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/5] dt-bindings: pinctrl: Modify pinctrl memory map
Date:   Mon, 20 May 2019 14:00:57 +0530
Message-Id: <20190520083101.10229-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190520083101.10229-1-manivannan.sadhasivam@linaro.org>
References: <20190520083101.10229-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Earlier, the PWM registers were included as part of the pinctrl memory
map, but this turned to be useless as the muxing is being handled by the
SoC pin controller itself. So, lets modify the pinctrl memory map to
reflect the same.

Fixes: 07b734fbdea2 ("dt-bindings: pinctrl: Add BM1880 pinctrl binding")
Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 .../devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt    | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt b/Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
index ed34bb1ee81c..cc9a89aa4170 100644
--- a/Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
+++ b/Documentation/devicetree/bindings/pinctrl/bitmain,bm1880-pinctrl.txt
@@ -85,9 +85,9 @@ Required Properties:
                   spi0
 
 Example:
-        pinctrl: pinctrl@50 {
+        pinctrl: pinctrl@400 {
                 compatible = "bitmain,bm1880-pinctrl";
-                reg = <0x50 0x4B0>;
+                reg = <0x400 0x120>;
 
                 pinctrl_uart0_default: uart0-default {
                         pinmux {
-- 
2.17.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AF4321481A
	for <lists+devicetree@lfdr.de>; Mon,  6 May 2019 12:05:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726118AbfEFKFw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 May 2019 06:05:52 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:37650 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726304AbfEFKFv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 May 2019 06:05:51 -0400
Received: by mail-pl1-f195.google.com with SMTP id z8so6133219pln.4
        for <devicetree@vger.kernel.org>; Mon, 06 May 2019 03:05:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
        b=kaM5lSuLI0FV3PRZ8stKKlOCGIigBQ3ofdGJObwDHHSCL5UEwGsdcoi3yhbvo6H/5K
         ZIBp/fx/ZM9jarokbi4rfhTl4Skw9U5+/R9qFky+M3PdsEOYnGSaJXlrOZefGTweIRIS
         IK/Nm56I3yTXFWjf3St7nh87hpkbs/X2CHfqmE0kDWIhIkuY6gTQdVZWLTgbiM07MXJR
         Qt8Lq93vAC86lCeyQjRjUu9vs4reNp0Kcrw1V70NYG4IkpRGqX27lvJCN4b5dAOCQDds
         jyxaFs3H8ep+9+Kp4cjj5sxxQm0pcB/T977glnoYh22pxFsCyq61z3UEAgvPS9Xg129Y
         bvmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=J11CAk6hX0rsSVl1UifJnPX7sfZSPwS6EsqX4Zx/yUk=;
        b=F7ZYE1tKSbGXM8SMc0WHXe5IwLv+NqwmaFeQLVm1qaVYyyGPcYp/H4l+Jqzd2C1CWg
         RpJKs9CUpdqK+M9yC1eL1mslmah4M3hkLxc8UyEk5k+1sCbV3SVSw+vOPRooxDQQ9r2a
         yAQo8rG7nXvVpo1gVET/DmAMLmKtXBfq8XM+SWCsWSasrd/mwA/ckpaVHisfbuCqU66j
         G3w4M63qEduss78NW/RCkNg7Btki+7v2v7uxSv7X/6YQxoluJlASQBKRYFH9GacjdYlS
         dFbs7zW3NVml/+4y/lKsKa7UZUOwexlAXKPrqul39PsVlpFlLfjkw069MnqWG10iWLSz
         YDpg==
X-Gm-Message-State: APjAAAVHV4QDnqNaHpSSHVf0IpL1XdzVKoGhs3Z8m5nO3DYmPA6MQVO7
        tGZ2T8spBntqv1a6YO/7ojux
X-Google-Smtp-Source: APXvYqz3YRJ9CGw5YQkYfcQtat0QM4RY2d72UCJBxq6uSXcYbbBu1tSi1wsMToVYUR4UT9LkO41+QQ==
X-Received: by 2002:a17:902:be09:: with SMTP id r9mr31239391pls.215.1557137151415;
        Mon, 06 May 2019 03:05:51 -0700 (PDT)
Received: from localhost.localdomain ([2409:4072:611b:55a4:e119:3b84:2d86:5b07])
        by smtp.gmail.com with ESMTPSA id c137sm16229653pfb.154.2019.05.06.03.05.46
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 May 2019 03:05:50 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     mcoquelin.stm32@gmail.com, alexandre.torgue@st.com,
        robh+dt@kernel.org
Cc:     linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, loic.pallardy@st.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 1/3] dt-bindings: arm: stm32: Document Avenger96 devicetree binding
Date:   Mon,  6 May 2019 15:35:32 +0530
Message-Id: <20190506100534.24145-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
References: <20190506100534.24145-1-manivannan.sadhasivam@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document devicetree binding for Avenger96 board.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.txt b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
index 6808ed9ddfd5..eba363a4b514 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.txt
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.txt
@@ -8,3 +8,9 @@ using one of the following compatible strings:
   st,stm32f746
   st,stm32h743
   st,stm32mp157
+
+Boards:
+
+Root node property compatible must contain one of below depending on board:
+
+ - Avenger96: "arrow,stm32mp157a-avenger96"
-- 
2.17.1


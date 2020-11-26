Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F2DE82C50D0
	for <lists+devicetree@lfdr.de>; Thu, 26 Nov 2020 09:57:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389083AbgKZI5Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Nov 2020 03:57:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729344AbgKZI5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Nov 2020 03:57:25 -0500
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com [IPv6:2607:f8b0:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A69AC0613D4
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:57:25 -0800 (PST)
Received: by mail-pf1-x443.google.com with SMTP id t8so1057728pfg.8
        for <devicetree@vger.kernel.org>; Thu, 26 Nov 2020 00:57:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=aMxUrmRGx+y3NjZPjFrWddmFD+gsX++Ce0FYPnjlkxg=;
        b=OiW6GzvmiuKkoLaqQWM9z1gn+0abOqn1aNE+dGD4U8KlXEput0gbHsFwlMHRTDMZSc
         Ejm8oxWCB34DrtOcfOS21SvZZteasv5ThHqDdmZoCxteBq6L28Zhs4mnzTbQSTswkQVQ
         2JFglFvMzV5j38qKkatgudRvvub7zJl73Kjy2AanZxjcxwXFm7PqHztUNecoEqgs8jNk
         1gowIElSJeUNQ0kQKvLvHdYpOjDhEhNykhr/uhmFDRImVZ6rK3R+31DtIHd1DIjnP86F
         OiG7W8bbNh5yZSYjU5kKwp0vlOswI/Gt4XkKKSj5P3qcYrRC6gULiwOKwos3k1rgb4xg
         t69Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=aMxUrmRGx+y3NjZPjFrWddmFD+gsX++Ce0FYPnjlkxg=;
        b=lOz+sHjbymnh6GBPhgRS2GQ4uEfnY2bcyU4g3GK3uSm+9DV+9bXYN3Xf1jhn1Yex4A
         b5VUMwkPvAXRzy8oJSwfcnfmF3PskWuhDDVQrcAQ2o1NsA+cFXnBwzD1HQ268yPm1xXm
         z4al49rGmDC6wFIRAlwTesW54CrTo0T6TtKDg5VfPri/B91OBJ27roJLn0g4zD+i16Tv
         a0QEHmzXXoED5wxkdmCe/UDpV3H4cPgI7DtyUHc/eczukikhBqPfMAKGeuvPq4Mq9kqa
         A4H6xp3fVjRX7Eu+JCqXbSAWNth7xr5TbWZHZtael1u6o8WfuNVJHenFYY0B3/O0r9ok
         62Kg==
X-Gm-Message-State: AOAM530yNS1+SJ6B+ua2g0JVKOwqBly78CEtXIJgZcyRftdZ7BCT9/iL
        8a0xNq+lA9su7QhqhW/EEWLW
X-Google-Smtp-Source: ABdhPJxYOrYdgbhzUl+CCPWqsQZhcQ6M1BDB6k4vk0lPomfm+IUwdVrGTdkh6Eym3uZYklFC/U9SgQ==
X-Received: by 2002:aa7:972b:0:b029:18b:89f:df0 with SMTP id k11-20020aa7972b0000b029018b089f0df0mr1893902pfg.39.1606381044561;
        Thu, 26 Nov 2020 00:57:24 -0800 (PST)
Received: from localhost.localdomain ([2409:4072:6e95:f2a:3996:9d7f:e389:7f7d])
        by smtp.gmail.com with ESMTPSA id e29sm4025603pgl.58.2020.11.26.00.57.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Nov 2020 00:57:23 -0800 (PST)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     miquel.raynal@bootlin.com, richard@nod.at, vigneshr@ti.com,
        robh+dt@kernel.org
Cc:     bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, sivaprak@codeaurora.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH 1/2] dt-bindings: qcom_nandc: Add SDX55 QPIC NAND documentation
Date:   Thu, 26 Nov 2020 14:27:04 +0530
Message-Id: <20201126085705.48399-2-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201126085705.48399-1-manivannan.sadhasivam@linaro.org>
References: <20201126085705.48399-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Qualcomm SDX55 uses QPIC NAND controller version 2.0.0 with BAM DMA
Engine.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/mtd/qcom_nandc.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/mtd/qcom_nandc.txt b/Documentation/devicetree/bindings/mtd/qcom_nandc.txt
index 5c2fba4b30fe..a971db361678 100644
--- a/Documentation/devicetree/bindings/mtd/qcom_nandc.txt
+++ b/Documentation/devicetree/bindings/mtd/qcom_nandc.txt
@@ -8,6 +8,8 @@ Required properties:
                             IPQ4019 SoC and it uses BAM DMA
     * "qcom,ipq8074-nand" - for QPIC NAND controller v1.5.0 being used in
                             IPQ8074 SoC and it uses BAM DMA
+    * "qcom,sdx55-nand"   - for QPIC NAND controller v2.0.0 being used in
+                            SDX55 SoC and it uses BAM DMA
 
 - reg:			MMIO address range
 - clocks:		must contain core clock and always on clock
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 248E559833D
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 14:41:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236846AbiHRMlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 08:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45700 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244680AbiHRMlo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 08:41:44 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A025CAE23A
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:43 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id r14-20020a17090a4dce00b001faa76931beso4627378pjl.1
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 05:41:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=KS/0D379Yt/MxTWkSlpI7Yl6aGrINZAstEPe80DtsmY=;
        b=nRAVg5pBUodD6SIKXXj4VD0TQM3UPFG+sRCc9Lt/jAgjNw9PnhzR8uEyJ5cLtzO9mM
         jdsMCe57Ef7y6TXIAKukPn4rLwtSzleyOP/Rg/olqT40zOGJM2LloVPTgpeCxbAsU2GK
         l86It6+nB5fhijboNnrxXyNgsZGYYlqT3VtT8EKWWEPS9g7ioMrKTfIapuJo907kfFfB
         WZqtzmNyBgxaFV1DlI6ofh/JzqqD8mCMbpft63y6iNGAHoj73OIm4l9kbj8XHRmT9lxH
         cSVT80r97tBJO4mROxEWXdZ+/sx3qPZlWVT7CAaORaGsBkisktWN84btQ0ZqwS9camk9
         lupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=KS/0D379Yt/MxTWkSlpI7Yl6aGrINZAstEPe80DtsmY=;
        b=ivZumoSmpdprPnamWKMjcBkz2uUpiJ8cGmgmGBX45z6a+A89uyXN+bqOm1MBDyhMgN
         s3v/EDYwXXgnXzWv7curjs03f9Pr9CN30O0FQqvaNHY2oWunqLldo1tvtzv7M0XpNtRE
         kbdqbDzE6sxci01ss61Fqc+1Mqm6u1/9oa1+mcADGSQ+IUY+SrEPnRlU/opkyUYqyjJf
         83F7tedXqnsKBvp5oKykrBgcqSTxb27TsHCDjvTKn9HyinV1ZzghzEp11BjpM4jotBjP
         4ZT0o0OmCVNJ66l43OSuDaLyQB9gZJylZd8JD2NEQ3T35dDvDUE8yDfQSa8i10HBf+7k
         163A==
X-Gm-Message-State: ACgBeo2cIGGy4BKHf7PTGJm63nE42yUU5fWnJxVNcHDPp97vYwaZKdyt
        36fU299XUS5gyYJZI2Mbxk41Ng==
X-Google-Smtp-Source: AA6agR4Zl0b4mQCBObDz95VG2jMXcVY1lAON/ST3Emo+KJuxPfHHwohE/z9N91K9na8PZckfPbOfTQ==
X-Received: by 2002:a17:902:8b87:b0:172:9650:494b with SMTP id ay7-20020a1709028b8700b001729650494bmr2452983plb.94.1660826503131;
        Thu, 18 Aug 2022 05:41:43 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:d1c4:8ea9:aedc:add1])
        by smtp.gmail.com with ESMTPSA id x6-20020aa78f06000000b005302cef1684sm1495651pfr.34.2022.08.18.05.41.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 05:41:42 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Elaine Zhang <zhangqing@rock-chips.com>
Subject: [PATCH v3 01/19] dt-bindings: power: Add power-domain header for RV1126
Date:   Thu, 18 Aug 2022 18:11:14 +0530
Message-Id: <20220818124132.125304-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220818124132.125304-1-jagan@edgeble.ai>
References: <20220818124132.125304-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add power-domain header for RV1126 SoC from description in TRM.

Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v3:
- rename the header 
Changes for v2:
- add blank line

 .../dt-bindings/power/rockchip,rv1126-power.h | 35 +++++++++++++++++++
 1 file changed, 35 insertions(+)
 create mode 100644 include/dt-bindings/power/rockchip,rv1126-power.h

diff --git a/include/dt-bindings/power/rockchip,rv1126-power.h b/include/dt-bindings/power/rockchip,rv1126-power.h
new file mode 100644
index 000000000000..38a68e000d38
--- /dev/null
+++ b/include/dt-bindings/power/rockchip,rv1126-power.h
@@ -0,0 +1,35 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
+#define __DT_BINDINGS_POWER_RV1126_POWER_H__
+
+/* VD_CORE */
+#define RV1126_PD_CPU_0		0
+#define RV1126_PD_CPU_1		1
+#define RV1126_PD_CPU_2		2
+#define RV1126_PD_CPU_3		3
+#define RV1126_PD_CORE_ALIVE	4
+
+/* VD_PMU */
+#define RV1126_PD_PMU		5
+#define RV1126_PD_PMU_ALIVE	6
+
+/* VD_NPU */
+#define RV1126_PD_NPU		7
+
+/* VD_VEPU */
+#define RV1126_PD_VEPU		8
+
+/* VD_LOGIC */
+#define RV1126_PD_VI		9
+#define RV1126_PD_VO		10
+#define RV1126_PD_ISPP		11
+#define RV1126_PD_VDPU		12
+#define RV1126_PD_CRYPTO	13
+#define RV1126_PD_DDR		14
+#define RV1126_PD_NVM		15
+#define RV1126_PD_SDIO		16
+#define RV1126_PD_USB		17
+#define RV1126_PD_LOGIC_ALIVE	18
+
+#endif
-- 
2.25.1


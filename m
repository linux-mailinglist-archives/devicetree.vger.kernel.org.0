Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2EF8D5B0391
	for <lists+devicetree@lfdr.de>; Wed,  7 Sep 2022 14:05:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229493AbiIGMFH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Sep 2022 08:05:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34730 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229446AbiIGMFG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Sep 2022 08:05:06 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2661A51A03
        for <devicetree@vger.kernel.org>; Wed,  7 Sep 2022 05:05:04 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id bn9so15691886ljb.6
        for <devicetree@vger.kernel.org>; Wed, 07 Sep 2022 05:05:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=DhMnHgvZLgQGk2ZGophI8BLsqGSYtn3vHSRE9tq/2lc=;
        b=kRm2RsAxbIs+iSLZ9oKd4TeqeEG/9qQUTTx/tagPGA+qeulAYcrw+eohBuBmuED+s2
         PvzTUdaUSNIi06z+eT9QEj2j0AB8YzKDbuB04a9cnKShu5TOXNQWb+EW6PsUatONg072
         fSu5amYp4xHISIc7Ry9woaIZ21OR9M0SMkoWxqNe2MA+p4A5ksu014Ky5rpM4O5+rdWT
         gXSTMgIA7t6C2YIolvzBjj1aaiHcb5ZLwFAtrJVjKVLBZpW6Ca7xsduJv9dUXRFJ146/
         Ry4GLNXz18Y8yycbwf6kG9Te4Cs7kowtQiiA0t4sGbhoO1sWk5R5gvB7mcSduHrLM/8w
         p2dg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=DhMnHgvZLgQGk2ZGophI8BLsqGSYtn3vHSRE9tq/2lc=;
        b=WxLxtm52lPx6JIUq4XdICZ694WOV4C+nJVfscFJFDhodoCMGxxZTOBNiWHrQrOrrdK
         PJSnW8sU7wXzR/aEmRxiWbyJ4NJl2IrBpdVEGYHCHcGVIIfrfkf1P+kFn/R9dxgljix0
         yL5JeBnvpVXiguslzMOT5wFAKaZp5XXGOuevSp5sxZ0dscT0XAcYr9AMgI90AZw7iRqE
         I40gUeigv4fEsOXL5sNzU/vxpPuCJmdao6OlB+sFvAghtPRyuqVKK7Mzw5HUIglNBP3P
         C2IWlXR7sWkp67gTmVpuxAHciMQSEqYpCb0lhHS3IMitbNdZ/wR/w9RE/b7Jacm6e8mW
         Hkxw==
X-Gm-Message-State: ACgBeo0mFJpVLuVrOAphxceEgf2xi3vDJ9X3uhJNg9haV8gtSvtfuFrm
        fBYVuzaqesy2GjEPFDRs/7wjxQ==
X-Google-Smtp-Source: AA6agR6+5p1Hswq0aeSZ4aWoRWOZfD9rclbT9lObRE+Z3z0CQkpT/Unkl/wOyWCdDOyoAf+AFv9MgQ==
X-Received: by 2002:a05:651c:218:b0:263:aeac:5939 with SMTP id y24-20020a05651c021800b00263aeac5939mr848435ljn.64.1662552302499;
        Wed, 07 Sep 2022 05:05:02 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id l18-20020a2e7012000000b00261ca0f940esm2503661ljc.62.2022.09.07.05.04.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Sep 2022 05:04:59 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH] dt-bindings: interconnect: fsl,imx8m-noc: drop Leonard Crestez
Date:   Wed,  7 Sep 2022 14:04:52 +0200
Message-Id: <20220907120452.52161-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Emails to Leonard Crestez bounce ("550 5.4.1 Recipient address rejected:
Access denied:), so change maintainer to Peng Fan from NXP.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Peng Fan <peng.fan@nxp.com>

---

Resend with ack.
---
 .../devicetree/bindings/interconnect/fsl,imx8m-noc.yaml         | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
index 7d8d0896e979..f7a5e31c506e 100644
--- a/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
+++ b/Documentation/devicetree/bindings/interconnect/fsl,imx8m-noc.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Generic i.MX bus frequency device
 
 maintainers:
-  - Leonard Crestez <leonard.crestez@nxp.com>
+  - Peng Fan <peng.fan@nxp.com>
 
 description: |
   The i.MX SoC family has multiple buses for which clock frequency (and
-- 
2.34.1


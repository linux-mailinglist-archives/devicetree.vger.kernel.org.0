Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA8B353548A
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345528AbiEZUhX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:37:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346222AbiEZUhV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:37:21 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FF90496A6
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:37:20 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id i27so5029244ejd.9
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:37:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5hg06tVmHTGmvTkX9STmRxlYvOy+LhDedrqKSWo2gyI=;
        b=lJPilBSquWM7s47NAc3O16CBERq0ozOKQsiYG8/j/cx9w0ot3yA1k5M7wkQjZ7EGjp
         MWyPCMLC8LUtp+2rES9sdNS7OqXpKCDEsSLJd6AKuxuRbsKGKIubKY3md/gYjfuGuk9/
         +vHpB4rFaBGE8ZlCIZ9asTembc+cADoBmLeC90d6jz2VQmCiprJ1lTO68hO2UMUPyq/M
         ehLzWevmo6r1614M/sRzmXsNibVKp3we39QXmPhrtfgW01lNkxAYBdz1O1bKzyrXIumq
         qn8eL9C2n7xN9Y3jcCgmI+9Haq0QOeJgfzlKhD3bJYOTiAsS7/5uMxb8+Sr1xzIXEjfU
         l6Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=5hg06tVmHTGmvTkX9STmRxlYvOy+LhDedrqKSWo2gyI=;
        b=66GSRBRoFGeom7PFWDGdxmvcSRFdYCJbO11/c06iQu0R7kpUxYcVxI4pK6jbPPcQQ4
         h7w1sRuxva2psMmb/f0awYmZ1DLlOf6piWZcYvUwKF6YvurvrGFyn/cJFvpEbdZ50ToP
         Ts1RpTKjM/P0Qzh0YaQ/K6uOQbc5F5GdbAOzrBg2UTN0Ia055TcCX3CA0YaTLxoATfiv
         nb7W4PiiGo1emCmsg1J4lZkinskVmH0QJ+Mvksv0QZ17pJVIq11cQNBhbhyNlEV69Y42
         3SUj8oA2Bxts/cbAipb8A9i3Txbsk9jGNMpSPhBorXcX7rUQNTcZNbM1ayPe5uPQGFpt
         awrw==
X-Gm-Message-State: AOAM533NJ2tgELRHlG78fx2pTsHKLqHpkp7xkTaRQ60QfmwGhyRVqocl
        Lj0TfO7HLkuqeJNpxqiGsLosxg==
X-Google-Smtp-Source: ABdhPJxWEvDHhUj30DZZnB1pVu5jV8QXoWBhyBf5gTQrJfav1eDL6DrmUZMI+33dF5WRF6+6EVrjcQ==
X-Received: by 2002:a17:906:99c5:b0:6fe:b069:4ab6 with SMTP id s5-20020a17090699c500b006feb0694ab6mr28023511ejn.436.1653597438684;
        Thu, 26 May 2022 13:37:18 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id v27-20020a50d59b000000b0042aae307407sm1175020edi.21.2022.05.26.13.37.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:37:17 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: sd: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:37:14 +0200
Message-Id: <20220526203714.831177-1-krzysztof.kozlowski@linaro.org>
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

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/sd5203.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/sd5203.dts b/arch/arm/boot/dts/sd5203.dts
index a61a078ea042..69381819e07b 100644
--- a/arch/arm/boot/dts/sd5203.dts
+++ b/arch/arm/boot/dts/sd5203.dts
@@ -15,7 +15,7 @@ / {
 	#size-cells = <1>;
 
 	chosen {
-		bootargs="console=ttyS0,9600 earlycon=uart8250,mmio32,0x1600d000";
+		bootargs = "console=ttyS0,9600 earlycon=uart8250,mmio32,0x1600d000";
 	};
 
 	aliases {
-- 
2.34.1


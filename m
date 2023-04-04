Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EF8066D6CCC
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 21:01:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231539AbjDDTBZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 15:01:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236123AbjDDTBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 15:01:24 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C444170F
        for <devicetree@vger.kernel.org>; Tue,  4 Apr 2023 12:01:23 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id r11so134702845edd.5
        for <devicetree@vger.kernel.org>; Tue, 04 Apr 2023 12:01:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1gN6UktfhGhq/wt9oSUVorCmIWND3+y76zHl2dlJ3nY=;
        b=cSSpiX9pabelbWFTHnChkccbAVL+A8a8gUJgioolKVE61890gDbv2RljIMauD6hpkY
         TItoyCmOSXuWlWvaoZa6bcafjb03Q2CJaqlnMW9ytzRLsZaBH7V1PxVjGLwrWqbG/kTd
         V1JVPgpcHIzRsjhStilF9e2dBXV1tAQaVTcvE6sKAYMnTOOhxwHk5ItTlGgxIrMvzhu2
         Q3z6S6Bxui50SYu2llGq7FfKCI+Ww5wLAsHy8m12oih8G0lXGNEgyKHF8Q9oEF3llyFv
         I2HxP8ngwt4HjfmbH+5mE0zyMOnJi9WbUJvYlSJW500Exx0vxKlDnMILwqE88NyIWTt0
         9bbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680634881;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1gN6UktfhGhq/wt9oSUVorCmIWND3+y76zHl2dlJ3nY=;
        b=vmCNSXn0tCaA01xMAmo8eIwukXVbKQ6i/pYIp/TDdBqdx6JKMwxWquRXeNu3wETKi8
         BtLW7Wox2iLQ45uE2xn0qBJn3JIxUgAbwOLkh18qaOzRkMQuJuhu0E4TbE47Y/mRY4LC
         1yoyl5nfE/6W4VaMBINmdwZ+jlIhht2G9r/5O7NGnup9+o1IpyOQ30tiukopthDmZfzw
         e6JfQfTGdJ84hVkLGkxuP7Ipy0fVmZA8Uc6+rhm6NFvMqPmkXi3guKhPn4NZk4KvM+Dh
         j106VSFOMcAD+j4XUxEM2Nl1/1XusoMUSSsLc02+F2JlqDyEangOIEltTrKjS5QSABTr
         Zk/w==
X-Gm-Message-State: AAQBX9esVv6jiIfy+Ci6ySE9B0JIqkhX+5LCH5G3JPU/nfdyKOuVoqfm
        goeaEbUiZb22zPWSNPKOUssGQQ==
X-Google-Smtp-Source: AKy350byDBq4o0sNh1eGFgbkcrFNkrCEYKSrGSAasw/Hf6E+t7r9pGPCdzC3i07Pi4ztIyN2VXCr6Q==
X-Received: by 2002:a17:906:c00d:b0:921:54da:831c with SMTP id e13-20020a170906c00d00b0092154da831cmr245053ejz.31.1680634881806;
        Tue, 04 Apr 2023 12:01:21 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:7467:56f4:40b7:cba8])
        by smtp.gmail.com with ESMTPSA id dx21-20020a170906a85500b008d044ede804sm6257079ejb.163.2023.04.04.12.01.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Apr 2023 12:01:21 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Swapnil Jakhade <sjakhade@cadence.com>,
        Yuti Amonkar <yamonkar@cadence.com>, Abraham I <kishon@ti.com>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/5] dt-bindings: phy: ti,phy-am654-serdes: drop assigned-clocks type
Date:   Tue,  4 Apr 2023 21:01:13 +0200
Message-Id: <20230404190115.546973-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
References: <20230404190115.546973-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The meta schema from DT schema already defines assigned-clocks, so there
is no need for device schema to mention it at all.  The specific
parenting of the first input and output clock is apparently important,
thus keep them as required, but without defining type.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/phy/ti,phy-am654-serdes.yaml         | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
index 738c92bb7518..854e554eae67 100644
--- a/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
+++ b/Documentation/devicetree/bindings/phy/ti,phy-am654-serdes.yaml
@@ -34,11 +34,6 @@ properties:
       Three input clocks referring to left input reference clock, refclk and right input reference
       clock.
 
-  assigned-clocks:
-    $ref: "/schemas/types.yaml#/definitions/phandle-array"
-  assigned-clock-parents:
-    $ref: "/schemas/types.yaml#/definitions/phandle-array"
-
   '#phy-cells':
     const: 2
     description:
-- 
2.34.1


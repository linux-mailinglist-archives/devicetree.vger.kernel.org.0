Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 20FD478FBD5
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 12:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237658AbjIAKjX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 06:39:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbjIAKjV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 06:39:21 -0400
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAFA4E7E
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 03:39:18 -0700 (PDT)
Received: by mail-lf1-x12a.google.com with SMTP id 2adb3069b0e04-5007abb15e9so3290878e87.0
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 03:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693564757; x=1694169557; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=i8h3vDWr7fflQk4W9uFGrkkvahLzbgYVzTlEuqGP3F0=;
        b=fEm8v3n4Z6XA/A7dXvKwxn98I220QiJ/OCLSZREebO93E8dqVhywu9VX6RY5si2/W1
         w9b8Z102YYZWD0yUw9E3pElTJA9oTPh8YiiToIK+4G5ohKsL3eXfYiwHGQQ+lZH1AwFK
         v75QjVw+szY0SClawu4jB+VLzQ3HA0DmXfGlhObZ/7fN6XPJZCzExsmeiSteU1/484GX
         68VGrFgzcG2Hq3OTt5iv5jLSAnAOxoKOWWyFX5iYbI/FIPbijGvFG1831UO7y2BX/R8p
         glz90ofVxecolQBoUQhJPs3XIaqtsfE0DQIZkdM19AExLGgB1AFyGlmKoD9Q6CZLPDLf
         +jpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693564757; x=1694169557;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=i8h3vDWr7fflQk4W9uFGrkkvahLzbgYVzTlEuqGP3F0=;
        b=kpjUTo0GwbiWDxZGy7QKboTFM1zknbdSTq9LSEVXMJkHPNLTgvulT4H5TAY5O1kMO8
         lHsz6jRHQM0t5foa2+zB7Ndu4UvQ5wBOFmAo3Zkrv9FZucorSSDFduLGljAF/8T1hrEm
         R+FVsiRcIfLCBaC0My4CPRdZqToUJNc4o3fW3eyQSYsWNzzoe7Me9hIpjkFdpOTOAYiO
         Ml2+TmqxbA0eFLfak6xPSW5JupO82gJzc92XxSpmY9vF5p5VFV31/SH0bCm2q1yuVehX
         YIGg86sF2/YTQBgylGWHhl0rQI1su+fz0wZMNX/FSEEBnQz0ruJz6fXCtfoKbckJK+ho
         FS8A==
X-Gm-Message-State: AOJu0Yx1sNaomzxwG/1tFdn3m9c+U3alkX2vAdwa4BEXFJ4AIx4LsqCU
        Y3Ewvi0qE/ESRa9WrhoIphY=
X-Google-Smtp-Source: AGHT+IG4nuljqfBeFv1EMp/yRFHH5n6AvOtPvpgH1KQmEH81NMpnFtXoHqM6ZmyBQWYAoTZ4wJRmlg==
X-Received: by 2002:a05:6512:a8e:b0:4ff:7f7f:22e7 with SMTP id m14-20020a0565120a8e00b004ff7f7f22e7mr1847780lfu.17.1693564756806;
        Fri, 01 Sep 2023 03:39:16 -0700 (PDT)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id r1-20020ac25a41000000b004fe10276bbfsm611863lfn.296.2023.09.01.03.39.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Sep 2023 03:39:16 -0700 (PDT)
From:   Alexander Shiyan <eagle.alexander923@gmail.com>
To:     inux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com,
        Alexander Shiyan <eagle.alexander923@gmail.com>
Subject: [PATCH v2 1/2] dt-bindings: stm32: document MYD-YA15XC-T development board
Date:   Fri,  1 Sep 2023 13:38:55 +0300
Message-Id: <20230901103856.31091-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add new entry for MYD-YA15XC-T development board.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
index 4466b455bffa..1bde704bcd65 100644
--- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
+++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
@@ -140,6 +140,13 @@ properties:
           - const: engicam,microgea-stm32mp1
           - const: st,stm32mp157
 
+      - description: MyirTech STM32MP15x SoM based Boards
+        items:
+          - const: myir,myd-ya15xc-t   # MYIR MYD-YA15XC-T STM32MP151C
+          - const: myir,myc-ya15xc-t   # MYIR MYC-YA15XC-T STM32MP15X SoM
+          - enum:
+              - st,stm32mp151
+
       - description: Octavo OSD32MP15x System-in-Package based boards
         items:
           - enum:
-- 
2.39.1


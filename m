Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CF42563BB12
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:55:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230029AbiK2HzG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:55:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47294 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230118AbiK2Hy5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:54:57 -0500
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC74F56D6C
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:53 -0800 (PST)
Received: by mail-pl1-x629.google.com with SMTP id d3so7648445plr.10
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eN1IGYSfqB9+1PAq7XzBkQKGbJY2SPdzTc3TfuZTt4s=;
        b=nItFdxSPwVB25MZdSVpUTa6VFsuz/xyxxLdZzX0QYGmDaiyKTEoLS1BqXBs7lneSWZ
         n9biDVGZ3beJvJa3754hAzKM3v8FJBbTYm3MuNn1SH/emd/INWv4zT9p7t2kmhfuLUQm
         1Os4R/u5cUfSffda6UzRJa8jtdzfW727bIKZ75fzDXbL1+OXJg4mNpSaTMDPo7syLeVe
         3g/pmHGT7wvxsP7ifvKOy3fKoJkxlHmhrBZV0yrRbGZeV8KlfpMAMu960XS++sPGhsqJ
         TNKAtrUdFErkPUZbRAyDY0tKIfokCXigW7PvZrSgT1ExaGbrYMElajYvamvmDDZ27fGR
         Tbew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eN1IGYSfqB9+1PAq7XzBkQKGbJY2SPdzTc3TfuZTt4s=;
        b=Bkk4L2hcWHNyklW0IYsAagyLq291xpGdwGqKxcLllljn3HE//VpRdVuxZ9AdAX9F9U
         3G2l0Z/H/fIrNSObR/s7h0DaNAhnZEcRKyDq95Kg+S5z3C8dts8Y5qmqPB0QgRXrlvI/
         xXInMevoav+VOHkivNbgnPo4pnp4+OMIdHqrdOcvYzsMBzvd3MrZ9J/zeZu15KVkmsg7
         YQW2dvarbMLzMBxE5JSwksNY0akFtD+Urt/FszM2TaPkujUKuaztKpPLQJxcCf+0En5V
         aTzBymMwiICC4g872tA6XIGyrM3hZCjcMoKsvG4uverCSPRQXxdxaw1h/EqbXPnKLZ95
         2PSg==
X-Gm-Message-State: ANoB5pkMaHnVdGK/Cf2c5tz1JXBhHqwBfo4ar8RS5LuiF0eG297f4nRE
        E4J/bxgJqTWRLW6e3i5EouWWDA==
X-Google-Smtp-Source: AA0mqf408+IYZeLUx/5AhM3Yqo+vv6GFxp0nLGgx/Ql+oXX+oBq+/6AiD3UJEv9HM0OZQsaAfjrI0Q==
X-Received: by 2002:a17:90a:7d0f:b0:218:d50e:5af8 with SMTP id g15-20020a17090a7d0f00b00218d50e5af8mr34602134pjl.26.1669708493051;
        Mon, 28 Nov 2022 23:54:53 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:52 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 2/8] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date:   Tue, 29 Nov 2022 13:24:18 +0530
Message-Id: <20221129075424.189655-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221129075424.189655-1-jagan@edgeble.ai>
References: <20221129075424.189655-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add rockchip timer compatible string for rockchip rv1126.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- add Krzysztof ack
Changes for v8:
- drop cc list

 Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
index dc3bc1e62fe9..a6221222e948 100644
--- a/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
+++ b/Documentation/devicetree/bindings/timer/rockchip,rk-timer.yaml
@@ -17,6 +17,7 @@ properties:
       - items:
           - enum:
               - rockchip,rv1108-timer
+              - rockchip,rv1126-timer
               - rockchip,rk3036-timer
               - rockchip,rk3188-timer
               - rockchip,rk3228-timer
-- 
2.25.1


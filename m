Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0D471620824
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233235AbiKHEPe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44880 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233345AbiKHEO6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:14:58 -0500
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDA563207A
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:14:54 -0800 (PST)
Received: by mail-pg1-x535.google.com with SMTP id 78so12328947pgb.13
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:14:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TB99EEY0Y3TeXE5S6hRL8Vsg8GtXXnj74TlFbr4XijM=;
        b=elfRSxTLKt6m0KjUPlq9hs9+Xj8mzgCWzAj/vP5boe3WhM0SayXAjYKMEYigPjG/0N
         jL0JyOmaQnchYpVAJMQZe99YJBVJgq4pEcvVQjY3QfGUBvcHwymlTuO+vH+2CnxgtJMG
         dvVSBCTanAnORR5uPC1nTOQHVzrJkSCg5Q62SnNiVO7WfHVkxQq/GIABZ2nnhmCv5x96
         dV+c4WVeU4SpN8AR+UCGqPsR2FaX8SgnEevAhRzGt47yASFR3BZmWiljBhfzzCKjG6PW
         cjAe+Aqug1YxK6FvK83J05G95jtlEW38ZEavQh/3e/Omap5PGd0sUN4aGyW5XKBs3lUB
         YlaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TB99EEY0Y3TeXE5S6hRL8Vsg8GtXXnj74TlFbr4XijM=;
        b=FrAO38G8uCbBC9fkVCkvCFgFYsEDwnLM/2+BWzqa98erVpzWLZNSNFuZfUNcYLwqlX
         UHRrmIrN0Dag0VwuSD0Koy4hCn2DImeIWb9KeYbcC4VTuez717Fq1uADY6x1GCEOkjs6
         7PKRmXIn7zhVvpAqZ6fzlvFWRUQM36pOSI3kuhxoMenmIJlnC06R6E/lnkozDYlKnt6R
         vy8DZGvK4exnMqRE9WXMgd6OjhCAJ5u2JDLT0iSZM9G7NB61IA2htW0CCa3rm/361SPZ
         xbC18VS3tRl9VjJFy7sfipRhWXs3tdiYJzC4Q3VNZ9onVN/a+PrdvSqnDn9pxYf6Kz79
         6dlA==
X-Gm-Message-State: ACrzQf3H0oHaCVH0gJmd21Wlm+Wrg8XP/ntESwY7oD3W5sVsjF3fpfMZ
        zv/CLaKIJbr+/8DOeNdXrILE9A==
X-Google-Smtp-Source: AMsMyM4w1pzoUs1BAG02rCILKSDqI53ov/i7CowJDD4s3mYmdk8h21rz2OXmiLccWOZ7dtlk8z3VfA==
X-Received: by 2002:a63:4753:0:b0:462:b3f0:a984 with SMTP id w19-20020a634753000000b00462b3f0a984mr45108940pgk.501.1667880894536;
        Mon, 07 Nov 2022 20:14:54 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:54 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, linux-kernel@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: [PATCH v7 04/10] dt-bindings: timer: rk-timer: Add rktimer for rv1126
Date:   Tue,  8 Nov 2022 09:43:54 +0530
Message-Id: <20221108041400.157052-5-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add rockchip timer compatible string for rockchip rv1126.

Cc: linux-kernel@vger.kernel.org
Cc: Daniel Lezcano <daniel.lezcano@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

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


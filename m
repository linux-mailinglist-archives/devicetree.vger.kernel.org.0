Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 315E16A9262
	for <lists+devicetree@lfdr.de>; Fri,  3 Mar 2023 09:27:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbjCCI1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Mar 2023 03:27:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbjCCI1c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Mar 2023 03:27:32 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 885BA59E69
        for <devicetree@vger.kernel.org>; Fri,  3 Mar 2023 00:26:45 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id i34so7156891eda.7
        for <devicetree@vger.kernel.org>; Fri, 03 Mar 2023 00:26:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1677831935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HyTodj56FVVqhB5c72IpvxIoMGzVGBFIiqS+7BLcwRs=;
        b=cb6HTUr90ZeIec3XCIRPoVl0Om6XbL+EWUr+qgcdLkYIIt07IF9MQMbdi1YPALUzJi
         /01hBbiNUfMBWoedTodqr/gQyv08sY7Zt98iXyTpcdWja0PUmPW3cJvU5lMkaKiwPEgr
         Kr3mriZxe5Ar9xk3hGE0Lf3SyP0eS0zwmflLiLVOG4muqMHCW1zR+rhGu+doKrkBu7x4
         Vaq39UU3ynCDWPHhghesn133FDh1udNi4LghvK+gCWQmcBbiYRKmtfZAd+JVJ8N3m5Ej
         5PaGlFnWFaVNX9Sm1RKUNrb8C81bME1MdZ7uemlr+OTA/P2oWlzWESlTJ+0bqAF64bBU
         IX3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1677831935;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HyTodj56FVVqhB5c72IpvxIoMGzVGBFIiqS+7BLcwRs=;
        b=axEXsQFq8O3grKJTM7pCuQqEqrOgfVL9OlDxzKgpR+0ZBMyyyBxY8XPiSA3IDC8o5w
         t4o6BtBJqYPKhN8swsz+fsMl1YQMFE4ATRAFRYNmlEYtCMNRoCVc8P3EtRX2DcJ0656x
         zzSNLuZa5A1+zZtoyDL0/TENQvZSkgBwtUFHuuj5MhxbZmzKHMWh4j3O3KrkyauckbNS
         v47l23NjWHRGTkEFEv8Q1OpgBMaJe0EQNGHwiqeQ+36RZ0E94HCAVymNVBlvtgsJc6/u
         sMNYTdzMDr7QPYd6HsGVhdHvIw+k0Deao9KWeriC948j/PwN6TUMXqsndxIgnppFw8Z5
         3Eiw==
X-Gm-Message-State: AO0yUKVuroJy3IPFPBQUmknGia1KY5pOg+WO9HvNbjTpHp8JcjSv67EM
        hb6YnbnvAvLhjBngVhCltJexgg==
X-Google-Smtp-Source: AK7set+VbKb9r3ebORu6DSpPn4N5ouxZuYyjkpqSCLyLcLXhWrpUN7190MNQC3BEKVni3GKLKvcYKg==
X-Received: by 2002:a05:6402:3447:b0:4c3:6d95:7337 with SMTP id l7-20020a056402344700b004c36d957337mr946759edc.25.1677831935022;
        Fri, 03 Mar 2023 00:25:35 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id m30-20020a50d7de000000b004c13fe8fabfsm848576edj.84.2023.03.03.00.25.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Mar 2023 00:25:34 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Wolfram Sang <wsa@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] MAINTAINERS: i2c: include all I2C bindings in the I2C entry
Date:   Fri,  3 Mar 2023 09:25:30 +0100
Message-Id: <20230303082530.11878-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

I2C subsystem maintainer entry should also cover all I2C device
bindings, not only the common part of them, because:
1. The bindings usually go via subsystem maintainer tree,
2. The maintainer might know the domain better.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4cbe823f3545..661e1c7e28f3 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9585,7 +9585,7 @@ S:	Maintained
 W:	https://i2c.wiki.kernel.org/
 Q:	https://patchwork.ozlabs.org/project/linux-i2c/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/wsa/linux.git
-F:	Documentation/devicetree/bindings/i2c/i2c.txt
+F:	Documentation/devicetree/bindings/i2c/
 F:	Documentation/i2c/
 F:	drivers/i2c/*
 F:	include/dt-bindings/i2c/i2c.h
-- 
2.34.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AFB9362081F
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 05:15:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233240AbiKHEPG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 23:15:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232816AbiKHEOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 23:14:36 -0500
Received: from mail-pg1-x52c.google.com (mail-pg1-x52c.google.com [IPv6:2607:f8b0:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0C4A32B90
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 20:14:26 -0800 (PST)
Received: by mail-pg1-x52c.google.com with SMTP id q1so12333457pgl.11
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 20:14:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WggUs9c+nJlbaHOwoUyw7DZEi+csMErKOjBTJLuhk70=;
        b=Wbqhv6rx/8pJzGBEGWt+NVMuhgd9hwDIn9lmujR7SXLyowfQKmjDVy2gTB5jGT7EuZ
         Zc3uYgySTk5DtvF0TVUUdAD1Xle+MLGqUjMbo6GVJH7ahQufmW9xKo2oR7TH8xhetiZC
         74d0EXsKmaGO1JCb1+KrhnwGK22LBgy0rDYNThwd/hob10AmqmK0zqM2AnOIlhnj67t5
         xngP9bGIOl2oN4pPEQoQOJzee3HWVxmoJ0leL8ovYLUBinWh88du4+ZsnKIRA0XqNxoh
         hRt91EVgm80LM8kT7ORVCwa1FrXi4rKYFHWpxVj9mMBHKJ7Rt/UWm5AhnCBGTh/jlkn6
         FnmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=WggUs9c+nJlbaHOwoUyw7DZEi+csMErKOjBTJLuhk70=;
        b=x7rK2wBACvRLtfDcsEEB9LBNhr/YPrpWT2+02GDkt9zaAMMAlGkmYdw6hUtc7E3BX7
         qFXQW9LrjVFymv7P78pztRdfu7p8Fsfyl+bPCjLZIGKZjf8nj7EIPSABQwDm17kGYVpE
         p93htHQL1jGRourPMYq64ocvAen3GBoIcIK+FPyoH2ipLXMupOicVgiHP/JuJjByNOM/
         26F0UJdmk4jbCj3rLEJk9XpMujAfdbJOgaBHKkLX40jBE3NE21GTKTL0Nja8Dfw9njta
         Q5gTxAjq6HLEdHdV9PFR5Su7LcqmnH/S3xFjp6/dV62jHrxCzoc2TC+zqV1eX5FcbzH+
         zRlQ==
X-Gm-Message-State: ACrzQf0F9Ccp0X6E9hsQWPtefDcfAWxEuIqk/mmtYdgukkD22XtqVw0k
        YMMeB/hhFj1x5WvRJBU/RiEd5r5J03rkCqJDvIg=
X-Google-Smtp-Source: AMsMyM7dNxNHQy7mYucy/S/24wFdnyyf7hzLAY4tQqP2mJ8i/FMeWyowgHMPefe3h6lJv4tY+Q3Zsw==
X-Received: by 2002:a62:174a:0:b0:56b:9fc2:4ebd with SMTP id 71-20020a62174a000000b0056b9fc24ebdmr37482673pfx.21.1667880866254;
        Mon, 07 Nov 2022 20:14:26 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:63d1:2564:ea55:4e97])
        by smtp.gmail.com with ESMTPSA id e5-20020a170902b78500b00186ac812ab0sm5799783pls.83.2022.11.07.20.14.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Nov 2022 20:14:26 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v7 01/10] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date:   Tue,  8 Nov 2022 09:43:51 +0530
Message-Id: <20221108041400.157052-2-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221108041400.157052-1-jagan@edgeble.ai>
References: <20221108041400.157052-1-jagan@edgeble.ai>
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

Add PMU compatible string for rockchip rv1126.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v7:
- new patch

 Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
index 8c73bc7f4009..b79c81cd9f0e 100644
--- a/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip/pmu.yaml
@@ -27,6 +27,7 @@ select:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
 
   required:
     - compatible
@@ -43,6 +44,7 @@ properties:
           - rockchip,rk3399-pmu
           - rockchip,rk3568-pmu
           - rockchip,rk3588-pmu
+          - rockchip,rv1126-pmu
       - const: syscon
       - const: simple-mfd
 
-- 
2.25.1


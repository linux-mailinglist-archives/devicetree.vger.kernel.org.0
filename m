Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1D93463BB11
	for <lists+devicetree@lfdr.de>; Tue, 29 Nov 2022 08:55:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230071AbiK2HzC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Nov 2022 02:55:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230094AbiK2Hyv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Nov 2022 02:54:51 -0500
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 659664AF25
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:48 -0800 (PST)
Received: by mail-pf1-x42a.google.com with SMTP id w79so12935200pfc.2
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 23:54:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kx5NISSyDqv/VSOLheYlPNFpU1BdKimZ8CZBw5i7Eak=;
        b=gUj1yZkN2NYrQOXiVqYSZcjPLowhTTgHtdjvu7wyDW8JrI9i8QCziKvYWkgRISEPVg
         M+x4F11ExrxsDWE/PwPbqHpxFtUiHOpDOwb6fcSpIpb5STrD5BKA+lYllKNQgQIzxTtJ
         1pZeBy/RHjZGnFLgsl4wIL1dbOMz3aF43UkFppV/7TTt4TtVMdu9pi9jDQSU/l3vPl6+
         Q9itMOzAJRrsf7TNzpXNrsAGe/e2uR5k5qc+Am+2HKkOpes1ojcW6wLG4Rodn4qSnIJQ
         BIpCbmtjibS413exA2tu+rWMOVDngblQql0Am3IkaJOkDGZ2zAA/HytIQeDIYhzpV5Lk
         NkEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kx5NISSyDqv/VSOLheYlPNFpU1BdKimZ8CZBw5i7Eak=;
        b=eU6HF9hns1kL/zD7A+L4EpGq5WkJSXwBcQ8a54+Rt8ey7mlv232c7Jg7GvVlio0TE6
         KwN8KvB06y53nuNUqF/lLX0fc8uZVuNETk2lM81EKeyWv5T4tdN20+lEJUUnMD9oEUCl
         ca6OT7+iYHG8aSdv52+Gj0/+YW+AjtIfq+gwax8gsD4Hu2Z1/VPMDL+Oue2qZv8zd7F9
         MaxIxtDKh6gMjLVk9uWVKPjhmGJzTo1qj+lLhCIGfIGAUfBIQO882rc8+4jwd0GYhvUG
         ZjWohL9GlGjX/ln8gclPUqFwIA0BzpOxN7YFqPxy3MzQg0gy1L3AXl0S8AdZnt2dl/PX
         eToA==
X-Gm-Message-State: ANoB5pk+1aeN3ojr16t0+AsYh9i7fAkL/B404ij+OUj40g+dkkImqfld
        wGxn19K+JsqrvBJ/uzFxZ3h9UB9F1S/lUGDTrWgv9w==
X-Google-Smtp-Source: AA0mqf63dwSRKpz+S6yWYPBXZfGPusmqyHM3o6Ji9d8FlCOwnfv80EYXYh4HJzu4Q3noiqnEXT2apg==
X-Received: by 2002:aa7:83d3:0:b0:56e:8477:1add with SMTP id j19-20020aa783d3000000b0056e84771addmr45151317pfn.13.1669708487830;
        Mon, 28 Nov 2022 23:54:47 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:5c9c:86cb:4472:916b])
        by smtp.gmail.com with ESMTPSA id 13-20020a170902c24d00b0017f72a430adsm10106342plg.71.2022.11.28.23.54.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 23:54:47 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/8] dt-bindings: arm: rockchip: Add pmu compatible for rv1126
Date:   Tue, 29 Nov 2022 13:24:17 +0530
Message-Id: <20221129075424.189655-2-jagan@edgeble.ai>
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

Add PMU compatible string for rockchip rv1126.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v9:
- none
Changes for v8:
- add Krzysztof ack
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


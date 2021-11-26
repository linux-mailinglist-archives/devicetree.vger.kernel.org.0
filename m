Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6465845F715
	for <lists+devicetree@lfdr.de>; Sat, 27 Nov 2021 00:08:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230344AbhKZXLh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Nov 2021 18:11:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234828AbhKZXJg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Nov 2021 18:09:36 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BE0DC061748
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 15:06:23 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id x15so44443945edv.1
        for <devicetree@vger.kernel.org>; Fri, 26 Nov 2021 15:06:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+dZaITcZBt90z1oqsumsEwuslKh6nLTGZIBE5hBYKeg=;
        b=EzV6k65lbx7QcXkxyIKCcXDzVI7ORoNHi+4xgPC08pVwHsCOFP/rIzoQ6BCYfAqLv7
         s4Q5hpq+jhvBKYtldNczh8PeWDtJr7346xm8MMsVnB1sKMl4e97PQL+Z4EpDkCt62QIU
         YbaspfNgfDqRERxNS6JzBF2hs4VRWkYyh50MypdHtk6G8gEuD0kqwoYrJlOZqZwM1BxG
         oMOG1PsZkglohrcOcVpifju9osdmY2yM1jZcYaeRC358efOMgjWGyVKZXrUemQeadL3/
         sZCjD7oO2uHhr0K2mB1VaGQq7eyvbFvoOAzVGff6TTV4UnOIgINFDWNUkHNaVoodfcMp
         KTkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=+dZaITcZBt90z1oqsumsEwuslKh6nLTGZIBE5hBYKeg=;
        b=BZSWB8uv/BfD4XraV13s+doMB4rdJGhMVPN06h9asr8FfyzWMZp1MoJsYtG/n8aNlA
         lErJWogdjDJQnNGWbMYypdqm6T167MoWZfzZBC42nJsNseOUyRX133x8se1EoZrX+0a9
         49RvRDozT5Vpo8xw9aIYQhwUXCrJkelpSGIgArRecd4sbKY8Sn8B28hxeYv2SElfy86o
         REvTayi9DFSN/NcpG1w5GocB6qzvbFDu+3Badjy3wrdgPtJeBsQydxkJSoIxqeIu7La8
         XqCDj7IsoJxdA5pUX2lDbyStm3D6HcNSGDF2g3JilNh/1reGOH4skeq/9NvDyOL2am/n
         4hyA==
X-Gm-Message-State: AOAM531JKUfI3SOzAmfZo1oqedA/pxZmV6mshF8ZAXtKuduXqZGCCnTJ
        tHcThAnbK276frEQSXiUXYmbP8QmEzx4L2/V
X-Google-Smtp-Source: ABdhPJz4vlmWEyXRQtVC4Lj1sj+KYn4XcVXuDojzatks16AzF0kHPL72CAQHiH8jbtLLC3JWHD5pVw==
X-Received: by 2002:a17:906:730b:: with SMTP id di11mr42281246ejc.97.1637967981599;
        Fri, 26 Nov 2021 15:06:21 -0800 (PST)
Received: from localhost ([31.134.121.151])
        by smtp.gmail.com with ESMTPSA id sd2sm4241198ejc.22.2021.11.26.15.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Nov 2021 15:06:21 -0800 (PST)
From:   Sam Protsenko <semen.protsenko@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Lee Jones <lee.jones@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: [PATCH] dt-bindings: mfd: syscon: Add samsung,exynos850-sysreg
Date:   Sat, 27 Nov 2021 01:06:20 +0200
Message-Id: <20211126230620.478-1-semen.protsenko@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document Samsung Exynos850 compatible for system registers.

Signed-off-by: Sam Protsenko <semen.protsenko@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index 5de16388a089..fdd96e378df0 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -57,6 +57,7 @@ properties:
               - samsung,exynos4-sysreg
               - samsung,exynos5-sysreg
               - samsung,exynos5433-sysreg
+              - samsung,exynos850-sysreg
               - samsung,exynosautov9-sysreg
 
           - const: syscon
-- 
2.30.2


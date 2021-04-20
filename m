Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C3509365DAF
	for <lists+devicetree@lfdr.de>; Tue, 20 Apr 2021 18:49:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232901AbhDTQuV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Apr 2021 12:50:21 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:49783 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232473AbhDTQuV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Apr 2021 12:50:21 -0400
Received: from mail-ej1-f69.google.com ([209.85.218.69])
        by youngberry.canonical.com with esmtps (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
        (Exim 4.86_2)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lYtZM-0003Ub-CE
        for devicetree@vger.kernel.org; Tue, 20 Apr 2021 16:49:48 +0000
Received: by mail-ej1-f69.google.com with SMTP id 16-20020a1709063010b029037417ca2d43so5019527ejz.5
        for <devicetree@vger.kernel.org>; Tue, 20 Apr 2021 09:49:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Lf3R3UlD7H86mpi6A7mTNMrbIdtgoRuo/+qKw5ATzUM=;
        b=BfcznQKcQGYzZ0hIPYztarKak/HOECTm8QuJBE8GZsY+87ENvaqY0o0AbMcoOeNUL3
         fTZ26p/wufwGYt9gbOPCzyYDnWWJZRkcg/x+YpKoZdAy8T3sOH7ZJa9K8ROW6mt5JTkZ
         Efs3BPhPnakB6y6NBMRUcwfJ+8vPCSFQze3Va/6nQlEZOedzHh0vKHZhJdRKQjeMe9kg
         4GtpRNybPK9vncxzWwjSbI3sv1DH91qnsyGyslUppm4pLezkmYZdsCSl/3C6FSvT2VBM
         uuqCvvyGZK/FciR1FVPofTlFD5Zh9832mVcYzQ5EFthBMWuUbBpVX4H0k5DtXw1m751j
         bVZw==
X-Gm-Message-State: AOAM531a4wol9W3dHVtbHel/qkcGvuQxKnDPnTtErm6eu2qRaZ+t/IU3
        gzvIBVvWBcBBA2sV7MhAYCwgjZ0EizBZOaaOlhPUlMeNLN8W5hHC0gQHH0k9kkmoZ6WCkwW9Z3u
        dYtBClydYnfbeJ/qhR+aRoawFSqrTUEyZ74Cl0uw=
X-Received: by 2002:a17:907:3ac1:: with SMTP id fi1mr28609678ejc.139.1618937388090;
        Tue, 20 Apr 2021 09:49:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwqnsgxDKVVF3jVQIl+y95qKX0R7WnE2ZWOWN34qb+/L0a4hZg40fBDZLGnkF70sm5SFbLapg==
X-Received: by 2002:a17:907:3ac1:: with SMTP id fi1mr28609664ejc.139.1618937387922;
        Tue, 20 Apr 2021 09:49:47 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-180-75.adslplus.ch. [188.155.180.75])
        by smtp.gmail.com with ESMTPSA id c12sm18252873edx.54.2021.04.20.09.49.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Apr 2021 09:49:47 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 01/11] ARM: dts: exynos: enable PMIC wakeup from suspend on Itop Core
Date:   Tue, 20 Apr 2021 18:49:33 +0200
Message-Id: <20210420164943.11152-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RTC on S5M8767 PMIC can wakeup the system from suspend to RAM.
Add a generic property for this.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
index 4583d342af39..b3726d4d7d93 100644
--- a/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
+++ b/arch/arm/boot/dts/exynos4412-itop-scp-core.dtsi
@@ -163,6 +163,7 @@ s5m8767: pmic@66 {
 						 <1025000>, <950000>,
 						 <918750>, <900000>,
 						 <875000>, <831250>;
+		wakeup-source;
 
 		regulators {
 			ldo1_reg: LDO1 {
-- 
2.25.1


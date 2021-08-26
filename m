Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 387E23F8692
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 13:33:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242126AbhHZLd5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 07:33:57 -0400
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:35516
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S242115AbhHZLd4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 26 Aug 2021 07:33:56 -0400
Received: from mail-wm1-f70.google.com (mail-wm1-f70.google.com [209.85.128.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 0DFF83F04D
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 11:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1629977589;
        bh=kYFwI5bf0hgsh4sNNcsO9jj9JWhqnTk4EqHLIiTMB7Y=;
        h=From:To:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version;
        b=Z0oSTdEAJj7VEqB40kV+4QjbeWSWOHgdY2SwqA5urwEY5QkDF1xm4S5G9SN0vViDG
         +1y/qTFR1duYI6xxoihOtmzQixsvK9F/xWiNFTOEY9B5Wmc1YpSb026REwR250QESy
         x1jHTnCCBRLzfivWfE5WorG6VcvzJ3JblF4/05vRR1W/xAPY82CUWeqs6EncSPOSpl
         9xPPm6/rXstHiiWxxzaUNVURAfnVrPpDz2RRsRxgnDwfB3cNt5B3SL2JEuqUKW9Hk9
         kpfBNkAw3gwT8I/PUnzYrPyyZ+aNw3xxhqACUMqJO+xVr1IDaQPRhlB3GB4UFiET5F
         mfCcN5HDlmMgA==
Received: by mail-wm1-f70.google.com with SMTP id a201-20020a1c7fd2000000b002e748bf0544so4213638wmd.2
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 04:33:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kYFwI5bf0hgsh4sNNcsO9jj9JWhqnTk4EqHLIiTMB7Y=;
        b=OzcD11qU1vGN9O6qX+s2WUL5+tz3gKjRGVKnPfK3WLu4z+O0EJNgkCOxyJS85VqOo1
         2rYEgMvP3D2ia4BZJzFUUsZK7j4ZIrm0tvaex1jyF+qHAWt6hrG71EcTvK7wdOiceXRE
         q965CdgQ/xBvZ3SY8ZdWBY3A5bWxxxC00GLmtT08R7wAQ+BEcTZmkx5aXw9B78HPJ4l4
         mRYyGAKFtqNn4IxEYV/vI/doxhiJn9ns7ppVYLaVB7F4Wl6sbuXivrmr3jLQEeiv/KCx
         ngwQJWL6UOnatdMNHByrCSFvSQTnVphjJWMkw125axfVZvHZWIxGLQWNJ+/faaUVVMlR
         Oy5w==
X-Gm-Message-State: AOAM531IegPZC6zGN+rWI6ZLidQmcl8AAbjMrjz2cI5FVEcQGzsDqgbJ
        NZai0bAaWSR6GfVisA8Ydb3+wwr/oCJBzUcsPcW5dt5R8mBRqmC8RKi4XLWF2IkY1SZMIfN1GJ5
        NFK5BZohoIxVGWJmX3GnA3hkG+M1Gxj7SQrkZVW0=
X-Received: by 2002:a1c:40c:: with SMTP id 12mr13743869wme.158.1629977588713;
        Thu, 26 Aug 2021 04:33:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzVoZq9Kz5XD6Dr6h7y964CCmiiwv3pXnGIfcg7+LBMroBUJlQ9gVUGlGyKmlx9o48qpwe2/A==
X-Received: by 2002:a1c:40c:: with SMTP id 12mr13743857wme.158.1629977588532;
        Thu, 26 Aug 2021 04:33:08 -0700 (PDT)
Received: from localhost.localdomain ([79.98.113.74])
        by smtp.gmail.com with ESMTPSA id n4sm2730799wri.78.2021.08.26.04.33.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Aug 2021 04:33:07 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Borislav Petkov <bp@alien8.de>, York Sun <york.sun@nxp.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 3/3] arm64: dts: freescale: ls1046a: drop unused big-endian property from DDR controller
Date:   Thu, 26 Aug 2021 13:32:31 +0200
Message-Id: <20210826113231.93232-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210826113049.92962-1-krzysztof.kozlowski@canonical.com>
References: <20210826113049.92962-1-krzysztof.kozlowski@canonical.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The big-endian is default setting for DDR controller as expressed in
bindings and such property was never documented for Freescale DDR memory
controller.  The driver also does not parse this property at all.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
index 687fea6d8afa..b06c285b6534 100644
--- a/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
+++ b/arch/arm64/boot/dts/freescale/fsl-ls1046a.dtsi
@@ -277,7 +277,6 @@ ddr: memory-controller@1080000 {
 			compatible = "fsl,qoriq-memory-controller";
 			reg = <0x0 0x1080000 0x0 0x1000>;
 			interrupts = <GIC_SPI 144 IRQ_TYPE_LEVEL_HIGH>;
-			big-endian;
 		};
 
 		ifc: ifc@1530000 {
-- 
2.30.2


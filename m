Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8909221B289
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 11:46:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727924AbgGJJqG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 05:46:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56484 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727920AbgGJJqE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 05:46:04 -0400
Received: from mail-pj1-x1042.google.com (mail-pj1-x1042.google.com [IPv6:2607:f8b0:4864:20::1042])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 86A6FC08C5CE
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:04 -0700 (PDT)
Received: by mail-pj1-x1042.google.com with SMTP id t15so2374786pjq.5
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 02:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jc4j0zmTeuKM0lc2BizwkCFwAO5j79CRqfTY47zNpAM=;
        b=Cm0Pk0tMv9wqV2IrM93XQT/9PDI10+I7Y+/NvLF94mFJkFB9Eoo5lpmXy1DO2CCxtB
         tjlnkUHOEdT30VbCxE9H4r11bSJdnsIuGU+vPkqsvC9A8/KFw0ZaDYxA7g9iAMBF7dlu
         9r5NYRVAW87sf6laWvIHbD+bsSxqDxEUIDXwg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jc4j0zmTeuKM0lc2BizwkCFwAO5j79CRqfTY47zNpAM=;
        b=H1hUfRLFSMJxteM+0R5IAGKUf3Gh2ZCiMXmj4U1ytHknbVtl8QF7Kd56cySVka6kPp
         3YXaRvC05iO99eG/qPC7EuKr0zKg3nR32Z+SuN7vHRBSuPQapuklNM01Sxi7tRHT+HLl
         jpgkktYoAakNzVvi45Hi7AHEqFXLjnZ25dmG0JXXk80WS+unTiesc9ERjWsY/+ue93Ou
         d3Hs+UYDMCt7kpudR0kivP+IOJSelmpSOB2PAWsF2RmYLlCAgsSR/riLqANGJPVVS6TY
         /BFj9IjwnjhE/vMd9+dqooZ9X9/O+N2MVlkmQ7fW/AM507lOcydLZkT3sUEuXqiqv6F1
         u+mA==
X-Gm-Message-State: AOAM530nFQeC2YlPXaFtd8joQI0wXpn4DOMawiwS5HsoVsuy5MapS24C
        mRcAbEQonJuacfDlwwECjvhttw==
X-Google-Smtp-Source: ABdhPJwgMJyQdZFFazYHTx86QU+TKCAIqoWpfY67XYRmUas73Svg3wmHcIJWkqMSCed7gMobcQX/FA==
X-Received: by 2002:a17:902:9a0a:: with SMTP id v10mr2487615plp.134.1594374364062;
        Fri, 10 Jul 2020 02:46:04 -0700 (PDT)
Received: from shiro.work ([2400:4162:2428:2f01:7285:c2ff:fe8e:66d7])
        by smtp.googlemail.com with ESMTPSA id z9sm5133213pgh.94.2020.07.10.02.46.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 02:46:03 -0700 (PDT)
From:   Daniel Palmer <daniel@0x0f.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, linux@armlinux.org.uk, arnd@arndb.de,
        afaerber@suse.de, maz@kernel.org, w@1wt.eu,
        Daniel Palmer <daniel@0x0f.com>, Rob Herring <robh@kernel.org>
Subject: [PATCH v5 01/12] dt-bindings: vendor-prefixes: Add mstar vendor prefix
Date:   Fri, 10 Jul 2020 18:45:33 +0900
Message-Id: <20200710094544.430258-2-daniel@0x0f.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20200710094544.430258-1-daniel@0x0f.com>
References: <20200710094544.430258-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add prefix for MStar Semiconductor, Inc.

Signed-off-by: Daniel Palmer <daniel@0x0f.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 9aeab66be85f..b09b6c9911c3 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -680,6 +680,8 @@ patternProperties:
     description: Microsemi Corporation
   "^msi,.*":
     description: Micro-Star International Co. Ltd.
+  "^mstar,.*":
+    description: MStar Semiconductor, Inc. (acquired by MediaTek Inc.)
   "^mti,.*":
     description: Imagination Technologies Ltd. (formerly MIPS Technologies Inc.)
   "^multi-inno,.*":
-- 
2.27.0


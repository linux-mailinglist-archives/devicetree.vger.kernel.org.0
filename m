Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E689A4143FA
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 10:44:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234026AbhIVIqX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 04:46:23 -0400
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:51782
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S234018AbhIVIqW (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 Sep 2021 04:46:22 -0400
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com [209.85.221.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 03C00402DC
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 08:44:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1632300291;
        bh=uiMxeL0gXr2dTqfDCAVU08QHmTYD3WPNowiXOrxuH3E=;
        h=From:To:Subject:Date:Message-Id:MIME-Version:Content-Type;
        b=CXkHPD764IYmuAL2vO4sv/f7MV8ZmfEaRpKD9SZFid0nmfO16vrFxeTJvEF/U3MHn
         t1IdXNCDmFk7oQX0NREXTwXGmKccQUg/qVoW8rHim1mrVosTxfPmLyOrqvbiISK1y4
         EGtLUF7o5oxd5QkwIAy1R1IRmfFyul2BKR7qRpP9/Sz/P//6G9gKS+IIg6MbgDw3Pm
         k8FupMp7JZ/17DWL8c6kN75XXKrFaQEH9l52mZqMDQhUcm7w0fVCFyVLgX+JymGx69
         /S4sfjug/DIazjK6beKGG8YflHkhgK1+V3DyXn68APY/mNU1zLye3am/aWTvyrURKT
         dJUPPVJR7HwvQ==
Received: by mail-wr1-f71.google.com with SMTP id c2-20020adfa302000000b0015e4260febdso1433432wrb.20
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 01:44:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uiMxeL0gXr2dTqfDCAVU08QHmTYD3WPNowiXOrxuH3E=;
        b=cEG0wCIDFg5Kl3As6EI7iPMj46aoyvKqSJezPT2DqC1w9Rk/kZJUkYkTnohMhY0Uj6
         mMC5Rlje5AglUevEPVJdNGRLYn7H57HFCt+tVa4S/VnPNVWzXHmjwO3OpmesosWKriR+
         EZn1iiXd+ZGdif873AUw6HZAqUUgFzroaGV6JARmLXEdHyeSeEOiaHfAOnbGnu0MBb+S
         Epgq1o8cue3xgpchFJjJhzIAIocRsO46RRVnOa9xjiOes66BvClaupFDosuL1eun+f1e
         6CyK+orp0VOD87SPHNLFUpO7ti+lesaiBGERt/HjBqdvFw/wQuKBREQv6jV1Ha2HfkGF
         EYNw==
X-Gm-Message-State: AOAM530GHhvCk+H+SvB9twoqVsNcB5KTW/dKBuAm+g0vyQMteiVDjU+9
        3GsYDI14551vpP+iuGkXPDV+2qhn25n/WLaSad/glEa2jmBm5mnzC0fN+aKYCAuao4/KMDH79wH
        kyYPmbmBAkkzOl35xVOvKVimNoArqAUx6SFVNqzQ=
X-Received: by 2002:a05:600c:35d0:: with SMTP id r16mr9039077wmq.26.1632300290700;
        Wed, 22 Sep 2021 01:44:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyC680U0RwyaOjK1SOsZp30UKUvzdNakgqk61+QjWsbjiDhpXDKy1rZwHZZ9P4p0zlY3hcaFA==
X-Received: by 2002:a05:600c:35d0:: with SMTP id r16mr9039063wmq.26.1632300290511;
        Wed, 22 Sep 2021 01:44:50 -0700 (PDT)
Received: from localhost.localdomain (lk.84.20.244.219.dc.cable.static.lj-kabel.net. [84.20.244.219])
        by smtp.gmail.com with ESMTPSA id o7sm1851490wro.45.2021.09.22.01.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Sep 2021 01:44:50 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Michael Ellerman <mpe@ellerman.id.au>,
        Benjamin Herrenschmidt <benh@kernel.crashing.org>,
        Paul Mackerras <paulus@samba.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [RESEND PATCH 1/2] powerpc/powermac: add missing g5_phy_disable_cpu1() declaration
Date:   Wed, 22 Sep 2021 10:44:14 +0200
Message-Id: <20210922084415.18269-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

g5_phy_disable_cpu1() is used outside of platforms/powermac/feature.c,
so it should have a declaration to fix W=1 warning:

  arch/powerpc/platforms/powermac/feature.c:1533:6:
    error: no previous prototype for ‘g5_phy_disable_cpu1’ [-Werror=missing-prototypes]

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 arch/powerpc/include/asm/pmac_feature.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/powerpc/include/asm/pmac_feature.h b/arch/powerpc/include/asm/pmac_feature.h
index e08e829261b6..7703e5bf1203 100644
--- a/arch/powerpc/include/asm/pmac_feature.h
+++ b/arch/powerpc/include/asm/pmac_feature.h
@@ -143,6 +143,10 @@
  */
 struct device_node;
 
+#ifdef CONFIG_PPC64
+void g5_phy_disable_cpu1(void);
+#endif /* CONFIG_PPC64 */
+
 static inline long pmac_call_feature(int selector, struct device_node* node,
 					long param, long value)
 {
-- 
2.30.2


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A01B32F78F9
	for <lists+devicetree@lfdr.de>; Fri, 15 Jan 2021 13:30:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728879AbhAOMaV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 07:30:21 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732001AbhAOMaV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 07:30:21 -0500
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com [IPv6:2607:f8b0:4864:20::d36])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6BD3C06179B
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 04:29:02 -0800 (PST)
Received: by mail-io1-xd36.google.com with SMTP id q1so17702428ion.8
        for <devicetree@vger.kernel.org>; Fri, 15 Jan 2021 04:29:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=TlMXZe9vbR6LJlfX0Afcu1jiqjYyCt8OtEseGfcdfxI=;
        b=JRSFpz/o2h699by61WGjBL6YeNPRKRI8m5GuG7GlTRrJrIYzpTEzbmALPn+fggHkWM
         urLsoIAKcdLa0eK498YbNvM/1Oa4vpb3kgJuSWcEvd0r/JHarQbFHs2uVguZRCt7JuVr
         Lnu/yHHc9udxtFmBXCXZO++HsWlv4zvy1D42TlsR+TIoDMwO8fX85OFU2/kFtRQXOGPB
         jyPVoydNZ5MYKRgf+Eu1iVVIcha/NHsxxEPkKrHDXHSzQwL0+QIGZ40hneqK5Mdj+i19
         wrJ4OrMTd1p++5NPJ62PjYriuxkrtGINcIpRTXYUyj2OG5blziYq1cCRJmqg9Ze8aols
         9JHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=TlMXZe9vbR6LJlfX0Afcu1jiqjYyCt8OtEseGfcdfxI=;
        b=djwVAnbV4EnjpE8jj7fdWzJa32BGHmYnWeqoYHei86c8WJWBlLEbiLWqnBUCyqKNhD
         Z/kYXduUrkQEgqfxKKD3uVPT8T2MhZZMNqMFJCAzLXE9lWEkoQ/IjbGotVWyGOX0IP9B
         x5E7LgjvbOUMN3X6ETTSzaNToR2IpDpCqi2+4BQ0fwKm6iw5slt6TdYHz9OovJYF0Hv1
         ay5VjCuMuURFMy84Qkf6gIwRJ2BKt9o4YdAHLNaFellJQbst7bZdwEnhAGk3elaa3Fma
         k16FIuMPAHapD6XyOn68ePJncuei2bA4U2OXP82REAP5usSLKxnc4ULdayVFe5cskhK8
         1QCw==
X-Gm-Message-State: AOAM531nFmyy40eSKSU+UJ+v8N42f3IHZfNGl1SaKMMH8dCHBOtfu9Ct
        O9aNVlVANEC7tf9haWLfEsDlew==
X-Google-Smtp-Source: ABdhPJxeTbQ33+T+xfyMgt90nbOdw2e/+PqiAnA7XCniJ2gEb1MAAEtSOPyNtLKlDhe/I1qdi+Gxxg==
X-Received: by 2002:a92:d484:: with SMTP id p4mr6738423ilg.63.1610713742338;
        Fri, 15 Jan 2021 04:29:02 -0800 (PST)
Received: from beast.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id a9sm3828509ion.53.2021.01.15.04.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Jan 2021 04:29:01 -0800 (PST)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, davem@davemloft.net, kuba@kernel.org
Cc:     evgreen@chromium.org, bjorn.andersson@linaro.org,
        cpratapa@codeaurora.org, subashab@codeaurora.org,
        rdunlap@infradead.org, devicetree@vger.kernel.org,
        netdev@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 net-next 2/4] dt-bindings: net: remove modem-remoteproc property
Date:   Fri, 15 Jan 2021 06:28:53 -0600
Message-Id: <20210115122855.19928-3-elder@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210115122855.19928-1-elder@linaro.org>
References: <20210115122855.19928-1-elder@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The IPA driver uses the remoteproc SSR notifier now, rather than the
temporary IPA notification system used initially.  As a result it no
longer needs a property identifying the modem subsystem DT node.

Use GIC_SPI rather than 0 in the example interrupt definition.

Signed-off-by: Alex Elder <elder@linaro.org>
---
v2: Now include <.../arm-gic.h> instead of <.../irq.h> in example.

 .../devicetree/bindings/net/qcom,ipa.yaml         | 15 +++------------
 1 file changed, 3 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index 8a2d12644675b..8f86084bf12e9 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -113,13 +113,6 @@ properties:
       performing early IPA initialization, including loading and
       validating firwmare used by the GSI.
 
-  modem-remoteproc:
-    $ref: /schemas/types.yaml#/definitions/phandle
-    description:
-      This defines the phandle to the remoteproc node representing
-      the modem subsystem.  This is requied so the IPA driver can
-      receive and act on notifications of modem up/down events.
-
   memory-region:
     maxItems: 1
     description:
@@ -135,7 +128,6 @@ required:
   - interrupts
   - interconnects
   - qcom,smem-states
-  - modem-remoteproc
 
 oneOf:
   - required:
@@ -147,7 +139,7 @@ additionalProperties: false
 
 examples:
   - |
-        #include <dt-bindings/interrupt-controller/irq.h>
+        #include <dt-bindings/interrupt-controller/arm-gic.h>
         #include <dt-bindings/clock/qcom,rpmh.h>
         #include <dt-bindings/interconnect/qcom,sdm845.h>
 
@@ -168,7 +160,6 @@ examples:
                 compatible = "qcom,sdm845-ipa";
 
                 modem-init;
-                modem-remoteproc = <&mss_pil>;
 
                 iommus = <&apps_smmu 0x720 0x3>;
                 reg = <0x1e40000 0x7000>,
@@ -178,8 +169,8 @@ examples:
                             "ipa-shared",
                             "gsi";
 
-                interrupts-extended = <&intc 0 311 IRQ_TYPE_EDGE_RISING>,
-                                      <&intc 0 432 IRQ_TYPE_LEVEL_HIGH>,
+                interrupts-extended = <&intc GIC_SPI 311 IRQ_TYPE_EDGE_RISING>,
+                                      <&intc GIC_SPI 432 IRQ_TYPE_LEVEL_HIGH>,
                                       <&ipa_smp2p_in 0 IRQ_TYPE_EDGE_RISING>,
                                       <&ipa_smp2p_in 1 IRQ_TYPE_EDGE_RISING>;
                 interrupt-names = "ipa",
-- 
2.20.1


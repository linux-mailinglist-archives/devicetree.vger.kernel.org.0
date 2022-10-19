Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F329A60508C
	for <lists+devicetree@lfdr.de>; Wed, 19 Oct 2022 21:37:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbiJSThG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 19 Oct 2022 15:37:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230289AbiJSTg4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 19 Oct 2022 15:36:56 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D4E11849A4
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 12:36:54 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id d6so29850203lfs.10
        for <devicetree@vger.kernel.org>; Wed, 19 Oct 2022 12:36:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=TManQgzHQ6XphXtlKXuYjSPihnY9oImMeI5Fsm/kiVw=;
        b=Fu5/fD92PNQDscJzpZhAxROpgQu8MYPPeZJmEnHdHXVe7t0pF6KNkEXLv/A79RT5lq
         mGWz2rp75cnTEpNgFTAU4AWcMTLKCsYBTXAtpX4MfDEOYq49/XLodFZ5THSPR5q1tk+Y
         Ar329JxMrIQH/jQqu4dChKNzgT9mou3wNixdhI6R/P4zzJln//K8btuh9uRNnJVaDvkj
         rEmdGzqRz/nj9y7W9vxqkMh2xrz94OW5whZFzISj3zHGvXH1NUNNDEa1q85mlaKtlo4K
         rADVDjn9bmTDLEwlZhFRASojOxn4lvkuqcg8NDFK6/cUhvoxRaKOrceWyMVmVe7mTTSz
         t5Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=TManQgzHQ6XphXtlKXuYjSPihnY9oImMeI5Fsm/kiVw=;
        b=Ulv/FHEZJomAJPcfpwrjnqNyNwnhIffNoP0SFxfD1ZUWgoenfkbOxwdIkxNVzTpKQt
         RaL8vYQrSZzHVPMWEhKmALrRzXB2fHeVskWj68aa1uPSfFsSSt3bdZEhUfJGh55C1Rhw
         WushtyvEBiCxBDduQxxxkYCszjwwwfrESR0mTDuObZ3P3acbqTeQxxU442o1zQ86M1kG
         dgXthPRWV5OhaI1QJWA7ednYp7LBgyOBzLMn/7idNNOsV5kIFVx4hHR+6jcJzY4gTYOC
         WSPmTnrNDrBRUa/F3shXFilR1Vh189kjDbtdSoE3ilrOPa4nX1poz8JxUhap6gfxoj5S
         v2hA==
X-Gm-Message-State: ACrzQf22S3NMWvljZC38jJ8l7Bc88bCnywC9Opjh3ZGUThG6LY+Mu+Hz
        7QZPwGEAyXWfXmooUQVMTI+qpQ==
X-Google-Smtp-Source: AMsMyM6+rcbNzUmRYys01c5wdoohS1ZFuRzf9DQSiQ2JnTWR1FX8F3hKJWno1hcMQSX8qTcNXTQbQg==
X-Received: by 2002:a19:4918:0:b0:48c:e6a0:c8d8 with SMTP id w24-20020a194918000000b0048ce6a0c8d8mr3432684lfa.679.1666208212372;
        Wed, 19 Oct 2022 12:36:52 -0700 (PDT)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id k26-20020ac2457a000000b004972b0bb426sm2392465lfm.257.2022.10.19.12.36.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Oct 2022 12:36:52 -0700 (PDT)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
Cc:     bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>
Subject: [PATCH 1/2 v3] dt-bindings: ARM: add bindings for the D-Link DWL-8610AP
Date:   Wed, 19 Oct 2022 21:34:48 +0200
Message-Id: <20221019193449.3036010-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The D-Link DWL-8610AP is a pure access point with ethernet in
and wireless (both 2.4GHz and 5GHz) out.

Cc: devicetree@vger.kernel.org
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
ChangeLog v1->v3:
- Collect Rob's ACK
- Resend with the main DTS patch
---
 Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
index 958df32b4899..2657f9b82ecd 100644
--- a/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
+++ b/Documentation/devicetree/bindings/arm/bcm/brcm,bcm4708.yaml
@@ -97,6 +97,7 @@ properties:
       - description: BCM53016 based boards
         items:
           - enum:
+              - dlink,dwl-8610ap
               - meraki,mr32
           - const: brcm,bcm53016
           - const: brcm,bcm4708
-- 
2.34.1


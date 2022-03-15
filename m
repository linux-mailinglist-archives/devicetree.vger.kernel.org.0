Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E33E4DA3C0
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 21:09:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351560AbiCOUK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 16:10:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230343AbiCOUK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 16:10:57 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id 5E2DA50E23
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1647374984;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=gzuNLYDsbc4LQ+eCCeLM8v+rRX11qjhaA0tgT5aZNJM=;
        b=jJse25dlZUPFGwcyBA3kmFiSOR0swrdS0/8ZL3c3mTp9i3nXNn6jnLtWkbNPvPPyzIOLdJ
        dyFREd1Zs8drPTv06YC4F67hrA/W7SaC5LmwZL/WQaM15WnvgvF0yBO3zqVJ9oKT12lV0k
        AGHY2RVrvqbFOh26gvhaGNY4zMUxmQQ=
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com
 [209.85.160.197]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-561-KRlRfrAONUigapIvrsz9XQ-1; Tue, 15 Mar 2022 16:09:43 -0400
X-MC-Unique: KRlRfrAONUigapIvrsz9XQ-1
Received: by mail-qt1-f197.google.com with SMTP id f22-20020ac840d6000000b002dd4d87de21so85034qtm.23
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 13:09:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=gzuNLYDsbc4LQ+eCCeLM8v+rRX11qjhaA0tgT5aZNJM=;
        b=gWOrvcMF2cF17RarbZE3jFm8snMaZCPb0Q8eWsgUc8sZZGvX69JSXVvMRrkiTkUr4j
         2rNYR7dkWGornYrcR6BVT7rhu8Pqmsn2dsBdKJG0+EmPF0m3TBYuPWbiQSzsjx9ZN1qB
         ec8aBruA4N4Fr8gQTY+GU387XnKI9Uzw2oJGeoNhIQqPz7ZOSO73C8pNshHf1q9Us/QV
         7w1r7glBFl4/MUOzaDtrGb4QB61e43yCH6AEvn59Oo7SnlGVtiDBRvJn/rlzJDsLNMGF
         nQW3otaJkZHIlIlNwwN6XSvkcSwoELkBKc/beSGCXREtSDruw6gJR5WN7LGmB6f1Esw4
         wgxA==
X-Gm-Message-State: AOAM530NEV1R72inebfWvcJ5S9fJA3QWh4F8dpXYnpOyvNu2ZBqFG+BL
        9mCHkRAPtRT/mMfcCQNVAjwToL0XHLeRz3s3HRCsYRnXx4GZ+/G5+eR8Jtxr6+C4i4B18zWlNmq
        ZKnt0jdn8buKyV1zHs2XiaQ==
X-Received: by 2002:a05:6214:2021:b0:435:c2f0:817c with SMTP id 1-20020a056214202100b00435c2f0817cmr22526822qvf.1.1647374982634;
        Tue, 15 Mar 2022 13:09:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwQGJ2hEhXw4BbiMPJAtVDm4Wh2ugdd8oUEZ2eae1W1C3kjSaJzxn/pmqNT6dQ+bbCeD+X7BA==
X-Received: by 2002:a05:6214:2021:b0:435:c2f0:817c with SMTP id 1-20020a056214202100b00435c2f0817cmr22526815qvf.1.1647374982483;
        Tue, 15 Mar 2022 13:09:42 -0700 (PDT)
Received: from fedora.hitronhub.home (modemcable200.11-22-96.mc.videotron.ca. [96.22.11.200])
        by smtp.gmail.com with ESMTPSA id 197-20020a3703ce000000b0067af869ffa6sm9582433qkd.127.2022.03.15.13.09.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Mar 2022 13:09:42 -0700 (PDT)
From:   Adrien Thierry <athierry@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Adrien Thierry <athierry@redhat.com>,
        Rob Herring <robh+dt@kernel.org>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Stefan Wahren <stefan.wahren@i2se.com>,
        devicetree@vger.kernel.org, linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Gaston Gonzalez <gascoar@gmail.com>,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        linux-staging@lists.linux.dev
Subject: [PATCH 1/2] dt-bindings: soc: bcm: bcm2835-vchiq: Add support for bcm2711
Date:   Tue, 15 Mar 2022 16:09:28 -0400
Message-Id: <20220315200929.74952-2-athierry@redhat.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220315200929.74952-1-athierry@redhat.com>
References: <20220315200929.74952-1-athierry@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a new compatible string for BCM2711. This is the chip used on the
Raspberry Pi 4.

Signed-off-by: Adrien Thierry <athierry@redhat.com>
---
 .../devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml     | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
index e04439b3355b..599bd283df1b 100644
--- a/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
+++ b/Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
@@ -27,6 +27,12 @@ properties:
               - brcm,bcm2836-vchiq
           - const: brcm,bcm2835-vchiq
 
+      - description: BCM2711 based boards
+        items:
+          - enum:
+              - brcm,bcm2711-vchiq
+          - const: brcm,bcm2711-vchiq
+
   reg:
     description: Physical base address and length of the doorbell register pair
     minItems: 1
-- 
2.35.1


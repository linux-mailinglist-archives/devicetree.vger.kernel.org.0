Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34C03737580
	for <lists+devicetree@lfdr.de>; Tue, 20 Jun 2023 22:01:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229809AbjFTUBD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Jun 2023 16:01:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42182 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjFTUBB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Jun 2023 16:01:01 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C29519AA
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:40 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id 46e09a7af769-6b58c7cc06aso1465701a34.1
        for <devicetree@vger.kernel.org>; Tue, 20 Jun 2023 13:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687291240; x=1689883240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uiGy8htbAr2gbvV9bKxQ7HkyWZeBBF9Zy4H9doqhIUA=;
        b=KE71jmYGReSlpMy/QUYSVhc1c3geVKPJHLVtlb5KofZXNCJN1/mxOSatc9yOH44Ml7
         eQ5w0vaBhMnPPKlzuhnup5LYdzwghiS8VjJm1P9L62a1/Kqg8O5bGf0QdIzzT0GAphc0
         JqtZG6a9MLO3ALNJOIyTkFI8mf/wKP1oIcAq7ioX3793fyvluGCqaFjLD3Nzbrg3PHua
         GDFsXS9DozGS1L38tCJ7Nhtd9tR9wAAYx1QmVUJoS9bdB5QqgR8xoF6oD2STKJIwFeWW
         ezU+X9OVPu1ERHM33CxaU7dvQe+Hanqw7Oe8g4lDT/M9aVn4kig418DC9VhBhSPu6cmw
         KUBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687291240; x=1689883240;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uiGy8htbAr2gbvV9bKxQ7HkyWZeBBF9Zy4H9doqhIUA=;
        b=NlMkil28ipwYLoF+b9ZWu5/omkNaYkDRFvH68OQQzNCabCRkuzQImrq7JkJoscuaYA
         t5NvaN+pilinBQeC/k8SKyXn4DZyiCyQhFk2I5BBzjPtUhPJDWhxzCTiYxAYZozMCaea
         3m41rAPCbw4ROYUjNI2x4SgpEIXJcxY9ngoohWdZq0ZM3vycq/Jeg428MfUdRzbYLejO
         aL7egQxEz76Zm6fuT0ldlu6p1+yKDzoRSKqe2mKqNi7nss19cVvOkbVRZ1huKcNqnrAX
         a5FNe6tqwpPLX7x+dl/XMg1gaK4uQxeXyocxRNd+49PL76gN17lpdTNIo+n1GEzQnGbP
         nmHg==
X-Gm-Message-State: AC+VfDzIpNwFU5NPrw9Ay8x9qqnfNMkU0nex2t1ZDQrdT5JnoRZaJ9a+
        21PUH3jum3MDC/Ix31Ll2vQ=
X-Google-Smtp-Source: ACHHUZ7sctlnFdmPLmfHbHVEND1asgL6TfdnosFvx0yf+/if0KXSUnXDWR8CsK4u+l+rgOcOivrZ7g==
X-Received: by 2002:a05:6359:d30:b0:12a:a36:3de9 with SMTP id gp48-20020a0563590d3000b0012a0a363de9mr4862537rwb.13.1687291239892;
        Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y201-20020a81a1d2000000b00569eb609458sm664197ywg.81.2023.06.20.13.00.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Jun 2023 13:00:39 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, mripard@kernel.org, uwu@icenowy.me,
        andre.przywara@arm.com, samuel@sholland.org,
        jernej.skrabec@gmail.com, wens@csie.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 2/3] dt-binding: arm: sunxi: add Anbernic RG-Nano
Date:   Tue, 20 Jun 2023 15:00:21 -0500
Message-Id: <20230620200022.295674-3-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230620200022.295674-1-macroalpha82@gmail.com>
References: <20230620200022.295674-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG-Nano is a portable handheld console from Anbernic which
uses the Allwinner V3s SoC.

Add the board to the list of known board strings.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 013821f4a7b8..a886f8390857 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -56,6 +56,11 @@ properties:
           - const: amarula,a64-relic
           - const: allwinner,sun50i-a64
 
+      - description: Anbernic RG-Nano
+        items:
+          - const: anbernic,rg-nano
+          - const: allwinner,sun8i-v3s
+
       - description: Auxtek T003 A10s HDMI TV Stick
         items:
           - const: allwinner,auxtek-t003
-- 
2.34.1


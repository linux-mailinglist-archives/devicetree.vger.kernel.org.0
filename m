Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4119054F1EC
	for <lists+devicetree@lfdr.de>; Fri, 17 Jun 2022 09:27:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1380228AbiFQH1m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 03:27:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38904 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1380462AbiFQH1j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 03:27:39 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EBD221A5
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 00:27:35 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id n20so337011ejz.10
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 00:27:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=RkyY1zQc+wkSzumHL/lljaTT+2/4ZERv1EN4Z7asU2w=;
        b=xERG2VxM4tcRxozPKAOVE49PUr0ZVUhCJHIGIY8BjQGk16LdIwHM+gIw5vQolLskpA
         JeM396Ryxfx+qwBxi9Geuw5JWz+A/HKj1fLrxGfnvc7PtBrIrFDD5PXTiGmC4ARJANQr
         DCKlus8fiBeKfsjDZNWOJX6XG6My5D8QsQ+xFiwSb+3sx6kDZ59nQuz+6a0AdsEgcXAJ
         h5ns4pFg7UtkY0x4MyaiAyMjXv/U6e1BDiQFGRTcd8639EL9e87Mb0yyUA5LXKBygaZU
         Q2ywaRXOvyifokRlRYhavFhFVx+p8w7n51fQTi11aJYwhCn7GK3gepLsJcEbSERzuse6
         jPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=RkyY1zQc+wkSzumHL/lljaTT+2/4ZERv1EN4Z7asU2w=;
        b=cI7WMnW+8yhgDELBsfh1pJUcl9fikZAm8ltq/XfUdxbWeHW+Jabx9bhIJ1nX3Ac8R+
         NfoZFyzGqh6lJZmYU5J+HweVgSHv2ERDywg7ttgm8AO/3C6diItK/Gyoi7eqIB7xEOHe
         0tNG+h3AdXK6HIotImMLSSz0RLZAo3IP0lllZbh+AnGvVSvhJXTA6W6ypglftV4B2p0o
         vIv8nGFnva7nk1pUoBxjLAXkgsL+uWhGUXpkhvscK1gwtclsX8Fa44P7QDn5s1+58hKM
         Q3ylIFwNvQgUF1x5uP6HAbme0PGJBQo0VeAI/3hMvstNA/Ib0Jv2skl+EDOpOHhyeLjH
         Kfxg==
X-Gm-Message-State: AJIora8fjawrt7Pme9765zFqXJccO7kkBxRjJLmfHymmLvS4xFwikmCr
        U/xde+ce/38WH222DALTLyd4iA==
X-Google-Smtp-Source: AGRyM1skuitnOMjblYlPNwwdPN/hYdQiT4LHsSWSQTM/yaG4ViqU+Z/1sy7nX1EYlZS7F7oG10IIng==
X-Received: by 2002:a17:906:33db:b0:70f:12c0:4ade with SMTP id w27-20020a17090633db00b0070f12c04ademr7911034eja.320.1655450853755;
        Fri, 17 Jun 2022 00:27:33 -0700 (PDT)
Received: from localhost.localdomain ([2001:861:44c0:66c0:d227:8f3c:286a:d9d8])
        by smtp.gmail.com with ESMTPSA id n9-20020a170906840900b006fec56a80a8sm1762556ejx.115.2022.06.17.00.27.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 00:27:33 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     dri-devel@lists.freedesktop.org,
        martin.blumenstingl@googlemail.com, devicetree@vger.kernel.org
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v3 2/6] dt-bindings: display: meson-vpu: add third DPI output port
Date:   Fri, 17 Jun 2022 09:27:19 +0200
Message-Id: <20220617072723.1742668-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220617072723.1742668-1-narmstrong@baylibre.com>
References: <20220617072723.1742668-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1046; h=from:subject; bh=LQlD6Fu3ObIBtey05krAjcgHoTrbx+0w6dwgfJGEYig=; b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBirCyrycIYT5c95AzVhdINNgW+nDNvrU5WWX82Nd9Z I9hXFSuJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCYqwsqwAKCRB33NvayMhJ0aBmEA CiyTyjR1VeKCUk6d+hM4cmyr5iuMn3U9gb5MpoCunBiqjrakoFPCMcqSVEpcqPA9x7IhaB9XJmrKwR VvYXEmIfNtFf8kUDsbbpwa1oisLAvbEw+kklacItIJ3nK2t4tLTljpQFeYgY5ZVENj0c1c49WX9GOq Q8imHKf+JzBRX+SmfOZnGnFS4GD4SqVl+Em+YSzIao68s9VyFxA+RNCv5Jblh2fB6nhJGO9DGsEvo0 NdzdM1DAwftoaVumZefuwzVpZ3stCQe8eiOLa5477MQAyrcIYm2j9dgm6iCnLQxiS5jNhhbtD6j6r0 56zOHNOzd5PIzl7nR2VPluzEs2dwqPg6hCSOfGqDnIxwB7n2pQfwYPTLkAz+TkHFcuLhgrLGV6snPV E2o7RT06OLYigLDikb31GoAF45yQKYiukBnrK51shwdGIxMywmtb1mYNIaR/Y1MPNm2hkkwAtBSzN7 hWS0VQGvG9tzqWm2fCA+qmyFUk8N2yw2hQ2eVaDkta1Un02Guw07WQl08yh8wrYqMQL/3d6cdBhkuP iEyXEGeZ63MpTInEfh+Q163dd3ujrp9JZ1GIqcr5WvjKA9rL0Br5k2NiSOSfKXyPZS9KxUglN5pR+A o2s6Pg0aBIL/dlFyVeSIvp4Y07nhY3rhAopdbKNM3mBVm6pXsNOBVI2gjnEQ==
X-Developer-Key: i=narmstrong@baylibre.com; a=openpgp; fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add third port corresponding to the ENCL DPI encoder used to connect
to DSI or LVDS transceivers.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/display/amlogic,meson-vpu.yaml       | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
index 047fd69e0377..fdb42b14a099 100644
--- a/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
+++ b/Documentation/devicetree/bindings/display/amlogic,meson-vpu.yaml
@@ -96,6 +96,11 @@ properties:
     description:
       A port node pointing to the HDMI-TX port node.
 
+  port@2:
+    $ref: /schemas/graph.yaml#/properties/port
+    description:
+      A port node pointing to the DPI port node (e.g. DSI or LVDS transceiver).
+
   "#address-cells":
     const: 1
 
-- 
2.25.1


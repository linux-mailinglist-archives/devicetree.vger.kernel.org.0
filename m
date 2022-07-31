Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57CD458603A
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237294AbiGaRsb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237125AbiGaRsa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:30 -0400
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com [IPv6:2607:f8b0:4864:20::102d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59A63E0FB
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:28 -0700 (PDT)
Received: by mail-pj1-x102d.google.com with SMTP id f11-20020a17090a4a8b00b001f2f7e32d03so10449539pjh.0
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=otihlVyMOIE7i28HZnhD6bsyK2Sm3/45NZiP/tjiYGM=;
        b=8Fx61NUMEIPENttfmwIKnlpwhaagVvum6juhFc2F//x7pEkjJGCQFkdwMT9RutDdqQ
         PeIYBTx5QNwpFw0AOc+g/kkP+QuTtCYU8QyI/b/y8TqFQWxS0I0Lz2Q7HYbYKsabNhWV
         YRgVjsNgFK1oxGOuxpgOPV/rbnEZ/volpFV5GK5xniPsnAS/rN6N7mO+D3BjArUJIRZA
         f6QURy3zanfQxfHcCoYQ7RRaFo7bThwnai9SFxB2IbzxpyN2yVz++dHlb9t7WUOAvNGd
         t/8DRlyNTT9LrdjbVjYXT+9mIPzQLv38PUsw98tWKV0oneXybd3wndscO3ZV6O5VhMSS
         njdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=otihlVyMOIE7i28HZnhD6bsyK2Sm3/45NZiP/tjiYGM=;
        b=YOA787QK38TRrZdDC0kfnRJPIt0fFGfOU0qc0tWTFjvXvpg9h3gyd4h9pU6KssqSvQ
         zcvinCG4TJVMAxFnTYrKHTXurAeiX32WVVSBOEYGOsiScGSjSun4VGwP7RLJek2GBeD3
         0p3NhOm1xGemkHM82bott4LcRWT/cCEZ3hgN54n6x2QKrwm2HEn8fqRbd5sTBO+Pj68M
         dModUntwdnykJs5LOp2r4vwh0G3ukeAdUqnP5/yeeUBcdXHAU6xv4h68CVj3EswMI4Ow
         o+2QyQ09J8oHErl2YLPWwY8EJ8gH3lE2Tq/cW5qMJ0s9vCuVcT8AJyH7STSDV8yxA84o
         MdFw==
X-Gm-Message-State: ACgBeo1uiUY4c22/AV5yl9hL+1nsQTNpFdMMpluya3Xm2rJogtyWbrYd
        T/A7M4lUD+tFlp1yGF9cfJHBOg==
X-Google-Smtp-Source: AA6agR4xYOAclGYpcXFuoTT5xLbvjqX6WTzvh9e6Wloi3HVCQjCPvfOBwqhk/aQ6SgiBi/LosYIPIg==
X-Received: by 2002:a17:90a:9b03:b0:1f1:85b2:c52b with SMTP id f3-20020a17090a9b0300b001f185b2c52bmr15890706pjp.159.1659289707926;
        Sun, 31 Jul 2022 10:48:27 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:27 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 13/20] dt-bindings: soc: rockchip: Document RV1126 pmugrf
Date:   Sun, 31 Jul 2022 23:17:19 +0530
Message-Id: <20220731174726.72631-14-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible string for Rockchip RV1126 pmugrf.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Rob ack

 Documentation/devicetree/bindings/soc/rockchip/grf.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
index dd7090d668f5..521fbcb8eeb9 100644
--- a/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
+++ b/Documentation/devicetree/bindings/soc/rockchip/grf.yaml
@@ -46,6 +46,7 @@ properties:
               - rockchip,rv1108-grf
               - rockchip,rv1108-pmugrf
               - rockchip,rv1126-grf
+              - rockchip,rv1126-pmugrf
           - const: syscon
           - const: simple-mfd
 
-- 
2.25.1


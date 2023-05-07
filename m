Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB5716F9B46
	for <lists+devicetree@lfdr.de>; Sun,  7 May 2023 22:12:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229533AbjEGUMY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 7 May 2023 16:12:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229877AbjEGUMX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 7 May 2023 16:12:23 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03769268A
        for <devicetree@vger.kernel.org>; Sun,  7 May 2023 13:12:22 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2ac7f53ae44so42076521fa.2
        for <devicetree@vger.kernel.org>; Sun, 07 May 2023 13:12:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683490340; x=1686082340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=j0oMlsF5SDEEhMdl19tTEuihoDClf/oQeFjFMxkZlVw=;
        b=Nujs+2jVtS4Fi7A+d9silFA5mT0hVc+aJooQZeBH56r0NWGqw/nK7f/sjW/zVXhEpj
         /ROAtdzIPNoCCOwhZX/Mam96PCUpV8Yu5q/SGa8uai5d0RhnVNX/563mIaV/lXXUN3PM
         6xULqnez+2wmw5+0h/4A4QbZFQOeihgnO5wUG4b2WkHC0lw4bbrVflH61+lQznBj2fsS
         JI7xSoHkj7Bhx5VzxHEz0D+uMRzGhj4L7OJVhPbWY5HvMSQqVHVyGaSFPyMIgtdyLn4G
         klMqddp/TZT+7ik7OkfSk93z0kEugZgK/1ZsWgZa/e9d7YITuwodAgFfcF8HFA9kP1sn
         dleA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683490340; x=1686082340;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=j0oMlsF5SDEEhMdl19tTEuihoDClf/oQeFjFMxkZlVw=;
        b=Ahv5DUiSBwuPF1054im6/vmk2wzO/1fWXT5uzsSGE6ii7EUetVTLDN1euo1/b+zAep
         SS5CEYfq4scRqkkF5584jX+65oSmfwpMbxIeUBnbQyR9M2qfy7VcX7QTCW4OSw0H20Xi
         OYdsJP3Jtv5QhesS0J3HxNV7CkJ8Y09ZIpNKd6IrhqAwZWTaAsBiegNAsZxdzoYpqGeT
         RgnoeVFaxhMbrbtfmu3iJau0Io58Rhw6sobY+jRupLgQZTL2hbMf443GgkOZ3/O9ezTQ
         jfACCT1f8hb0nfOAcQLGFMDgdRW8zSXE10gJWrMtRSIZR3LfTeGOkp645iQJ5EYzzWHm
         7Frg==
X-Gm-Message-State: AC+VfDzR/BJJW5P7pin8AdG6bSYIEHpmRcfK+m69SM/SikaWTThglC9R
        f9oMBtID0QDWUOdhY6QSHYrpVQ==
X-Google-Smtp-Source: ACHHUZ4r+iKmYkjdqdIeo1Qb6z/OceIsCUnTkyWhYC/0f4Xy5LlxAS/aaMJKPowEHPW3ounu1CxBmg==
X-Received: by 2002:a2e:9e0f:0:b0:2ac:78b0:8aef with SMTP id e15-20020a2e9e0f000000b002ac78b08aefmr2034252ljk.16.1683490340263;
        Sun, 07 May 2023 13:12:20 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id f5-20020a2e3805000000b002ac74f5f022sm916522lja.0.2023.05.07.13.12.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 May 2023 13:12:19 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <rfoss@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 1/3] dt-bindings: display: hdmi-connector: add hdmi-pwr supply
Date:   Sun,  7 May 2023 23:12:16 +0300
Message-Id: <20230507201218.2339014-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
References: <20230507201218.2339014-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Follow the dp-connector example and add hdmi-pwr supply to drive the 5V
pin of the HDMI connector (together with some simple glue logic possibly
attached to the connector).

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../devicetree/bindings/display/connector/hdmi-connector.yaml  | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
index 83c0d008265b..94f75359c6ff 100644
--- a/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
+++ b/Documentation/devicetree/bindings/display/connector/hdmi-connector.yaml
@@ -36,6 +36,9 @@ properties:
     description: GPIO signal to enable DDC bus
     maxItems: 1
 
+  hdmi-pwr-supply:
+    description: Power supply for the HDMI 5v pin connector
+
   port:
     $ref: /schemas/graph.yaml#/properties/port
     description: Connection to controller providing HDMI signals
-- 
2.39.2


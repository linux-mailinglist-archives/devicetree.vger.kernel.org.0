Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C7C56784FD
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 19:34:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230109AbjAWSeC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 13:34:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232012AbjAWSeC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 13:34:02 -0500
Received: from mail-pj1-x1036.google.com (mail-pj1-x1036.google.com [IPv6:2607:f8b0:4864:20::1036])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D89011E8F
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:34:01 -0800 (PST)
Received: by mail-pj1-x1036.google.com with SMTP id s13-20020a17090a6e4d00b0022900843652so16131223pjm.1
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:34:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7cn0U3nFOsG/arCEAWCbnKT9IIs5QdCAGIRMoPtEA28=;
        b=plGCsh5b3Vm2xTrhFqczpELlQ1Hh93Ek4tNc40wfuO23d4mMnCwHdMhzoldABODVp0
         tPG5NOaW4WgnThJQsetrbbX4LxyEs8GdBBiouztx8VnSgTg33Va924eauanenv53CU5z
         GUfwcb/wM7KOTpHGISDSNdJsT4pTWReqljqGU6WuA7zb1FNZlf2gdUGLF0G2qxnTyBK2
         3drU8pF0yp1uqQhebmyhW3P4hc21XGPqHYxX/ydd+XGkvp+fwLVRmSMavkvv+LBtqC2+
         SHT7AZWel7VwgLZa+0Nq7XSMLY3uk27GbRwm4UrH09eSiAalG+ic5L2z0ASmpnCCMt0u
         Hdpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7cn0U3nFOsG/arCEAWCbnKT9IIs5QdCAGIRMoPtEA28=;
        b=EzWtTM8jAzSvo0EnsFa58EGPNEHcE5fy/01MjMVpa3qFmjANsrUEA8jxfytTqR8d3B
         5qkqVx+GpOiJaFZTKb+CM4ijevILhdDSiKpLol3QJAPg+EjpCLP5NEXnNS8txAsx2uY4
         PrxLnANYbQKT907b4lu5G7y9XaKhyTWbFC3AZRR8Xy8ia35WHUlfr+0IvIaGLCJFvcFm
         J5WL7QXuWWbMfCmi8eQrgrpRklsQQ1s/yPICrSn1vl7QY1x5GmLssWMwUsh7cx/7ROvV
         0VcbN2DKb7FALKXPlt01h6P4KPimlLIL1mOXLYE8lIV+ZBOsTe7iaGRxTbEPMFIMxNIy
         D4Dg==
X-Gm-Message-State: AFqh2kqoaTrek/iXGSl5PsUOsNbmqTnynAMNNJdL9rwDNrmdE4fxPGJH
        ziiY5wcSiMKjMOl2u/sYXC+D5w==
X-Google-Smtp-Source: AMrXdXvDk9/AdNRKLC9BqIYCu6XHNGOnFzVco0xPjHYXVJeyK0SqxlceAS8UgTTmR3qYYAEExDFBdw==
X-Received: by 2002:a17:90b:110e:b0:228:cd5d:aa8 with SMTP id gi14-20020a17090b110e00b00228cd5d0aa8mr26068808pjb.30.1674498840975;
        Mon, 23 Jan 2023 10:34:00 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a800b00b002291295fc2dsm7008684pjn.17.2023.01.23.10.33.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 10:34:00 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/4] dt-bindings: display: panel: jadard,jd9365da-h3: Add Radxa Display 8HD
Date:   Tue, 24 Jan 2023 00:03:11 +0530
Message-Id: <20230123183312.436573-3-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230123183312.436573-1-jagan@edgeble.ai>
References: <20230123183312.436573-1-jagan@edgeble.ai>
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

Radxa Display 8HD is a family of DSI panels from Radxa that
uses jd9365da-h3 IC.

Add compatible string for it.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Krzysztof ACK

 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index 9b3b8a95cbc0..41eb7fbf7715 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -18,6 +18,7 @@ properties:
       - enum:
           - chongzhou,cz101b4001
           - radxa,display-10hd-ad001
+          - radxa,display-8hd-ad002
       - const: jadard,jd9365da-h3
 
   reg: true
-- 
2.25.1


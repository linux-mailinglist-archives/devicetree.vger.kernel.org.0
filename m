Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBF186784FA
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 19:33:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231970AbjAWSd4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 13:33:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbjAWSdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 13:33:55 -0500
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2549BB9E
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:33:54 -0800 (PST)
Received: by mail-pj1-x1032.google.com with SMTP id z1-20020a17090a66c100b00226f05b9595so11844113pjl.0
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 10:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=z5IxIuLXIzMBoG0XrU4LAFoYJ8pt4NLCHCLfx4Q13i0=;
        b=MorUgykJS9hHD+eOnge57SyYCmDTGHRccXWQyovP0HhR3EVs++Fn65eUQcaEti7/vK
         2J9VWXEUWM4S/OMzYss2+E+dtxhlx5ddTNOsa2S+9I2E47eS2hct9iEyKkLK5tUU3zo7
         rK3gwTXafWsK/hnCuG41xOtQzja+Um/Xy2z1RRelJ9WLpIrsYc/IVYrmJUEwdb0dtu92
         B1wg9bx8uqmueU6JsdYidmYzgvoOKt9tbfwFchzcIuhBDLYE8Y+1us6KEKhvsyPCFctl
         QOSw3V/nfFndT22+21gc+VW4kHbXMQksWxK1L9poMkafSY5B9UrRChBn200relp/IniW
         8CoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=z5IxIuLXIzMBoG0XrU4LAFoYJ8pt4NLCHCLfx4Q13i0=;
        b=kwAVcCCvDseMP+gzE6rMaHQzMedyKH6nMEnOtUUd74ZmuQbJqG6g2aMElrmvY8kM1O
         2ndJKSTR4gRiwR2S4RWF9aP/y4mkfnrbfI7JUUJJFBThLiUICjJJLbMs+inpUL5EvD7S
         r7E8rE4SXUmWWvQn1AIkoThqxbqj8wHDcRBBuQgJLXeNtw3J4BR+1oRkDmNfG05L99nn
         R+VqqBWFyNFpBDdBOI9G+S+F1IhoK0Jns7i75t8pBn70JmXTbyLlIKTuwRHX3vnAluaL
         agzr4ddKFRRgqPTewYcVVXDTV90N4798YV3HnBFPjstE+PZxDVidUSOwzI75OnMofI3A
         4xSA==
X-Gm-Message-State: AFqh2ko/zHjivr09FzBEJ+PPw2sWLKvnJJxLX/2zDn3qxlAecHBGvDK/
        XO+ObtDxD5u4UKJ+8UBZ+EeMIw==
X-Google-Smtp-Source: AMrXdXu7dm+KTw/8jnZTGEAiJ/9vO0tNyN+nN4lSL9Vl5tGJ2bpDXf6DmweURXjTsknGBNS7R7Sy5g==
X-Received: by 2002:a17:90b:704:b0:223:f131:3604 with SMTP id s4-20020a17090b070400b00223f1313604mr27157008pjz.17.1674498834252;
        Mon, 23 Jan 2023 10:33:54 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a15f:2279:f361:f93b:7971])
        by smtp.gmail.com with ESMTPSA id b11-20020a17090a800b00b002291295fc2dsm7008684pjn.17.2023.01.23.10.33.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 10:33:53 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>
Subject: [PATCH v2 1/4] dt-bindings: display: panel: jadard,jd9365da-h3: Add Radxa Display 10HD
Date:   Tue, 24 Jan 2023 00:03:09 +0530
Message-Id: <20230123183312.436573-1-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
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

Radxa Display 10HD is a family of DSI panels from Radxa that
uses jd9365da-h3 IC.

Add compatible string for it.

Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- new patch

 .../devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml    | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
index c06902e4fe70..9b3b8a95cbc0 100644
--- a/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
+++ b/Documentation/devicetree/bindings/display/panel/jadard,jd9365da-h3.yaml
@@ -17,6 +17,7 @@ properties:
     items:
       - enum:
           - chongzhou,cz101b4001
+          - radxa,display-10hd-ad001
       - const: jadard,jd9365da-h3
 
   reg: true
-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93F6F773EA8
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 18:33:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233040AbjHHQdi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 12:33:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58608 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232889AbjHHQcp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 12:32:45 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C223E3103B
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 08:52:03 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-99bdeae1d0aso812003366b.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 08:52:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691509915; x=1692114715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=r+/8A+T5kJZ2sAJcy7n9I+3axWMphmfRgNl05Gm90p8=;
        b=m1Hd0rphhX4XX1oL3jfFRLoK8/96Lx1LdCC97vIjhspPxw9DaJti+qvmBIwGX/3JQZ
         Fm26SxcEI4uZ+VVfp2WQMP7wIAMvcG3ba0o9Y/0zN1lbKgpgmRYCthZkGpkKGBA+FtN+
         Vb2kLYV0C1hlAFrHywvQxMhI0qvhW0VqUtVyptdKvgXgzJkWO2AtiD/ARyOyQh0shN60
         d7wwJjxcRzRhIsCGOinFLgaZxRA/+p+TakqaxPioJBsynf9yYnFkAxqa6G6Ji0OwNZgY
         VKBgnYFGkFzDGHOXquvdxb6x907Jk1J/StpvCq15klRokHbGkYFXGQeSGjorpXLPLNQU
         Plpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691509915; x=1692114715;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=r+/8A+T5kJZ2sAJcy7n9I+3axWMphmfRgNl05Gm90p8=;
        b=F0NTjxdh0BFpi7nJJHlaRM4NnB3e+vBHYZhhXyRf7CeZ5wtIHgzYtZ6vdaE8C/x5Ia
         WscwJ8Zu8LCB3Na0moovJQFcqThNc4gaMVpMsLDmUFzzb7D9czktcnrS3RsK+ettilmR
         PwJfdfLvcGh0xR3K+NomfQ1jhMuS/IqwZSRcxioNQXigQ95nWOmemqAAc3FHam7nZaCJ
         HLOyyAOOc4woHoLKVRgejAwZM8ybYI5MUJOBmzOBkF4+uYIeJuxccd2ETXNq1Fr3CXdo
         xRDF7XHI5NdvMxspdHuSg7BBV+4+/deg3Hib/vLYt4QW8jT48F21nQhskELPWJZbH/hF
         rUQQ==
X-Gm-Message-State: AOJu0Yw3/mEkGSA9VkKEZL78unt2Y75FlxlPqK3eHxytkqvjN7rchIyK
        lcop3CKAlhM+HkXPessTPWmU8x/jL0fPPpcO5dI=
X-Google-Smtp-Source: AGHT+IGCn2asXBAYQXYX9ZgKLoWcp+AtEuDppAqyRaH1bhY7zh95GS9v1NDzWXazD0FnzkfprrmIWA==
X-Received: by 2002:a5d:6d51:0:b0:317:f7b0:85f with SMTP id k17-20020a5d6d51000000b00317f7b0085fmr1442288wri.33.1691489279549;
        Tue, 08 Aug 2023 03:07:59 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:efd4:f3df:2c50:1776])
        by smtp.googlemail.com with ESMTPSA id e11-20020a5d500b000000b003143c9beeaesm13109420wrt.44.2023.08.08.03.07.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 03:07:59 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, Da Xue <da@libre.computer>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: usb: add device for Genesys Logic hub gl3510
Date:   Tue,  8 Aug 2023 12:07:45 +0200
Message-Id: <20230808100746.391365-2-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230808100746.391365-1-jbrunet@baylibre.com>
References: <20230808100746.391365-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add gl3510 USB 3 root hub device id

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 Documentation/devicetree/bindings/usb/genesys,gl850g.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index cc4cf92b70d1..a7e7142651f8 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -4,7 +4,7 @@
 $id: http://devicetree.org/schemas/usb/genesys,gl850g.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
-title: Genesys Logic GL850G USB 2.0 hub controller
+title: Genesys Logic USB hub controller
 
 maintainers:
   - Icenowy Zheng <uwu@icenowy.me>
@@ -17,6 +17,7 @@ properties:
     enum:
       - usb5e3,608
       - usb5e3,610
+      - usb5e3.626
 
   reg: true
 
-- 
2.40.1


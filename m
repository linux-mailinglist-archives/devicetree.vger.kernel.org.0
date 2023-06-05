Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73A37722006
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 09:49:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229683AbjFEHs6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 03:48:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229491AbjFEHs4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 03:48:56 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95887A1
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 00:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1685951292;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=Wy1ybExd+DdkhzJijCZf2robb5n3TSjvDJzl2U7VfoI=;
        b=hen+y6gJYG3zNhmjy95owTWLaVkcvhf66DckXO0w+8a/fG9NtWGeClJ4Cbbyf1iQnPcntx
        ziFrKB/3UhA4MB0P4KsHN5Fvyaf4Cr1pQpiM3NoaoO4TxLY5lGbwjorcyR885+TXObV3In
        Oh9zaxCMUX6czZUqwHxsiUOuhoumFQQ=
Received: from mail-wm1-f72.google.com (mail-wm1-f72.google.com
 [209.85.128.72]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.3, cipher=TLS_AES_256_GCM_SHA384) id
 us-mta-658-phWephWXPwOEP5oRGK9wOg-1; Mon, 05 Jun 2023 03:48:11 -0400
X-MC-Unique: phWephWXPwOEP5oRGK9wOg-1
Received: by mail-wm1-f72.google.com with SMTP id 5b1f17b1804b1-3f7aad897a5so14219565e9.3
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 00:48:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685951290; x=1688543290;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Wy1ybExd+DdkhzJijCZf2robb5n3TSjvDJzl2U7VfoI=;
        b=KImfsWyNN/Hm7OrYUF3YtAg3vMidQO/UdIWUTcwdhRvddBLl/DEgPka6RpgHYgjNEi
         I7Aa09DJZRWEM8Z2cjkBIqaDnuougmGVMvghvanaEGgj17z8HsuidsimaI8UW/IM2DQ0
         MZtLqFqUMU+J8j2Dd0M0kf3MkSGXHVWlLniC7N2x1B9lYO14ZTXjpOYHEWaaJBvdVGeo
         AJPWh5gEuwNXrq3C8cXkWvrt/wzyVlbldFG8MteeDKtZR/jbgS49D8roMHw4fuJ2RTE0
         R/ysl4/j2QjRFRmTWQ1TvV4l+DNsiLSThl45kvmN+PK+aw8JzjmQeA/7+Q+dH3z1H0Fa
         LYMQ==
X-Gm-Message-State: AC+VfDzqj29B7Rv89rLk671/2jfzWvTaL//AZxpR1FqJGfBuWZO4LWMe
        SDEEKSsgWcPFMqIlR/WGsvWlPeNrRHDxXZuILR50Oilzm4pSZf/1HLE2UcGgKkisejCMVspOmxP
        xH0Azuumt8qWuRaup7C3QWg==
X-Received: by 2002:a05:600c:246:b0:3f6:a66:a36d with SMTP id 6-20020a05600c024600b003f60a66a36dmr6957917wmj.10.1685951290364;
        Mon, 05 Jun 2023 00:48:10 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7eFHg9bKquUpdsiK2KD6fy5tNMuQeT4ijXo/E1E9L9E6LlQGTfx9UJ7jtWPmSqTB0TklZmdQ==
X-Received: by 2002:a05:600c:246:b0:3f6:a66:a36d with SMTP id 6-20020a05600c024600b003f60a66a36dmr6957906wmj.10.1685951290089;
        Mon, 05 Jun 2023 00:48:10 -0700 (PDT)
Received: from minerva.home (205.pool92-176-231.dynamic.orange.es. [92.176.231.205])
        by smtp.gmail.com with ESMTPSA id q21-20020a1ce915000000b003f4fb5532a1sm9715192wmc.43.2023.06.05.00.48.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 00:48:09 -0700 (PDT)
From:   Javier Martinez Canillas <javierm@redhat.com>
To:     linux-kernel@vger.kernel.org
Cc:     Thomas Zimmermann <tzimmermann@suse.de>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Maxime Ripard <mripard@kernel.org>,
        Javier Martinez Canillas <javierm@redhat.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 2/5] dt-bindings: display: ssd1307fb: Remove default width and height values
Date:   Mon,  5 Jun 2023 09:47:50 +0200
Message-Id: <20230605074753.562332-3-javierm@redhat.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230605074753.562332-1-javierm@redhat.com>
References: <20230605074753.562332-1-javierm@redhat.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

A default resolution in the ssd130x driver isn't set to an arbitrary 96x16
anymore. Instead is set to a width and height that's controller dependent.

Update DT schema to reflect what the driver does and make its users aware.

Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
---

 .../devicetree/bindings/display/solomon,ssd1307fb.yaml    | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
index 94bb5ef567c6..e8ed642dc144 100644
--- a/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
+++ b/Documentation/devicetree/bindings/display/solomon,ssd1307fb.yaml
@@ -49,15 +49,15 @@ properties:
 
   solomon,height:
     $ref: /schemas/types.yaml#/definitions/uint32
-    default: 16
     description:
-      Height in pixel of the screen driven by the controller
+      Height in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
 
   solomon,width:
     $ref: /schemas/types.yaml#/definitions/uint32
-    default: 96
     description:
-      Width in pixel of the screen driven by the controller
+      Width in pixel of the screen driven by the controller.
+      The default value is controller-dependent.
 
   solomon,page-offset:
     $ref: /schemas/types.yaml#/definitions/uint32
-- 
2.40.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3FCDA677FD3
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:33:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbjAWPd3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:33:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39858 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231569AbjAWPd2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:33:28 -0500
Received: from mail-oa1-x2f.google.com (mail-oa1-x2f.google.com [IPv6:2001:4860:4864:20::2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A13391A976
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:27 -0800 (PST)
Received: by mail-oa1-x2f.google.com with SMTP id 586e51a60fabf-15f83e0fc63so14285288fac.11
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:33:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vauVSP++ugyn5fGJJedmL7nUBg3JKQVZaXGEjtQiFYU=;
        b=WF0XUue2aFDq25zhodlWd3r35wvnnQdajKGzc6spVzuY9LWsMKEJsCjOmXRI7QzFHZ
         vN7SjNDhGTbzjGecGlyixnbrWwpB8XD+284WiSr3e6wBZZl3TrCLpRBwN9Mv/G/Bo0vH
         0HfaujGnt4hLG7mnpA9W+MN6FrLhfophwK8vGw3xwqVBeusoqeDff8Pg5SHNTZDyLOD8
         yxWgD6vyBYrO/nFtDd0KemDVptxZ/U2KHfoGiNxKPiDAE2DBvB20CFsgh3ycsiYYETPD
         xA591q9ZIEiYYUUnxjYU5UOEql5xTe4DbAW0i0UehUXI4kDQDD29+ZfxsV4XhQqF0LVp
         D7wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vauVSP++ugyn5fGJJedmL7nUBg3JKQVZaXGEjtQiFYU=;
        b=UbBdM04dqmLtlvT5dhS8AhUqNgKTFs2dYRPXz5YrzrkEAWjfNMYUN471ov2F1dgK6o
         Yb9zWVLibioc2HaJVFHi+CcKLRl3Cpizf7BM824Ws0YkiWJ5qCaS5IzC9On+cp753lCU
         jc+tctELHCf38iPia72snWdIowcOo8x1MfggOjizPI6NdmQXubH/GNPeGKRIBQYJDubs
         pfF+v0cySLU0FjBVsgX+vKBM0yEiJJK3EB/DGILvrTVwy7PXTIGphLhUcAf6IufaJl9h
         Gwizo7o/LPDA7lDwo7cOhexflOop0OGswpuQiOyXhA6xbyIbzj/R5PntxDrTWNKExmob
         nIPw==
X-Gm-Message-State: AFqh2kozpqugRwu5MyhAJsyoFxYNWqe5BRhcxZ9rXbtTI5BD5NcEpTFP
        EMlFJHwW+28zbh/vPRLSh4U=
X-Google-Smtp-Source: AMrXdXs8D04h1EPugqFnagYbyJEvqRLkvRoE56HdrUF2u6xKzjAObVATNLkGhzDtz8MYHtXhxolU3w==
X-Received: by 2002:a05:6870:4c14:b0:14b:bdda:7754 with SMTP id pk20-20020a0568704c1400b0014bbdda7754mr13651635oab.37.1674488006960;
        Mon, 23 Jan 2023 07:33:26 -0800 (PST)
Received: from localhost.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id v1-20020a056870708100b0013b9ee734dcsm25459182oae.35.2023.01.23.07.33.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:33:26 -0800 (PST)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@gmail.com,
        sam@ravnborg.org, thierry.reding@gmail.com, megous@megous.com,
        kernel@puri.sm, agx@sigxcpu.org,
        Chris Morgan <macromorgan@hotmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH V2 1/3] dt-bindings: panel: Add compatible for Anbernic RG353V-V2 panel
Date:   Mon, 23 Jan 2023 09:33:19 -0600
Message-Id: <20230123153321.1314350-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230123153321.1314350-1-macroalpha82@gmail.com>
References: <20230123153321.1314350-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

The Anbernic RG353V-V2 panel is a 5 inch 640x480 MIPI-DSI LCD panel.
It's based on the ST7703 LCD controller just like rocktech,jh057n00900.
It's used in a 2nd revision of the Anbernic RG353V handheld gaming
device. Like the first revision of the RG353V the control chip is known
but the panel itself is unknown, so name it for the device.

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Guido Günther <agx@sigxcpu.org>
---
 .../devicetree/bindings/display/panel/rocktech,jh057n00900.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
index 09b5eb7542f8..150e81090af2 100644
--- a/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
+++ b/Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
@@ -20,6 +20,8 @@ allOf:
 properties:
   compatible:
     enum:
+      # Anberic RG353V-V2 5.0" 640x480 TFT LCD panel
+      - anbernic,rg353v-panel-v2
       # Rocktech JH057N00900 5.5" 720x1440 TFT LCD panel
       - rocktech,jh057n00900
       # Xingbangda XBD599 5.99" 720x1440 TFT LCD panel
-- 
2.34.1


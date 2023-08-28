Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD5E478B728
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 20:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232704AbjH1SU2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 14:20:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232933AbjH1STz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 14:19:55 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0799B13D
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-6bc9254a1baso2752126a34.2
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 11:19:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1693246792; x=1693851592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mWvCZrp4/FEw0GDbjcUcDY3MsF5cq9comcRM6woTDxA=;
        b=erlZaRZMK8kEcD4c/XLvuMvgTKIPYYFL+n/1SqEWAGJnsOYnXL/DqNpiatZwPD307W
         7YTzeKrfzLxa1hqP48dciKlwQOUBl6fYCj0mdRRSBZlwT8Rhw48807os4Y9YJFane4Rw
         JEPqHeNoe1qtfmCc3MZ+Vuo9cULaXM0dJLM1AG5QkWE3vkl+EycjH/w7TNBZNBszt4JX
         6gONvq88MQtVWJ7P3FvZx6AV11LEhqNFQdsCnmdIO3hpKuZX2zjyTihKHA13BIkPSAkP
         CSiTHQBv6uel/nSkytWLeOmoVb0bATbATrymyq5dgysJp5AP6DBRESzaqyPGWsKkHf4F
         EncA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693246792; x=1693851592;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mWvCZrp4/FEw0GDbjcUcDY3MsF5cq9comcRM6woTDxA=;
        b=XGhAzcea2mROg46Q2nwtAVE8D1wldSsshxuoeHil0rFRCYNsBVAx10xx0MUXkOSagU
         v3S/Lst1mH1kcQPcK7y1qtHFeHXB6sTu+P/24POeQ4VHIfvI0hTMbDjjKzhr6vobkLFM
         qCaNnz/E1dgDyT1EU73Ysr/F2D1lSTgO2ATVlqpzvkXlVs5KuAm/VVJ0AtvYgwFsb7PO
         Ap6GkX43e0W0PIYp+MqNz9nxhEBpUGDM8TVHq+Q4yBmb1qHZTm7lXM54lnbMf8sLV/7M
         NS7qsH5Z/SVzav4mAhfUbSX0UzhFMgikmmL5w3lXF/InGJQdfidOEX/SWNld4ERDLUHf
         FL1A==
X-Gm-Message-State: AOJu0YwnIymPzlsrqqE8gQ4GlWBTfbr7BBV5/Wb0DKWlSWK7nkpZKXoX
        /VcuCY+jp+z4KTzIXv3RbJU=
X-Google-Smtp-Source: AGHT+IFc+T2hlIrbwkSb4/jXdZGl1BxD5Z2RCXyWxdCKLRzfTd3kDk41JEc8GpmLp2f/pEQ7eD9lew==
X-Received: by 2002:a05:6830:1e05:b0:6bb:1020:5303 with SMTP id s5-20020a0568301e0500b006bb10205303mr14843284otr.16.1693246792376;
        Mon, 28 Aug 2023 11:19:52 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id g10-20020a9d620a000000b006b99f66444bsm3695927otj.71.2023.08.28.11.19.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 11:19:52 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-sunxi@lists.linux.dev
Cc:     devicetree@vger.kernel.org, airlied@gmail.com,
        andre.przywara@arm.com, conor+dt@kernel.org, daniel@ffwll.ch,
        heiko@sntech.de, jagan@edgeble.ai, jernej.skrabec@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, mripard@kernel.org,
        neil.armstrong@linaro.org, noralf@tronnes.org, robh+dt@kernel.org,
        sam@ravnborg.org, samuel@sholland.org, uwu@icenowy.me,
        wens@csie.org, Chris Morgan <macromorgan@hotmail.com>,
        Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH V4 1/8] dt-bindings: vendor-prefixes: document Saef Technology
Date:   Mon, 28 Aug 2023 13:19:34 -0500
Message-Id: <20230828181941.1609894-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230828181941.1609894-1-macroalpha82@gmail.com>
References: <20230828181941.1609894-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Document Saef Technology (https://www.saefdisplay.com/).

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index af60bf1a6664..dda90f9d264b 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1151,6 +1151,8 @@ patternProperties:
     description: Shenzhen Roofull Technology Co, Ltd
   "^roseapplepi,.*":
     description: RoseapplePi.org
+  "^saef,.*":
+    description: Saef Technology Limited
   "^samsung,.*":
     description: Samsung Semiconductor
   "^samtec,.*":
-- 
2.34.1


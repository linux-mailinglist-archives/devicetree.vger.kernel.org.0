Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D78A16CF426
	for <lists+devicetree@lfdr.de>; Wed, 29 Mar 2023 22:12:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229525AbjC2UMQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Mar 2023 16:12:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33138 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjC2UMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Mar 2023 16:12:16 -0400
Received: from mail-oi1-x22b.google.com (mail-oi1-x22b.google.com [IPv6:2607:f8b0:4864:20::22b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DA6126BA
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 13:12:15 -0700 (PDT)
Received: by mail-oi1-x22b.google.com with SMTP id w133so12562193oib.1
        for <devicetree@vger.kernel.org>; Wed, 29 Mar 2023 13:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680120734; x=1682712734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=aHANecyg10/TBvI/S8Wg+JFIeZI2UR0veb/3RxSsHAs=;
        b=ok+03mGt7V3d0XhdGropUjWdy8KbWYNZvqbv/+lPscJPcxjuWkuKd0TZn/hYNyolnf
         LJlOnegbnBOTCG1EXKBcLNqn0/BlbvMFihTtOn9JoTQUq29E+BWEOwQbUo62EE56TLwo
         ag75C7w6Nxxa5UP8/uaYTXuxAX01ZgsEEUr/AYR5Gezbn3Na+y+6eE8tpsqtJFVQpOj3
         zneslIJYNr7jGUkNT82IiDUAjCT4kL5m5FVfk6lxMmmZYJjFpxPTsoTr/WzAAIPQc5fi
         FEufxfUe7tQ8auWVtjt+N0ebBFxyblPwDvm7VWwJNcaqnIb2yV+H8ZelLjglbKrsPw3W
         Ql1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680120734; x=1682712734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aHANecyg10/TBvI/S8Wg+JFIeZI2UR0veb/3RxSsHAs=;
        b=ixh4ucSo9Ccc+2j+xLuT4r5c9ZiuuB53XymdZ5pByCHh1/ccVCTtyGNFSlx+oI8ofe
         KS3lw0nrWYuKsns0GySRP9GAhb8jIZyDrjc7MrY00kbQGehh0ROjTTuHm1SgHTiinf4G
         7oiYAKnFs4guirW6RjzU3jt03uSj6cjwuSdYjhzjqFxiHor5EUw6allI+4f93fkt5XU+
         OMKq5M/nlGzqVK2rsFsxpY0GndKTgoTPIt2/1VKHWmzPuCdMb3KEqtOc176TGoN3zyuG
         sOUNZfq4leggUH1pS9SOEuImMAM9P+hxkGNnF9nPBpbqEc7Pf/n/zCc8z7NoKgeHQFI4
         dGxQ==
X-Gm-Message-State: AO0yUKUmzVVY7224hlSt4Rz9QkSGQzgu/MkAgOuKIwSB9a8TPlir0NYW
        RaNeUKzupyct7tp2iJ+3I36+TjxkhOILDg==
X-Google-Smtp-Source: AK7set+0hC7OUhRKL+uwBQ1vnKWIpkE8S882ciFQVEHI3atA0+Zhb5al5ysesjhQin/1rYbBJwm+Mg==
X-Received: by 2002:aca:bb82:0:b0:37b:8eef:55cf with SMTP id l124-20020acabb82000000b0037b8eef55cfmr8739455oif.1.1680120734153;
        Wed, 29 Mar 2023 13:12:14 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:f61e:5f18:4687:132c])
        by smtp.gmail.com with ESMTPSA id b11-20020aca1b0b000000b003872148d322sm9698025oib.22.2023.03.29.13.12.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Mar 2023 13:12:13 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     krzysztof.kozlowski+dt@linaro.org, marcofrk@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2] dt-bindings: display: seiko,43wvf1g: Change the maintainer's contact
Date:   Wed, 29 Mar 2023 17:11:50 -0300
Message-Id: <20230329201150.741106-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Marco's NXP email is no longer valid.

Marco told me offline that he has no interest to be listed as the
maintainer contact for this binding, so add my contact.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Use my contact instead of Marco's personal email.

 .../devicetree/bindings/display/panel/seiko,43wvf1g.yaml        | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
index a5426586b473..1df3cbb51ff9 100644
--- a/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
+++ b/Documentation/devicetree/bindings/display/panel/seiko,43wvf1g.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Seiko Instruments Inc. 4.3" WVGA (800 x RGB x 480) TFT with Touch-Panel
 
 maintainers:
-  - Marco Franchi <marco.franchi@nxp.com>
+  - Fabio Estevam <festevam@gmail.com>
 
 allOf:
   - $ref: panel-common.yaml#
-- 
2.34.1


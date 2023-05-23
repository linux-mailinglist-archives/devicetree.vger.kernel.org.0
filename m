Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DEAC70E773
	for <lists+devicetree@lfdr.de>; Tue, 23 May 2023 23:38:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236417AbjEWVij (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 May 2023 17:38:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35132 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238630AbjEWVig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 May 2023 17:38:36 -0400
Received: from mail-oi1-x232.google.com (mail-oi1-x232.google.com [IPv6:2607:f8b0:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC6BB11A
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:35 -0700 (PDT)
Received: by mail-oi1-x232.google.com with SMTP id 5614622812f47-3980f932206so202731b6e.1
        for <devicetree@vger.kernel.org>; Tue, 23 May 2023 14:38:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pZeG6tAZK19WtgOFcLJKr3rNEIZEgwi3vgrLkaNzhIA=;
        b=GoE+EJIIvySDiSJjK0WywYB9BUPC2Tr7tGgL3PQJ+xEsyp3a0K8+GDMpfCj9qjMbHn
         Xnw7V8+6MqrsjHloKTYHoZkmIu2QKwdK984nShCQnXmaWNSND0zdUCkYu5V8iEIk2T1m
         QNDfBLASJzoi/1dsqEPEPr5xSrQ256FRl5u/AKdgfgnSK4HBkofBfUhI4rjAbIz7rrd6
         V7enz6iWWftX3T7a52AVqqhUESxkmj0PjWfNIRqfLhZXderkr3+ghw9A7Y0RHUNcjoS+
         yq4PIK6Of/ucaJhl4+kScI18GnhZT0OIuHsDZuiNxUB1H+ah66q+hH/2bY9fiT9RBPH1
         GVtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684877915; x=1687469915;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pZeG6tAZK19WtgOFcLJKr3rNEIZEgwi3vgrLkaNzhIA=;
        b=ecOxiPUTDqPAGlLdsHlbnydZEVzH8vEDB5Jn9/luj9hwZwmtyjxhnZdQl8z8pYfh1s
         hK0vf2jCT+zm5gwvWy3wRMfocj2l0H/jTEcKPZQtz+Bw5fiJEOb/BE5SNKUwz3viraEh
         GJArX9hzUSsI99abBwpGfTYl8nrUjWfkty2smzv+HGEpWeJpwFQT9H+xazhYQqUR8ufK
         Uiz8fIryAJibDPJX5bpAVQSiOaXi9rJcXQrP4KV+XFrB5CNy5/B+YlGwnn6efKr+PAMV
         UVjYmN5pHdvnZHgFIXdGbF81NPPQVAXizHGyiVrd5vbTmlYT1yvNdVsPOBQL/zntxiW4
         +UIg==
X-Gm-Message-State: AC+VfDwKe2A42HX4g26sAPJm1VtjXXN58gXvVtTopyhHX+zK2k/G9Giq
        J5w/uceCNqH1oOo+a/fOqLXTUkcveoLVSg==
X-Google-Smtp-Source: ACHHUZ65eLkVCgnWkP/23kS62FqwAKgfThDB9Z/OSIkWJe/DFkubys9nClKGd0Sk0PSjMQgOZqCRBQ==
X-Received: by 2002:aca:d0e:0:b0:398:2db1:dc2e with SMTP id 14-20020aca0d0e000000b003982db1dc2emr1861840oin.26.1684877914903;
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
Received: from localhost.localdomain ([75.28.21.198])
        by smtp.gmail.com with ESMTPSA id y83-20020acae156000000b0037832f60518sm4442359oig.14.2023.05.23.14.38.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 May 2023 14:38:34 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     linux-rockchip@lists.infradead.org
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        zyw@rock-chips.com, sebastian.reichel@collabora.com,
        andyshrk@163.com, jagan@amarulasolutions.com, broonie@kernel.org,
        perex@perex.cz, tiwai@suse.com, lgirdwood@gmail.com,
        heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 4/6] dt-bindings: vendor-prefixes: add Indiedroid
Date:   Tue, 23 May 2023 16:38:23 -0500
Message-Id: <20230523213825.120077-5-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230523213825.120077-1-macroalpha82@gmail.com>
References: <20230523213825.120077-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Chris Morgan <macromorgan@hotmail.com>

Indiedroid is a sub-brand of Ameridroid for their line of single board
computers.
https://indiedroid.us/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 82d39ab0231b..632662be6e65 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -655,6 +655,8 @@ patternProperties:
     description: Iron Device Corporation
   "^isee,.*":
     description: ISEE 2007 S.L.
+  "^indiedroid,.*":
+    description: Indiedroid
   "^isil,.*":
     description: Intersil
   "^issi,.*":
-- 
2.34.1


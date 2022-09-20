Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A2FB5BE974
	for <lists+devicetree@lfdr.de>; Tue, 20 Sep 2022 16:59:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231172AbiITO7M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Sep 2022 10:59:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34770 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230416AbiITO7K (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Sep 2022 10:59:10 -0400
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com [IPv6:2607:f8b0:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 966E352FE3
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:09 -0700 (PDT)
Received: by mail-oi1-x22e.google.com with SMTP id r125so4018120oia.8
        for <devicetree@vger.kernel.org>; Tue, 20 Sep 2022 07:59:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=i+/AF0s9oRAwx+DDD0l/SLvTIxJSl0QIYOWA8NZeNBU=;
        b=FgDxXH1IRgCikFXr2gmEkmqog2o+heVNP9nEV1rV0iIZ5L4YOY+ftOnGLZ57QV1KGh
         N7CwdjHUA4YtT/1O3fyq2V0mDovUblQvYGpHggBwTdjOTmbQ+BEjpGBRdlRB3ulX0Jm7
         b8EpikxWwrm4cUfA+KfXtA4utMNwbhtjBqFT9OCBjtUtS/m6Sh64kN3p8VMMlXEOKURY
         vtwGuhViV7jM9MLqKDS9hddpGbEX7Yp6CyvSfakVMoMZLD9mSx2bIwtzOo+MN0LJrYlj
         EAaKwUmge39mFogYq1gOTG07zu0lGflTfR4+a/6xhLXAbgWhB/AvdJ3LsKE1BUHFFJbk
         B7bA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=i+/AF0s9oRAwx+DDD0l/SLvTIxJSl0QIYOWA8NZeNBU=;
        b=HVM704ULR9+MbEXDbmAxUoKAfE19YUcPQCMLcE/s4LsCGrwSGPsINaLot6sJi3jcjg
         2FkJeNK9zPt+GWlnw1QGhqJWnmj7Cvt+SG1ubtJZuuKQIHnW9hVAskDCrKoKN/kpwExo
         9GpdmOB3qd06c42O/RAGZxeofuF+6chj7MuOUxE1QrKiu2pSsMZrOQ6YzcWkcDqcBudY
         OwMGpzpwBV6UBrj+T0pm28K5CduPC+MFa9jqRK1VKHamsp6cU8s+WkVZua2uZIDBkqgb
         9bnXCEImp2Sh5SbRZxpdDW36rMBkWM71FyJDnwPoHv/jkINCTU+9dqAKBe6H7KsmlCIr
         oFGQ==
X-Gm-Message-State: ACrzQf1zJyaDCtxd0EDcVJ+Iu9YbspTbHqWUmzFCbNpwDo9i5rXL0Myq
        9mG+IEdsMLAgfuxz8lGP6pg=
X-Google-Smtp-Source: AMsMyM4NbEF64NLNZCjql0SwVeTu8yjtsI0jJ6SVOyxpiNIPNhZCyTlpigBJZ82Vvwb+cKt5Fq4U6w==
X-Received: by 2002:a05:6808:1242:b0:345:7e6b:9626 with SMTP id o2-20020a056808124200b003457e6b9626mr1743604oiv.39.1663685948869;
        Tue, 20 Sep 2022 07:59:08 -0700 (PDT)
Received: from wintermute.localdomain (76-244-6-13.lightspeed.rcsntx.sbcglobal.net. [76.244.6.13])
        by smtp.gmail.com with ESMTPSA id o4-20020a05680803c400b0033e8629b323sm203156oie.35.2022.09.20.07.59.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Sep 2022 07:59:08 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, daniel@ffwll.ch, airlied@linux.ie,
        sam@ravnborg.org, thierry.reding@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH V2 1/3] dt-bindings: vendor-prefixes: add NewVision vendor prefix
Date:   Tue, 20 Sep 2022 09:59:03 -0500
Message-Id: <20220920145905.20595-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220920145905.20595-1-macroalpha82@gmail.com>
References: <20220920145905.20595-1-macroalpha82@gmail.com>
MIME-Version: 1.0
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

NewVision (also sometimes written as New Vision) is a company based in
Shenzen that manufactures ICs for controlling LCD panels.

https://www.newvisiondisplay.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..d9c38e214863 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -873,6 +873,8 @@ patternProperties:
     description: Shenzhen Netxeon Technology CO., LTD
   "^neweast,.*":
     description: Guangdong Neweast Optoelectronics CO., LTD
+  "^newvision,.*":
+    description: New Vision Display (Shenzhen) Co., Ltd.
   "^nexbox,.*":
     description: Nexbox
   "^nextthing,.*":
-- 
2.25.1


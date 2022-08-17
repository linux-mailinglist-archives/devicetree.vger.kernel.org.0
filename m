Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 88E58597847
	for <lists+devicetree@lfdr.de>; Wed, 17 Aug 2022 22:54:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234149AbiHQUuE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 16:50:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43134 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234060AbiHQUuE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 16:50:04 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9385BAB045
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-11ba6e79dd1so11368442fac.12
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 13:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=iJqtK0dGjPmCmRFeN2TGuzxFluIScmLOoRQgXdWOt2c=;
        b=Egngsze2GMo0rSH0/Rv0OSdLueu7URHPOa2Ey/RErbW9u6YFeUT4JuqUcJ2QSYEwzy
         afdptwR2nz47Kt5pYRnyTiY6yNqFDi+9PTjAt+Bc4epWnR+1Ag6NE3zZtURoehurKs1K
         NRs6L33zZKXIvvET7s48vSDpO5Zo0nP8J7wNGrdQqVoBnYUVIQNBR6yKMOpWVlpvKJD1
         SW4Eh6Un2zDoiVDXaPK6gtS8zRCuWlh+N1WfmcQN0h6sjvczMhVxH4hAFjW7rxVDsIKq
         cZ/Ei9r4tFskDr7Sp84IMC9PYKtpTxejK1aKRBhsKfca9FTdSWKVZHNAdskumUpXPOM2
         Ur5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=iJqtK0dGjPmCmRFeN2TGuzxFluIScmLOoRQgXdWOt2c=;
        b=OAQNctSDl2Efdnuk/+utOk80obBr5yFJql0kq4rESWqu4e9n9sysU73oUrTpo2nruG
         YZmrErVaPg6ce/2GXB4FpWlK8vr8kYxa795AtepzNGujvosALcl8WR6c437M0HB4xCml
         xm4Oztom9nycspher78zsAcYjL7UG+XubdWW+VVK/wKrHTZcqXY3baP5DFNUcr7PbkQW
         K9ZMPS8k7G+cw1G77Fgki2VWRJR2Qogow/axc2jcwYGk4cCHJOltH3C0qNRaAK0XsePa
         aSaE35jYpZWqUBZl5/twWXftHur49LAQ/BLHfiMEsWAiOHkTeNFbYl10IBO4cunDzWr2
         jXBQ==
X-Gm-Message-State: ACgBeo2jlp1UfwR7TLPXELZj27FS62AePfjHrJNzaekpzW0mcq1Rmcbx
        KWRB/WYPPswQ7TTOu3/st/GO6oNa0tE=
X-Google-Smtp-Source: AA6agR53GiEyleqK2We6adGLOFF9HtbnhchllSe/5fFz4jqdpEEq7RyHsXZVweX5PadLb18qiAULMQ==
X-Received: by 2002:a05:6870:148b:b0:11c:7f09:b48e with SMTP id k11-20020a056870148b00b0011c7f09b48emr675517oab.139.1660769401614;
        Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
Received: from wintermute.localdomain (cpe-76-183-134-35.tx.res.rr.com. [76.183.134.35])
        by smtp.gmail.com with ESMTPSA id o66-20020acad745000000b00342d2d79a98sm3203321oig.42.2022.08.17.13.50.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 13:50:01 -0700 (PDT)
From:   Chris Morgan <macroalpha82@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, heiko@sntech.de,
        pgwipeout@gmail.com, Chris Morgan <macromorgan@hotmail.com>
Subject: [PATCH 1/3] dt-bindings: vendor-prefixes: add Anbernic
Date:   Wed, 17 Aug 2022 15:49:52 -0500
Message-Id: <20220817204954.28135-2-macroalpha82@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220817204954.28135-1-macroalpha82@gmail.com>
References: <20220817204954.28135-1-macroalpha82@gmail.com>
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

Anbernic designs and manufactures portable gaming systems.
https://anbernic.com/

Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 2f0151e9f6be..2a5a98d6fdda 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -105,6 +105,8 @@ patternProperties:
     description: AMS-Taos Inc.
   "^analogix,.*":
     description: Analogix Semiconductor, Inc.
+  "^anbernic,.*":
+    description: Anbernic
   "^andestech,.*":
     description: Andes Technology Corporation
   "^anvo,.*":
-- 
2.25.1


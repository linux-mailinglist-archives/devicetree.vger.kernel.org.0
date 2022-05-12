Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 75D04524D73
	for <lists+devicetree@lfdr.de>; Thu, 12 May 2022 14:50:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353977AbiELMti (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 12 May 2022 08:49:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353986AbiELMtb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 12 May 2022 08:49:31 -0400
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com [IPv6:2a00:1450:4864:20::533])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C3DF524EA06
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:26 -0700 (PDT)
Received: by mail-ed1-x533.google.com with SMTP id y21so6134087edo.2
        for <devicetree@vger.kernel.org>; Thu, 12 May 2022 05:49:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ffQ4orED3aiUEBYoSxBZzhQ5xLKzp9tGr66X/MdgpYE=;
        b=wwpR3bqanEewTxLg7wS9F7WsDB2jEc7163B2KtFP6RN2s3xUdnTsDuZSPQ2imwuA49
         JdxEAusdOFqPwN4TG3gwvIsHBwnFJxk68POGam6rePgP3g2lGtA/Osr8JGlRmOTw0ETj
         YzcMnr6f3x+s5xWsuvX9/QDjIEKPcVP6gxwFMVKqteQ/Wy0Q2Y+h4Vci3k8US261yDlH
         I4tMNg4UeBH1BO7eBgnDgT8emwRm5GdGGCnf2ZYCLObez2XHOjzSfu750MvaX2eGRtat
         YIp+59N7Qz/2PmS/D6Onpel4EIYhNvYaa6JAkx+lmyNMJtFkICXUnY0a5hkLR0MUr4dV
         8+5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ffQ4orED3aiUEBYoSxBZzhQ5xLKzp9tGr66X/MdgpYE=;
        b=OPGiFqHCMNeC/AngTtBCGQDJtIZTjew4v9CdQ2SM8N7a2LHTacVSAgiLGrhVR1Vwci
         ZrmXxrdT5zMatGh+bc3y1VY2NxnLzIWnmpkOI+ZBUUd94FwEXBFsxDfz+YdY3bvmXNlF
         Jb655i/p31wd7PnNFfowZP7MVgRGqtfTVUyhrjllALFDJH+Lm1IuOe0lPxnwPQDKQhW1
         voQijdBekx4qz/wtfziCUqk1hcp3RC+MNOHD3RuRzx71EL62+ZFlx7EbLn3spWo1eAc2
         zr5qU60R/Yh6vbM3bgYkqSePHTBwAAiJPBukUNUCeBJhTg4aJ9bGXrWj6gy5YHeWl/cr
         c1OQ==
X-Gm-Message-State: AOAM531Vd7sKrD3NUexxfEsF6mvq4qexD4/T9a4GdY4Wwe1GyRvcBPMF
        ir0dCeP2WK1vp737iD8nf0mTbQ==
X-Google-Smtp-Source: ABdhPJxNaBDvuq2EJfEryi0nCUHgYuhIDbfcTiJwRKQw413HGCsqeJ2CMmt/NO/XMXyqwU1QUeTMJQ==
X-Received: by 2002:a05:6402:3590:b0:427:ba05:6f19 with SMTP id y16-20020a056402359000b00427ba056f19mr35666281edc.334.1652359766319;
        Thu, 12 May 2022 05:49:26 -0700 (PDT)
Received: from fedora.robimarko.hr (dh207-98-58.xnet.hr. [88.207.98.58])
        by smtp.googlemail.com with ESMTPSA id h3-20020a170906828300b006f3ef214dc2sm2109475ejx.40.2022.05.12.05.49.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 May 2022 05:49:25 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 10/11] dt-bindings: marvell: armada-37xx: add Methode eDPU compatible
Date:   Thu, 12 May 2022 14:49:04 +0200
Message-Id: <20220512124905.49979-10-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220512124905.49979-1-robert.marko@sartura.hr>
References: <20220512124905.49979-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible for the Methode eDPU Armada 3720 based board.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
Changes in v3:
* Alphabetical ordering
---
 Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
index 4460608ac1e1..4ace605a8701 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
@@ -20,6 +20,7 @@ properties:
               - cznic,turris-mox
               - globalscale,espressobin
               - marvell,armada-3720-db
+              - methode,edpu
               - methode,udpu
           - const: marvell,armada3720
           - const: marvell,armada3710
-- 
2.36.1


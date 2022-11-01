Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D73B9614298
	for <lists+devicetree@lfdr.de>; Tue,  1 Nov 2022 02:05:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229626AbiKABF4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 21:05:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbiKABF4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 21:05:56 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65AD615723
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:05:55 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id k5so4277766pjo.5
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 18:05:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=6G3WUF5IEDft9VKMxJYOx6kiMzh/TnFxGEk2w9L8d0k=;
        b=ex1rcU/zOz56l7JLggQZyASS16wTvd9cY1fdEsgsAmoR3W3dZiEObjhc5OsIw1GwuH
         rXgGnvHD9U2+7i/qHGvo+6yRcJtMcIVIbPiPpGr1x2Nt6DCujV+9P4LgsOOSQwQOWnE6
         lR5U58Hlw55PeuEpKNZBTgQfoEo6IvLkvcGnw/QKBGQJs4SOql/pEPNLcNv3GhLFe3rk
         nk13owa7ssF9upD98aSH1GxyZzgKDWu1O4RV9pTG3zMLcVOXzDw49jisDNutpAr7EmEb
         q8eYahodHspCalExLKaMTcNhLpFP81rJ29xUqwspqxBZOrnaqg96xNDA2NJcHFx90Lwg
         gxHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6G3WUF5IEDft9VKMxJYOx6kiMzh/TnFxGEk2w9L8d0k=;
        b=afyvHBvTLJbVbZFpmQSNqKk+UFD72o1aElyxQCxSYCboP6lR6n2hpNpHwkBZsq5xdN
         XpYnUUylzmB4yQMbk8eMx5wKJMcBonhCz1D9z249R22BfTTjphxCvxIHJUMteY2lXC0b
         DfH1pxbiwPvH4EkL4BgdX0jGOGp09VxCqKKaaDXMF4A6d4CKWu9sFlyJVPWyJWbmwl/y
         lb4Id3/oVldLP2LY/63xtqareak1Euk0ZelCQ1sBOZpUt62IoJb/Tggpb9BkcaobplBL
         oUTxcNJPOVWG7Vp6uw8/R2w1mbpyYzA59ig+55W7mw2Q7syLg3LcwMFKBVbo/D5wkyM1
         a5ng==
X-Gm-Message-State: ACrzQf3HENQV8vx7Fq3FW36u7TaWdHf67Dft4KJET15/RUprF1ORpsnU
        UTEMlDXLFuGPHcVFlFZBit8www==
X-Google-Smtp-Source: AMsMyM4wfm9Q3U5qBgYp6Pg5JyGvGsmgZ9+V6dQn3UGPD6y1aSbiuCgoTW+VRtwXfeedzEJ/5zO5DQ==
X-Received: by 2002:a17:902:f78c:b0:185:3d6a:7576 with SMTP id q12-20020a170902f78c00b001853d6a7576mr16860809pln.86.1667264754910;
        Mon, 31 Oct 2022 18:05:54 -0700 (PDT)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id p4-20020a622904000000b0056da2ad6503sm1501175pfp.39.2022.10.31.18.05.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 18:05:54 -0700 (PDT)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, kuba@kernel.org, michal.simek@xilinx.com,
        radhey.shyam.pandey@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        pabeni@redhat.com, edumazet@google.com, andy.chiu@sifive.com,
        greentime.hu@sifive.com
Subject: [PATCH v2 net-next 3/3] dt-bindings: describe the support of "clock-frequency" in mdio
Date:   Tue,  1 Nov 2022 09:05:48 +0800
Message-Id: <20221101010548.900471-1-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

mdio bus frequency can be configured at boottime by a property in DT
now, so add a description to it.

Signed-off-by: Andy Chiu <andy.chiu@sifive.com>
Reviewed-by: Greentime Hu <greentime.hu@sifive.com>
---
 Documentation/devicetree/bindings/net/xilinx_axienet.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/xilinx_axienet.txt b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
index 1aa4c6006cd0..80e505a2fda1 100644
--- a/Documentation/devicetree/bindings/net/xilinx_axienet.txt
+++ b/Documentation/devicetree/bindings/net/xilinx_axienet.txt
@@ -68,6 +68,8 @@ Optional properties:
  - mdio		: Child node for MDIO bus. Must be defined if PHY access is
 		  required through the core's MDIO interface (i.e. always,
 		  unless the PHY is accessed through a different bus).
+		  Non-standard MDIO bus frequency is supported via
+		  "clock-frequency", see mdio.yaml.
 
  - pcs-handle: 	  Phandle to the internal PCS/PMA PHY in SGMII or 1000Base-X
 		  modes, where "pcs-handle" should be used to point
-- 
2.36.0


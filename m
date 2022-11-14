Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E92ED6282D7
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 15:39:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237103AbiKNOjO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 09:39:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237048AbiKNOiz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 09:38:55 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE4A423391
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:38:43 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id 4so10271031pli.0
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 06:38:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Y76ZfgfBJidUYPCMV+vRUvTiWIMgw/TUrl068PoooHY=;
        b=YZzT61sjhV2pf6Bt9OLNYTSEz9HPAKEC3Yo6V74N1aZWIxU13Qi60cbmbWOoCwxXM4
         /HWVpyqglYQRijLVoqj7/wnyitsyzORSVDJ7alVcDnlS0aa6wnoUfiH8Sh4186MFLHtq
         AJ8kAddluKGCsk9v5u/5Zr0jhRrkY19MtQP4NpWjFSUo6LmkJZP4KkPJn/NOUJ3WgkfU
         ECD/XHus1eR3A1YjGSxw1Sgab9EJ1CZ5PEH3cSRs8WKAb0o846vBchYu7AovFr1ufW2Z
         wjM0g04pFCM5TazaTkB2VaVT4svlDuDIGchk8nncosHe+AddmQP7F1US1+0Fup5/x0Mv
         Ei9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Y76ZfgfBJidUYPCMV+vRUvTiWIMgw/TUrl068PoooHY=;
        b=Fj1PF1xXpsTaOsxUZ9anHgkA6tTySzcqGQaoFPbbzQfi9v5GlAzWvpsRorkRPpPTrs
         eBzGF37+jl0U1b8RC9Ccbvq0TOv5iwq2Cvw0sVYn/sa+iG1vgJj8pa4xLyazD3IJZbTx
         YsfXgc2Wz24Cm5d1CFoGMnuToUtUedXQtO6mkdt8d6z5lJ32sJ4w0AAifMjSKPlbgKOP
         bkwjSc4R9Rsu/GCxvzeBbdJDtfiyBYYjmOQGnZPNIBYE92kafdrWMTK3F+sQx6nJFaGC
         GyGUWTxXdEJI0Nf2b+u9QvvmE5/B2RssmpiH2mj6EqpqUeNqqI0jN1UCQdVFf99VmVtf
         LY8g==
X-Gm-Message-State: ANoB5plu203e7FrmBoRS3aCOZG9LyGaF7e1i+PZb+NMcdbldcSZKzAhs
        7l+rcx0Qj4h13XukMVffDq8g8A==
X-Google-Smtp-Source: AA0mqf6vSr+brUvvy98DTKzeelAh8JJ54syk8GbsIJ2Ea9Aw6FbBNR/r7KP4qCnl/1dgcZLjTwpXGw==
X-Received: by 2002:a17:902:c702:b0:186:9295:2012 with SMTP id p2-20020a170902c70200b0018692952012mr13680502plp.19.1668436723438;
        Mon, 14 Nov 2022 06:38:43 -0800 (PST)
Received: from archlinux.internal.sifive.com (59-124-168-89.hinet-ip.hinet.net. [59.124.168.89])
        by smtp.gmail.com with ESMTPSA id h12-20020a056a00000c00b0056bc742d21esm6977381pfk.176.2022.11.14.06.38.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 06:38:42 -0800 (PST)
From:   Andy Chiu <andy.chiu@sifive.com>
To:     davem@davemloft.net, andrew@lunn.ch, kuba@kernel.org,
        michal.simek@xilinx.com, radhey.shyam.pandey@xilinx.com
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, robh+dt@kernel.org,
        pabeni@redhat.com, edumazet@google.com, andy.chiu@sifive.com,
        greentime.hu@sifive.com, Rob Herring <robh@kernel.org>
Subject: [PATCH v3 RESEND net-next 3/3] dt-bindings: describe the support of "clock-frequency" in mdio
Date:   Mon, 14 Nov 2022 22:37:55 +0800
Message-Id: <20221114143755.1241466-4-andy.chiu@sifive.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20221114143755.1241466-1-andy.chiu@sifive.com>
References: <20221114143755.1241466-1-andy.chiu@sifive.com>
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
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Acked-by: Rob Herring <robh@kernel.org>
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


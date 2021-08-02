Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F27DD3DD56D
	for <lists+devicetree@lfdr.de>; Mon,  2 Aug 2021 14:13:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233738AbhHBMNo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 Aug 2021 08:13:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43286 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233716AbhHBMNo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 Aug 2021 08:13:44 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10BEFC0613D5
        for <devicetree@vger.kernel.org>; Mon,  2 Aug 2021 05:13:35 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id i10so19388409pla.3
        for <devicetree@vger.kernel.org>; Mon, 02 Aug 2021 05:13:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HDPzoYjZtoVX4U5Es17iDsWrlk5dXQdhxxWK8WvZJKk=;
        b=HameHyIb+/s0EEF3wfW+k+xsNePhdcg72nrFLgZfi6a40siVuJWf8qwoRWpsdNhUol
         Ot0L6yQ0sC4+nuiyK5KdSz5PYaBFbTveqjyYaj4yu/BAffYZwt3Ibn0bzzo22mteK8Ll
         hPjOeb0pswAwia42lc1i8yZt+8XLUYFZiEILc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HDPzoYjZtoVX4U5Es17iDsWrlk5dXQdhxxWK8WvZJKk=;
        b=Z3nJuGtD1W2SFSeHGyRqqGVMj/OBRzqIQgmHcxPKoBSnG/L6jjXPGJSlUwImcuGJRK
         39To7x/+C+FXVI7ve9XYORNEua3byq0929/ugm+wwjJkSHwOndDwqRXJLSFT2lYTnOkd
         obl+2Yjjx3lKbcR8i+XiwvJRDh86EF1GBAuIRLSLoUUWHAYgEzMYslEnk+T/eXmoM6Uw
         UEXoKgusBqx6pA6dkxBOBnppSVA2hfp58idy4KMcX3qRzbp5iWN7/RivFlREgfaF3Hrd
         lKt2z+HCrlcnyn5rnByBwZZhflB2nolcWo/11u77bgeiisH9IzdH4SxgXIu++m3K3oDd
         ST8w==
X-Gm-Message-State: AOAM532tOeq/PevvOAqpgM3LGbl+/m44ej8FC0MwNN4RSsKm0vn5IurX
        u22/qVgf2g/IyPaueiBvW2sm+Q==
X-Google-Smtp-Source: ABdhPJxNe95Bvo0uxDfI4w/MLwItpJuNHSmDwr9PfTqtnF5875XwqVD2aRlV7qfPD4tT31EMdTqkdg==
X-Received: by 2002:a17:90b:33ce:: with SMTP id lk14mr5959359pjb.118.1627906414646;
        Mon, 02 Aug 2021 05:13:34 -0700 (PDT)
Received: from localhost ([2401:fa00:9:14:cd34:e942:c094:baef])
        by smtp.gmail.com with UTF8SMTPSA id i24sm11931639pfr.207.2021.08.02.05.13.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Aug 2021 05:13:34 -0700 (PDT)
From:   Eizan Miyamoto <eizan@chromium.org>
To:     linux-kernel@vger.kernel.org
Cc:     wenst@chromium.org, houlong.wei@mediatek.com, yong.wu@mediatek.com,
        enric.balletbo@collabora.com, devicetree@vger.kernel.org,
        chunkuang.hu@kernel.org, Eizan Miyamoto <eizan@chromium.org>,
        Andrew-CT Chen <andrew-ct.chen@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Minghsiu Tsai <minghsiu.tsai@mediatek.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v6 9/9] dt-bindings: mediatek: remove vpu requirement from mtk-mdp
Date:   Mon,  2 Aug 2021 22:12:15 +1000
Message-Id: <20210802220943.v6.9.If10dbdfade9f48710e485efe79e53e6e65144a2f@changeid>
X-Mailer: git-send-email 2.32.0.554.ge1b32706d8-goog
In-Reply-To: <20210802121215.703023-1-eizan@chromium.org>
References: <20210802121215.703023-1-eizan@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It is no longer needed by the mtk-mdp driver

Signed-off-by: Eizan Miyamoto <eizan@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/media/mediatek-mdp.txt | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/mediatek-mdp.txt b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
index caa24943da33..4c325585f68f 100644
--- a/Documentation/devicetree/bindings/media/mediatek-mdp.txt
+++ b/Documentation/devicetree/bindings/media/mediatek-mdp.txt
@@ -4,8 +4,6 @@ Media Data Path is used for scaling and color space conversion.
 
 Required properties (controller node):
 - compatible: "mediatek,mt8173-mdp"
-- mediatek,vpu: the node of video processor unit, see
-  Documentation/devicetree/bindings/media/mediatek-vpu.txt for details.
 
 Required properties (all function blocks, child node):
 - compatible: Should be one of
@@ -41,7 +39,6 @@ Example:
 		power-domains = <&scpsys MT8173_POWER_DOMAIN_MM>;
 		iommus = <&iommu M4U_PORT_MDP_RDMA0>;
 		mediatek,larb = <&larb0>;
-		mediatek,vpu = <&vpu>;
 	};
 
 	mdp_rdma1: rdma@14002000 {
-- 
2.32.0.554.ge1b32706d8-goog


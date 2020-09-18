Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5377426F848
	for <lists+devicetree@lfdr.de>; Fri, 18 Sep 2020 10:31:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726705AbgIRIbf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Sep 2020 04:31:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726703AbgIRIbe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Sep 2020 04:31:34 -0400
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com [IPv6:2607:f8b0:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41520C061756
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:31:34 -0700 (PDT)
Received: by mail-pl1-x62d.google.com with SMTP id d19so2638304pld.0
        for <devicetree@vger.kernel.org>; Fri, 18 Sep 2020 01:31:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CvN8pxwgE7chvCn8eA4GpYEwznUZIJ/VvKJ2b3Qxwd4=;
        b=ho/WCQgsyP2T8AA27LL0ARkfh0DQbo2WgLWH5gjFVNaznwRwo+t+ptG595Pu6YLKGw
         qhehK+iBJs4G/tcDQjcXcOnFdqIanY7E/JPg24pUtibT4vfys6d71/FmGjVFn0E0Mzgh
         hpmCCmwd6/MU0P3i5PsfOmM00Dv5mJszaEVeg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CvN8pxwgE7chvCn8eA4GpYEwznUZIJ/VvKJ2b3Qxwd4=;
        b=NfpxU/kR6sU1moeIUfg3wCpr+o2uWEBql3aitG7rbohsn+sHQ7w+45XmJj0dHlf7Wo
         5HoszHbZ8UCQdpbG8im+bEy2Rm0q5JjLVCk1BPAQwyXtlvJwlVUCXW9TLcpQZjaSmhIa
         AMUN1aVVChyYu4P2RpzIPitA/ExQ8CTE3A8vnGyDdsxIJmGZnaMLU40+i2rW/fF91AwH
         /xEZT3BCKMlZ9Ee+IhpuRszSsLNHGFROsPBLIROfkQaoX9BEaVrCob4muNAFjsX9MVmo
         A8e8jbam5Q46zN2JaN/xBmKErXAalQxy4YSBG3xDuJ4yxRXP9AcE6azklDZg9vWd/fcB
         nW2w==
X-Gm-Message-State: AOAM530iZhS0RPs3uWWWzuUBzwXqnv/6/cJdtSOpUAMK8SiDaCmoCbXU
        d0BdjM5ZXIcrJEo0HOlP7kDOLg==
X-Google-Smtp-Source: ABdhPJyawkWvCG6/EAZZzyOFtimPgIC4x1PEVJj+jcavaFIrRX3LyKeVJ3w44lldJhWt/SyimTAQ2w==
X-Received: by 2002:a17:90a:764d:: with SMTP id s13mr12124753pjl.58.1600417893754;
        Fri, 18 Sep 2020 01:31:33 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id g206sm2193172pfb.178.2020.09.18.01.31.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Sep 2020 01:31:33 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org
Cc:     Ikjoon Jang <ikjn@chromium.org>,
        Bayi Cheng <bayi.cheng@mediatek.com>,
        Chuanhong Guo <gch981213@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v2 1/5] dt-bindings: spi: add mt8192-nor compatible string
Date:   Fri, 18 Sep 2020 16:31:19 +0800
Message-Id: <20200918162834.v2.1.I4cd089ef1fe576535c6b6e4f1778eaab1c4441cf@changeid>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
In-Reply-To: <20200918083124.3921207-1-ikjn@chromium.org>
References: <20200918083124.3921207-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible string for mt8192 SoC.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
---

(no changes since v1)

 Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml b/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
index 42c9205ac991..55c239446a5b 100644
--- a/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/mediatek,spi-mtk-nor.yaml
@@ -30,6 +30,7 @@ properties:
               - mediatek,mt7622-nor
               - mediatek,mt7623-nor
               - mediatek,mt7629-nor
+              - mediatek,mt8192-nor
           - enum:
               - mediatek,mt8173-nor
       - items:
-- 
2.28.0.681.g6f77f65b4e-goog


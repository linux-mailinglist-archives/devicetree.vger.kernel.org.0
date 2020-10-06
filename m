Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id ABF9B2847F3
	for <lists+devicetree@lfdr.de>; Tue,  6 Oct 2020 09:54:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727158AbgJFHyS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 03:54:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727105AbgJFHyQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 03:54:16 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E3FFC0613D1
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 00:54:16 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id k8so8562139pfk.2
        for <devicetree@vger.kernel.org>; Tue, 06 Oct 2020 00:54:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+Q13U487Cjn/+nOLZsCBKdKKLu22/BXGrY05ryfIEBw=;
        b=oes1kxMCC8je1dieaMVGyJ+c2mM7MFn93B+vWCiUBkL/EvgtDX8MTmTCzeGycxtF0R
         RCTefIVFrP/q8E+f9HXTtp8l3vv30vuiPgccF5IL+8QfE+MxJR8uvvzhcDIkBuTxFail
         EtjmgXQ43yS5Uy0NX6L84iN9LHa14KzE6aI2c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+Q13U487Cjn/+nOLZsCBKdKKLu22/BXGrY05ryfIEBw=;
        b=sG/SjK3YWRH7JM69G9se/bhoqVNSkOeWdZW9PI9n5o6ZHhWQPq8xBk7MnDPCBiun31
         PjaVkd8+mrmyJPKZhNJg+aFBviJ9Kp8SaZw0erFrCyIJ3g5J0KRak8ZpfzdddMWfW0yf
         IsCd/kX3fyY8UlL/6sLaN56RF31sd7RwCK7WCdF3Emb1Tmk6Ieelta3XdcDSo7KeSqqE
         LPIa5/NSa0I7ywwqzlH2las9dTPRZPXoXd+f2FkOT21+5sPoqq2Uxl///k3O36BEi8+N
         xm4PHIRokQO6E+xok1zVOAFF+eGyo9eEof1JkMfhCKE6aNTzraJoLqVUK6FVhhV3XRpX
         1dFQ==
X-Gm-Message-State: AOAM531+jpA4NZnlH7ycXUap7OjuUoj2mUB2kxm+XrwujMrPPDCVTMg4
        wf5UI4bL/1xeeERbjXcdQ3R4Cw==
X-Google-Smtp-Source: ABdhPJwlzXHvhSPQRbddkUP3BLbK8GixVJDMkV84qDw7iNlY99VclXQGU9+CQZVYIPvyq9d9G0DRSQ==
X-Received: by 2002:a62:7894:0:b029:152:279f:5dad with SMTP id t142-20020a6278940000b0290152279f5dadmr3541300pfc.67.1601970856096;
        Tue, 06 Oct 2020 00:54:16 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id r6sm2545147pfq.11.2020.10.06.00.54.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Oct 2020 00:54:15 -0700 (PDT)
From:   Ikjoon Jang <ikjn@chromium.org>
To:     Rob Herring <robh+dt@kernel.org>, Mark Brown <broonie@kernel.org>,
        devicetree@vger.kernel.org, linux-spi@vger.kernel.org,
        linux-mtd@lists.infradead.org
Cc:     Ikjoon Jang <ikjn@chromium.org>, Rob Herring <robh@kernel.org>,
        Bayi Cheng <bayi.cheng@mediatek.com>,
        Chuanhong Guo <gch981213@gmail.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH v5 1/4] dt-bindings: spi: add mt8192-nor compatible string
Date:   Tue,  6 Oct 2020 15:54:02 +0800
Message-Id: <20201006155010.v5.1.I4cd089ef1fe576535c6b6e4f1778eaab1c4441cf@changeid>
X-Mailer: git-send-email 2.28.0.806.g8561365e88-goog
In-Reply-To: <20201006075405.11658-1-ikjn@chromium.org>
References: <20201006075405.11658-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MT8192 spi-nor controller support.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>

---
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
2.28.0.806.g8561365e88-goog


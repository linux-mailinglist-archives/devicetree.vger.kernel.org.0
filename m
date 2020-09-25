Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD0542780ED
	for <lists+devicetree@lfdr.de>; Fri, 25 Sep 2020 08:54:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727256AbgIYGyb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Sep 2020 02:54:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727063AbgIYGyb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Sep 2020 02:54:31 -0400
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com [IPv6:2607:f8b0:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 01D18C0613CE
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:54:31 -0700 (PDT)
Received: by mail-pg1-x535.google.com with SMTP id 197so1717633pge.8
        for <devicetree@vger.kernel.org>; Thu, 24 Sep 2020 23:54:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=HdE7nLvEFj18RV9A2g392hZIV3ihv+vkUnf6hZyZUiI=;
        b=LOOOW3X3ilRxghcGS6kesPqVSpVDVzHB+wJ/pOrMNeujL2vcH/fbrSTfaTjDw5vAjT
         VK5mCz6OUBRPj+obsf9HzaQt7++4c8INP61tk0DmPbOf3C3CuwsYaSz+myXOuf7KlyaE
         ynLNjxG1dydzIlg3SUspITMegtmEZA8OjMIOo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HdE7nLvEFj18RV9A2g392hZIV3ihv+vkUnf6hZyZUiI=;
        b=WLLKgUXS9f8ooDbz+PhjTt6rtkBl+bvgtjN8BbKDdpcSXWPNn+tClX+X9VooNmWRlN
         pq/gnYfTZi/MZv6UHsOEc+znZvqJkV4y0Z3nDfhRkRPse5EexJDmP07a4AzXE3IYlvqR
         xyFe9Wmf6yS9mnUdOTn01OUedC6SoDyYCRz4kEqSK4yPeNJ1TwwXhwxUbw29T29e2Too
         gWQp3bq5JKdfZeJgMW4kyL+oBsEfSTp92AOfMq/umvOeNY28RrT3FSiBc60WD5dpflLA
         000MuAuO6S7Yif4/ut6QMEtXSBG5QjG6KT5uTuNNAF/ElTD03GNgMR9leRoli9SIuS2c
         GeAQ==
X-Gm-Message-State: AOAM531PBNuyEjvnwYa3gJaByHVjhkC9Gw51ulx1eDvC7kleXDXag02o
        /mYvnvwHbQxvI8clRumffaTd0Q==
X-Google-Smtp-Source: ABdhPJxeXe/jApGVyUA65xnQpVIAMUd3AY9UUwRBr8ghMbWnb5Si2clEbVRamnuUhqstE+vlnH9yEQ==
X-Received: by 2002:aa7:97a8:0:b029:13e:d13d:a105 with SMTP id d8-20020aa797a80000b029013ed13da105mr2777875pfq.33.1601016870507;
        Thu, 24 Sep 2020 23:54:30 -0700 (PDT)
Received: from ikjn-p920.tpe.corp.google.com ([2401:fa00:1:10:f693:9fff:fef4:a8fc])
        by smtp.gmail.com with ESMTPSA id x27sm1549612pfp.128.2020.09.24.23.54.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Sep 2020 23:54:30 -0700 (PDT)
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
Subject: [PATCH v3 1/6] dt-bindings: spi: add mt8192-nor compatible string
Date:   Fri, 25 Sep 2020 14:54:12 +0800
Message-Id: <20200925145255.v3.1.I4cd089ef1fe576535c6b6e4f1778eaab1c4441cf@changeid>
X-Mailer: git-send-email 2.28.0.681.g6f77f65b4e-goog
In-Reply-To: <20200925065418.1077472-1-ikjn@chromium.org>
References: <20200925065418.1077472-1-ikjn@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add MT8192 spi-nor controller support.

Signed-off-by: Ikjoon Jang <ikjn@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
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


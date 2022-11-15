Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A4EB062901C
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 03:54:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232563AbiKOCyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 21:54:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38022 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232452AbiKOCyf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 21:54:35 -0500
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 82DB415837
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:34 -0800 (PST)
Received: by mail-ej1-x635.google.com with SMTP id i10so24257376ejg.6
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 18:54:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wRYDzS6yAt4cpvGVye2SW5vgcMntnZG/i/Ggtx20GY8=;
        b=EdE8bFuG4EphbFKpcxdIIfm3ak/iOs7F6ye5Bw0bJUAMo88bMnH11/qvrugOAb0cLJ
         /8JttmWZG+cKt4QUAgJJ8Q8SHaInulLWvMW6KaIImNUEmVu+k/yR8haNYmvu71pxC6E0
         foS3sUTx6outGy/xCAtIryaY0bjeY64ogC9UuYet4q1kHfq8nEt6f2gkYlGqSDJY0/Wd
         RaU2nVc6RhuSy2gTRhkVbYNfaVF0J5d976lmTLy0BtAKvmGqBTYZFqRxyMLYhftYTB6M
         zrlWD1VNaVIuCBMowc7TKbtYCzBdfgbW/IgrERUC6ePilpBkG1ET56YiluIrKVUmBYLN
         e+ZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wRYDzS6yAt4cpvGVye2SW5vgcMntnZG/i/Ggtx20GY8=;
        b=b1mcVdOgUX6c2ozeKgycp/4rOj69otsEYSr0tHd+gTbDfFb9qcgW6YfPiRFltleJLf
         Tkdr7nGR9+D0/eORpEnVPFstwl1wInNn98ve8017okU1cRJJzW8cQMy/eYRtvkG0jLdW
         rtrImAbW2HY46DjigwDgxq9R+Hu8SFic7KWpRYhcOCFbnGaCEGV7ZHD6ncAEVVcpgZ3n
         Lqps3HE1O2d81RQ8XW9la6y/3Y1Yu8zR2xLVHTFWK6P+IA96GVQeKdCqat1hicpDSmeJ
         S0BDDVao2BpdikMpTo3a/MlvEdjOdwR9ePiaMi6Z8oXmcyLHC/fR3M57RfIfFNt/QRTN
         6U9w==
X-Gm-Message-State: ANoB5pkBIGJmExKmPJXUSckpanI8ZHmGma9NxUPKcOopEd3QgsF669Ty
        KkMffsfWH5FfrDVuY7zl8w4dIg==
X-Google-Smtp-Source: AA0mqf582fgL1+vzC2joPQG/FmqgK3d7CgczhTfJbJeR1vCerfkmq+R4+r8ZixBzOGX3gC+jqC9F0Q==
X-Received: by 2002:a17:906:4a0f:b0:7a2:36c7:31eb with SMTP id w15-20020a1709064a0f00b007a236c731ebmr11503557eju.491.1668480874002;
        Mon, 14 Nov 2022 18:54:34 -0800 (PST)
Received: from c64.fritz.box ([2a01:2a8:8108:8301:7643:bec8:f62b:b074])
        by smtp.gmail.com with ESMTPSA id l9-20020a1709063d2900b0073d9a0d0cbcsm4861177ejf.72.2022.11.14.18.54.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Nov 2022 18:54:33 -0800 (PST)
From:   =?UTF-8?q?Bernhard=20Rosenkr=C3=A4nzer?= <bero@baylibre.com>
To:     linux-mediatek@lists.infradead.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, matthias.bgg@gmail.com
Subject: [PATCH v2 06/15] dt-bindings: usb: mediatek,mtk-xhci: add MT8365 SoC bindings
Date:   Tue, 15 Nov 2022 03:54:12 +0100
Message-Id: <20221115025421.59847-7-bero@baylibre.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20221115025421.59847-1-bero@baylibre.com>
References: <20221107211001.257393-1-bero@baylibre.com>
 <20221115025421.59847-1-bero@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabien Parent <fparent@baylibre.com>

Add binding documentation for the MT8365 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
index 939623867a646..3b92725bbc99b 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtk-xhci.yaml
@@ -34,6 +34,7 @@ properties:
           - mediatek,mt8188-xhci
           - mediatek,mt8192-xhci
           - mediatek,mt8195-xhci
+          - mediatek,mt8365-xhci
       - const: mediatek,mtk-xhci
 
   reg:
-- 
2.38.1


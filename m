Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 721F250FF63
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 15:42:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235454AbiDZNo7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 09:44:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345745AbiDZNo6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 09:44:58 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE58F3CFF7
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:41:48 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id u9-20020a05600c00c900b00393e729e655so1591890wmm.0
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 06:41:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xXQbkkr1OF+Ro+dWXJqCAX6WABW7vUg3V8zjyeYbcCY=;
        b=x6zFqf+/EmVz0TvduZBvJRSfkSVefrxagUAWXYZ0+kEwhEkh+cUuE6WBr5+Xi11Weo
         XharkEOrZUMOBUft5Pv+xdS/UaSk/wc614P6T+6Cb/KTf7l0/qDb6pR4M+CoiEBiVD6d
         4JBsW0uyko9MjgeHfrkjb0WX6urHDMz5KD7Z1P5fL5srgFIwtNGepM8/NXuSRm6nijje
         ebuZqO1/tuUI/CfGb1zqRXbYJUkKNndqsC+WdAzORXjojkONvwblAOxJeIUHTj6L9QHc
         /Sd9AI+osICH/ENT85KECJkgchRVTqu7Jbz39RY8FINgdGBSVGEGH27CWRLxSd4msMcE
         IUpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xXQbkkr1OF+Ro+dWXJqCAX6WABW7vUg3V8zjyeYbcCY=;
        b=5A6XM5pdcKnzLgL4Bg/dg5HJ6sKCluUAO55FzuyfMQks33VK7rNCG2b9xpIS9+CK7w
         n1S8bebQHEGk+R+XU89FcFVSUNs9rxZmA9a/BvZqV0ccD/u2uhRGAQtnlphCaOjan7Tm
         4eZjWNM3MzzfaXppUz9gt0pKzA11kUk3c8vRM0GyfvjcG6ZIguvs/p5obIEyPO7u9+sr
         HMeUuKGxcYC5ouegOwPJwH04E8lBWwQctUndo+/Puk1hYICmsak3HqabW1k80z/zSlQM
         RPRE+2yGMxJyhpVZSgoP/v4I3JOfWkJLkBzu1IAViVhuU672OV+HSCBSPSYfOyFstmHs
         Yi0g==
X-Gm-Message-State: AOAM533iJf8eQj7CYXJ8UW5G7kMAf2MGo7kbHgq46Efjf670sLnVglmI
        LOuAUtXNDPxRrYBQU6GiTFizgQ==
X-Google-Smtp-Source: ABdhPJwjCz5bSKe6Ekot1VUMdiUvbf6MQuP6zLDwMQtDT48tOMws/2TXKGP3aFcjlclS3xlYidSiZQ==
X-Received: by 2002:a7b:c341:0:b0:37b:c619:c9f4 with SMTP id l1-20020a7bc341000000b0037bc619c9f4mr30559500wmj.38.1650980507577;
        Tue, 26 Apr 2022 06:41:47 -0700 (PDT)
Received: from radium.lan ([88.160.162.107])
        by smtp.gmail.com with ESMTPSA id b6-20020adfd1c6000000b0020aac8a9946sm13628475wrd.47.2022.04.26.06.41.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Apr 2022 06:41:47 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Fabien Parent <fparent@baylibre.com>, linux-usb@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 1/7] dt-bindings: usb: mediatek,mtu3: add binding for MT8195 SoC
Date:   Tue, 26 Apr 2022 15:40:59 +0200
Message-Id: <20220426134106.242353-2-fparent@baylibre.com>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220426134106.242353-1-fparent@baylibre.com>
References: <20220426134106.242353-1-fparent@baylibre.com>
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

Add binding to support the mtu3 driver on the MT8195 SoC.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
index df766f8de872..37b02a841dc4 100644
--- a/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
+++ b/Documentation/devicetree/bindings/usb/mediatek,mtu3.yaml
@@ -25,6 +25,7 @@ properties:
           - mediatek,mt8173-mtu3
           - mediatek,mt8183-mtu3
           - mediatek,mt8192-mtu3
+          - mediatek,mt8195-mtu3
       - const: mediatek,mtu3
 
   reg:
-- 
2.36.0


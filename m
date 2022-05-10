Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 885605215E6
	for <lists+devicetree@lfdr.de>; Tue, 10 May 2022 14:50:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242045AbiEJMyY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 May 2022 08:54:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242039AbiEJMxy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 May 2022 08:53:54 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CF6772A8075
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:51 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id kq17so32734624ejb.4
        for <devicetree@vger.kernel.org>; Tue, 10 May 2022 05:49:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uE+uPH7XJQcG7yH10ofbLOu1qNt5to4brlA9JYvKtQs=;
        b=iKtgXy4JrJUvAJppO3GZ+XMVhpICzTvH/99xfRe6Y8da08LQY7JbAeJrvSTD4Uf5xI
         JNwkwZnIOBzex3M3JQMbmAw7+NmQImhbQLEAgVu6p7XKyyic8Pa/CP0pkz8gQ42vWO0/
         omfe9nuDyyCahTNR0yvxsIbsNpH0ifhCtRg7Pdu1XxXQnumU1koJUz7KGy2yJ5zHC4tw
         Ct5V1Pllw0sS56DQc5gZd+yTfZlHQQ3pwnCJUjepxUIDNpznS0Ho+CC5bfw6MFTzAZPz
         Tnu2SM/YFtL09StrIQMY1VBk7KZ9Mr1G2+aOjoZzUe8iL7KeQ0XUf/7yAX0oqYfkQNfi
         HCdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uE+uPH7XJQcG7yH10ofbLOu1qNt5to4brlA9JYvKtQs=;
        b=60yRqI0Npe4eI6W6SddctrxS8Ws6s7ybmXN8DVJ0ymcOzS83zEiaNfkYVC60tT4luR
         7AMTiAl6grpjbNtHKYkl1NP/awiUKjjzYaRHpMyGsvWNpSXxFuVrvyAb31TMzJRUydKY
         iouLvl00DeKvQnEAqo5Rcn+ncTAQtJL3V6JQ1AFDvmG31c25cdnXg8m3yDlm2Kdpb4Vu
         fwU45EWgG5+1XDaMzlUUdNd6XkQ0qZ+Ym4fHAIZmazQSh+WX/KG2T8N/pCK10GoOgvSt
         C8iIFwQLj4VLm0Ui9SHt8kdCb9foUTdWAE6W+mE6PflK1CODvsb3D6yuDgQBYbGs2gKN
         0Faw==
X-Gm-Message-State: AOAM532FYrjsb768abVy2UxA/60us6OW8unSy3I1P4Tg4Jo+iuxQ1IZN
        6mz5KHl7VXNRyPZG+P0YLi6Ctw==
X-Google-Smtp-Source: ABdhPJzO/bHcf5IDfxgIy5UOpIHVpNzywPuo8Id6tHFxW+Va42WdjEgXjv8p05Dl/div2ikIUmncHg==
X-Received: by 2002:a17:907:7baa:b0:6f4:794d:d3ae with SMTP id ne42-20020a1709077baa00b006f4794dd3aemr19189820ejc.611.1652186990350;
        Tue, 10 May 2022 05:49:50 -0700 (PDT)
Received: from fedora.robimarko.hr (cpezg-94-253-144-75-cbl.xnet.hr. [94.253.144.75])
        by smtp.googlemail.com with ESMTPSA id gz14-20020a170907a04e00b006f3ef214e62sm6094290ejc.200.2022.05.10.05.49.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 May 2022 05:49:50 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, kostap@marvell.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, pali@kernel.org,
        marek.behun@nic.cz
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 10/11] dt-bindings: marvell: armada-37xx: add Methode eDPU compatible
Date:   Tue, 10 May 2022 14:49:28 +0200
Message-Id: <20220510124929.91000-10-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <20220510124929.91000-1-robert.marko@sartura.hr>
References: <20220510124929.91000-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document compatible for the Methode eDPU Armada 3720 based board.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
index 3f41ef2c6f3e..db0307241e39 100644
--- a/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
+++ b/Documentation/devicetree/bindings/arm/marvell/armada-37xx.yaml
@@ -25,6 +25,7 @@ properties:
               - globalscale,espressobin
               - cznic,turris-mox
               - methode,udpu
+              - methode,edpu
           - const: marvell,armada3720
           - const: marvell,armada3710
 
-- 
2.36.1


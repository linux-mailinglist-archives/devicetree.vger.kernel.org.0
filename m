Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6C9F35BB649
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 06:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229495AbiIQE1a (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 00:27:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48444 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229510AbiIQE13 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 00:27:29 -0400
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com [IPv6:2a00:1450:4864:20::431])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6998BAF4BB
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:27:26 -0700 (PDT)
Received: by mail-wr1-x431.google.com with SMTP id d2so3394983wrq.2
        for <devicetree@vger.kernel.org>; Fri, 16 Sep 2022 21:27:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=pbHsl2tECTTTzDSCKLbepPPr8s/lKAQ1KAUQEzxdQJg=;
        b=MzV9zV00zl/KkAyJYTFQdTmLpFCqYCbGs0jcuIdMfgyEn92ABOk503ECbJDEtTteiD
         DvKecI9GONB1glucZmbmtizUPdp50rv+bwj7VL4TmRPOKqiR5ChTwTKycAMAiTEG/Ep4
         t4BUK7V07QDo/ULNude7qdDcqJ/pFF/wcbihekuZ3L5XHb7clk9dvZpXkIkPBGddUTc4
         pwgnZ4Fe+0ktcNOq9Pq79L89GvhJ7jWKBWHjHPTpIgHElYPsjVzQ71MfRVuo1Moama+h
         dQ6RVmH2z4kM/LwRZhfDMTgZ/KRAYjblAai9hdK40yfrrA30RSBJ6QfXRB/+xpAVrHzG
         muCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=pbHsl2tECTTTzDSCKLbepPPr8s/lKAQ1KAUQEzxdQJg=;
        b=8MCl76rpBinHdlHKETH/4BUUMUO8BbcoEBahaXFApd9Sz3XW2SRTQXInwzn6f1inrF
         1LeOA41EGpHH7fTr2DvnrUz0rhw7zJT+Qv3EUYSMIH9LIwuqN4HtDFEqzyqEnOSOKuTk
         vrHIVh44B3c8h6qpkYmHo+L0aiJDBHhj2na9m51tGiN/5RDXa+s8uR7VqLwCpKZQ8VUO
         CX4Ch51ubpcDTS4KXCnQjVeg2JJ9bBYJKLbTtyASl6Gmprs+y68UbLInxENGntD4tA3j
         wKRdrQ61L/MexQY6Y7ecrxvAucR4HK5UcaI9n/UDbXHGNwHtd69PZPK8nY+g4IXwAXTD
         vZ1Q==
X-Gm-Message-State: ACrzQf0VbZriCya8fV6Py0GPiNa7BBxn4mvH0KE2jFbxN10zE5o8Srto
        Ygi5uDBvEZnr1OpohjguVR7i5rqNRJFWxA==
X-Google-Smtp-Source: AMsMyM7wAVebTEGhBzlOkQiINkcqOCXRcPuXuKJx40riOJwXBtPjhInX6kPJ7Lc3KPe6cz6zg2NmTw==
X-Received: by 2002:a5d:424a:0:b0:228:811f:c1a2 with SMTP id s10-20020a5d424a000000b00228811fc1a2mr4497341wrr.262.1663388843900;
        Fri, 16 Sep 2022 21:27:23 -0700 (PDT)
Received: from localhost.localdomain (188.red-88-10-59.dynamicip.rima-tde.net. [88.10.59.188])
        by smtp.gmail.com with ESMTPSA id d7-20020a05600c34c700b003b4ac05a8a4sm5169159wmq.27.2022.09.16.21.27.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Sep 2022 21:27:23 -0700 (PDT)
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
To:     devicetree@vger.kernel.org
Cc:     tsbogend@alpha.franken.de, robh+dt@kernel.org, krzk+dt@kernel.org,
        arinc.unal@arinc9.com, sr@denx.de
Subject: [PATCH v2 2/2] MAINTAINERS: update Mediatek MT7621/28/88 i2c driver doc file
Date:   Sat, 17 Sep 2022 06:27:21 +0200
Message-Id: <20220917042721.527345-2-sergio.paracuellos@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
References: <20220917042721.527345-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mediatek MT7621 i2c driver Bindings have been migrated from text
to YAML. Hence, properly update this file accordingly.

Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
---
Changes in v2:
- Add this new patch to the series to align MAINTAINERS files
  with new YAML doc

 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 08620b9a44fc..bac21d599181 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -12669,7 +12669,7 @@ MEDIATEK MT7621/28/88 I2C DRIVER
 M:	Stefan Roese <sr@denx.de>
 L:	linux-i2c@vger.kernel.org
 S:	Maintained
-F:	Documentation/devicetree/bindings/i2c/i2c-mt7621.txt
+F:	Documentation/devicetree/bindings/i2c/mediatek,mt7621-i2c.yaml
 F:	drivers/i2c/busses/i2c-mt7621.c
 
 MEDIATEK MT7621 PCIE CONTROLLER DRIVER
-- 
2.25.1


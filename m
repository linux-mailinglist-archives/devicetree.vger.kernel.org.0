Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A36DF4DB071
	for <lists+devicetree@lfdr.de>; Wed, 16 Mar 2022 14:10:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1356030AbiCPNLO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Mar 2022 09:11:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35066 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1356041AbiCPNLL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Mar 2022 09:11:11 -0400
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1B22B517D0
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 06:09:54 -0700 (PDT)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id EACD93F612
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 13:09:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647436190;
        bh=hMpVGD6o3TsybJH5wrGEkbZ3q6M86lmXlzkdgti+gZM=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=dDa+7L1Ly5+7/gn9IfwNyCMz6rBhNHpKBeabgLdZHmWRNSrvX4kAny/98mH3n183L
         Tasy7kzAhRBOEP39pEuruKSfpxoTkYYGKIElwLOYR8F921oJ2ZWJKp5yApbwhQW8LQ
         OFYlBx41G9WKz3wDKquxOKAXfnP4iq4Cn8lpAWue1RcSoi3LBuQb4zuTKBbzKaR1EZ
         kG+fWYghNH+K7YYwEkddvv1Et6hrn20fEdQcFHFnEv59GMpGDcKwAzYt9Vi2f7CrUN
         NmIcjSRl8XmtE8FW0TKBlF2SSUhhYrT8ImBu/4V8Xe4P45b/R3Ggq/t93NSEIGqZRp
         fCxwyxl4axg5Q==
Received: by mail-ej1-f69.google.com with SMTP id q22-20020a1709064cd600b006db14922f93so1144164ejt.7
        for <devicetree@vger.kernel.org>; Wed, 16 Mar 2022 06:09:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=hMpVGD6o3TsybJH5wrGEkbZ3q6M86lmXlzkdgti+gZM=;
        b=OvBLHrj/i/ziGxtWgNiXYOvxse8CqI8K9E7ksNmFAVOcS/c/qAumTimc1aQ6WsLw6X
         XSBNnhEKECtVfyU4uJQolivTI6NYMuNR/cjqCADAFOoAwoMOT3ddKaEVB94IBHsV+Q3c
         XzC7IP8bJev4TjWI/boX+j+UbCOKFIkuhFb2Hf0EoDLRsYBy1QtTPmmv3xQfSN+4jHYN
         ecVD2+4LxRlqOiVJ42AMikpgT4wasljVxiUTF8ZS6AvzNyli4LAV7RGWVAL9w0Qfk0NC
         ecrl2niimUevX/YImgCpaz1AkiToibfzvAF+pxH9O+lZhYNHQPFG7Uh1IjCPuUa+gyr2
         Nyww==
X-Gm-Message-State: AOAM530qJZjcyPpt1xOqEqaEptNp626Ac4eld2a60eoLACmLiAnzcUMe
        Fbq0XwM53pMwdlnoSAGrz+U/ZBYcCE1n0UjkwsrKc1Y5QskrorepMht2wWCm9lFvlg0FGixb3Et
        hMghB9d2igU8stAHn4HQEC7Cc9X74PKXa4YOV+J8=
X-Received: by 2002:a17:906:dc8c:b0:6df:831e:76d4 with SMTP id cs12-20020a170906dc8c00b006df831e76d4mr1659346ejc.139.1647436177721;
        Wed, 16 Mar 2022 06:09:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFY00Fte9yceTYtdcLIDEMUngEA7Vv2XIZrc94QHM+xHDidA3EN1sRimJG9UK5kh8CSQEOXQ==
X-Received: by 2002:a17:906:dc8c:b0:6df:831e:76d4 with SMTP id cs12-20020a170906dc8c00b006df831e76d4mr1659302ejc.139.1647436177483;
        Wed, 16 Mar 2022 06:09:37 -0700 (PDT)
Received: from localhost.localdomain (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id mp33-20020a1709071b2100b006db6dea7f9dsm861597ejc.168.2022.03.16.06.09.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Mar 2022 06:09:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Luca Ceresoli <luca@lucaceresoli.net>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Jonathan Hunter <jonathanh@nvidia.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Alexander Shiyan <shc_work@mail.ru>,
        Steffen Trumtrar <s.trumtrar@pengutronix.de>,
        "A.s. Dong" <aisheng.dong@nxp.com>,
        Giulio Benetti <giulio.benetti@benettiengineering.com>,
        Jesse Taube <Mr.Bossman075@gmail.com>,
        linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-tegra@vger.kernel.org, linux-gpio@vger.kernel.org
Cc:     Ioana Ciornei <ioana.ciornei@nxp.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Subject: [PATCH 1/2] dt-bindings: gpio: pca95xx: drop useless consumer example
Date:   Wed, 16 Mar 2022 14:08:57 +0100
Message-Id: <20220316130858.93455-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Consumer examples in the bindings of resource providers are trivial,
useless and duplication of code.  Remove the example code for consumer

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
---
 Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
index b6a6e742b66d..dc0fc8fc4839 100644
--- a/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
+++ b/Documentation/devicetree/bindings/gpio/gpio-pca95xx.yaml
@@ -190,14 +190,6 @@ examples:
                               "chg-status+red", "green", "blue", "en-esata",
                               "fault1", "p26", "p27";
         };
-
-        ts3a227@3b {
-            compatible = "ti,ts3a227e";
-            reg = <0x3b>;
-            interrupt-parent = <&gpio99>;
-            interrupts = <14 IRQ_TYPE_EDGE_RISING>;
-            ti,micbias = <0>; /* 2.1V */
-        };
     };
 
   - |
-- 
2.32.0


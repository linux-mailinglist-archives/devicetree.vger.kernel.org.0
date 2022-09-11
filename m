Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8376B5B4DBC
	for <lists+devicetree@lfdr.de>; Sun, 11 Sep 2022 13:12:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbiIKLMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 11 Sep 2022 07:12:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbiIKLMQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 11 Sep 2022 07:12:16 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5932532B8D
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:15 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id m15so10342395lfl.9
        for <devicetree@vger.kernel.org>; Sun, 11 Sep 2022 04:12:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date;
        bh=7BAXPGxWo40q91XDsq23ZI9ewONcXW0hOeLyfkEAbn4=;
        b=DyF+J3EmHQHuNVgK+TPDZe28N7cH8+NQm2tTpC+va/NuZzlLQGg15BlVMUi0wZtlns
         sM9LOBW7InI69qkSLZCDjyAZOPfUOh25OLoW+JPaNq/6+V2JB0Uez7Ri//WaSshyA5rQ
         ptmj4QBCWa/ybz4Ewj1uo6JkewNxm5+XgWsCYMtO+tu/691rvhTMHsoqDVfiYKvpzWOa
         yIOKRiY/RjwWh9+urJNLJGP5D+piWLn54pt3NhdT78Ezfv1aXRND90a9UK6PhtadPadF
         LmVC4jjgoiiHiVKplM5WacmR8VS6j90Fd9+aKUrOkJ6/D1uzXvItXd+qKpHHWrLjPn9R
         Wnpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date;
        bh=7BAXPGxWo40q91XDsq23ZI9ewONcXW0hOeLyfkEAbn4=;
        b=6b05Rl6DNGhPvuhzygigV3qUZyk/pz8xM+x7onvOC375pkotcJPCytS0ve8s/3UZ2g
         m3CZ67BXuVJCQ4yf1C8PQS8Sco6/s055AT8s1PzwEA7jWEk8kYuFbOII2wV+F+SdyDl2
         4sKLZA7tVsg0JQmYcb77bNoWA4J7As2VZsTCVjiKPpLHOrxdhQQmkjVEjvudpUEtyrZa
         i8dsT7PH0DF4yYV5/7+rCYzFBxJOI5Hdw2/ibPRT2FOt09CEX3QN7aMB1kbBlDz0+SYM
         ZzsPD8lmsP56+D1ge6sIz+wvoayLeoP3v/cE2pyfMmtUh4M6NXyMGNPPzdlH97XuSaEv
         cXCQ==
X-Gm-Message-State: ACgBeo1nlTG6kRAj1xM/oyKWBxyALVq5cV2l0+OW/myUCie3KE0mtSD4
        6gzeEwIzwg+cGPy0nVF4CqAiaA==
X-Google-Smtp-Source: AA6agR79XuwzYM7RRzJeJ5CZNI2AZ0IPbPuBDyEanulOIsldJ64eLJr0RroHmIteVNwWvI3jcpvClw==
X-Received: by 2002:a05:6512:c2a:b0:497:a1ee:7a21 with SMTP id z42-20020a0565120c2a00b00497a1ee7a21mr7230608lfu.221.1662894733296;
        Sun, 11 Sep 2022 04:12:13 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id 11-20020a05651c128b00b0025dfd8c9287sm607365ljc.69.2022.09.11.04.12.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Sep 2022 04:12:12 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rajendra Nayak <rnayak@codeaurora.org>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 07/40] dt-bindings: pinctrl: qcom,sm6350-pinctrl: fix matching pin config
Date:   Sun, 11 Sep 2022 13:11:27 +0200
Message-Id: <20220911111200.199182-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
References: <20220911111200.199182-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Matching PMIC GPIOs config nodes within a '-state' node by '.*' pattern
does not work as expected because of linux,phandle in the DTB:

    'pins' is a required property
    'function' is a required property
    'rx', 'tx' do not match any of the regexes: 'pinctrl-[0-9]+'
    [[59]] is not of type 'object'

Make the schema stricter and expect such nodes to be either named
'pinconfig' or followed with '-pins' prefix.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/pinctrl/qcom,sm6350-pinctrl.yaml   | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-pinctrl.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-pinctrl.yaml
index 898608671c4b..85a4ff5a5625 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-pinctrl.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sm6350-pinctrl.yaml
@@ -44,8 +44,9 @@ patternProperties:
     oneOf:
       - $ref: "#/$defs/qcom-sm6350-tlmm-state"
       - patternProperties:
-          ".*":
+          "-pins$":
             $ref: "#/$defs/qcom-sm6350-tlmm-state"
+        additionalProperties: false
 
 $defs:
   qcom-sm6350-tlmm-state:
@@ -133,13 +134,13 @@ examples:
                 };
 
                 uart-w-subnodes-state {
-                        rx {
+                        rx-pins {
                                 pins = "gpio25";
                                 function = "qup13_f2";
                                 bias-disable;
                         };
 
-                        tx {
+                        tx-pins {
                                 pins = "gpio26";
                                 function = "qup13_f2";
                                 bias-disable;
-- 
2.34.1


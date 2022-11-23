Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC5FA63616F
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 15:20:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237702AbiKWOUx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 09:20:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237975AbiKWOUr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 09:20:47 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 04E46663EF
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:20:31 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id v1so29560980wrt.11
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 06:20:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nFzDxpWqkqEB+uPsP/l7eY+9vWzpuHYgwjXpD5issVQ=;
        b=IdmaEqOgEOEdyX2gzNhqKjbbli39aLpBgR8GPR8rmBye/EbpFqYuzK1+iBKlsvxEfV
         WkpFJmM9GcGmujTrWh+v23RsKxtegmDEXppogzwEVRnVZYdFrIvvXoYjt5rN3Elj9npJ
         ssYggvPRubGz5LsWHYefblcgkurzfMlSvjUIyx+FJe3kvzcnNM0avvJCjMuq0RM1GngA
         6rJIwy+GkJVvoqwiI/UCh5ktJM/EiF7ubFckiNPpjxpqHHuGZYha7EJmuoceYGhR5Ho6
         AYzZ/r1RabtRSqJsMKbZ4gPFAh9gs7d57sIoB09yQk3ueNWxeXgGqDJrsvF2VLIU43d+
         UvTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nFzDxpWqkqEB+uPsP/l7eY+9vWzpuHYgwjXpD5issVQ=;
        b=p04gKiu1BrTGTW6ljhOPtv+DZA3K2T5zyyv7pKvdMZWTf5Mw44gX+tB1SayA17eVNj
         cBWo/6jGBOFQlNcY1JU3YjdxAKE7AQJ8wXuRyR1U9UOw4BtxdM+VLkWbejX+bIwPHM1b
         fNcZCG2zjWVKnPKAGQ8tbAIXzLVkC2Mh2++rEIKKHdIPl7pC6HvwXW14B+WJBah7cGWS
         x3UQPZ/SUNxHnRnkjt5zgyMh3Kp6gvjIF19S8M3s782CMyt4bTMIZ67LJ1yfkE/D5eow
         tLQD+YuipXpq6zsCtYY38Th6DNvYkybqBj0/3fnNONHbrmiGTJ4uX0FgECfYyyJ6w1nx
         SNzQ==
X-Gm-Message-State: ANoB5pnTyxlHJcqh19EixZTadisuTO32NesoC4SQ+VzlGYzUfyEkRsqc
        O4rdCYZY3K2mSaHdIOV1AyIsCQ==
X-Google-Smtp-Source: AA0mqf69lf0T1tIlF6HtvnZqc//gOQ2wXsW4naI43F0mcq9jAbOloNyQ6rnBYoH2MELBfXsoTKINNQ==
X-Received: by 2002:a5d:4202:0:b0:238:c1d5:3293 with SMTP id n2-20020a5d4202000000b00238c1d53293mr5246664wrq.446.1669213229576;
        Wed, 23 Nov 2022 06:20:29 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id g9-20020a05600c4ec900b003cfd58409desm2837438wmq.13.2022.11.23.06.20.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 06:20:29 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Mike Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 7/9] dt-bindings: clock: qcom,rpmh: Add CXO PAD clock IDs
Date:   Wed, 23 Nov 2022 16:20:07 +0200
Message-Id: <20221123142009.594781-8-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221123142009.594781-1-abel.vesa@linaro.org>
References: <20221123142009.594781-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The SM8550 has a new fixed divider as child clock of CXO
called CXO_PAD, so add IDs for it.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---

Changes since v1:
 * added Krzysztof's R-b tag

 include/dt-bindings/clock/qcom,rpmh.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/dt-bindings/clock/qcom,rpmh.h b/include/dt-bindings/clock/qcom,rpmh.h
index 0a7d1be0d124..f3e0288420ce 100644
--- a/include/dt-bindings/clock/qcom,rpmh.h
+++ b/include/dt-bindings/clock/qcom,rpmh.h
@@ -33,5 +33,7 @@
 #define RPMH_HWKM_CLK				24
 #define RPMH_QLINK_CLK				25
 #define RPMH_QLINK_CLK_A			26
+#define RPMH_CXO_PAD_CLK			27
+#define RPMH_CXO_PAD_CLK_A			28
 
 #endif
-- 
2.34.1


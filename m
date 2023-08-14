Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8E1377B6F8
	for <lists+devicetree@lfdr.de>; Mon, 14 Aug 2023 12:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233167AbjHNKlp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Aug 2023 06:41:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235186AbjHNKlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Aug 2023 06:41:37 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5212810DE
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 03:41:27 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id a640c23a62f3a-98377c5d53eso542564266b.0
        for <devicetree@vger.kernel.org>; Mon, 14 Aug 2023 03:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1692009685; x=1692614485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Djj4l4V/6mjTCVIY5j1u2m14Bqurma+fObOXnVezLR0=;
        b=fBXI+rRnh1me98p2B6w9MJ+himWLu2zzOVjf19ltNVYFfR/dNpJxyBqCz8zTs1bJhx
         9ETPAkFP8toVGszYn8vNWF3zgyNJ8dTJ9EmV/PRn8ORbDyGt51YRA8tUs1AlGBYPc/uf
         c1fZgwFTy5MW7wNzz0TeWZ+AVGDOxn1ORnT6Y3bMVEA1O6o86YSQvaIUysQgP58JRag5
         N96eyCE5fUlCS1zHrsFwr4JEbOWtlKfr8WuPGfjnxcW3dS4jg+n7i3mahMjWVqicC5YO
         +I4PbOWPQMjmRjlFmekO9xOnSInNBXEPmWFHHhWf5DFsvyNZTp8R5HQaQrITnK2LjyuE
         L5gQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692009685; x=1692614485;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Djj4l4V/6mjTCVIY5j1u2m14Bqurma+fObOXnVezLR0=;
        b=HzP8/OP5tH9a7Xa6LXWZUHUZC972fWJqCTVd3E40Kcheo1pW+/+TQSK/eRKUdF9doo
         rpz92DCrO6rYJuTmulGITMvJMCcT0wkRGeDoTa6OIWZ2ym/Qt9oHxZ5BCrDk8cuJqSnw
         uZUvhCwZQ7vr6yy4QPXlI6J7H9zLRK00yluPQvwnjrcPvcqK0ipKt100hbxW+j5rrVLA
         GtyNGdSwHFERHY0gAdBoiYMW5AWY5fsWeEedHC58wWkT5PDNtDla/RfWTAY5qS8bU1vp
         /46pfFE/TmgypT8RaaJSOVKvbgvbF475KAEv7FgGqmA2kH62JuQMromEwtS8VmpyTYZX
         61oQ==
X-Gm-Message-State: AOJu0YwvTbdgWcrhLVfMgThFgDu1oAl1YrzgDL1ed1enkGg6l5ju7yly
        YAEga4OUAsnz7tX0lnxOLEiuAg==
X-Google-Smtp-Source: AGHT+IG2Bg4je6dJx6bRZIw22iqCWG+Wx8NgEDEAyVFrqeUSGUgTzmkjIzRJRcIMWoTUmhbGYHlFAw==
X-Received: by 2002:a17:906:7489:b0:974:183a:54b6 with SMTP id e9-20020a170906748900b00974183a54b6mr7128442ejl.33.1692009685347;
        Mon, 14 Aug 2023 03:41:25 -0700 (PDT)
Received: from fedora.. (cpezg-94-253-129-24-cbl.xnet.hr. [94.253.129.24])
        by smtp.googlemail.com with ESMTPSA id qw4-20020a170906fca400b009934707378fsm5486586ejb.87.2023.08.14.03.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Aug 2023 03:41:24 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andersson@kernel.org, agross@kernel.org, konrad.dybcio@linaro.org,
        mturquette@baylibre.com, sboyd@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 2/2] clk: qcom: gcc-ipq4019: add missing networking resets
Date:   Mon, 14 Aug 2023 12:40:24 +0200
Message-ID: <20230814104119.96858-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20230814104119.96858-1-robert.marko@sartura.hr>
References: <20230814104119.96858-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NO_DNS_FOR_FROM,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,T_SPF_TEMPERROR autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

IPQ4019 has more networking related resets that will be required for future
wired networking support, so lets add them.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 drivers/clk/qcom/gcc-ipq4019.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/drivers/clk/qcom/gcc-ipq4019.c b/drivers/clk/qcom/gcc-ipq4019.c
index c134c468bb33..4a0bd668892e 100644
--- a/drivers/clk/qcom/gcc-ipq4019.c
+++ b/drivers/clk/qcom/gcc-ipq4019.c
@@ -1713,6 +1713,12 @@ static const struct qcom_reset_map gcc_ipq4019_resets[] = {
 	[GCC_TCSR_BCR] = {0x22000, 0},
 	[GCC_MPM_BCR] = {0x24000, 0},
 	[GCC_SPDM_BCR] = {0x25000, 0},
+	[ESS_MAC1_ARES] = {0x1200C, 0},
+	[ESS_MAC2_ARES] = {0x1200C, 1},
+	[ESS_MAC3_ARES] = {0x1200C, 2},
+	[ESS_MAC4_ARES] = {0x1200C, 3},
+	[ESS_MAC5_ARES] = {0x1200C, 4},
+	[ESS_PSGMII_ARES] = {0x1200C, 5},
 };
 
 static const struct regmap_config gcc_ipq4019_regmap_config = {
-- 
2.41.0


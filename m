Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC1DA6AAFBA
	for <lists+devicetree@lfdr.de>; Sun,  5 Mar 2023 14:00:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229667AbjCENAF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Mar 2023 08:00:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56142 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbjCENAD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Mar 2023 08:00:03 -0500
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D6DC12BF4
        for <devicetree@vger.kernel.org>; Sun,  5 Mar 2023 05:00:01 -0800 (PST)
Received: by mail-ed1-x535.google.com with SMTP id x3so27867676edb.10
        for <devicetree@vger.kernel.org>; Sun, 05 Mar 2023 05:00:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678021200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fFfz+uU4iWi4U+HUbSDcz5V28QAKSpXo5fhqvwVadow=;
        b=n+SD7hNb6xKs/p7kZz7hBJYUhMEh+LeBOXsrBYTNSfm9LClYyNOa5YBThUmGUQbxhI
         SRZ9A6Q1VyHaEb8UH5LYRvKT/fzmRKIdiTKGRvPosL4dXpOSE85qqOZIjIokNzhqk1K7
         4Cch4MO/gqZyWmJavzWEPOp6LH0yiyOsXOUS/5RUtYezMkxgOYcwoZmTHkJjFQeyUX/d
         vTZryVZNTurr3JN/dcL76e0FnI71nQ+jx44d9FG6etU33WPR/t8PCnj8SqXvQeNBQDY1
         u52CaX+R0iVF8EeCJuJm6fQDFcKtptpY/yS6uKpIZOaAwiS9CdTmb7P/QJc+K9qVKYGK
         hISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678021200;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=fFfz+uU4iWi4U+HUbSDcz5V28QAKSpXo5fhqvwVadow=;
        b=NmfqnIT76ttji8ifC7ACvzoRn/sNVEj3TKERJYRaIoRaobK1PDrNOQMelAqMvMLTNd
         NKgzXgzExPtun0YEXz4tjOeYcrjLwSiT1vItZYnYkqTpyZv0DyHpvCC7M+Qml9puIAGu
         DvqU7Gz8PZr8uJYJGytHhJE5/51vQW07WhjUKhqkKqJhKPQuS5JW/TIrH/90mfPZpYxo
         uqzsM/kdSO2zLfws5GKGR/8mKQbtPqIhnBn3TMeBn4rY4y9vSboCbGw32zl9cLW/PmDA
         qB8FFaZzLj1txi6e4YPmNkKrimk4T9w9VBrBs01+anCIuUhMbF6feIk88HeSqmWdHQ4G
         h8rQ==
X-Gm-Message-State: AO0yUKWdkS2fR0Pr0bg8tcQiaXzxQiWGC1mrb+rBZPzOazrSweXzYZ+l
        zvZ1FXp0KvirK64y3/XSq8VY6w==
X-Google-Smtp-Source: AK7set+2w8/+auLbf7kER/xyHrNTh34MJznRznyCSBH92LnJWx4qIVDaQZtUVPalbYr1pM1lsloYeQ==
X-Received: by 2002:a17:907:20aa:b0:878:814d:bc99 with SMTP id pw10-20020a17090720aa00b00878814dbc99mr7571116ejb.66.1678021199977;
        Sun, 05 Mar 2023 04:59:59 -0800 (PST)
Received: from krzk-bin.. ([2a02:810d:15c0:828:71e7:13d:1c29:505f])
        by smtp.gmail.com with ESMTPSA id l15-20020a170906078f00b008ea8effe947sm3193158ejc.225.2023.03.05.04.59.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Mar 2023 04:59:59 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Souradeep Chowdhury <quic_schowdhu@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 04/11] arm64: dts: qcom: sdm845-db845c: drop SPI label
Date:   Sun,  5 Mar 2023 13:59:47 +0100
Message-Id: <20230305125954.209559-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
References: <20230305125954.209559-1-krzysztof.kozlowski@linaro.org>
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

The SPI controller nodes do not use/allow label property:

  sdm845-db845c.dtb: spi@888000: Unevaluated properties are not allowed ('label' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index d4866feef2c4..acd4f9ca6c09 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -819,7 +819,6 @@ can@0 {
 
 &spi2 {
 	/* On Low speed expansion */
-	label = "LS-SPI0";
 	status = "okay";
 };
 
-- 
2.34.1


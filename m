Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0DBB1739BE1
	for <lists+devicetree@lfdr.de>; Thu, 22 Jun 2023 11:08:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231998AbjFVJGJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Jun 2023 05:06:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232006AbjFVJEb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Jun 2023 05:04:31 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 623381BF4
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 01:58:15 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so9521752e87.2
        for <devicetree@vger.kernel.org>; Thu, 22 Jun 2023 01:58:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687424254; x=1690016254;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=wheGGs4TOeoaxyiJusNAI6edSOfppmt0QY162VaTsbg=;
        b=fMa87xPVHn6aFK/QlQsZK0X/9zD190tpNE/nQ4NwUdS4qkgYzO/JKJPgcwzABg+F+Y
         lhjVeW87qUYiGPUIPeJQ2WPXJHjwg+zgOmsMaH3F83O5DW6gpSC3caw1bN4k090KdStC
         tRqdbgJd3gW86891068jqLu4HLqLa5pbEn9qce0NO4QjiSYXVCU1sfvhp0zaJOOzihcy
         F17meSCYXHPsCwFyT4UWPiMhNSfFAq69acMdQ7xqI1ZgDOcpRDfzD9Z+Y0NsTjuzyYFV
         bONo0O7wYQV7a1mjjdA008tp14ZdC5yzZOiRghPw8ewa1HZuZcrU02CstuZUZh9I245S
         5HOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687424254; x=1690016254;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wheGGs4TOeoaxyiJusNAI6edSOfppmt0QY162VaTsbg=;
        b=KNWoeZlLZiAH3emf2oo0LfCHVdQJhclCZsg/yzdWhpNsYPMsUXknxmY7Fe6iA840Zt
         hMQjK1N6AuCOlg59XhsxZ4nkatKmvK7Xt6/HUo/hsCRfKJKVbDdv31oauZhSxCDNlC2Y
         I5ByXrC0vzPBoIIs2/5kpYWXDoteT34418rYfj5jLfypO8CSWfvChkugrLST+xry+oW1
         7dRYO2yIHZ268tW9B2QjBp2uHRT78knuTBXpEzqQE4/zrBzwY1roBFuQU77I+BC2Qlx/
         hnhprRBKirgOdfDpB+xWJ+8FjOrNjjYtXT0IN5s8QLf1/2jbO8pBnkJ3LHAlZWmjGW2/
         NwRw==
X-Gm-Message-State: AC+VfDx942DuzY3PFpUVvAEV03TEkebGTc1uyc0WtU1IhAigdduuV/dq
        RdiLu7d9AQDfUx4rE/p4/53zBg==
X-Google-Smtp-Source: ACHHUZ7P9nnhl2zhl+Pcq7KhbCXK2wmv5O8F4vhYABnWaLn3ssPDiqCSeRx8DNpYStMQ1uZGFWPiGg==
X-Received: by 2002:a19:6519:0:b0:4f8:6d54:72fa with SMTP id z25-20020a196519000000b004f86d5472famr7111544lfb.2.1687424253932;
        Thu, 22 Jun 2023 01:57:33 -0700 (PDT)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:8261:5fff:fe11:bdda])
        by smtp.gmail.com with ESMTPSA id y10-20020a05600c20ca00b003f9b29ba838sm7136305wmm.35.2023.06.22.01.57.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 01:57:33 -0700 (PDT)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH 0/5] arm64: dts: qcom: add chassis-type to reference
 platforms
Date:   Thu, 22 Jun 2023 10:57:17 +0200
Message-Id: <20230622-topic-sm8x50-upstream-chassis-type-v1-0-13f676eb71f3@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAO0MlGQC/x2NywqDMBBFf0Vm3YGY4iP9leIiptM6oDFkYlHEf
 +/Q5Tlczj1BKDMJPKoTMn1ZeI0K9a2CMPn4IeSXMlhj76a1FsuaOKAs/d4Y3JKUTH5B3YqwYDk
 SYehq2wfn28450NDohXDMPoZJU3GbZ5Up05v3//NzuK4fdxWX9IkAAAA=
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1422;
 i=neil.armstrong@linaro.org; h=from:subject:message-id;
 bh=pVLJJkVWtleKXimSozLxB2CK7qJq+iPLTM50EDBB4HU=;
 b=owEBbQKS/ZANAwAKAXfc29rIyEnRAcsmYgBklAz6UkHvJrowY4uPdSfJK6xBTE0YIZbXMWbEjNUR
 AHrRFsOJAjMEAAEKAB0WIQQ9U8YmyFYF/h30LIt33NvayMhJ0QUCZJQM+gAKCRB33NvayMhJ0eAuEA
 CgPLZ8anh2EwHMcNPxdRy0fs2zW30uJGR06v6hH99WvcsmraRJgKUBbJb/wf6VD/8EvEPT69NfYNcC
 KVm6jIDhVhSFKq8GXe4BuL3JeYEYxH+1jjaXC+bGbPLcIsbnbCEgrRL5R8nmHrE3v4YUxivXCMDS1A
 BULj/avkRbY//+GTSetK611XrKu2xQxBYVFk/dpeXj5EDSTawvJDNjivvIUn9KF5dp6wVB8PqqnFRC
 j9M3DvbBICWilYjEciRcameQ9xkCTxNWJWOmmJHjgkgCGQ6vu76VHqRfgL2GAJz9XfkZ3kC3EnkrmA
 Vx/F72MIqckkXkZWXOHpZNCarvOpReIq4D55TeXb6n8CxQg3DD6NEn+Algnc2yPkh6at/cCwMnlWvM
 /h5kTEsD0CMHKyJ2LYWAiXhtUX9vg7ZoWRoR+gd7GCzB54gUkC/xXNW/0VzbDTUDqAfnrl1PkabQv/
 dyLWGgFavSoxfiiSxV/OoZbpUQTLPB5PIf3MSKQ0GOcz83cDhOUJ9xJZYHbHokNhjMw5AJrcdHBgPR
 k/7bdTwPQKVftWnBT0Ryy9Rx7zlSf1mxfzUVApszhEpyMlwLkRyMHHhBjTTa06Q/WJVqGtL4UWUpmq
 AHHylKHGTFQiYuca+dbYjjKeaSWF2TbT7xCOiNbMBYTmEk+3bbTu36v5mimg==
X-Developer-Key: i=neil.armstrong@linaro.org; a=openpgp;
 fpr=89EC3D058446217450F22848169AB7B1A4CFF8AE
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the chassis-type property to the Qualcomm MTP, QRD and
HDK reference platforms.

Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
---
Neil Armstrong (5):
      arm64: dts: qcom: sm8[1235]50-mtp: add chassis-type property
      arm64: dts: qcom: sm8[45]50-qrd: add chassis-type property
      arm64: dts: qcom: sm8[1234]50-hdk: add chassis-type property
      arm64: dts: qcom: msm89xx-mtp: add chassis-type property
      arm64: dts: qcom: sdm845-mtp: add chassis-type property

 arch/arm64/boot/dts/qcom/msm8916-mtp.dts | 1 +
 arch/arm64/boot/dts/qcom/msm8996-mtp.dts | 1 +
 arch/arm64/boot/dts/qcom/msm8998-mtp.dts | 1 +
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8150-hdk.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8150-mtp.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8250-hdk.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8250-mtp.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8350-hdk.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8350-mtp.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8450-qrd.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8550-mtp.dts  | 1 +
 arch/arm64/boot/dts/qcom/sm8550-qrd.dts  | 1 +
 14 files changed, 14 insertions(+)
---
base-commit: c87d46a9e8ebd2f2c3960927b1d21687096d1109
change-id: 20230622-topic-sm8x50-upstream-chassis-type-c7128c9a6799

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9CA627382FA
	for <lists+devicetree@lfdr.de>; Wed, 21 Jun 2023 14:13:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232271AbjFULWJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jun 2023 07:22:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230076AbjFULWI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Jun 2023 07:22:08 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2900319B
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 04:22:07 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2b45e347266so73233651fa.0
        for <devicetree@vger.kernel.org>; Wed, 21 Jun 2023 04:22:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687346525; x=1689938525;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MtxilIZ1FTUIcn1LFaVepj1JRzF8rXa2b+gYJWfLHeY=;
        b=fVIB69MtiqFXhF2lc0lAjvtDf2NjIlr+o/pvzxkqUhV2UCBZ85Fg6FlfSEALJ4X68L
         BHXDgreoRgbd10jnQ0YlVVgHPyRiRdDNrp833ekbttkdk6xuRuc2qQxFDYKDvna36lPc
         AN45nKUJ/ftioOmrbklY9NxA87nDbTa6zyC3nJ/DShkSUTTJjVH2MfEG+PgsqJPBH+ms
         OoE1y7oPyNc0jLl4RKDERd0gp5yuYohKAUuibGr8LUZD5S08jqknVrIDSVaLYXIeRwG1
         8reWe8m3amH46DvpGK5WX9d0Z5DaEy6BXwkevhXoMzdtKyGVqKVIijMSwasmDSmcbYnD
         N99A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687346525; x=1689938525;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MtxilIZ1FTUIcn1LFaVepj1JRzF8rXa2b+gYJWfLHeY=;
        b=FyD5fa33N822sBW2ParAopi7BWHiLYono9d0stDfMyabidtsCTg+craE3qgQcyQyTG
         9eYrOK+rCj5ki+MYbPyKqANuBwNq6Ys+Mb5nKo7RuycM63U/aw7yiMoV9tj36Ve8o2Pp
         fG/p6ps+68D5lGDlUzBJR2ofHSnySMw8xmD4VK2EVqwwJVAhw2ibnE0T/NTonJ5DQhAi
         YN1uTqtpfLdpgyW3bgte73igWbky2LoDur7H1edNAjeAp+efCJSL0jXW5rKvGedsKxAM
         VQ0lhpA2SC75UIpchsDPUN7nAgDWOol9TdMtySGlmHdpasidan1WsoTB3hbK1tw/MvKW
         r4ew==
X-Gm-Message-State: AC+VfDyAtBUSLUwwMU5+VhPBNC4/4KnzdsRAks4iMR6/I7fWwTVbrxcq
        BBECo9EBMnCd+1GQlUa/drKNeg==
X-Google-Smtp-Source: ACHHUZ6kksWXtkoHsKnYYWymGVCvuHuqeX7kAsDWyqFTRAgFHuZA7VnBYIqysxmbqA9mc8VdQoeD+A==
X-Received: by 2002:a2e:b050:0:b0:2b4:734a:35fa with SMTP id d16-20020a2eb050000000b002b4734a35famr6317274ljl.42.1687346516770;
        Wed, 21 Jun 2023 04:21:56 -0700 (PDT)
Received: from [192.168.1.101] (abxj193.neoplus.adsl.tpnet.pl. [83.9.3.193])
        by smtp.gmail.com with ESMTPSA id l4-20020a05651c10c400b002b22a1a21easm866171ljn.110.2023.06.21.04.21.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Jun 2023 04:21:56 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/4] A610 enablement, J606F display
Date:   Wed, 21 Jun 2023 13:21:51 +0200
Message-Id: <20230620-topic-gpu_tablet_disp-v2-0-0538ea1beb0b@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAE/dkmQC/4WNSwrDIBQArxJc12Jsmn5WvUcJQZ+vyQNRURNag
 nevzQW6nIFhNpYwEiZ2bzYWcaVE3lWQh4bBrNyEnExlJoU8iV4Knn0g4FNYxqy0xTwaSoGDgR7
 U+da10LHaapWQ66gczLV2i7VVhogveu+z51B5ppR9/Ozvtf3Zf5u15YJftBZSI1wNiIclp6I/+
 jixoZTyBR3E3d/QAAAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687346515; l=1037;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=ZTo/WgseyA/nbykJC16LGvbeVj8I2YAv50iaa7vUBgY=;
 b=ziw2EvO2Us2+pr/ey4wMc4BreTL8IoTnleqBxIulrn82OKge+3gmnAyUvEzBsqQMRcD9fgRPm
 VAUxKyqMkkXAhflkwxZxcU3ZUNV54ZfPYZz7OG26Qhx4lzt25Z8yKkx
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the A610 GPU on SM6115, as well as on the RB2 and J606F boards.
Add display support for the latter.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Changes in v2:
- Fix pin naming and implicit override in patch 2
- Pick up tags
- Link to v1: https://lore.kernel.org/r/20230620-topic-gpu_tablet_disp-v1-0-7bb02bec8dc0@linaro.org

---
Konrad Dybcio (4):
      arm64: dts: qcom: sm6115: Add GPU nodes
      arm64: dts: qcom: sm6115p-j606f: Hook up display
      arm64: dts: qcom: sm6115p-j606f: Enable GPU
      arm64: dts: qcom: qrb4210-rb2: Enable GPU

 arch/arm64/boot/dts/qcom/qrb4210-rb2.dts          |   8 ++
 arch/arm64/boot/dts/qcom/sm6115.dtsi              | 103 ++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts |  65 ++++++++++++--
 3 files changed, 171 insertions(+), 5 deletions(-)
---
base-commit: 15e71592dbae49a674429c618a10401d7f992ac3
change-id: 20230620-topic-gpu_tablet_disp-cdc6ca5941c4

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>


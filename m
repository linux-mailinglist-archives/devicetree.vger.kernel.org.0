Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E26573123F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jun 2023 10:34:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244873AbjFOIei (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Jun 2023 04:34:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238877AbjFOIe1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Jun 2023 04:34:27 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0DAD42683
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:34:26 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2b1badb8f9bso23317541fa.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jun 2023 01:34:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686818064; x=1689410064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VJFKJAYqrSeLSn08BaS5NCXpSvtm/VGCV0MO7zrEdus=;
        b=kQm9HBXBLCWqWWjmqAGTx+9KXTmzZ58a91bfYXpKqg5WmESYO+ouRIY+hi4+0Wi24m
         PnFz7OODuz1W297flc+XyyzgqHX3AU7jT8tY34k1DCpiEjcO4RNStrB+o+NIe31joO+V
         HS4t9W2DgjbhBhDSJzBI0IGRQSvfpA3KePL4c8xF/XWpCT2bc4wqOOf1jyiBVB2deYlk
         PHOZBi91VB3qPxyNK1XC6/Q5jZgCZJH4Ppj6HH6JSGPsXkuuMnCMDA3AIGrnlPqccOSu
         qa9jOlDvBZ6CantvPcSfH9LnOGL2IhT1hCmZAlTMWF4KrXdzV6nxw9TMcE00LZKsDQDR
         hjsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686818064; x=1689410064;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VJFKJAYqrSeLSn08BaS5NCXpSvtm/VGCV0MO7zrEdus=;
        b=MJL7bZhjSUPwZsmbW8lIUl6BeH9OUymN9IcjnEsp0OehyC2Mjui89F89PKVgMwqrfW
         pom280qdbuyjDTaLL6TUSmh4Kp1jaZ4oq6l+I+eiMGkTVpb6ljftNJyyeYWLvUeKkiNg
         QzSRFZcOGCi1A6KMxy2xzu2fjkcAKBNgrAJcPKLM5/Q6QG8u4/tyD/XwySfdlYnboZKV
         SgI0lU1MC/Dop234qk/wXgpaqFekeKSc61ipnGkdkJaREKPCw5hiKslgAK/0++uP/MY2
         BzA+ngwiCwEZgHED2uteerCHoOxnk/ZfbbcMCZ21poa9Kxl9UVlclO9p3Pn8JtpSTSDp
         yTEw==
X-Gm-Message-State: AC+VfDzVwfzjEmMrmp1ddE4wDT93E+5kqsQINoFfaum5LfRV87GCCABO
        TJvS5KKP1iAZDkj4H7pf14V3zidAYN9DKgHBGFw=
X-Google-Smtp-Source: ACHHUZ4gX6dkU216Y8KtfPpymyv9rbbUOWqovitEDtnowQoj+Jae1TkQ8CzY3CmYaZwl+nqSy9UpNg==
X-Received: by 2002:a2e:b04e:0:b0:2ad:b01b:d458 with SMTP id d14-20020a2eb04e000000b002adb01bd458mr8628954ljl.30.1686818064225;
        Thu, 15 Jun 2023 01:34:24 -0700 (PDT)
Received: from eriador.lan (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id a19-20020a2eb173000000b002ad92dff470sm2971209ljm.134.2023.06.15.01.34.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jun 2023 01:34:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: qcom: rename HDMI labels in a correct way
Date:   Thu, 15 Jun 2023 11:34:20 +0300
Message-Id: <20230615083422.350297-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
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

In [1] Konrad noticed that the commit f43b6dc7d56e ("arm64: dts: qcom:
msm8996: rename labels for HDMI nodes") is a mess, it changes all HDMI
entries, which is plain incorrect. Rather than landing a fix, revert the
offending commit and land a clean version.

[1] https://lore.kernel.org/linux-arm-msm/ZIrJ86IsLOm_Scbc@gerhold.net/

Dmitry Baryshkov (2):
  Revert "arm64: dts: qcom: msm8996: rename labels for HDMI nodes"
  arm64: dts: qcom: msm8996: rename labels for HDMI nodes

 arch/arm64/boot/dts/qcom/apq8096-db820c.dts | 14 +++++++-------
 arch/arm64/boot/dts/qcom/msm8996.dtsi       |  6 +++---
 2 files changed, 10 insertions(+), 10 deletions(-)

-- 
2.39.2


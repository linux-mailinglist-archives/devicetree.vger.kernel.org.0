Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A146436BB7F
	for <lists+devicetree@lfdr.de>; Tue, 27 Apr 2021 00:13:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232295AbhDZWNz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Apr 2021 18:13:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232161AbhDZWNy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Apr 2021 18:13:54 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 254FBC061756
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 15:13:11 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id a22-20020a05600c2256b029014294520f18so1453175wmm.1
        for <devicetree@vger.kernel.org>; Mon, 26 Apr 2021 15:13:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rALIGRiBfkY3zLGEHGN+z0aJ6zoBl9h/Q3t595VB0VI=;
        b=IbKVhu1C1PhwNnMaX8Kmb+sjm0Y890GztYm8ZJHOtTzkwt4BtuVta0YPjDM0nCusyE
         sQQH03XChu5FPTrv7IzIgM3/JIJhYBbqqEXhDTHx/hqxP/djL7EL18txQNawd1I4VHeP
         0Ryt6Erc+2RTPoIlzH0QiYxmv4oDWudHhMGEHQRLvOvrciUJeVBJ72JqmGkEAyXmNOT/
         JOsvl2y8JiRT9/CQAO08IZ3+/y/TylLRPil2pnPD2pwvbIH1lsMiyQrYLIFSHtfSgf4o
         BOp01bopP6NBZqmcGnxUL44LDwvWsO+oLHfBrX7sqP/xbqpoED0XarakuGdmY4pCtNut
         E42Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=rALIGRiBfkY3zLGEHGN+z0aJ6zoBl9h/Q3t595VB0VI=;
        b=MnosK0dddQvTh5z7SPMmie4q56WWGD9mqCtWBMmxXo/WQDfsWlewpR8zQWbC/SAxMg
         ew32E8D2Aj/6tw4RslqXt7EDKA1xS3gHWcI5kymNDCFGzsK1qBST2n2GZGKNh++446Rq
         mbXUhjbfAqwFbl3D/WBjKqrnZY8Jwq8Uq3fQsNCp67UHqe14rdPqO1AzQwMzFPS2cVV7
         wdPxYH4yTYUZBeSwWdoZzB8+SnLZM8BlcbokgrvFnPxG+/p62WIOCIZSjV2V0cMarbu5
         X5eMDZkws2bXvBLIokO2UBCw8UcOPai0iT14QrdQ/VFryiIUpxjkzVHmFzMwKkgb9SnB
         l2jw==
X-Gm-Message-State: AOAM5304uX9OrOWgf77W3y7Hf3fj5GfFMcOHIZxA2aGPn+hTI9ud5Y3P
        H2G8StzKnXH0uMQWBQxU6Bd0fA==
X-Google-Smtp-Source: ABdhPJzLfgFXaydFM2Z3e0XnA/fXKcOBeb6LALR75pdfJDdq2sTVgiRCiTvNJRflVBrcT37N2Rb0Ng==
X-Received: by 2002:a1c:7315:: with SMTP id d21mr21899639wmb.155.1619475189766;
        Mon, 26 Apr 2021 15:13:09 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id x9sm1756042wrt.13.2021.04.26.15.13.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Apr 2021 15:13:09 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, lgirdwood@gmail.com,
        broonie@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
Cc:     wcheng@codeaurora.org, linux-arm-msm@vger.kernel.org,
        dmitry.baryshkov@linaro.org, bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/2] Enable VBUS current boost on pm8150b platforms
Date:   Mon, 26 Apr 2021 23:14:44 +0100
Message-Id: <20210426221446.1852572-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.30.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first version of this patch set the current limit to 3 amps as was done
in downstream. Mark indicated a preference to set this on a per-system
basis instead of blitzing it, as in downstream.

Looking at what was upstream versus what was in my working tree I saw that
in fact the VBUS boost driver had been upstreamed minus accompanying DTS in
pm8150b.

So there's no need for a fixes as this driver doesn't appear to be in use.
A subsequent patchset will enable the VBUS boost for the two relevant
upstream platforms.

First thing though, is the driver + dts change.

- Use regulator_set_current_limit_regmap/regulator_get_current_limit_regmap
  with a relevant current-to-bitmap lookup.

- Add a parallel DTS entry to the pm8150b
  It looks like this was submitted upstream but not followed up on

  I've add regulator-min-microamp/regulator-max-microamp to Wesley's
  original work.

I've made sure to test that its possible to set the current to anything in
the range of 500 mA to 3 A and confirmed the output on a scope.

Once these two patches are in, I'll send out board enablement for the
sm8150-mtp and qrb5165-rb5.

https://lore.kernel.org/linux-arm-msm/8687acdb-75e9-5fc5-dd3e-9a19615676b5@linaro.org/T/#t

Bryan O'Donoghue (1):
  regulator: Add a routine to set the current limit for QCOM PMIC VBUS

Wesley Cheng (1):
  arm64: boot: dts: qcom: pm8150b: Add DTS node for PMIC VBUS booster

 arch/arm64/boot/dts/qcom/pm8150b.dtsi       |  8 ++++++++
 drivers/regulator/qcom_usb_vbus-regulator.c | 12 ++++++++++++
 2 files changed, 20 insertions(+)

-- 
2.30.1


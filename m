Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F299550026A
	for <lists+devicetree@lfdr.de>; Thu, 14 Apr 2022 01:17:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229726AbiDMXUI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Apr 2022 19:20:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36236 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238643AbiDMXUG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 13 Apr 2022 19:20:06 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B33525C6A
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:17:43 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id c10so4691351wrb.1
        for <devicetree@vger.kernel.org>; Wed, 13 Apr 2022 16:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FtEiq6V4Qf6K8w6u8ULm+qXCUm/m9qWMOF4cHC4ZNeY=;
        b=noAzADUqXt66SR9+PQGD+9nDCP2jjuS8UHfackVbD1IRP9S9tVP3yJucAriMGSoUU4
         4M1XC1WJ37Dr/X4WGicLhtWoE9VZmWEFK5rF2bw3rLMjHz4XBtrRFTSHOPf07H9G/ax/
         0u9rxdhZ+8sK8113MRNUi5AJK53jgSgckPcbw/3SgjyolWAV5lIWacGivoXRKfAMeTxX
         KUp7O8zJuiKNcNoAfoof1PG7+9DVGicUg9AU/Bx+dnD/NeNrjZn1FQbdUjrh4XDrSRjQ
         TXVANFdIVtOoNHdQ7+xlOzFX3FQbyrDrsx+uLNdQCM1oKlwWHqUyjUZWqKAz/OLYEie/
         3fSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=FtEiq6V4Qf6K8w6u8ULm+qXCUm/m9qWMOF4cHC4ZNeY=;
        b=dz1gC9b4btIti0kuG/4hE99FyrDXVgHOXtOn5AEwFAzenSHPGrEGSnEAQydFuK/hNA
         T0GpTxz055dn7FsPyh02UEHXc+9Pr/kCpP33AFBDfO4pDjB5OsDTEJiB4pfP/JUQK36z
         fIzTSDsIz2rcC2jgh3xdFc80CWEBVkhnqdnF3Yjv6+YHmeNLG+dJ7XiXPXxcxxGR81Ow
         dsXFHbZav7b0VeSe0on9rOsyj5Fyd1+1SIeXir/t8jlHt/3IJGdHqjwa0r/TIcZYjU2o
         XwfplN2jijK0zyk1F4jlTI1Vy6EnE2AYPysma8OCTGGgHfBP/kFbpvRfOmcloae133GS
         5LgQ==
X-Gm-Message-State: AOAM531rTJwCfdiNVVC0VMyivcD90Gc/uWDJwEwXRx1cXJVthMUHWvaH
        GLWmk/RTg5RCc0hpFeYsj0GTig==
X-Google-Smtp-Source: ABdhPJxa/fsCZ6PNEtUyrIX/yEI5YTtYrkxg1SEP6HzmiJCpVBZpvgKkmvDLJ0sika/1ffa4oSwKJQ==
X-Received: by 2002:a5d:47ae:0:b0:207:a629:9845 with SMTP id 14-20020a5d47ae000000b00207a6299845mr750233wrb.125.1649891862008;
        Wed, 13 Apr 2022 16:17:42 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id c12-20020a05600c0a4c00b00381141f4967sm205184wmq.35.2022.04.13.16.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Apr 2022 16:17:41 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        krzk+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     dmitry.baryshkov@linaro.org, jonathan@marek.ca, hfink@snap.com,
        jgrahsl@snap.com, bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/3] Add camss to SM8250 dtsi 
Date:   Thu, 14 Apr 2022 00:17:33 +0100
Message-Id: <20220413231736.991368-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V2:
- Change 0xHEX to 0xhex - Bjorn
- Merge CCI and CCI pin definitions into one patch - Bjorn
- Future pinctrl dropped, moved into dts file for board
  which appears more consistent with sdm845-db845 &tlmm{} section - Bjorn, Bryan
- Renamed cci0_i2c0/cci0_i2c1 and cci1_ic20/cci1_i2c1 - Bjorn
- Grouped CCI pins into cci0_default, cci0_sleep, etc - Bryan

V1:
Add in necessary CAMSS, pin and CCI definitions to the SM8250 dtsi.

This is the SoC specific stuff, the platform enablement will be done in a
separate drop later.

On the RB5 platform we have validated ~ 30 FPS @ 4K using the SRGGB10P
pixel format provided by a Sony IMX577 sensor.

Link: https://git.linaro.org/people/bryan.odonoghue/kernel.git/log/?h=br-v5.19b%2brb5-dts%2bsensors

Bryan O'Donoghue (3):
  arm64: dts: qcom: sm8250: Add camcc DT node
  arm64: dts: qcom: sm8250: camss: Add CAMSS block definition
  arm64: dts: qcom: sm8250: camss: Add CCI definitions

 arch/arm64/boot/dts/qcom/sm8250.dtsi | 330 +++++++++++++++++++++++++++
 1 file changed, 330 insertions(+)

-- 
2.35.1


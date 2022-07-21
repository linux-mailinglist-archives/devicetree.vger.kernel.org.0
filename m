Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 334D057C683
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 10:39:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229781AbiGUIjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 04:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229982AbiGUIi6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 04:38:58 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 426417E81B
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 01:38:57 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id c6so1171853pla.6
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 01:38:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uQ+LBdb+GHOOng7AbAKgC43uGktRTVsg0Aqo77lR5hg=;
        b=CL0ZYu9cfOtfOaMn+I4WO+4q4Em4+WKP9OuAjSJX7hBDU/t+bctzGB/yVf2F23Uj9C
         elpb2kuW4/pcN8I+SAxOrlSqoUiz/RHuhkzVMDi6pgUgtzTvLLj4yvSBLWYoOpWfA9lJ
         r6RinoOIVXfTVOgAq0AwMtiad1Z2OF3Tuz6eE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=uQ+LBdb+GHOOng7AbAKgC43uGktRTVsg0Aqo77lR5hg=;
        b=5gqWR3K9ZoVVcyMP2NM1sQ9U0Tvm44zP1IpCfuTunSoD45xISWQ+57Pmny3pOmZGSe
         uU84LLctRqDY/JHJNwRhmV0LR3lW4JjcUYStiBmTgMVtg0TQpMPE3xSdpX63shJKvtW4
         lOjamifKerbiPCpIMK8fdL+nYhK0tu/6EuKbFKcOgiVygzrgbSVsGmwNiVVDnEOezFb7
         B5ofvJIlM3IWrcOpyz+Pu2wviLqwSrwbDLoM1vIIvC3Nz5gjcfsFNCqS6gSPbWmOkIiY
         lLOUzivMgAuycEU74/NT8BLfE+50Zy8ar3o5E2pkGAWh/JdmlpZJcCFa6C/zhlS5TOZd
         vcpw==
X-Gm-Message-State: AJIora+2NwLQmbB+o6MyDkK4iire8de4afo+SajMh5zoOLE+Tdss5Glk
        Ge60W0cwGh8l1dq0YwxnguNFHQ==
X-Google-Smtp-Source: AGRyM1s/7yHJrqwCFc9w1jBe/X7hPlhYezunAOeIrEkLFZVuCvTIgoQMfvoaYKgfCXBhjMcuZvU5tg==
X-Received: by 2002:a17:902:ec8a:b0:16c:4d84:4bf0 with SMTP id x10-20020a170902ec8a00b0016c4d844bf0mr41615129plg.48.1658392736760;
        Thu, 21 Jul 2022 01:38:56 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (21.160.199.104.bc.googleusercontent.com. [104.199.160.21])
        by smtp.gmail.com with ESMTPSA id l18-20020a170903121200b0016cd74e5f87sm1025943plh.240.2022.07.21.01.38.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Jul 2022 01:38:56 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        dianders@chromium.org, mka@chromium.org, cychiang@google.com,
        judyhsiao@google.com, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH v4 0/3] Add dtsi for sc7280 herobrine boards that using
Date:   Thu, 21 Jul 2022 08:38:46 +0000
Message-Id: <20220721083849.1571744-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.170.g444d1eabd0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Put sound node and lpass_cpu node settings for boards that use rt5682
codec in the sc7280-herobrine-audio-rt5682.dtsi as there are different
choices of headset codec for herobrine projects. Common audio setting
for the internal speaker is in sc7280-herobrine.dtsi.

This series depends on:
Add soundcard support for sc7280 based platforms. [1]

[1] https://patchwork.kernel.org/project/linux-arm-msm/list/?series=657417

Changes Since V3:
- Remove Change-Id in the commit message.
- Add dependency in cover letter.

Changes Since V2:
- Fix sc7280-herobrine-audio-rt5682.dtsi syntax.

Changes Since V1:
- Not to include the herobrine-villager-r0.dts changes in this patch
  series to avoid conflict.

Judy Hsiao (3):
  arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
  arm64: dts: qcom: sc7280: Add sc7280-herobrine-audio-rt5682.dtsi
  arm64: dts: qcom: sc7280: Include sc7280-herobrine-audio-rt5682.dtsi
    in herobrine-r1

 .../qcom/sc7280-herobrine-audio-rt5682.dtsi   | 122 ++++++++++++++++++
 .../qcom/sc7280-herobrine-herobrine-r1.dts    |   1 +
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  15 +++
 3 files changed, 138 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi

-- 
2.37.0.170.g444d1eabd0-goog


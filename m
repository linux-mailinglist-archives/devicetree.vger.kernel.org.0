Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A61FB5744E6
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 08:12:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233194AbiGNGMK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 02:12:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38718 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232708AbiGNGMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 02:12:10 -0400
Received: from mail-pf1-x42a.google.com (mail-pf1-x42a.google.com [IPv6:2607:f8b0:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3519912740
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 23:12:05 -0700 (PDT)
Received: by mail-pf1-x42a.google.com with SMTP id e16so950940pfm.11
        for <devicetree@vger.kernel.org>; Wed, 13 Jul 2022 23:12:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0JQX6/cIgCdb7Mg76sUFpOl71mtDqdXfnF0wcsBKWsM=;
        b=MSniBgnOLurkJBS/hE33Ycon1qF3cNBocVhNzr3LgMuamK6dYjUdoDVt336IyjBgSt
         BeY843VST6NEyYyLyhBxUdsiOMrMGUTqFNoWCydnQE5x0XOnWxYO5HWaWxOfp8NimnmZ
         wRkQenr9JHGsORs7BzTst6zb+ahj4rDAsc2L4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0JQX6/cIgCdb7Mg76sUFpOl71mtDqdXfnF0wcsBKWsM=;
        b=coc+QnUkVDR7+EbPXUY3TmIjq26Dvct5NUIIxMmrkE0wGhto25wLYLfwMBuqcDc131
         yUYJlfufMRbFjIzNTfzMtDo+dohPXQAfLHG56uihSo0E8bVC0i+LDxCyW7LxSsXuqL0w
         N9Xb/TCOSMdzssATP6776GpGWEA73MGujT5D+3gK2WoTPGF0kIEW1vabYNK0pxr8o1OX
         MMGU3twILG6tnzgG3EB4Brg6up8MCUbr9Z4P7CIYjTolQNgCxrnnmIMWhsb3yPCz2fTC
         si2cN8s0lYybaNb9V2OwD2CkkJsIVQCjvuijIJMLIV821vWTTipMWtWdF2ih6UlmKH1p
         xRDQ==
X-Gm-Message-State: AJIora85mIsPB42a5MRc7Zmc/bl128oY4HFCXdyKjYu4cEw5XPqb+suP
        wsW51aE9JZerQrzICtdDNiYgTw==
X-Google-Smtp-Source: AGRyM1taVQ9qHJJchRWXeqZw9zn67tFuwEXQj2+SbtcE1e1jgkp3bIJq+Jc2EaYDxH5GTEm/hoPC9g==
X-Received: by 2002:a63:2a8f:0:b0:412:5278:b90 with SMTP id q137-20020a632a8f000000b0041252780b90mr6214516pgq.363.1657779124714;
        Wed, 13 Jul 2022 23:12:04 -0700 (PDT)
Received: from judyhsiao0523.c.googlers.com.com (0.223.81.34.bc.googleusercontent.com. [34.81.223.0])
        by smtp.gmail.com with ESMTPSA id j10-20020a170902690a00b0016a17da4ad4sm509683plk.39.2022.07.13.23.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Jul 2022 23:12:04 -0700 (PDT)
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
Subject: [PATCH v1 0/3] Add dtsi for sc7280 herobrine boards that using
Date:   Thu, 14 Jul 2022 06:11:48 +0000
Message-Id: <20220714061151.2126288-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.37.0.144.g8ac04bfd2-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Put sound node and lpass_cpu node settings for boards that use rt5682
codec in the sc7280-herobrine-audio-rt5682.dtsi as there are different
choices of headset codec for herobrine projects. Common audio setting
for the internal speaker is in sc7280-herobrine.dtsi.

Judy Hsiao (3):
  arm64: dts: qcom: sc7280: herobrine: Add pinconf settings for mi2s1
  arm64: dts: qcom: sc7280: Add sc7280-herobrine-audio-rt5682.dtsi
  arm64: dts: qcom: sc7280: include sc7280-herobrine-audio-rt5682.dtsi
    in villager and herobrine-r1

 .../qcom/sc7280-herobrine-audio-rt5682.dtsi   | 121 ++++++++++++++++++
 .../qcom/sc7280-herobrine-herobrine-r1.dts    |   1 +
 .../dts/qcom/sc7280-herobrine-villager-r0.dts |   1 +
 .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  15 +++
 4 files changed, 138 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/sc7280-herobrine-audio-rt5682.dtsi

-- 
2.37.0.144.g8ac04bfd2-goog


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9F29E527199
	for <lists+devicetree@lfdr.de>; Sat, 14 May 2022 16:10:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232930AbiENOKr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 May 2022 10:10:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45744 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231211AbiENOKq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 14 May 2022 10:10:46 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0B752140DC
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:45 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id d19so18928987lfj.4
        for <devicetree@vger.kernel.org>; Sat, 14 May 2022 07:10:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/VZ6iM+D39eVdWgv1scNQubHpBETElEybwIos3+NtQM=;
        b=kl2Uu8Hbp0i49wimsGghozN+dxlgQ1xIvgKS9zI+59VYaViK5frBfXArPAQY0DArf+
         pPwwVBvzNZdcLbHEHe2LZo/Oe+oZLlo7w1NvB5nKTq30igDQ+7yehd8YCJv5osYx0QXh
         zBo6ssOA6GMy8JSm1OWc/8mbmMSlggdttFr9thpk4Ppsq/QLWRlZ9+YpOwpU9mqYnEsL
         uuKfDMTZX25IYaEXCr+GHoYzdfwuwuCxCQqYWAWDNbwd4LwcHwtvvnCo2xWg5EZFmmaB
         EkgImV3tNl3Nz/y9P7qdbqso7E7LJGcJtiODd/eZX70dqvK/fKtzT5K5JiaBWqQynPYe
         hQaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/VZ6iM+D39eVdWgv1scNQubHpBETElEybwIos3+NtQM=;
        b=P55Yft1CTBTfdgsFFwBoxQz2FTh5oMitOaGRoTxD7uk+yq1XMIPe7HSzNBC/rzdCkY
         7M51vCKCl1iR2xxvWlFpbEmmvxRHqOD9mz5H7G3tHkP7rCRGwUJ+km7pJEBm5DiDlywE
         RUk4tl3yezIsPV7umvVZeS2w8P4GGhhNlY/O1/wrM8kBvNXQnlipONU4lwFsERDFeDBh
         Mm5tb2vT2e0El0aTlctOJw6I0WsZ6cqs2PGZv8NXpFyph/5XgWGOHSjBHXYQV0ys9l9W
         byPDg4hBcjrdj03z/WbEhWVeCIoiAlNVlDmGdG06piYgewtJ+1m7itvTpp5OIu42soUK
         4Klw==
X-Gm-Message-State: AOAM532QsRNp41vRzNVNhm1M465buIXio/G0sONfREouStfsN6+Qd+T3
        bg29HAG9wB0QFWRI4hqi39gzAw==
X-Google-Smtp-Source: ABdhPJxbgzHToqjWN4TNa/GSiCdj7cTiaJMnuNQbXIW1aBNAJSbiWKAUSNl+Hp+JOgMGviJ7E8DK3A==
X-Received: by 2002:ac2:4111:0:b0:472:f24c:e759 with SMTP id b17-20020ac24111000000b00472f24ce759mr6998851lfi.612.1652537443420;
        Sat, 14 May 2022 07:10:43 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b0024f3d1daedasm845912ljm.98.2022.05.14.07.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 14 May 2022 07:10:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Marijn Suijten <marijn.suijten@somainline.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 01/12] arm64: dts: qcom: sdm630: disable dsi0/dsi0_phy by default
Date:   Sat, 14 May 2022 17:10:30 +0300
Message-Id: <20220514141041.3158521-2-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
References: <20220514141041.3158521-1-dmitry.baryshkov@linaro.org>
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

Follow the typical practice and keep DSI0/DSI0 PHY disabled by default.
They should be enabled in the board DT files. No existing boards use
them at this moment.

Suggested-by: Marijn Suijten <marijn.suijten@somainline.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm630.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm630.dtsi b/arch/arm64/boot/dts/qcom/sdm630.dtsi
index 240293592ef9..8697d40e9b74 100644
--- a/arch/arm64/boot/dts/qcom/sdm630.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm630.dtsi
@@ -1559,6 +1559,8 @@ dsi0: dsi@c994000 {
 				phys = <&dsi0_phy>;
 				phy-names = "dsi";
 
+				status = "disabled";
+
 				ports {
 					#address-cells = <1>;
 					#size-cells = <0>;
@@ -1592,6 +1594,7 @@ dsi0_phy: dsi-phy@c994400 {
 
 				clocks = <&mmcc MDSS_AHB_CLK>, <&xo_board>;
 				clock-names = "iface", "ref";
+				status = "disabled";
 			};
 		};
 
-- 
2.35.1


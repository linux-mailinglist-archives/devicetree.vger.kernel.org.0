Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A9227544BD2
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230242AbiFIMYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40628 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245363AbiFIMYH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:24:07 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7BBE140F8
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:24:04 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id s10so1545555ljh.12
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:24:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=ui0unneZE7BMiOaLERLPySBQhcdhLuTjLknA7+UsfE0=;
        b=HPByxhGaDalzJm58MrIWMB9jh++xSbzG0pze660M++vV7YBptqiyHE7Kv8DvdHYyKC
         D5i1QxFWzRN/reF17ukqawcCVmgoYxwNACV4DFhOxKEmX42sg2jg/cv3BTfaBcP6ytIW
         kgJLm3HLqv/BUpW+AnzAxg+NZLLHNLF/2MgNHjlyQ18Ty32UoKgM9TdfX1AGi4OXIKYg
         jgt1aCqItL16U4xdprVkJ8QPBH2UdQESCLcUpqjuYgIu0LiKgEY1ay49HZdhQAcM05I2
         idO4vQoiOwh5PVwcvGTcdRlWmg8wIpur40xd9Hpoz+SzyFjXsjo9lzEHyAUaVat/9J43
         HgZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ui0unneZE7BMiOaLERLPySBQhcdhLuTjLknA7+UsfE0=;
        b=b6nerbtj/uzyzbznC4LbXF1/DUBnnbIEHxXRcNgPyOZRp3Yzh90ozrmdd8SF6jlPZZ
         UlUqNakZZAZJAc4XcSljdrXqQCXt7zHXz7jPHVCI9yENeKfRSAzSIFSYeXzO5GRvLo8g
         KkrIWZGHpkI+UBx/dFi4lk5FMKgBITMnHuJu8TTu1impOb4UTBn224ybLQIGErj4b8fO
         HUInJSUafzv8STGAajiHhwWnFapsx/NCKPMr3NrIAXvPtiRlVcokqMnNME/wA4MQElgR
         vNWd670jiwqdJrSHv3bLFGIqrbVx74ogNv3FR64UH+7K/1iX/Y4Bn6fH1aSLX+LC9r3q
         xNWw==
X-Gm-Message-State: AOAM530aO5HeJ9PG+84W1mNU/sNL1yo/uUbGICKRMCeCj6wCAcy37KIE
        AdXpQQrnI5669Vs1nUAfG+c+yw==
X-Google-Smtp-Source: ABdhPJy5DBd7PT4mmZ37b4F3q+VMB9zFcQ/NWR65+MFjedI07n2lBGt5XNmj4fYaLMAyx3QzJb8kOA==
X-Received: by 2002:a2e:151d:0:b0:255:6b9e:98ec with SMTP id s29-20020a2e151d000000b002556b9e98ecmr22885480ljd.444.1654777442607;
        Thu, 09 Jun 2022 05:24:02 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:24:02 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v3 12/14] drm/msm/hdmi-phy: populate 8x60 HDMI PHY requirements
Date:   Thu,  9 Jun 2022 15:23:48 +0300
Message-Id: <20220609122350.3157529-13-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Declare that 8x60 HDMI PHY uses the core-vdda regulator and slave_iface
clock (this is the same config as is used by the 8960).

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c
index 95f2928cb2cb..1d97640d8c24 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy_8x60.c
@@ -122,8 +122,20 @@ static void hdmi_phy_8x60_powerdown(struct hdmi_phy *phy)
 		       HDMI_8x60_PHY_REG2_PD_DESER);
 }
 
+static const char * const hdmi_phy_8x60_reg_names[] = {
+	"core-vdda",
+};
+
+static const char * const hdmi_phy_8x60_clk_names[] = {
+	"slave_iface",
+};
+
 const struct hdmi_phy_cfg msm_hdmi_phy_8x60_cfg = {
 	.type = MSM_HDMI_PHY_8x60,
 	.powerup = hdmi_phy_8x60_powerup,
 	.powerdown = hdmi_phy_8x60_powerdown,
+	.reg_names = hdmi_phy_8x60_reg_names,
+	.num_regs = ARRAY_SIZE(hdmi_phy_8x60_reg_names),
+	.clk_names = hdmi_phy_8x60_clk_names,
+	.num_clks = ARRAY_SIZE(hdmi_phy_8x60_clk_names),
 };
-- 
2.35.1


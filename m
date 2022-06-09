Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD431544BCF
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 14:24:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245410AbiFIMYH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 08:24:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40370 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245396AbiFIMYF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 08:24:05 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B24F1245AB
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 05:24:01 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id l18so18627005lje.13
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 05:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=dKk2oambieXEp2AwUFQX/TaOB8Vv+hh7QY5UAinx/h0=;
        b=WV97w6LIARmfhVKCezXA9VaDBJkVmULZJ+2N+TsGr2s4eqfQyflKUYuvv5VkLioVWA
         ovw3rAEGEti5PUWf0ymC8eZ+3kyvdhQ/cbyLHz+k1/rWIs6kgxI3tZoQH56590Rd04u7
         oVDGnK46vj61vTZpHf/MtzhGlH2/SnDWn5tzj37XMUj6hHDHtV41pTPfJJySSE0pWOqv
         fZphbHlinEw5OHvPbnPpT/fCvCrJyLMR0SszxienvPMEhaSQF/1YJ0jNkxhaIcws73X7
         hBNhf1jLau0Ayh6FBRVylvp/HenchsQt9m/26TbtUC/jw7P8rHabBoDcVsg3laS0tq/R
         ZwKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=dKk2oambieXEp2AwUFQX/TaOB8Vv+hh7QY5UAinx/h0=;
        b=fOIkkro2UqRAkDB4zDWSiaj4Bt7NyM/NAlDBlM0C0imSqMrfwmna0j+jCPmDWMreWb
         0Vgynk4NK3fk4Q6JUvo+kMInF5dWrYedCdrW4F/5OvQDMxNOjZ+0Pgz1TLmrGfXSRXO/
         U9tpAVuo3Q3ZxmPNE4pCpx0o8EfKuCC6MpWX/OUPcwsf2u+jzbHsYrk4jlBa1s6fbSMn
         X2H1ebXmGgrP5B9xCI38Hu2Ek8ZEtnVXamxO3UGEaPtxnC2qFevSV0Kvp318kfXN+dl+
         awhPqw6jsAUkASllCUrFf9Hcs3mk2NC/faAdEeDbP2jQYjDxKxCVuSfF2MqeCH5wgjhM
         oqMw==
X-Gm-Message-State: AOAM530VVlESOsEjhLLCGNqTQV/GTrJZqcw8M2VSsEfP6lhXm1c/6XQS
        FnqWqIpr8mJW3jOR0uhIH+PUQw==
X-Google-Smtp-Source: ABdhPJwzS8bASRLzBpW9RQ7vbEpoyH2bD+NWpuVg2C1yNcDeZs7eqsDz8l5u7gEzRpwhOFpOOij5nQ==
X-Received: by 2002:a2e:80d2:0:b0:255:6e92:c6d5 with SMTP id r18-20020a2e80d2000000b002556e92c6d5mr21989714ljg.224.1654777439858;
        Thu, 09 Jun 2022 05:23:59 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f11-20020a056512360b00b0047daa133decsm32421lfs.166.2022.06.09.05.23.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 05:23:59 -0700 (PDT)
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
Subject: [PATCH v3 09/14] drm/msm/hdmi: drop hpd_regs usage on 8x74/8084
Date:   Thu,  9 Jun 2022 15:23:45 +0300
Message-Id: <20220609122350.3157529-10-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
References: <20220609122350.3157529-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MSM HDMI driver has support for hpd_regs on 8x74/8084: supply
regulators that are to be enabled for HPD to work. Currently these
regulators contain the hpd_gdsc, which was replaced by the power-domains
support and hpd-5v/hpd-5v-en, which are not used by the chip itself.
They power up the ESD bridge.
However it is a separate device which should be represented separately
in the device tree.
None of upstreamed devices support these properties. Thus drop support
for them from the HDMI driver.

Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi.c b/drivers/gpu/drm/msm/hdmi/hdmi.c
index 8f0fd2795748..48cd6b9a7565 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi.c
@@ -381,24 +381,19 @@ static struct hdmi_platform_config hdmi_tx_8960_config = {
 };
 
 static const char *pwr_reg_names_8x74[] = {"core-vdda", "core-vcc"};
-static const char *hpd_reg_names_8x74[] = {"hpd-gdsc", "hpd-5v"};
 static const char *pwr_clk_names_8x74[] = {"extp", "alt_iface"};
 static const char *hpd_clk_names_8x74[] = {"iface", "core", "mdp_core"};
 static unsigned long hpd_clk_freq_8x74[] = {0, 19200000, 0};
 
 static struct hdmi_platform_config hdmi_tx_8974_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(hpd_reg, 8x74),
 		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
 };
 
-static const char *hpd_reg_names_8084[] = {"hpd-gdsc", "hpd-5v", "hpd-5v-en"};
-
 static struct hdmi_platform_config hdmi_tx_8084_config = {
 		HDMI_CFG(pwr_reg, 8x74),
-		HDMI_CFG(hpd_reg, 8084),
 		HDMI_CFG(pwr_clk, 8x74),
 		HDMI_CFG(hpd_clk, 8x74),
 		.hpd_freq      = hpd_clk_freq_8x74,
-- 
2.35.1


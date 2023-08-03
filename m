Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6FACF76E220
	for <lists+devicetree@lfdr.de>; Thu,  3 Aug 2023 09:54:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231637AbjHCHyc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Aug 2023 03:54:32 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231542AbjHCHxs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Aug 2023 03:53:48 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 932B05598
        for <devicetree@vger.kernel.org>; Thu,  3 Aug 2023 00:43:29 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-583b019f1cbso6372147b3.3
        for <devicetree@vger.kernel.org>; Thu, 03 Aug 2023 00:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1691048583; x=1691653383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qnzZ3mVH80rTTFN4mmKfEKmsqs6Mvvf/rKk6UFaJvog=;
        b=YjgZrYrzrSWDTKHQbzvAl9fyP6k0Y2XLjBp7NBcToctpo8q7X00iDlGKSDLi/19g3D
         GNG/a/5ar6VjBdKrTVjMXKj9dHQjEE7EsDlL5tUkojNPVj8oCELo/8onbf/YnM3Tn4pu
         x3j0g9jhvSbVQo/FI4p6Ud4CmHDms6CiCOs64=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691048583; x=1691653383;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=qnzZ3mVH80rTTFN4mmKfEKmsqs6Mvvf/rKk6UFaJvog=;
        b=eW2LCEnO6o+z6E4WBpdF6Xsqe+eER8B54R9Qec2EGoHyqOHWaXVwlDuVnVmwQpYbrn
         k17Zi9tKBsj4QklMmDM30fvSN/UuaPag5agXHo9y4Byy0Y/h+NWzSE6ZZ5zmHyHl8YUq
         WEjz3BIIdIMDGc13kTE8/pUZA5NE4jviaPlbsdQE3fZw7H+gWGG+AuToyJVvCm12uEZp
         2eThEBYuYxkAq0OzPAbOnWk6lXsjDOmiRvE6/KlqaAIPtgqw8XvOVycTPkiDnQ2Gqh/G
         0en4yVpRutaZ+2u5jC46pNtRAxlowICyrsTz8uJW7TrLDecf3SGy5G8W8YZaANXcEkVD
         CGMQ==
X-Gm-Message-State: ABy/qLYaWGtlrofqRrjjNQU03Vmximj6QYamPm5Dy2hFUaB2z9qRWzyh
        4H1agUel6b2tt8fpFbk3vP3+qTMh/t87+dZsl8Y=
X-Google-Smtp-Source: APBJJlGxB/1X32tTrdlyPkNI+lx6FksiZGUPbX+vn+B/9U+9kI595eZfjC5HlvPRxIAHElcWNyE5DA==
X-Received: by 2002:a0d:d490:0:b0:585:fb08:157a with SMTP id w138-20020a0dd490000000b00585fb08157amr13328988ywd.50.1691048583049;
        Thu, 03 Aug 2023 00:43:03 -0700 (PDT)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:6f3e:66ee:db46:473b])
        by smtp.gmail.com with ESMTPSA id l11-20020a17090a72cb00b00262d079720bsm2095753pjk.29.2023.08.03.00.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Aug 2023 00:43:02 -0700 (PDT)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Zhiyong Tao <zhiyong.tao@mediatek.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH 2/9] mfd: mt6358: Add registers for MT6366 specific regulators
Date:   Thu,  3 Aug 2023 15:42:40 +0800
Message-ID: <20230803074249.3065586-3-wenst@chromium.org>
X-Mailer: git-send-email 2.41.0.585.gd2178a4bd4-goog
In-Reply-To: <20230803074249.3065586-1-wenst@chromium.org>
References: <20230803074249.3065586-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MT6366 PMIC, compared to the MT6358, does away with the VCAM*
regulators. Two regulators VM18 and VMDDR reuse their register space.
There's also a VSRAM type regulator VSRAM_CORE thats' split between
the VCAM* register space and other parts.

Add register address macros for these MT6366 specific regulators.

Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 include/linux/mfd/mt6358/registers.h | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/include/linux/mfd/mt6358/registers.h b/include/linux/mfd/mt6358/registers.h
index 5ea2590be710..f4c321574da3 100644
--- a/include/linux/mfd/mt6358/registers.h
+++ b/include/linux/mfd/mt6358/registers.h
@@ -219,6 +219,7 @@
 #define MT6358_LDO_VCAMIO_CON1                0x1cbe
 #define MT6358_LDO_VCAMIO_CON2                0x1cc0
 #define MT6358_LDO_VCAMIO_CON3                0x1cc2
+
 #define MT6358_LDO_VMC_CON0                   0x1cc4
 #define MT6358_LDO_VMC_CON1                   0x1cd2
 #define MT6358_LDO_VMC_CON2                   0x1cd4
@@ -294,4 +295,21 @@
 #define MT6358_AUD_TOP_INT_CON0               0x2228
 #define MT6358_AUD_TOP_INT_STATUS0            0x2234
 
+/*
+ * MT6366 has no VCAM*, but has other regulators in its place. The names
+ * keep the MT6358 prefix for ease of use in the regulator driver.
+ */
+#define MT6358_LDO_VSRAM_CON5                 0x1bf8
+#define MT6358_LDO_VM18_CON0                  MT6358_LDO_VCAMA1_CON0
+#define MT6358_LDO_VM18_CON1                  MT6358_LDO_VCAMA1_CON1
+#define MT6358_LDO_VM18_CON2                  MT6358_LDO_VCAMA1_CON2
+#define MT6358_LDO_VMDDR_CON0                 MT6358_LDO_VCAMA2_CON0
+#define MT6358_LDO_VMDDR_CON1                 MT6358_LDO_VCAMA2_CON1
+#define MT6358_LDO_VMDDR_CON2                 MT6358_LDO_VCAMA2_CON2
+#define MT6358_LDO_VSRAM_CORE_CON0            MT6358_LDO_VCAMD_CON0
+#define MT6358_LDO_VSRAM_CORE_DBG0            0x1cb6
+#define MT6358_LDO_VSRAM_CORE_DBG1            0x1cb8
+#define MT6358_VM18_ANA_CON0                  MT6358_VCAMA1_ANA_CON0
+#define MT6358_VMDDR_ANA_CON0                 MT6358_VCAMD_ANA_CON0
+
 #endif /* __MFD_MT6358_REGISTERS_H__ */
-- 
2.41.0.585.gd2178a4bd4-goog


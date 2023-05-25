Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC82171078A
	for <lists+devicetree@lfdr.de>; Thu, 25 May 2023 10:34:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236207AbjEYIeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 May 2023 04:34:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239334AbjEYIef (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 25 May 2023 04:34:35 -0400
Received: from mail-wr1-x42e.google.com (mail-wr1-x42e.google.com [IPv6:2a00:1450:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30409122
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 01:33:59 -0700 (PDT)
Received: by mail-wr1-x42e.google.com with SMTP id ffacd0b85a97d-309550263e0so1748524f8f.2
        for <devicetree@vger.kernel.org>; Thu, 25 May 2023 01:33:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1685003635; x=1687595635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=wkyg3PseRq5i0Folj+GRO/aSoM3TKUeywxLrge822u4=;
        b=IHRtJBEg+ATJEGHAAj+runJWLUQaBJ+qv3YL2RJSDUOI+2c+8Gnsit7XL9NdV87Wcm
         bmnhiMFrTBtHQyAGPhMcRhgou7YYtfQHTqKtIQ/BIpJrUxMyuw0xaE5bD1L6Q0lz2T8C
         bf1uarJWsjgBESBDO7t2+62DaXUh4/oCMvT8wbdix/K8x0HwCYcllcDFzNYw76B4nHVo
         S0uQe/Cj9UH5oKGdGMgtbjP/5zTtlPV08KuM/so5OhSvZyiOTFGBxEAGejg2Z12LC4BL
         YfDWgK8t5EFmEdzSv3z9NND27+4+QrUa28HZ6mRfWSM+/RF1z8oraFccUw5ZbezrX4yk
         HXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685003635; x=1687595635;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wkyg3PseRq5i0Folj+GRO/aSoM3TKUeywxLrge822u4=;
        b=FpbrX2zAPXfkP9h5/NzgTELLfqcC38OzzJXBmGz6UEH+aRswkYCBwhE8hREz09Qg8I
         aikrS4qksG7hH9GKOHX2yCu2wHF9pZASLf6/CaPQvdx9KvGqFNzQfyMMEgHQPgU8C27w
         JHbC+OTgfBF9GvvVadHLeObkiIb3ndY+LfJL4sW5LfxJ1T0d13jqfv8G5acYROE3K+6Z
         NJ6ctnrXoO6jah5+kWaZz0uNbiMju7ZYl3AEIm5nM+HwqZSzOFYys9hU8o19Dcodyb5X
         i/7FIDaJ64hzwr4Hxf5k6NliL2FBPxNknb0cBhAc/tnA9i3p/tD9BzMOVmJ1OpnxT3Rq
         xXDQ==
X-Gm-Message-State: AC+VfDxVyEPwwWRjVIQFz8NxYwNIorL4u+obPSG6mPVXPqK+7NqNiWgS
        BiLY5rui8zKLNguL7wf5JMt0Sw==
X-Google-Smtp-Source: ACHHUZ538gNxVUvNRj7yoUeDbBW/0pV1KsL7cuIz765EeYCOCdcyFMyhx/H0Ry+Eil4BKt82CMZznQ==
X-Received: by 2002:a5d:590d:0:b0:30a:bae6:fa9f with SMTP id v13-20020a5d590d000000b0030abae6fa9fmr896467wrd.34.1685003635596;
        Thu, 25 May 2023 01:33:55 -0700 (PDT)
Received: from [127.0.1.1] (158.22.5.93.rev.sfr.net. [93.5.22.158])
        by smtp.googlemail.com with ESMTPSA id o3-20020a5d6843000000b003095a329e90sm945809wrw.97.2023.05.25.01.33.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 May 2023 01:33:55 -0700 (PDT)
From:   Alexandre Mergnat <amergnat@baylibre.com>
Date:   Thu, 25 May 2023 10:33:11 +0200
Subject: [PATCH v8 02/10] arm64: defconfig: enable Mediatek PMIC key
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230203-evk-board-support-v8-2-7019f3fd0adf@baylibre.com>
References: <20230203-evk-board-support-v8-0-7019f3fd0adf@baylibre.com>
In-Reply-To: <20230203-evk-board-support-v8-0-7019f3fd0adf@baylibre.com>
To:     Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-mediatek@lists.infradead.org,
        Alexandre Mergnat <amergnat@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=877; i=amergnat@baylibre.com;
 h=from:subject:message-id; bh=jPn3tggveilK0xTrgDaZ1+RBp85nyEx21PEy7yxORvw=;
 b=owEBbQKS/ZANAwAKAStGSZ1+MdRFAcsmYgBkbx1v4EJwb5ltY7o9akUPr2vQ/+igut2ra6dXr9OQ
 qqPxMBiJAjMEAAEKAB0WIQQjG17X8+qqcA5g/osrRkmdfjHURQUCZG8dbwAKCRArRkmdfjHURZTzD/
 4pgUjLhvBw1cyMvt0mnTbbCfkUC3ELYRSKtaczQt1HA0mAJOG0m+S7ULvjZV5e0QfBjIo70eRMXa51
 Vt/jJ6cCJnVlgo9hJ3PZ+Xp1/w2qTwRAtBZMhyXUFD6bHGU/VO8T4kTeVfKpZVjqoPqBzGxGuuVdig
 JIknJzkrmHab7DvupQQ9e63PhuyXGsr3Ckn43clGgIyTEDUy5YlkbFNhhFaB7ssWMhUALSmqtB1j/N
 Gdf1efeuoJLd2HgnsuAy15QsOHsym/+ejnrpD37IOz58xNYqdno/Edi3c2EHrod4DULrLSYQt2uWxr
 5mJntZQbuTGWZuelBgsb7KvVP/XDSnC2tiWf0VvWIgFPSvGq12wWpk0P3ppI2j2S32NLoPjJ5FySIF
 Dz7fPT2gaIh4kJkWYbbqtzH2BYjmTvxakal3jMi+YQwjFtDCNIG5sUNVA4g3n/5GT9ECrHflNgiJxW
 r4Ht77qFPUVJChncFt7AScHk1iXlmE0M0mfD4FilWEd1HL5guIJCDnp1SaYA3ss0Bd8MceRzroBknY
 LphjyR8DzU5oL2cNvKy8SItqu2HZh91DTQVS/lbcME3Ve7L1sBr8+yyTFagS1oUDLiIGLbkcyTq+ub
 /8JYw1P7Y7WYl3AwlhAeX6yxerr3XUtvC5cen+HixlKOSZWcwre/1DScIu4Q==
X-Developer-Key: i=amergnat@baylibre.com; a=openpgp;
 fpr=231B5ED7F3EAAA700E60FE8B2B46499D7E31D445
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some Mediatek PMIC devices can manage Power and Home keys (buttons).
This patch enable the driver which handle the 2 keys managed by the
Mediatek PMIC.

Tested-by: Kevin Hilman <khilman@baylibre.com>
Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Signed-off-by: Alexandre Mergnat <amergnat@baylibre.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index ed3fca298314..0db8293f477d 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -413,6 +413,7 @@ CONFIG_KEYBOARD_GPIO=y
 CONFIG_KEYBOARD_SNVS_PWRKEY=m
 CONFIG_KEYBOARD_IMX_SC_KEY=m
 CONFIG_KEYBOARD_CROS_EC=y
+CONFIG_KEYBOARD_MTK_PMIC=m
 CONFIG_MOUSE_ELAN_I2C=m
 CONFIG_INPUT_TOUCHSCREEN=y
 CONFIG_TOUCHSCREEN_ATMEL_MXT=m

-- 
2.25.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69CF469C7BB
	for <lists+devicetree@lfdr.de>; Mon, 20 Feb 2023 10:33:54 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230322AbjBTJdw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Feb 2023 04:33:52 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229767AbjBTJdv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Feb 2023 04:33:51 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 818698686
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:33:49 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id g14so694567pjb.2
        for <devicetree@vger.kernel.org>; Mon, 20 Feb 2023 01:33:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=auUSvs8UsdFaj/xThMRdjaVCog/Zx9EFkKoJMU//YhU=;
        b=VEzgNlH1ZIpSeIIW4BHakqAskqPavaOvnwg+FDMkymbI+7fRGLlkwr/700K8ZFQqJg
         aqdAQuNVLlRPa6+vEKtYLb6ZYTpXrj7248N7dJQSbSTS3XLrbD5J2mXlMnb5MW20z/lv
         vfcUsoDMycHnvx4SXBpfS5WMxKHzjKjYiqqR4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=auUSvs8UsdFaj/xThMRdjaVCog/Zx9EFkKoJMU//YhU=;
        b=pKgsGH5kx8S4S2T4RC3fpv2mV3N+2Y7LHZHJXM7/rtqgVC4PueKOTQ1ugdBn/Pn1xt
         BIo3CflQBYFUDSFLqe75ZDvXbrUHM0d8vw5ux5CVj6cXfMtxshQ6Jyq/x5BiFYrmxVRh
         Ec+qVcxmZn73XIJ1cUgcWsmaBJJxXEhw+6yJrfuLWeJH4VeGC2QxMlZlMXoBm7VCSmJB
         fafXwPo+71Bo97RWCZmK/GxuAksMYCzUAuJHZnyKj1Jb03pvfn9cWrGaCUG8xQcncGfE
         KrqhCh9+4SmS2amtIBlYkqA7rf4ZDmLM7pPoOuJD/Qcjy3wjROE0XANYrkPHeZa2r6Mx
         M63A==
X-Gm-Message-State: AO0yUKVRH2oLZhcAYvupA+/mIpUIycYjBfo1qCacTRqawzHFdKcpNQTo
        4S6VHCjTi1RRE2KH4Dt+tnj5c2EqLnfGr9wm
X-Google-Smtp-Source: AK7set/mx+AT01XAXlnDozbSnH6dwDZECdvgBPrkFE3Z+Q+N302TjAwATXil1kIEzmGxWYX76fcotg==
X-Received: by 2002:a17:902:f94e:b0:19b:e73:809c with SMTP id kx14-20020a170902f94e00b0019b0e73809cmr764263plb.1.1676885628697;
        Mon, 20 Feb 2023 01:33:48 -0800 (PST)
Received: from hsinyi-z840.tpe.corp.google.com ([2401:fa00:1:10:22dd:c2d9:add9:3828])
        by smtp.gmail.com with ESMTPSA id q7-20020a170902a3c700b0019324fbec59sm7427728plb.41.2023.02.20.01.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Feb 2023 01:33:48 -0800 (PST)
From:   Hsin-Yi Wang <hsinyi@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8183: kukui: Add scp firmware-name
Date:   Mon, 20 Feb 2023 17:33:43 +0800
Message-Id: <20230220093343.3447381-1-hsinyi@chromium.org>
X-Mailer: git-send-email 2.39.2.637.g21b0678d19-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The upstream SCP firmware path is /lib/firmware/mediatek/mt8183/scp.img

Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
index fbe14b13051a..8390e89dbc83 100644
--- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
@@ -807,6 +807,8 @@ &pwm0 {
 
 &scp {
 	status = "okay";
+
+	firmware-name = "mediatek/mt8183/scp.img";
 	pinctrl-names = "default";
 	pinctrl-0 = <&scp_pins>;
 
-- 
2.39.2.637.g21b0678d19-goog


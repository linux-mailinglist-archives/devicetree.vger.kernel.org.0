Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E27F6124D1
	for <lists+devicetree@lfdr.de>; Fri,  3 May 2019 00:55:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726304AbfEBWy2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 18:54:28 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:43257 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726300AbfEBWy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 18:54:28 -0400
Received: by mail-pl1-f196.google.com with SMTP id n8so1702921plp.10
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 15:54:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=P+ZPNiv5B5kytob2vOwdU5pZyvzNXPIUr8ZUKGFUcOY=;
        b=h0wYyVMluUVAdv1NwQOAAhlwteWpgYwW8HXhS8VG32Z7Lf9yxA4NuF5+A0czBvZzKv
         lJVcxHPaPYIKXirJmLKL7liFbEaF4geinpGCsaSD7+tuUJ31PO4yA9oJQyZ+bTMX2yqH
         davXBEyebjxtzyIeeIKbXwcoU9AzTCZef7yaI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=P+ZPNiv5B5kytob2vOwdU5pZyvzNXPIUr8ZUKGFUcOY=;
        b=EQYOh0SCqMP+9XeEWTIVpGrGyGjK8c0N8BnET9FDouC0NrF31THEpNSKlP2iio3cVX
         N9m6Dgeexe9Ewvld5ZHyCHTeOGTZptMRQeUAaiqPK7i1eJP5OpQW38092nLpW71559Ci
         m0XW7/YywOGmT4NyztzkXnfjRfLmC4nyvjc2EKMS85GsfTPXkztr+AirTrHvfVsH6Swr
         EKb1cbs+KcvJnPtCGpNUiZmkqgvuEpBqTHwel2jTEFImjYUk+leg8z/M/Et2bk62viV9
         KW/MrE0XXrf6utcTJ+nQwS1DFXIGiOlDbGF++Vs8Tth/dCPkZCycTogVve1i5zcfUi3O
         7SXg==
X-Gm-Message-State: APjAAAW6L9+FLXFp82EppVmooi5XpUARdAR1PZKOb1DSrbHKhxlTSW4k
        8fbJZDwS4fcB8dUgDUIs1gL8Jg==
X-Google-Smtp-Source: APXvYqzd5mafem3up8aafRaHi3Cdrlk1qdlgUPk4BmPnowawJNQiWJT3C7hEk3PNUfbliN1Sz4ERKQ==
X-Received: by 2002:a17:902:8545:: with SMTP id d5mr6351215plo.198.1556837667556;
        Thu, 02 May 2019 15:54:27 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 15:54:27 -0700 (PDT)
From:   Douglas Anderson <dianders@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andrzej Hajda <a.hajda@samsung.com>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-rockchip@lists.infradead.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Mark Rutland <mark.rutland@arm.com>, mka@chromium.org,
        Sean Paul <seanpaul@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/5] ARM: dts: rockchip: Add unwedge pinctrl entries for dw_hdmi on rk3288
Date:   Thu,  2 May 2019 15:53:35 -0700
Message-Id: <20190502225336.206885-4-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This adds the "unwedge" pinctrl entries introduced by a recent dw_hdmi
change that can unwedge the dw_hdmi i2c bus in some cases.  It's
expected that any boards using this would add:

  pinctrl-names = "default", "unwedge";
  pinctrl-0 = <&hdmi_ddc>;
  pinctrl-1 = <&hdmi_ddc_unwedge>;

Note that this isn't added by default because some boards may choose
to mux i2c5 for their DDC bus (if that is more tested for them).

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/rk3288.dtsi b/arch/arm/boot/dts/rk3288.dtsi
index 74c9517c4f92..eebc04fa1e4d 100644
--- a/arch/arm/boot/dts/rk3288.dtsi
+++ b/arch/arm/boot/dts/rk3288.dtsi
@@ -1545,6 +1545,15 @@
 				rockchip,pins = <7 RK_PC3 2 &pcfg_pull_none>,
 						<7 RK_PC4 2 &pcfg_pull_none>;
 			};
+
+			hdmi_ddc_unwedge: hdmi-ddc-unwedge {
+				rockchip,pins = <7 RK_PC3 RK_FUNC_GPIO &pcfg_output_low>,
+						<7 RK_PC4 2 &pcfg_pull_none>;
+			};
+		};
+
+		pcfg_output_low: pcfg-output-low {
+			output-low;
 		};
 
 		pcfg_pull_up: pcfg-pull-up {
-- 
2.21.0.1020.gf2820cf01a-goog


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9DDA6774AC6
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 22:35:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231818AbjHHUfg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 16:35:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235155AbjHHUfY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 16:35:24 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5CE1F5BD31
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 10:04:04 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id 38308e7fff4ca-2b9f0b7af65so91255451fa.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 10:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20221208.gappssmtp.com; s=20221208; t=1691514240; x=1692119040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=aKTM65Hk6mGoUuD04O4aN5AQ3hEPhlqNZbHsqhxOlFc=;
        b=az/UVn4A1gfoqnWH6J7plnE8obhPyH2NCL6mJpGuffZv6ihP+EMEQWqARNHKtC0FxJ
         P1gnsOXcYgEYvBP/2Tie4bJ99JhLm+gh9UCi4j9O0MBXDWG48LhSgnp72bN6ICxmFg3v
         LGtmaAdsAMlbJyEejD3bAmpb1U68FnZHpnld+0pc6MSXqHyTdPSKYiudO/GAiPC5csLs
         QmBhAUr5iV5xEGzEX+x5resQ8kOwdWFEroKPHKhUhb/FF7rgH6StNq/bRfeDWDNfl201
         8PXIHMMchiGoG5YtUfpkRxtuTZSmFAFdOJCsJj9ykHt3TdjmmF4zH6IdWROC8VGRMACj
         QduQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691514240; x=1692119040;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aKTM65Hk6mGoUuD04O4aN5AQ3hEPhlqNZbHsqhxOlFc=;
        b=Thgf7Npt7XkvTu0w2AEyhy6Evyz0nlPn9JLuEP2H9yWRPznlelo0MqTsq7mjlLBfBq
         tCNakXtzurPjK89ylMriDeF+pjhzqSDE0QflPawpmGHYMWDnL1wY8MCH57XmWpdkznA9
         DRoEpe61MuFFfeXPoQowDyJ8hrCZWKPNsYAzY5M9ylpvzqnwy5yHTOc7VaDsyHkzm6QV
         aCCsWVgjq0kjSXaKuhLUEQWj9cj5logNJlQSGN7h4w/su0qmvQ+omcGRGEhzEM9dhuC6
         Y+bdow+JgXA0D3JB2LNLabyroyDp3/UuqaE5QrwE8x5D/x/dIcul9FG1fcxPpm20gm7w
         zYzA==
X-Gm-Message-State: AOJu0YzR2OVy7TIyORLQd9ggpHI9+ZtmPYBhWlIOmAxfES0GcRrrKTVy
        9pVNFE0ZEHuLelQp0Y9do6psLeBpOhrwq05POJU=
X-Google-Smtp-Source: AGHT+IHCg6jK5QeAQL7ZbDp7JHMdEJbqOK7NfrBs1E2JWLSE/ov+AA3/Bp6bD/RPcGzaSByaM3IqVA==
X-Received: by 2002:adf:ffc3:0:b0:317:5b99:d3d8 with SMTP id x3-20020adfffc3000000b003175b99d3d8mr7412543wrs.20.1691489280387;
        Tue, 08 Aug 2023 03:08:00 -0700 (PDT)
Received: from toaster.lan ([2a01:e0a:3c5:5fb1:efd4:f3df:2c50:1776])
        by smtp.googlemail.com with ESMTPSA id e11-20020a5d500b000000b003143c9beeaesm13109420wrt.44.2023.08.08.03.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Aug 2023 03:08:00 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, Da Xue <da@libre.computer>,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] usb: misc: onboard_usb_hub: add Genesys Logic gl3510 hub support
Date:   Tue,  8 Aug 2023 12:07:46 +0200
Message-Id: <20230808100746.391365-3-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230808100746.391365-1-jbrunet@baylibre.com>
References: <20230808100746.391365-1-jbrunet@baylibre.com>
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the gl3510 4 ports USB3.1 hub. This allows to control its
reset pins with a gpio.

No public documentation is available for this hub. Using the same reset
duration as the gl852g which seems OK.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---
 drivers/usb/misc/onboard_usb_hub.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/usb/misc/onboard_usb_hub.h b/drivers/usb/misc/onboard_usb_hub.h
index aca5f50eb0da..4b94ea375d45 100644
--- a/drivers/usb/misc/onboard_usb_hub.h
+++ b/drivers/usb/misc/onboard_usb_hub.h
@@ -22,6 +22,10 @@ static const struct onboard_hub_pdata ti_tusb8041_data = {
 	.reset_us = 3000,
 };
 
+static const struct onboard_hub_pdata genesys_gl3510_data = {
+	.reset_us = 50,
+};
+
 static const struct onboard_hub_pdata genesys_gl850g_data = {
 	.reset_us = 3,
 };
@@ -41,6 +45,7 @@ static const struct of_device_id onboard_hub_match[] = {
 	{ .compatible = "usb451,8142", .data = &ti_tusb8041_data, },
 	{ .compatible = "usb5e3,608", .data = &genesys_gl850g_data, },
 	{ .compatible = "usb5e3,610", .data = &genesys_gl852g_data, },
+	{ .compatible = "usb5e3,626", .data = &genesys_gl3510_data, },
 	{ .compatible = "usbbda,411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,5411", .data = &realtek_rts5411_data, },
 	{ .compatible = "usbbda,414", .data = &realtek_rts5411_data, },
-- 
2.40.1


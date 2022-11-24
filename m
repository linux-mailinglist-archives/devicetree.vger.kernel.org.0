Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BCD6C637629
	for <lists+devicetree@lfdr.de>; Thu, 24 Nov 2022 11:21:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229834AbiKXKVc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Nov 2022 05:21:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbiKXKVX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Nov 2022 05:21:23 -0500
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 091F214F531
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:15 -0800 (PST)
Received: by mail-pg1-x532.google.com with SMTP id 62so1188829pgb.13
        for <devicetree@vger.kernel.org>; Thu, 24 Nov 2022 02:21:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=bhjmEX7h7UKuTd3pV2F0JRbYwLj/obCLhiM6HTgRw0A=;
        b=hyEW92Qgxc5TQnLZWHdyOLmDAEq5T8M7V0iOgxHI7fmQKv4wqB5EmzbNffcjGDXl1y
         vmD6r+xRz62PtEZwYK8WpFdk3i1WCAg8MvTKFFyhdAR3U03Upmodz/Sk2+R459pZt5ue
         KoM27RRJTxSG0VqLVljHKplaFJmL3x9ILSBTk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=bhjmEX7h7UKuTd3pV2F0JRbYwLj/obCLhiM6HTgRw0A=;
        b=ed+8dtAbW9/T0Dr3QrgqAPUrE/t51TG9q+yUdlvZDxdPdsJv7ge/2h/B+IBsZvjxmR
         Mqn9sChI/StScFcS3uFLDVxqLx0BKRyXZRcqW0Riwc9CH6/Eyg9pOk2NBZyN0z8SpEvj
         FXIkqK1v1lSx1VRVaKWLiAWXTrbke3d2tGPxdu+C1fiEtJ07RCnDGeOqLf1PRegLL4Bf
         PuT15xZjBxkbcYZhKKUJIb6JNh6CHoOsSnwb03tLES0O5A0wSmqAtS9Gv3coYT+hp1JT
         SIJ7+ZMocsUt5HOIeep3qjgotTg1vB0aHTxh8CCQHBGJm0qH/7D5Xtr7PKHSp66Yd8Be
         bSfA==
X-Gm-Message-State: ANoB5plj80hf0nyWt9LJB4vCe/eZXuD6o7arHq3MMyT0gOpb3HH0kKoy
        ORy3SN8R9XU6PjDxvZGSMz8CTg==
X-Google-Smtp-Source: AA0mqf5Dpv3pBFrlepUdrqazsU1AaoAF/JpY4AkUKXgwym+PfS6uoAGgqvHrWP1Xgn/dQtFUItYqyg==
X-Received: by 2002:a63:4043:0:b0:470:2ecd:333e with SMTP id n64-20020a634043000000b004702ecd333emr30066989pga.596.1669285274569;
        Thu, 24 Nov 2022 02:21:14 -0800 (PST)
Received: from treapking.tpe.corp.google.com ([2401:fa00:1:10:d446:708:8556:dfee])
        by smtp.gmail.com with ESMTPSA id t123-20020a625f81000000b005747b59fc54sm854584pfb.172.2022.11.24.02.21.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Nov 2022 02:21:14 -0800 (PST)
From:   Pin-yen Lin <treapking@chromium.org>
To:     Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Robert Foss <robert.foss@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Daniel Scally <djrscally@gmail.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Rafael J . Wysocki" <rafael@kernel.org>,
        Prashant Malani <pmalani@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        Guenter Roeck <groeck@chromium.org>
Cc:     Javier Martinez Canillas <javierm@redhat.com>,
        Stephen Boyd <swboyd@chromium.org>,
        dri-devel@lists.freedesktop.org,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org, Pin-yen Lin <treapking@chromium.org>,
        chrome-platform@lists.linux.dev, linux-acpi@vger.kernel.org,
        Marek Vasut <marex@denx.de>, Xin Ji <xji@analogixsemi.com>,
        Lyude Paul <lyude@redhat.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-kernel@vger.kernel.org, Allen Chen <allen.chen@ite.com.tw>
Subject: [PATCH v6 1/7] device property: Add remote endpoint to devcon matcher
Date:   Thu, 24 Nov 2022 18:20:50 +0800
Message-Id: <20221124102056.393220-2-treapking@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
In-Reply-To: <20221124102056.393220-1-treapking@chromium.org>
References: <20221124102056.393220-1-treapking@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Prashant Malani <pmalani@chromium.org>

When searching the device graph for device matches, check the
remote-endpoint itself for a match.

Some drivers register devices for individual endpoints. This allows
the matcher code to evaluate those for a match too, instead
of only looking at the remote parent devices. This is required when a
device supports two mode switches in its endpoints, so we can't simply
register the mode switch with the parent node.

Signed-off-by: Prashant Malani <pmalani@chromium.org>
Signed-off-by: Pin-yen Lin <treapking@chromium.org>

---

Changes in v6:
- New in v6

 drivers/base/property.c | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/drivers/base/property.c b/drivers/base/property.c
index 4d6278a84868..2ab8be8ca45e 100644
--- a/drivers/base/property.c
+++ b/drivers/base/property.c
@@ -1223,6 +1223,21 @@ static unsigned int fwnode_graph_devcon_matches(struct fwnode_handle *fwnode,
 			break;
 		}
 
+		/*
+		 * Some drivers may register devices for endpoints. Check
+		 * the remote-endpoints for matches in addition to the remote
+		 * port parent.
+		 */
+		node = fwnode_graph_get_remote_endpoint(ep);
+		if (fwnode_device_is_available(node)) {
+			ret = match(node, con_id, data);
+			if (ret) {
+				if (matches)
+					matches[count] = ret;
+				count++;
+			}
+		}
+
 		node = fwnode_graph_get_remote_port_parent(ep);
 		if (!fwnode_device_is_available(node)) {
 			fwnode_handle_put(node);
-- 
2.38.1.584.g0f3c55d4c2-goog


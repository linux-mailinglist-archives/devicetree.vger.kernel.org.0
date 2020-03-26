Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A0319193D32
	for <lists+devicetree@lfdr.de>; Thu, 26 Mar 2020 11:45:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727976AbgCZKp3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Mar 2020 06:45:29 -0400
Received: from mout.kundenserver.de ([212.227.126.130]:41623 "EHLO
        mout.kundenserver.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727688AbgCZKp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Mar 2020 06:45:29 -0400
Received: from mail.cetitecgmbh.com ([87.190.42.90]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis)
 id 1N3Gok-1jQjMz39Jy-010Oar for <devicetree@vger.kernel.org>; Thu, 26 Mar
 2020 11:45:27 +0100
Received: from pflvmailgateway.corp.cetitec.com (unknown [127.0.0.1])
        by mail.cetitecgmbh.com (Postfix) with ESMTP id 8C51C65047A
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2020 10:45:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at cetitec.com
Received: from mail.cetitecgmbh.com ([127.0.0.1])
        by pflvmailgateway.corp.cetitec.com (pflvmailgateway.corp.cetitec.com [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id qeKAnpoR9YVv for <devicetree@vger.kernel.org>;
        Thu, 26 Mar 2020 11:45:27 +0100 (CET)
Received: from pfwsexchange.corp.cetitec.com (unknown [10.10.1.99])
        by mail.cetitecgmbh.com (Postfix) with ESMTPS id 26CA564E08F
        for <devicetree@vger.kernel.org>; Thu, 26 Mar 2020 11:45:27 +0100 (CET)
Received: from pflmari.corp.cetitec.com (10.8.5.79) by
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) with Microsoft SMTP Server (TLS)
 id 15.0.1497.2; Thu, 26 Mar 2020 11:45:26 +0100
Received: by pflmari.corp.cetitec.com (Postfix, from userid 1000)
        id 5049380500; Thu, 26 Mar 2020 11:35:23 +0100 (CET)
Date:   Thu, 26 Mar 2020 11:35:23 +0100
From:   Alex Riesen <alexander.riesen@cetitec.com>
To:     Kieran Bingham <kieran.bingham@ideasonboard.com>
CC:     Geert Uytterhoeven <geert@linux-m68k.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        "Laurent Pinchart" <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        <devel@driverdev.osuosl.org>, <linux-media@vger.kernel.org>,
        <linux-kernel@vger.kernel.org>, <devicetree@vger.kernel.org>,
        <linux-renesas-soc@vger.kernel.org>
Subject: [PATCH v4 3/9] media: adv748x: reduce amount of code for bitwise
 modifications of device registers
Message-ID: <88950969b1d16ff5fcd1b3458356c4cf5a9e6cff.1585218857.git.alexander.riesen@cetitec.com>
Mail-Followup-To: Alex Riesen <alexander.riesen@cetitec.com>,
        Kieran Bingham <kieran.bingham@ideasonboard.com>,
        Geert Uytterhoeven <geert@linux-m68k.org>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hverkuil-cisco@xs4all.nl>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
        devel@driverdev.osuosl.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <cover.1585218857.git.alexander.riesen@cetitec.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
In-Reply-To: <cover.1585218857.git.alexander.riesen@cetitec.com>
X-Originating-IP: [10.8.5.79]
X-ClientProxiedBy: PFWSEXCHANGE.corp.cetitec.com (10.10.1.99) To
 PFWSEXCHANGE.corp.cetitec.com (10.10.1.99)
X-EsetResult: clean, is OK
X-EsetId: 37303A290D7F536A6D7C67
X-Provags-ID: V03:K1:NxFS4oiz0QJPPpeHO9TwHJxHhvPbb5uvY3GRyLE5dB9nQBB8QNz
 FYmA0E6Tx+m8g7IylrGlcD8g3tUfNdgnRhhe9nSL9b/V1lFf404VyMjSwg4r1YCosF3qLiu
 yj3lXgOJZTDq61+etApkAjquP/4862GJ7AjIGp9tBYDZIp30Ek1bVMctJqCR5lscZDvKUxz
 gEFn4j+WQz5oapVBlPs/w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:g0ig+VgfAB0=:ZkWHx4zndUJrCnJj0gL2G1
 vAr015cOUu67cVK/m64UZy3M1BdlyBpLGFlHRtAAWA89fRt3FTwLLTSBzTUoPguBsPePiyNXB
 jklg317SmgK1cnbHGm4WNzJWObRyit7yVUcnnomp9NA+BkUWxT/BW2iRC/amDr3mF9s/E2oHW
 9tzJV5Eb7py6qXqlNcF3vm1PcGQLpRlJJ7ZehzkTMvpldJmJTRm+P3+C2FRVGxQ+HgSc/Wf1O
 VAJtIkNzpSol8tygOJYRjzwU7BaQjH1+mH9Z3GlTPF9IW0bYess7uL8zJXANtOF0Xq0qhQzVr
 E/KNQMns+XnaUfpdLKIPAyJeGrxpdgggqOzSHUge2PZCUAs1VJTE76k8PsyEUrxMnMWiwVYYQ
 zZI6ox96EuEX1EeTiNVELqdV+XRUBCrVRyoaH43L4BNTf8RQvke4xgE8VG2r6lxNNsuxXrFnd
 w5vjpSha3ZYGVLvTmD6fsYD6QOLKCyQ2SrbH0HCIdyxk4KjHDG1MMPCtp/9c9QECyLlaGfiIu
 mrRezfux8VZy1OUzVelFXqxKIqBqas8u+eZYLAwA8fsQB9C2KH3a8A8G6wsaXKBAEWKd/bZog
 wW5k7NfeUHH4cHLvC4g4hTnxRl9kw64+d27h4t7CO5M77cWGnNp/ODXRisaSgespzdCtV57yS
 6qf5Nehpvv/zIPLKkXYw4oroQ/wKgbdJjDaq29/EWKqVaja2pSn3k3BZAjipVVk57Kheuy0OB
 wLWodoNT/4GTFCPNJwN8O5Jg4UsZIeu9VapxU9P8LPTYE70h+FUh5BgnKNOdjwkmw4aWaOkgY
 NgdJ/y+emMh84Yxa0zSkKOxjvnROMw/Oh8ZQiBgcwyC302WJtW4l/Et4VZqHeii/UBy3TUR
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The regmap provides a convenient utility for this.
The hdmi_* and dpll_* register modification macros added for symmetry
with the existing operations (io_*, sdp_*).

Signed-off-by: Alexander Riesen <alexander.riesen@cetitec.com>
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>

--
v3: remove _update name in favor of existing _clrset
---
 drivers/media/i2c/adv748x/adv748x-core.c |  6 ++++++
 drivers/media/i2c/adv748x/adv748x.h      | 14 +++++++++++---
 2 files changed, 17 insertions(+), 3 deletions(-)

diff --git a/drivers/media/i2c/adv748x/adv748x-core.c b/drivers/media/i2c/adv748x/adv748x-core.c
index 5c59aad319d1..8580e6624276 100644
--- a/drivers/media/i2c/adv748x/adv748x-core.c
+++ b/drivers/media/i2c/adv748x/adv748x-core.c
@@ -133,6 +133,12 @@ static int adv748x_write_check(struct adv748x_state *state, u8 page, u8 reg,
 	return *error;
 }
 
+int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg, u8 mask,
+			u8 value)
+{
+	return regmap_update_bits(state->regmap[page], reg, mask, value);
+}
+
 /* adv748x_write_block(): Write raw data with a maximum of I2C_SMBUS_BLOCK_MAX
  * size to one or more registers.
  *
diff --git a/drivers/media/i2c/adv748x/adv748x.h b/drivers/media/i2c/adv748x/adv748x.h
index 09aab4138c3f..0a9d78c2870b 100644
--- a/drivers/media/i2c/adv748x/adv748x.h
+++ b/drivers/media/i2c/adv748x/adv748x.h
@@ -393,25 +393,33 @@ int adv748x_write(struct adv748x_state *state, u8 page, u8 reg, u8 value);
 int adv748x_write_block(struct adv748x_state *state, int client_page,
 			unsigned int init_reg, const void *val,
 			size_t val_len);
+int adv748x_update_bits(struct adv748x_state *state, u8 page, u8 reg,
+			u8 mask, u8 value);
 
 #define io_read(s, r) adv748x_read(s, ADV748X_PAGE_IO, r)
 #define io_write(s, r, v) adv748x_write(s, ADV748X_PAGE_IO, r, v)
-#define io_clrset(s, r, m, v) io_write(s, r, (io_read(s, r) & ~(m)) | (v))
+#define io_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_IO, r, m, v)
 
 #define hdmi_read(s, r) adv748x_read(s, ADV748X_PAGE_HDMI, r)
 #define hdmi_read16(s, r, m) (((hdmi_read(s, r) << 8) | hdmi_read(s, (r)+1)) & (m))
 #define hdmi_write(s, r, v) adv748x_write(s, ADV748X_PAGE_HDMI, r, v)
+#define hdmi_clrset(s, r, m, v) \
+	adv748x_update_bits(s, ADV748X_PAGE_HDMI, r, m, v)
+
+#define dpll_read(s, r) adv748x_read(s, ADV748X_PAGE_DPLL, r)
+#define dpll_clrset(s, r, m, v) \
+	adv748x_update_bits(s, ADV748X_PAGE_DPLL, r, m, v)
 
 #define repeater_read(s, r) adv748x_read(s, ADV748X_PAGE_REPEATER, r)
 #define repeater_write(s, r, v) adv748x_write(s, ADV748X_PAGE_REPEATER, r, v)
 
 #define sdp_read(s, r) adv748x_read(s, ADV748X_PAGE_SDP, r)
 #define sdp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_SDP, r, v)
-#define sdp_clrset(s, r, m, v) sdp_write(s, r, (sdp_read(s, r) & ~(m)) | (v))
+#define sdp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_SDP, r, m, v)
 
 #define cp_read(s, r) adv748x_read(s, ADV748X_PAGE_CP, r)
 #define cp_write(s, r, v) adv748x_write(s, ADV748X_PAGE_CP, r, v)
-#define cp_clrset(s, r, m, v) cp_write(s, r, (cp_read(s, r) & ~(m)) | (v))
+#define cp_clrset(s, r, m, v) adv748x_update_bits(s, ADV748X_PAGE_CP, r, m, v)
 
 #define tx_read(t, r) adv748x_read(t->state, t->page, r)
 #define tx_write(t, r, v) adv748x_write(t->state, t->page, r, v)
-- 
2.25.1.25.g9ecbe7eb18



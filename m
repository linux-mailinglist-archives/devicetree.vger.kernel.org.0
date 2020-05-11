Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80C371CD72E
	for <lists+devicetree@lfdr.de>; Mon, 11 May 2020 13:06:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729046AbgEKLGj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 May 2020 07:06:39 -0400
Received: from bhuna.collabora.co.uk ([46.235.227.227]:49098 "EHLO
        bhuna.collabora.co.uk" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728341AbgEKLGj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 May 2020 07:06:39 -0400
Received: from [127.0.0.1] (localhost [127.0.0.1])
        (Authenticated sender: rcn)
        with ESMTPSA id E9C742A0C53
From:   =?UTF-8?q?Ricardo=20Ca=C3=B1uelo?= <ricardo.canuelo@collabora.com>
To:     laurent.pinchart@ideasonboard.com
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, geert+renesas@glider.be,
        robh+dt@kernel.org, xuwei5@hisilicon.com
Subject: [PATCH v2 5/6] ARM: dts: iwg20d-q7-dbcm-ca: remove unneeded properties in hdmi@39
Date:   Mon, 11 May 2020 13:06:10 +0200
Message-Id: <20200511110611.3142-6-ricardo.canuelo@collabora.com>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
References: <20200511110611.3142-1-ricardo.canuelo@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Remove the adi,input-style and adi,input-justification properties of
hdmi@39 to make it compliant with the "adi,adv7511w" DT binding.

Signed-off-by: Ricardo Cañuelo <ricardo.canuelo@collabora.com>
---
 arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi b/arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi
index ede2e0c999b1..e10f99278c77 100644
--- a/arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi
+++ b/arch/arm/boot/dts/iwg20d-q7-dbcm-ca.dtsi
@@ -72,8 +72,6 @@
 		adi,input-depth = <8>;
 		adi,input-colorspace = "rgb";
 		adi,input-clock = "1x";
-		adi,input-style = <1>;
-		adi,input-justification = "evenly";
 
 		ports {
 			#address-cells = <1>;
-- 
2.18.0


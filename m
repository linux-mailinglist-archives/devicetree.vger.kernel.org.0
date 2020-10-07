Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC011285ACB
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 10:45:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727832AbgJGIpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 04:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34884 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727865AbgJGIpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 04:45:11 -0400
Received: from hillosipuli.retiisi.eu (hillosipuli.retiisi.org.uk [IPv6:2a01:4f9:c010:4572::81:2])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80968C0613D3
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 01:45:10 -0700 (PDT)
Received: from lanttu.localdomain (lanttu-e.localdomain [192.168.1.64])
        by hillosipuli.retiisi.eu (Postfix) with ESMTP id A83B2634C8C;
        Wed,  7 Oct 2020 11:44:24 +0300 (EEST)
From:   Sakari Ailus <sakari.ailus@linux.intel.com>
To:     linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org
Subject: [PATCH v2 021/106] dt-bindings: nokia,smia: Make vana-supply optional
Date:   Wed,  7 Oct 2020 11:44:58 +0300
Message-Id: <20201007084505.25761-3-sakari.ailus@linux.intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201007084505.25761-1-sakari.ailus@linux.intel.com>
References: <20201007084505.25761-1-sakari.ailus@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

vana-supply is optional in the spec, therefore make it optional in
bindings, too.

Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
Acked-by: Rob Herring <robh@kernel.org>
---
 Documentation/devicetree/bindings/media/i2c/nokia,smia.txt | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt b/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
index 6c45c79ef91f..5ea4f799877b 100644
--- a/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
+++ b/Documentation/devicetree/bindings/media/i2c/nokia,smia.txt
@@ -16,8 +16,6 @@ Mandatory properties
 
 - compatible: "nokia,smia"
 - reg: I2C address (0x10, or an alternative address)
-- vana-supply: Analogue voltage supply (VANA), typically 2,8 volts (sensor
-  dependent).
 - clocks: External clock to the sensor
 - clock-frequency: Frequency of the external clock to the sensor
 
@@ -31,6 +29,8 @@ Optional properties
 - rotation: Integer property; valid values are 0 (sensor mounted upright)
 	    and 180 (sensor mounted upside down). See
 	    ../video-interfaces.txt .
+- vana-supply: Analogue voltage supply (VANA), typically 2,8 volts (sensor
+  dependent).
 
 
 Endpoint node mandatory properties
-- 
2.27.0


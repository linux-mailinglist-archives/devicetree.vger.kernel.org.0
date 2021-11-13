Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 77D0D44F3E7
	for <lists+devicetree@lfdr.de>; Sat, 13 Nov 2021 16:23:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235935AbhKMP0d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Nov 2021 10:26:33 -0500
Received: from mail.kernel.org ([198.145.29.99]:43410 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S235945AbhKMP0c (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 13 Nov 2021 10:26:32 -0500
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6EA361106;
        Sat, 13 Nov 2021 15:23:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1636817020;
        bh=Fn/AD43R2TfbnwgaRvVaMIcV4fPfI5kVh55I88u1Ge8=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=tCL2hHiF17AB1aHrAKyP3A4uDtzgaoKSDJe3n/jjX6o5rLrrTZdyGi2RvUAKSxear
         ylGHFKBKKjLuXsTJAv7F51fV8u6sA7gO4PlLOcj3u+nCe1JztDKJysbEDYELuZJxBV
         NMJvMILeQgtFmAfDdljsaBKPtQ3V0WqgDi30GMRlJs7YhVzcf9uDe9vGnEfGLFN1iD
         CSeldxtdLkxsa/iAAnztxR8FXI5XVDz4TBDVV405j4w65j4+cLv/za6jPYAcRii1bo
         HomPVrO85HbEpW0LZQMmwG3C1o6R/GKwQMvHizTKbjdgxMXQ2lWL4cCEYJHMnm1Dpq
         tsbnujtVTTCKg==
From:   Lorenzo Bianconi <lorenzo@kernel.org>
To:     jic23@kernel.org
Cc:     lorenzo.bianconi@redhat.com, linux-iio@vger.kernel.org,
        mario.tesi@st.com, devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] iio: imu: st_lsm6dsx: add dts property to disable sensor-hub
Date:   Sat, 13 Nov 2021 16:23:14 +0100
Message-Id: <ad7894e7b1c6fb3427fab3f623bb942860ad45cf.1636816719.git.lorenzo@kernel.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1636816719.git.lorenzo@kernel.org>
References: <cover.1636816719.git.lorenzo@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Introduce the capability to disable sensorhub through a device-tree
property since there are some configurations where users want to
explicitly disable sensor-hub auto-probing at bootstrap.
A typical configuration is when the sensorhub clock/data lines are connected
to a pull-up resistor since no slave sensors are connected to the i2c master.
If SDO/SA0 line is connected to the same pull-up resistor, when the driver
tries to probe slave devices connected on sensor-hub, it will force SDO/SA0
line to low, modifying the device i2c address.

Tested-by: Mario Tesi <mario.tesi@st.com>
Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
index f2cbbc756459..727b4b6ac696 100644
--- a/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
+++ b/drivers/iio/imu/st_lsm6dsx/st_lsm6dsx_core.c
@@ -2244,7 +2244,9 @@ int st_lsm6dsx_probe(struct device *dev, int irq, int hw_id,
 		return err;
 
 	hub_settings = &hw->settings->shub_settings;
-	if (hub_settings->master_en.addr) {
+	if (hub_settings->master_en.addr &&
+	    (!dev_fwnode(dev) ||
+	     !device_property_read_bool(dev, "st,disable-sensor-hub"))) {
 		err = st_lsm6dsx_shub_probe(hw, name);
 		if (err < 0)
 			return err;
-- 
2.31.1


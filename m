Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5C70526D1B9
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 05:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726112AbgIQD32 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Sep 2020 23:29:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726109AbgIQD2C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Sep 2020 23:28:02 -0400
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06ACCC0611C2
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 20:22:34 -0700 (PDT)
Received: by mail-qt1-x843.google.com with SMTP id n18so827981qtw.0
        for <devicetree@vger.kernel.org>; Wed, 16 Sep 2020 20:22:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=qA8w6GQLbaTlzp5n8dcgkY3X2oVEZB3DGcmvh59/aDQ=;
        b=Mn11vOjh/Pgg9MhlRULSR7tXA6ZixO1ybWFY4R1A5pbm+l+dZi99Ik6Dz8/SFCJOZZ
         s1YfqhkXUuWOVzORUi9/hJLnBRejNT4uBEiqF1uhwCh+pGVe6rI8/wH0UBySQdONPnu2
         yLjurEjdnc0DLZb4vBbq62+ijn8pt4QrMJPhkemj1PrGRBphp12LOpX4opxL05I0RVtj
         4O8+mjdNL1tEpF8H1h0qLT9RgAl/fEtohF2mzCGlU5XBR+wBCslchXHtSLCafKXLJPmR
         zg2SqEEqEGnveFdXk3e4S3pvw9LtRrrTjsExiE6jAfAf8k8PpJCoWkHQ+RQB432IqekD
         qG9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=qA8w6GQLbaTlzp5n8dcgkY3X2oVEZB3DGcmvh59/aDQ=;
        b=MSV7zGNjgkaXZPyGpZ0iw9rBmcrK+cV0FDnB5SLZnmu6SXHPnffKJm8BOHQfgq51FL
         LT1tc9vKVp48Yu60ZcphgustCNRgH0r+5wzljBBzI3rfFSpZY3K0P31QtWbGHzxxOk6o
         JOzoQttHbrQun2O6YmnMOWjXh3M/voO7DTumoNQpmbTOe3NPVGfO9Dc3TZIFGuivdRry
         gF0RQuz3JkbHRTOO9GQw9jljpMPKj/nN0xz3XFNeWl8Yp/NJb8V67d/wEE7axFpSh7Tb
         rRbl9mzwoGTRpJzAHK5x5pPjmV5pYPvszL21c6xjB36wQsQJ61XmvkqUEvBRST08xJeD
         72fg==
X-Gm-Message-State: AOAM532FbWEiqFZzPoCMOzL3wkoWr5DLa/0wv3bjHuXkpMhtv30koH8U
        Su7dAdJqibFRsK8d/MbekERhKg==
X-Google-Smtp-Source: ABdhPJwE1MP6yxSojZ/oW1Dvar69y++Fse0YxIRP8jIkfmkccLGWZ2OFc+TBgA+kkS9idIbPZJJT8Q==
X-Received: by 2002:ac8:44b5:: with SMTP id a21mr13087829qto.314.1600312953278;
        Wed, 16 Sep 2020 20:22:33 -0700 (PDT)
Received: from pop-os.fios-router.home (pool-71-163-245-5.washdc.fios.verizon.net. [71.163.245.5])
        by smtp.googlemail.com with ESMTPSA id g45sm21370801qtb.60.2020.09.16.20.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Sep 2020 20:22:32 -0700 (PDT)
From:   Thara Gopinath <thara.gopinath@linaro.org>
To:     rui.zhang@intel.com, daniel.lezcano@linaro.org, robh+dt@kernel.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        lukasz.luba@arm.com, amitk@kernel.org
Subject: [PATCH RFC 6/8] thermal: Modify thermal governors to do nothing for trip points being monitored for falling temperature
Date:   Wed, 16 Sep 2020 23:22:24 -0400
Message-Id: <20200917032226.820371-7-thara.gopinath@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200917032226.820371-1-thara.gopinath@linaro.org>
References: <20200917032226.820371-1-thara.gopinath@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

For now, thermal governors other than step wise governorr do not support
monitoring of falling temperature. Hence, in case of calls to the governor
for trip points marked as THERMAL_TRIP_MONITOR_FALLING, return doing
nothing.

Signed-off-by: Thara Gopinath <thara.gopinath@linaro.org>
---
 drivers/thermal/gov_bang_bang.c       | 12 ++++++++++++
 drivers/thermal/gov_fair_share.c      | 12 ++++++++++++
 drivers/thermal/gov_power_allocator.c | 12 ++++++++++++
 3 files changed, 36 insertions(+)

diff --git a/drivers/thermal/gov_bang_bang.c b/drivers/thermal/gov_bang_bang.c
index 991a1c54296d..a662047e5961 100644
--- a/drivers/thermal/gov_bang_bang.c
+++ b/drivers/thermal/gov_bang_bang.c
@@ -99,6 +99,18 @@ static void thermal_zone_trip_update(struct thermal_zone_device *tz, int trip)
 static int bang_bang_control(struct thermal_zone_device *tz, int trip)
 {
 	struct thermal_instance *instance;
+	enum thermal_trip_monitor_type monitor_type =
+						THERMAL_TRIP_MONITOR_RISING;
+
+	/*
+	 * Return doing nothing if the trip point is monitored for
+	 * falling temperature
+	 */
+	if (tz->ops->get_trip_mon_type) {
+		tz->ops->get_trip_mon_type(tz, trip, &monitor_type);
+		if (monitor_type == THERMAL_TRIP_MONITOR_FALLING)
+			return 0;
+	}
 
 	thermal_zone_trip_update(tz, trip);
 
diff --git a/drivers/thermal/gov_fair_share.c b/drivers/thermal/gov_fair_share.c
index aaa07180ab48..064ad6ed67ad 100644
--- a/drivers/thermal/gov_fair_share.c
+++ b/drivers/thermal/gov_fair_share.c
@@ -81,6 +81,18 @@ static int fair_share_throttle(struct thermal_zone_device *tz, int trip)
 	int total_weight = 0;
 	int total_instance = 0;
 	int cur_trip_level = get_trip_level(tz);
+	enum thermal_trip_monitor_type monitor_type =
+						THERMAL_TRIP_MONITOR_RISING;
+
+	/*
+	 * Return doing nothing if the trip point is monitored for
+	 * falling temperature
+	 */
+	if (tz->ops->get_trip_mon_type) {
+		tz->ops->get_trip_mon_type(tz, trip, &monitor_type);
+		if (monitor_type == THERMAL_TRIP_MONITOR_FALLING)
+			return 0;
+	}
 
 	list_for_each_entry(instance, &tz->thermal_instances, tz_node) {
 		if (instance->trip != trip)
diff --git a/drivers/thermal/gov_power_allocator.c b/drivers/thermal/gov_power_allocator.c
index 5cb518d8f156..0f674cd1b9b8 100644
--- a/drivers/thermal/gov_power_allocator.c
+++ b/drivers/thermal/gov_power_allocator.c
@@ -606,6 +606,8 @@ static int power_allocator_throttle(struct thermal_zone_device *tz, int trip)
 {
 	int ret;
 	int switch_on_temp, control_temp;
+	enum thermal_trip_monitor_type monitor_type =
+						THERMAL_TRIP_MONITOR_RISING;
 	struct power_allocator_params *params = tz->governor_data;
 
 	/*
@@ -615,6 +617,16 @@ static int power_allocator_throttle(struct thermal_zone_device *tz, int trip)
 	if (trip != params->trip_max_desired_temperature)
 		return 0;
 
+	/*
+	 * Return doing nothing if the trip point is monitored for
+	 * falling temperature
+	 */
+	if (tz->ops->get_trip_mon_type) {
+		tz->ops->get_trip_mon_type(tz, trip, &monitor_type);
+		if (monitor_type == THERMAL_TRIP_MONITOR_FALLING)
+			return 0;
+	}
+
 	ret = tz->ops->get_trip_temp(tz, params->trip_switch_on,
 				     &switch_on_temp);
 	if (!ret && (tz->temperature < switch_on_temp)) {
-- 
2.25.1


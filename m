Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0EE5F2B010
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 10:23:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726598AbfE0IXM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 04:23:12 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:34812 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726579AbfE0IXL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 04:23:11 -0400
Received: by mail-wr1-f66.google.com with SMTP id f8so16005583wrt.1
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 01:23:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=1P0YZo/wN9Hi4i3wVVtvZOC+PYc4GxlayMQxrDs2oJw=;
        b=0r29VISI/sleJKF6HyZxAFrh2kh/YfBUsyXfqB+Uq7gencb0DLdj6ynAmT6lnnhfVI
         u6b7Hdtwm11DUvMNlrTyiwVtmth2RmBJFfPktxKMqE1Ya8OFbJhTxzCzwAePG714BE6G
         L8Er0ZafhWTDV+ungMYqXp40+4C7//Ipfn7Yorcz4A8bSwgJKW/u3yOPpvVsPD/05cyd
         PXn/nY7SdkDO6B75GJFJUXr5iGEfv5muqWOXlz8BiztUeqCTDZ1lMJyMsuBx71jDnpi4
         fRTAiFKEXtmJL267zY7ArQNWxUBTrqnjTgrmuHCeGY6x5SqsGsj9so5k7Roqwt8vfT6U
         vCMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=1P0YZo/wN9Hi4i3wVVtvZOC+PYc4GxlayMQxrDs2oJw=;
        b=skwezs9L31QOzI0vdN0hiQZIaP04rpFRw5K0A4Z4s7uywKF+OQIxs2Xojiab0QyjZ/
         oSrS0SbsCTekzV01H36wj+XWMu6c3kNCOLeLo7q8l3AmrsOlQIOEUm+9p6htR43oTwqV
         COz9VgdN/Sk3T3TnnrKUgOaCHF0PHFM8kW+USS1Zw/vk6NZyEIhgoLO8eZj4VbgLNfAY
         lUYs3AQqcomUumsgXKmG6eQYHx/29Ett8TkuL10uZRXrrvdpleH//geTMJ6zM7fmAhg7
         KqUu4B+33aC1Xnc0MRhpjC10UwrIPLQYmMmQHc/dAUynO0w5N+u+W8g++0e9ay45jXGN
         5uSQ==
X-Gm-Message-State: APjAAAVERyP9qj+MqmXcgAYPl7fNpz5a0SymA1ErJNGnkgHD8cHIP7aN
        zBqFLEIRwmOCIQxpVAyshlO/HA==
X-Google-Smtp-Source: APXvYqyNwI/ePsL+r12MfFxLaq+cmuaSjCI/uIy3GarP8rEJKG3oAJbqaBtNW6Dt2CCfrWekKVz07g==
X-Received: by 2002:adf:ea90:: with SMTP id s16mr7059760wrm.221.1558945389541;
        Mon, 27 May 2019 01:23:09 -0700 (PDT)
Received: from localhost.localdomain (amontpellier-652-1-281-69.w109-210.abo.wanadoo.fr. [109.210.96.69])
        by smtp.gmail.com with ESMTPSA id n5sm14482754wrj.27.2019.05.27.01.23.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 May 2019 01:23:09 -0700 (PDT)
From:   Bartosz Golaszewski <brgl@bgdev.pl>
To:     Sekhar Nori <nsekhar@ti.com>, Kevin Hilman <khilman@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        David Lechner <david@lechnology.com>,
        Adam Ford <aford173@gmail.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Subject: [RESEND PATCH v5 5/5] ARM: davinci_all_defconfig: Enable CPUFREQ_DT
Date:   Mon, 27 May 2019 10:22:59 +0200
Message-Id: <20190527082259.29237-6-brgl@bgdev.pl>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527082259.29237-1-brgl@bgdev.pl>
References: <20190527082259.29237-1-brgl@bgdev.pl>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: David Lechner <david@lechnology.com>

This sets CONFIG_CPUFREQ_DT=m in davinci_all_defconfig. This is used for
frequency scaling on device tree boards.

Signed-off-by: David Lechner <david@lechnology.com>
Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
---
 arch/arm/configs/davinci_all_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/davinci_all_defconfig b/arch/arm/configs/davinci_all_defconfig
index 4a8cad4d3707..9a32a8c0f873 100644
--- a/arch/arm/configs/davinci_all_defconfig
+++ b/arch/arm/configs/davinci_all_defconfig
@@ -45,6 +45,7 @@ CONFIG_CPU_FREQ_DEFAULT_GOV_USERSPACE=y
 CONFIG_CPU_FREQ_GOV_PERFORMANCE=m
 CONFIG_CPU_FREQ_GOV_POWERSAVE=m
 CONFIG_CPU_FREQ_GOV_ONDEMAND=m
+CONFIG_CPUFREQ_DT=m
 CONFIG_CPU_IDLE=y
 CONFIG_NET=y
 CONFIG_PACKET=y
-- 
2.21.0


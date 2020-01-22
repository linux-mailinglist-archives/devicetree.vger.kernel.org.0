Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C898E145C07
	for <lists+devicetree@lfdr.de>; Wed, 22 Jan 2020 19:57:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728901AbgAVS5h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Jan 2020 13:57:37 -0500
Received: from mail-wm1-f66.google.com ([209.85.128.66]:53557 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729100AbgAVS4Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Jan 2020 13:56:25 -0500
Received: by mail-wm1-f66.google.com with SMTP id m24so191633wmc.3
        for <devicetree@vger.kernel.org>; Wed, 22 Jan 2020 10:56:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=sJ/NH1WxmyLs0OgxjuKXd3vxc/cRe0agzDtoq0wTKtI=;
        b=WuuvYkZepoSj1DAbQe7m4TsyNlVsFr+bx+qJnWfKQkJF7XGpfoJroUNQfXcYq21Uxq
         A7lkDuQA/vGg9TcflM62Rt9CzCZNnSDQR6iPVcv6wsBv8dUDaBqfxzpU8ZTdYZjNyClx
         n5GUlRzbmlvLvy+iKLcvI4PaAy6O1kd9eolHgiO8pqf1lJW+DWol/PL7edH45O9/G8+O
         QGbJrBjOcRMhzvOcOyfNuvn91gwt789hfaQ0bRKCJm6XzuAaijFhV4RrHr5F5pEAomj3
         1sHTCqj+Ou7j0FpYjmflYh60kyLG9L5wruGqiVGSYmqz4ymdC8RIflxeMi+0JOlxSr/4
         UI/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=sJ/NH1WxmyLs0OgxjuKXd3vxc/cRe0agzDtoq0wTKtI=;
        b=dfF3GF45p+m760AQZDU9CcdPm6iJMW2Yejkpvh+ruIaCIT1wEOFFGQXViOHqPtWy8k
         GVPmXHbCZKwLwxJZCYrFvLuYJQCJxDUymOumvVHx39PIGUXANWF3O3WQYcrsPpdYmGmJ
         fnSmc8i3DeNivZutvA4nL+ZxihKrJJCWBUgAiOGWVJjnCoDwcakuQrzdtFx2rVB8Tpcr
         qxo1OwwlThrDaYMI1FSVU+UFcJ54PhZRzSswT15Ju/icL+XDlaL0GNP2WtIL+bNHr7Bk
         j8oRIfAQuJ98U16AbRoSDLk8lGlTF093RV513SUAUrD0B3YEYKk3NXnQMuihS8SKbEIZ
         u2mg==
X-Gm-Message-State: APjAAAXTGGgSi4AwjW+oHNJU0s2CCRbntYtQIwmkI5cgvxlBCiXNM+ER
        u0OQ9H0YZtdNyWeJxUzG/hOMRw==
X-Google-Smtp-Source: APXvYqyK0D6ouCyxn6AqKCSBlXuZdgOeWCsIwjG7XDEmnmPtjdig8rPedOjaG+TeQqut2aI0pA+R0w==
X-Received: by 2002:a7b:cc82:: with SMTP id p2mr4193744wma.159.1579719383226;
        Wed, 22 Jan 2020 10:56:23 -0800 (PST)
Received: from localhost.localdomain ([176.61.57.127])
        by smtp.gmail.com with ESMTPSA id q15sm58590390wrr.11.2020.01.22.10.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jan 2020 10:56:22 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        gregkh@linuxfoundation.org, jackp@codeaurora.org, balbi@kernel.org,
        bjorn.andersson@linaro.org
Cc:     linux-kernel@vger.kernel.org, John Stultz <john.stultz@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        ShuFan Lee <shufan_lee@richtek.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Yu Chen <chenyu56@huawei.com>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        devicetree@vger.kernel.org, Rob Herring <robh@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: [PATCH v3 08/19] dt-bindings: usb: generic: Add role-switch-default-mode binding
Date:   Wed, 22 Jan 2020 18:55:59 +0000
Message-Id: <20200122185610.131930-9-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
References: <20200122185610.131930-1-bryan.odonoghue@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: John Stultz <john.stultz@linaro.org>

Add binding to configure the default role the controller
assumes is host mode when the usb role is USB_ROLE_NONE.

Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
CC: ShuFan Lee <shufan_lee@richtek.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>
Cc: Chunfeng Yun <chunfeng.yun@mediatek.com>
Cc: Yu Chen <chenyu56@huawei.com>
Cc: Felipe Balbi <balbi@kernel.org>
Cc: Hans de Goede <hdegoede@redhat.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: Jun Li <lijun.kernel@gmail.com>
Cc: Valentin Schneider <valentin.schneider@arm.com>
Cc: Jack Pham <jackp@codeaurora.org>
Cc: linux-usb@vger.kernel.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/usb/generic.txt | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
index cf5a1ad456e6..dd733fa81fad 100644
--- a/Documentation/devicetree/bindings/usb/generic.txt
+++ b/Documentation/devicetree/bindings/usb/generic.txt
@@ -34,6 +34,12 @@ Optional properties:
 			the USB data role (USB host or USB device) for a given
 			USB connector, such as Type-C, Type-B(micro).
 			see connector/usb-connector.txt.
+ - role-switch-default-mode: indicating if usb-role-switch is enabled, the
+			device default operation mode of controller while usb
+			role is USB_ROLE_NONE. Valid arguments are "host" and
+			"peripheral". Defaults to "peripheral" if not
+			specified.
+
 
 This is an attribute to a USB controller such as:
 
-- 
2.25.0


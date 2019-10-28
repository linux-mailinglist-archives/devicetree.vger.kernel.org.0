Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4CA32E7C00
	for <lists+devicetree@lfdr.de>; Mon, 28 Oct 2019 23:00:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2390499AbfJ1V7l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Oct 2019 17:59:41 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:34481 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390420AbfJ1V7d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Oct 2019 17:59:33 -0400
Received: by mail-pg1-f196.google.com with SMTP id e4so3610056pgs.1
        for <devicetree@vger.kernel.org>; Mon, 28 Oct 2019 14:59:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=PwMMZk9WZCsU4Du96enXrC4F3u/XmD+gFRyu+Xx8uI0=;
        b=yK8XTi+yTqTvJtzBmsrxxZLC61ETTwPZxqGYnTbkgxYjA6GIs/gPQoC01K2sxBxzFl
         MMEwxtYn+EJXpjSvIP6eGGl7wmPAW+jGbqWOHspOj7EiQko05VJsEfSp1MN18G1jOUEU
         /5vTuSj/FWaKNs2T4pu58ii6asJl3R5vuhWgK6r81QFP2V0ka7iE7k4OCpik8Nm6QAy/
         60it1XUz8BIpKv+SwD5N6xFqcNCU49JuBRhvm4ufv4JLjR081Bk5Hwi2cJwsZDpPF1/P
         DuxqNluasrbfqixUPmc41KVHc9FIFjCHiqGdjiSmYwyl9wuBRQpRJs6hkDEtjHnf22EU
         /0MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=PwMMZk9WZCsU4Du96enXrC4F3u/XmD+gFRyu+Xx8uI0=;
        b=Ot/ePzzCDLGu08WF4B72VrQd43Xm61DnL1MRT7EArlvJro5Q5LbXObRq5a1+1pnuQX
         70MwKTwtxZI5eyfLSlc/Wo6UN+LbWVAoXu/Z9gXxoRAt76rmXVlgjq/1xy6Od6oqHrae
         nzrjosVLxLfMs6I+RiUvOEPPJVoDJMJ78I1cAeR+b+UXve7kjhZLAOPwcScw6jxezVOB
         3D6akv+0G4otjXrffgJ23cnJpfCqzyLfmijaLv5fxjQPRKYzr+4PmUWgFhNvT2KpQPMW
         hHMnwzN+vSLkojvCJbCAY0ITh92JzY8pX+tKystf/TYQ6Nh9G/nLjmWPu6hYyK3jDLsR
         2GPw==
X-Gm-Message-State: APjAAAXp4pgatSMYYLsiBjzaLP71dl+YPXnDASFZQxvR9qI2MEUYHQrv
        jgEoQvI2AQet5dKON4mNOSR39g==
X-Google-Smtp-Source: APXvYqw+lIWkxCOYZfgUieLhn03j3Firptukiq0WcBWbrHmeAQRBK9que/SoMHJEv+L5UyY/O19Z1Q==
X-Received: by 2002:a17:90a:a616:: with SMTP id c22mr1907346pjq.61.1572299972866;
        Mon, 28 Oct 2019 14:59:32 -0700 (PDT)
Received: from localhost.localdomain (c-67-170-172-113.hsd1.or.comcast.net. [67.170.172.113])
        by smtp.gmail.com with ESMTPSA id f12sm10880612pfn.152.2019.10.28.14.59.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Oct 2019 14:59:32 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     lkml <linux-kernel@vger.kernel.org>
Cc:     John Stultz <john.stultz@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        ShuFan Lee <shufan_lee@richtek.com>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Suzuki K Poulose <suzuki.poulose@arm.com>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>,
        Yu Chen <chenyu56@huawei.com>, Felipe Balbi <balbi@kernel.org>,
        Hans de Goede <hdegoede@redhat.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        Jun Li <lijun.kernel@gmail.com>,
        Valentin Schneider <valentin.schneider@arm.com>,
        Jack Pham <jackp@codeaurora.org>, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 8/9] dt-bindings: usb: generic: Add role-switch-default-host binding
Date:   Mon, 28 Oct 2019 21:59:18 +0000
Message-Id: <20191028215919.83697-9-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191028215919.83697-1-john.stultz@linaro.org>
References: <20191028215919.83697-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

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
---
 Documentation/devicetree/bindings/usb/generic.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/generic.txt b/Documentation/devicetree/bindings/usb/generic.txt
index cf5a1ad456e6..013782fde293 100644
--- a/Documentation/devicetree/bindings/usb/generic.txt
+++ b/Documentation/devicetree/bindings/usb/generic.txt
@@ -34,6 +34,11 @@ Optional properties:
 			the USB data role (USB host or USB device) for a given
 			USB connector, such as Type-C, Type-B(micro).
 			see connector/usb-connector.txt.
+ - role-switch-default-host: boolean, indicating if usb-role-switch is enabled
+			the device default operation mode of controller while
+			usb role is USB_ROLE_NONE is host mode. If this is not
+			set or false, it will be assumed the default is device
+			mode.
 
 This is an attribute to a USB controller such as:
 
-- 
2.17.1


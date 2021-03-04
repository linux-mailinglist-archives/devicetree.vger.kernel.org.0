Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E9EAF32D27D
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 13:09:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239939AbhCDMHS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 07:07:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240027AbhCDMGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 07:06:51 -0500
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 514F4C0613B8
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 04:06:03 -0800 (PST)
Received: by mail-ej1-x62d.google.com with SMTP id p8so22566645ejb.10
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 04:06:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=apK0Xqu9SyxgA8SLHWaJUoaQIdInokTf4zpkT7+800M=;
        b=KbbaeMzRJTd2uHHgBtwfePVPafBSJddg4SR/KVo2rfsLsOOxwFBudMEk22RkmGduYu
         tE8ujNTfOgzBW9Dlzacv4hNI7u8xFaz/MKwkK99RsW0B6ACtzjG9BCCXpX4+7pmZV0Bq
         s8bD9Y6vwDoEoJQAK2g3YWjWkbT05FRL12BYlntcZXM+IbBK5PiY8sRl44dMjJFUlbtM
         R7oUpQKfhKVYFlMI4hJ0il/OSmNTkA9CoHWun65AaWBL/3h/kF3EzDqeLAZ+lko/GcXq
         5THrmxh5r/0QQwqKL/qKaunffuYgd/Gnp3IF+/4b9DZ3X9cUwC6SdlT5SSxrp+uBl+yM
         fA6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=apK0Xqu9SyxgA8SLHWaJUoaQIdInokTf4zpkT7+800M=;
        b=tTHNMHOKfJLQJsJMy5FswYmaaAH8I78sho+lGVZNmMPUu3AZN5RIdUqR70CDtou4GP
         GPFmP0cOODbCOo/9lkDowGZwPTYw+CoHJtD0A7U5esBz7kKLf1ekQXXGiZRrXif5hQfA
         cREm6ysRnRYZ0NL9xU0PNptAlr8okQ0Y8yBSzZKDQ2WwX68v5sQklmOK6wiNboX/QAvO
         WRYMyObuDLJB41BgBVKUSh90i7iXTwGhCZRso5QHdNN2zME+FXqWavbx5XJMn10q6VrW
         Fx77WExqUEMaBYJ30O0DT96DyCFR1TiZAiBCX5NotglPLBQVzIvwfqbmJqee0tnU3DLV
         ASYg==
X-Gm-Message-State: AOAM533DOVGgZaAnxfZ3/GBzVoK3GkXX31i30bS2Sg8v30TzctfkJXRF
        msgo9LudnyJaDqBkdu2W3qwVIQ==
X-Google-Smtp-Source: ABdhPJxmCiLx69PuQnXCH9glB5+ccUpjGiQbN/U0G9fcRn3Jkc+VwTtR9UOHQs72z/uKVW38HZPR9A==
X-Received: by 2002:a17:906:4410:: with SMTP id x16mr3866615ejo.446.1614859562000;
        Thu, 04 Mar 2021 04:06:02 -0800 (PST)
Received: from localhost.localdomain ([2a02:2450:102f:d6a:470a:340b:1b:29dd])
        by smtp.gmail.com with ESMTPSA id cf6sm20464447edb.92.2021.03.04.04.06.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 04 Mar 2021 04:06:01 -0800 (PST)
From:   Robert Foss <robert.foss@linaro.org>
To:     agross@kernel.org, bjorn.andersson@linaro.org,
        robert.foss@linaro.org, todor.too@gmail.com, mchehab@kernel.org,
        robh+dt@kernel.org, angelogioacchino.delregno@somainline.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Sakari Ailus <sakari.ailus@iki.fi>,
        Andrey Konovalov <andrey.konovalov@linaro.org>
Cc:     Rob Herring <robh@kernel.org>, Tomasz Figa <tfiga@chromium.org>,
        Azam Sadiq Pasha Kapatrala Syed <akapatra@quicinc.com>,
        Sarvesh Sridutt <Sarvesh.Sridutt@smartwirelesscompute.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Jonathan Marek <jonathan@marek.ca>
Subject: [PATCH v6 18/22] MAINTAINERS: Change CAMSS documentation to use dtschema bindings
Date:   Thu,  4 Mar 2021 13:03:24 +0100
Message-Id: <20210304120326.153966-19-robert.foss@linaro.org>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210304120326.153966-1-robert.foss@linaro.org>
References: <20210304120326.153966-1-robert.foss@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Due to the complexity of describing multiple hardware generations
in one document, switch to using separate dt-bindings.

Signed-off-by: Robert Foss <robert.foss@linaro.org>
Reviewed-by: Rob Herring <robh@kernel.org>
---

Changes since v4
 - Rob: Added r-b


 MAINTAINERS | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/MAINTAINERS b/MAINTAINERS
index 0da3255abb91..ed3894b653f4 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -14687,7 +14687,7 @@ M:	Todor Tomov <todor.too@gmail.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
 F:	Documentation/admin-guide/media/qcom_camss.rst
-F:	Documentation/devicetree/bindings/media/qcom,camss.txt
+F:	Documentation/devicetree/bindings/media/*camss*
 F:	drivers/media/platform/qcom/camss/
 
 QUALCOMM CORE POWER REDUCTION (CPR) AVS DRIVER
-- 
2.27.0


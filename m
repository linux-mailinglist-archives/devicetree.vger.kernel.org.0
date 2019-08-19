Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 69528951E0
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 01:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728764AbfHSXsv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 19:48:51 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:36547 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728351AbfHSXsu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 19:48:50 -0400
Received: by mail-pg1-f196.google.com with SMTP id l21so2095675pgm.3
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 16:48:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lQDNdRIDsrfByKdWclsgiLu5o6EPo6fOoPt7hg1xhn8=;
        b=j+8970ObdyCKHy/+UoDrc+05m+hWvJNJG2qzOu88xTMa17yHAD64/pAdmkJoG3rUlq
         lh/kv8j6ql1G22DuIZWnIM2eEWBn9VNfepRJOjanpvwSXTEOCn68OaF/2zRyN+vXR/9i
         HHCy05NmdvzHJGDjT8nincGyBmkNrLgCWhAd4Jmf9Erzong/0UMNYo6utGEeFpk8cYJq
         uNIoijtzeu9wivPWDLWS86e0eYb64Af+T7A4ri/rxlXge0LO+FMZ5NmppKrv//vGeyeX
         J5Yn2OQdoscv+nvZX7oi7zZ1/VQVX9QC/Eh0qSY3nx7vbYritd+hiTXsqqktqOD8TtCH
         sMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lQDNdRIDsrfByKdWclsgiLu5o6EPo6fOoPt7hg1xhn8=;
        b=uLVq4ZwztaifULIE9TfPyZjR7Ee4qI56HZfDdyHkx2k639SibCWD7pL/1XLaWHZgsh
         +SsZ4nZxgHk6GQ2Vn2L6qqJvS1UPim84guRmn5NecAqv9hXwI8tL+GyEUF+9Z/bwTMi5
         Fvpls3J8Whfd8Rw0iSdruIS3KJUZkGUz6uJjooNk0jKsj3g36rIgO02FLdoMjsoOqp8C
         FKKEAgNDexcwLY11hpRO31ZvWAPwg4irxwCbuBaarD19NwHVG2u8i94olxpsde+rvQ0A
         NDWpbHivA4X6iODxoRwyDgpFfm52tm3F8lgflzJZNjCdO5ZNWa7jcw6PTSO7x3uK/23j
         YQfA==
X-Gm-Message-State: APjAAAVXuRjWdtVx75UQfPfdEaGrAC11bKRUsywGrHfbsIRQzGmJbjBB
        3Ah2OQQnrbtjccdTKns1o7Xs2w==
X-Google-Smtp-Source: APXvYqyG2bGpvXD+cv5Riz6fGjbJ4+cU+bFTeZSKQxqoj5uquFux67PipWDb9QA2yJsp6eP5B6hVMg==
X-Received: by 2002:a63:f907:: with SMTP id h7mr16006795pgi.418.1566258529203;
        Mon, 19 Aug 2019 16:48:49 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id 185sm18769681pfa.170.2019.08.19.16.48.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 16:48:48 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     Peter Griffin <peter.griffin@linaro.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>
Subject: [PATCH 2/3] dt-bindings: reset: hisilicon: Update compatible documentation
Date:   Mon, 19 Aug 2019 23:48:39 +0000
Message-Id: <20190819234840.37786-3-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819234840.37786-1-john.stultz@linaro.org>
References: <20190819234840.37786-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Peter Griffin <peter.griffin@linaro.org>

The reset driver now supports the ao reset controller, so update the
documentation to match.

Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 .../devicetree/bindings/reset/hisilicon,hi6220-reset.txt         | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/reset/hisilicon,hi6220-reset.txt b/Documentation/devicetree/bindings/reset/hisilicon,hi6220-reset.txt
index c25da39df707..ea0a6a9734c1 100644
--- a/Documentation/devicetree/bindings/reset/hisilicon,hi6220-reset.txt
+++ b/Documentation/devicetree/bindings/reset/hisilicon,hi6220-reset.txt
@@ -11,6 +11,7 @@ Required properties:
 - compatible: should be one of the following:
   - "hisilicon,hi6220-sysctrl", "syscon" : For peripheral reset controller.
   - "hisilicon,hi6220-mediactrl", "syscon" : For media reset controller.
+  - "hisilicon,hi6220-aoctrl", "syscon" : For ao reset controller.
 - reg: should be register base and length as documented in the
   datasheet
 - #reset-cells: 1, see below
-- 
2.17.1


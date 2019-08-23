Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6A0F59A813
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405062AbfHWHDG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:06 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:54743 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405032AbfHWHDG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:06 -0400
Received: by mail-wm1-f67.google.com with SMTP id p74so7864358wme.4
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=BYS/jLJ5SnTBfvUO73YfQ/qZMgKSxQ0+sfqUXBWxFgE=;
        b=VwfExEy20yJXYNxH8LKSGd6Mc3F55oX0J7Yva343vW5KwrjHbcdmyjuoNkCU/Zm7P9
         jzK7TUODE2Onk7XXbzt2FkZE06iQnI0ME3K7CPJh8ywR2ZKnubK+Xg/6kZOEe8q4Zmt2
         F0JyeHph/zSHkuFZfaDQippYQWw9HRrWgM+NEneHXMwN0p7mih38B/WvFxlgnLb/WBVy
         mLyK8tgI2Vu5NL+T4jFyOofLadOGW92CHCx0dI7qnga28Hij/IVDL55UraU7h8sgtNpa
         HzcHRqGlHigHegh5c5QFXnkrctrRhqqrm/xm//OhwuVxQ0fDj9hUV9yd+DrNLOJJT4jN
         8X+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=BYS/jLJ5SnTBfvUO73YfQ/qZMgKSxQ0+sfqUXBWxFgE=;
        b=AUUJJ3PBITP0klCC9zAL6Sl/GF4n+UM9LHzkpO+U7I9eieqapFjwCSq/mIGCQXJbpS
         3unK3krzKhCppYal+GHexzJkNLMHed29ratMEOleGDDjERBXBD0YPaQw+3WY3OZkCtRp
         Z//sclEKb8am4P7STSxPW3bkQwLw3WihyBtH4nxq+SVY+12kCdazFtQ8mQVH7FxJlBkp
         hog6mQ2H5Jo7pO03g/JrnOllOLv9td1q1fWZ3vjzXseicw39uLN6jOaSSn98ALIaVYIH
         Py92P7T94CgNZwoCxCOkqxn6I+YKBzFHJ32HBeBKglFQfZke78SI9bWnWoa24188eD1B
         MmIg==
X-Gm-Message-State: APjAAAW+lhEQiP2WMBQG5DTOgrve9wPhGnLcnI5k15ceci8LhIaVjCs/
        wSGiUam0Bnm0w1TTzievvtn3CQ==
X-Google-Smtp-Source: APXvYqxDBCBALfUY1roCUtb5nFCGs8ULUeZhn4O/3BvnRzigx377XPNv7t8/+DlNYXkU7+9hRiHjCQ==
X-Received: by 2002:a1c:d185:: with SMTP id i127mr3334208wmg.63.1566543783727;
        Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 10/14] arm64: dts: meson-g12a: fix reset controller compatible
Date:   Fri, 23 Aug 2019 09:02:44 +0200
Message-Id: <20190823070248.25832-11-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-g12a-u200.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']
meson-g12a-sei510.dt.yaml: reset-controller@1004: compatible:0: 'amlogic,meson-g12a-reset' is not one of ['amlogic,meson8b-reset', 'amlogic,meson-gxbb-reset', 'amlogic,meson-axg-reset']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 1a5efa2e16c5..d09c7a5cccb4 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2187,8 +2187,7 @@
 			ranges = <0x0 0x0 0x0 0xffd00000 0x0 0x100000>;
 
 			reset: reset-controller@1004 {
-				compatible = "amlogic,meson-g12a-reset",
-					     "amlogic,meson-axg-reset";
+				compatible = "amlogic,meson-axg-reset";
 				reg = <0x0 0x1004 0x0 0x9c>;
 				#reset-cells = <1>;
 			};
-- 
2.22.0


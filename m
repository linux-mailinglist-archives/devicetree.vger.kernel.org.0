Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 92DB6150F67
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2020 19:32:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729812AbgBCScP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Feb 2020 13:32:15 -0500
Received: from mail-pf1-f195.google.com ([209.85.210.195]:42983 "EHLO
        mail-pf1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729800AbgBCScP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Feb 2020 13:32:15 -0500
Received: by mail-pf1-f195.google.com with SMTP id 4so8001800pfz.9
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2020 10:32:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VgteBj9kECksIDTJrgniP2446O1fnhyCOGN0Ivx+enM=;
        b=Wasqs3eQqUzCosW2InB859U3pOvbe38Hb1XgxdLpg6eoIZdzcG1bmQE2AkHc/hD56S
         skYrU9/Iz0iHIwxBM896C1cPiba1pe/l33EBfXbzaovXELHSeSoE0WG1x5UfI+GdVv6r
         qBlhIePFzl/Daj1DGeuKd6ey0dTb9aO3yY33I=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VgteBj9kECksIDTJrgniP2446O1fnhyCOGN0Ivx+enM=;
        b=fUFkn1NfYJzMMAhlZ+4kJZ5zEdBmXNVx2Am8Kvj6GLvZtbHGIJovrQ811bD6oqdve2
         XCQj5d/+YDRMZMJItVYd22tyelgbc1B8QSaSAZJj/o50zAjU3Joemvt/vRe7t2nDG/7E
         f0IIzWHqyTlMrp0s5W8kz6eMHhoB5GnIhGb68IEK5i3gzss4xJ498OElUlZR9JdCvVWA
         /hFeb5u5igu3AN4O49UgO90mFLZqbWUTPvzyzFcF+gGfXZ6D+/1jMkHh+9kXBcAahZAR
         Yu7VJW5Ylaiq8D9b/LAo+H6HNb05nuO8yCMC7iv1ekkKcZY+JsMIfC5uOs1rjwuSql+k
         h+iA==
X-Gm-Message-State: APjAAAUdR9lWOeJbsqyuAJa7BRL2phDiFlEkhDbYeDlQ0t28M6z+oCGJ
        uaGEV6qKYZKuSRfYEx6ddXWDxw==
X-Google-Smtp-Source: APXvYqzvauFbriTETiUnafbrlgvwI/wPoIrVw6ombXysZj6zY/10IZRZSdiVV5V0bmXbBDeIPjRjjw==
X-Received: by 2002:a63:511:: with SMTP id 17mr4524461pgf.221.1580754734404;
        Mon, 03 Feb 2020 10:32:14 -0800 (PST)
Received: from tictac2.mtv.corp.google.com ([2620:15c:202:1:24fa:e766:52c9:e3b2])
        by smtp.gmail.com with ESMTPSA id f9sm21009137pfd.141.2020.02.03.10.32.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2020 10:32:13 -0800 (PST)
From:   Douglas Anderson <dianders@chromium.org>
To:     Rob Herring <robh@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>
Cc:     Jeffrey Hugo <jhugo@codeaurora.org>,
        Taniya Das <tdas@codeaurora.org>, jeffrey.l.hugo@gmail.com,
        linux-arm-msm@vger.kernel.org, harigovi@codeaurora.org,
        devicetree@vger.kernel.org, mka@chromium.org,
        kalyan_t@codeaurora.org, Mark Rutland <mark.rutland@arm.com>,
        linux-clk@vger.kernel.org, hoegsberg@chromium.org,
        Douglas Anderson <dianders@chromium.org>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-kernel@vger.kernel.org
Subject: [PATCH v4 01/15] clk: qcom: rcg2: Don't crash if our parent can't be found; return an error
Date:   Mon,  3 Feb 2020 10:31:34 -0800
Message-Id: <20200203103049.v4.1.I7487325fe8e701a68a07d3be8a6a4b571eca9cfa@changeid>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
In-Reply-To: <20200203183149.73842-1-dianders@chromium.org>
References: <20200203183149.73842-1-dianders@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When I got my clock parenting slightly wrong I ended up with a crash
that looked like this:

  Unable to handle kernel NULL pointer dereference at virtual
  address 0000000000000000
  ...
  pc : clk_hw_get_rate+0x14/0x44
  ...
  Call trace:
   clk_hw_get_rate+0x14/0x44
   _freq_tbl_determine_rate+0x94/0xfc
   clk_rcg2_determine_rate+0x2c/0x38
   clk_core_determine_round_nolock+0x4c/0x88
   clk_core_round_rate_nolock+0x6c/0xa8
   clk_core_round_rate_nolock+0x9c/0xa8
   clk_core_set_rate_nolock+0x70/0x180
   clk_set_rate+0x3c/0x6c
   of_clk_set_defaults+0x254/0x360
   platform_drv_probe+0x28/0xb0
   really_probe+0x120/0x2dc
   driver_probe_device+0x64/0xfc
   device_driver_attach+0x4c/0x6c
   __driver_attach+0xac/0xc0
   bus_for_each_dev+0x84/0xcc
   driver_attach+0x2c/0x38
   bus_add_driver+0xfc/0x1d0
   driver_register+0x64/0xf8
   __platform_driver_register+0x4c/0x58
   msm_drm_register+0x5c/0x60
   ...

It turned out that clk_hw_get_parent_by_index() was returning NULL and
we weren't checking.  Let's check it so that we don't crash.

Fixes: ac269395cdd8 ("clk: qcom: Convert to clk_hw based provider APIs")
Signed-off-by: Douglas Anderson <dianders@chromium.org>
Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
---
I haven't gone back and tried to reproduce this same crash on older
kernels, but I'll put the blame on commit ac269395cdd8 ("clk: qcom:
Convert to clk_hw based provider APIs").  Before that if we got a NULL
parent back it was fine and dandy since a NULL "struct clk" is valid
to use but a NULL "struct clk_hw" is not.

Changes in v4: None
Changes in v3:
- Add Matthias tag.

Changes in v2:
- Patch ("clk: qcom: rcg2: Don't crash...") new for v2.

 drivers/clk/qcom/clk-rcg2.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/qcom/clk-rcg2.c b/drivers/clk/qcom/clk-rcg2.c
index da045b200def..9098001ac805 100644
--- a/drivers/clk/qcom/clk-rcg2.c
+++ b/drivers/clk/qcom/clk-rcg2.c
@@ -218,6 +218,9 @@ static int _freq_tbl_determine_rate(struct clk_hw *hw, const struct freq_tbl *f,
 
 	clk_flags = clk_hw_get_flags(hw);
 	p = clk_hw_get_parent_by_index(hw, index);
+	if (!p)
+		return -EINVAL;
+
 	if (clk_flags & CLK_SET_RATE_PARENT) {
 		rate = f->freq;
 		if (f->pre_div) {
-- 
2.25.0.341.g760bfbb309-goog


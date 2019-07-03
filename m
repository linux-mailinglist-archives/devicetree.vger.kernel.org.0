Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 83BE95DA75
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2019 03:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727192AbfGCBK4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Jul 2019 21:10:56 -0400
Received: from mail-pg1-f202.google.com ([209.85.215.202]:56457 "EHLO
        mail-pg1-f202.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726329AbfGCBKZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Jul 2019 21:10:25 -0400
Received: by mail-pg1-f202.google.com with SMTP id x13so482818pgk.23
        for <devicetree@vger.kernel.org>; Tue, 02 Jul 2019 18:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc;
        bh=+/NgGwFACy34LZMNgdF6kK1NINvGCtP2Z/MvjjI7Ew8=;
        b=gD1H9ujuBDHYxyQRM/QxbAM3l52LJlazN/k0bex99R3tQl+EKLtZtPVAAE3Y7PRS83
         so+dRF8C5h0z3U2iTRMh+m0UC9PJQGeEpO4BN2p1AG2qg08y9u8qsKrA3a473FdvYzDQ
         9o+1ImEqm49Ba4/rIxrNfFQ5a6gQtJ+MHqIL+IhQBci2U/KwaQwea/xCfZC4wGCQLv/A
         sJtLlgV5jRHx+WJoNEd5sJJvcr1P38owycNXEwhnHsiAUfil7US4V3sb0+0GfyeU08PO
         rlOg/95z7CY5CPeeNzBD6+wNSiJc9qFlzW/OXrkzUe8es9PaWmzgRcmL1CeX1BeGeC4Z
         mCug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
        bh=+/NgGwFACy34LZMNgdF6kK1NINvGCtP2Z/MvjjI7Ew8=;
        b=t/fHSnz7YKzXrhumCgHUnxJSTylGRpZ/a1ngu4w0acND3xR3+/gqI5OdAqFB4/dd4B
         V0CjReQMNxK94Tu/qqoeqv56ionSNmy9rx9CadYCUngto7YhgMgWarvml3vVv24ZfU97
         YYM1RuI1IOu2ZApYALOmVKECUr4HWfmAqn+DAWOQEf4jsra5VMb13AP5y2UPhjKLoexB
         +khfLT563xXRX3AMVD+4p1OYDPZNRzszVL5ZT2tyQSMv9YnwyKy46qD3AtXIaqznCKtY
         QkB9gf5Y9+c1yZ3rT9nynNXywh5iFLLLqhchl0IfHtFDEJI8tX3PK3haWNH6SkYj4JsD
         SLqA==
X-Gm-Message-State: APjAAAXh0UIje72V7T2i44r0+DnK+ItKa5GnXEXQRfuJj2swn3QkOidX
        +4pFX/qOefsrx1L1FfDv6NQh8hBeKYSyg8o=
X-Google-Smtp-Source: APXvYqxjLAm5FeB4krGVnJ8xrlNX//iGRKhBSPNoeTp221sbsHnxh0Xh8hiTM1YF3feQVjQjV1Qr19ueNgCNDpo=
X-Received: by 2002:a63:7c0e:: with SMTP id x14mr33166685pgc.65.1562116224469;
 Tue, 02 Jul 2019 18:10:24 -0700 (PDT)
Date:   Tue,  2 Jul 2019 18:10:14 -0700
Message-Id: <20190703011020.151615-1-saravanak@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
Subject: [PATCH v3 0/6] Introduce Bandwidth OPPs for interconnect paths
From:   Saravana Kannan <saravanak@google.com>
To:     Georgi Djakov <georgi.djakov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>
Cc:     Saravana Kannan <saravanak@google.com>, vincent.guittot@linaro.org,
        seansw@qti.qualcomm.com, daidavid1@codeaurora.org,
        Rajendra Nayak <rnayak@codeaurora.org>, sibis@codeaurora.org,
        bjorn.andersson@linaro.org, evgreen@chromium.org,
        kernel-team@android.com, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Interconnects and interconnect paths quantify their performance levels in
terms of bandwidth and not in terms of frequency. So similar to how we have
frequency based OPP tables in DT and in the OPP framework, we need
bandwidth OPP table support in the OPP framework and in DT. Since there can
be more than one interconnect path used by a device, we also need a way to
assign a bandwidth OPP table to an interconnect path.

This patch series:
- Adds opp-peak-KBps and opp-avg-KBps properties to OPP DT bindings
- Adds interconnect-opp-table property to interconnect DT bindings
- Adds OPP helper functions for bandwidth OPP tables
- Adds icc_get_opp_table() to get the OPP table for an interconnect path

So with the DT bindings added in this patch series, the DT for a GPU
that does bandwidth voting from GPU to Cache and GPU to DDR would look
something like this:

gpu_cache_opp_table: gpu_cache_opp_table {
	compatible = "operating-points-v2";

	gpu_cache_3000: opp-3000 {
		opp-peak-KBps = <3000>;
		opp-avg-KBps = <1000>;
	};
	gpu_cache_6000: opp-6000 {
		opp-peak-KBps = <6000>;
		opp-avg-KBps = <2000>;
	};
	gpu_cache_9000: opp-9000 {
		opp-peak-KBps = <9000>;
		opp-avg-KBps = <9000>;
	};
};

gpu_ddr_opp_table: gpu_ddr_opp_table {
	compatible = "operating-points-v2";

	gpu_ddr_1525: opp-1525 {
		opp-peak-KBps = <1525>;
		opp-avg-KBps = <452>;
	};
	gpu_ddr_3051: opp-3051 {
		opp-peak-KBps = <3051>;
		opp-avg-KBps = <915>;
	};
	gpu_ddr_7500: opp-7500 {
		opp-peak-KBps = <7500>;
		opp-avg-KBps = <3000>;
	};
};

gpu_opp_table: gpu_opp_table {
	compatible = "operating-points-v2";
	opp-shared;

	opp-200000000 {
		opp-hz = /bits/ 64 <200000000>;
	};
	opp-400000000 {
		opp-hz = /bits/ 64 <400000000>;
	};
};

gpu@7864000 {
	...
	operating-points-v2 = <&gpu_opp_table>, <&gpu_cache_opp_table>, <&gpu_ddr_opp_table>;
	interconnects = <&mmnoc MASTER_GPU_1 &bimc SLAVE_SYSTEM_CACHE>,
			<&mmnoc MASTER_GPU_1 &bimc SLAVE_DDR>;
	interconnect-names = "gpu-cache", "gpu-mem";
	interconnect-opp-table = <&gpu_cache_opp_table>, <&gpu_ddr_opp_table>
};

Cheers,
Saravana

Saravana Kannan (6):
  dt-bindings: opp: Introduce opp-peak-KBps and opp-avg-KBps bindings
  OPP: Add support for bandwidth OPP tables
  OPP: Add helper function for bandwidth OPP tables
  OPP: Add API to find an OPP table from its DT node
  dt-bindings: interconnect: Add interconnect-opp-table property
  interconnect: Add OPP table support for interconnects

 .../bindings/interconnect/interconnect.txt    |  8 ++
 Documentation/devicetree/bindings/opp/opp.txt | 15 +++-
 drivers/interconnect/core.c                   | 27 ++++++-
 drivers/opp/core.c                            | 51 +++++++++++++
 drivers/opp/of.c                              | 76 ++++++++++++++++---
 drivers/opp/opp.h                             |  4 +-
 include/linux/interconnect.h                  |  7 ++
 include/linux/pm_opp.h                        | 26 +++++++
 8 files changed, 199 insertions(+), 15 deletions(-)

-- 
2.22.0.410.gd8fdbe21b5-goog


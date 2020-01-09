Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1C699135BD0
	for <lists+devicetree@lfdr.de>; Thu,  9 Jan 2020 15:54:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731808AbgAIOyI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jan 2020 09:54:08 -0500
Received: from mx07-00178001.pphosted.com ([62.209.51.94]:43175 "EHLO
        mx07-00178001.pphosted.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1731813AbgAIOyI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jan 2020 09:54:08 -0500
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
        by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 009ErjOJ030398;
        Thu, 9 Jan 2020 15:53:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com; h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=Vma0FoXKhWdu98Z5moyIXlRymnoKl2wYw6wrKgMOTkc=;
 b=y51l/cNEUrwxmezhr9XKY0zhgOB2qV4ihNmz2u0K9G0fNPI52jfNlyIpDAqCbw/V91Xk
 CUnimfDVcf7KJMKlC69IqeF25QzDDuxngkzoy5Hcib0KrIT+fipJ6rp/9hSYF3f+xWOg
 6GhU5XCs1rvuhHOdpurYh61mYc1TZq0bgfH3OvRoAq87p8TgFx+/eOMFzwvYZywN88L1
 D4k/RTxRvZ5oGdMHtO0nbu8IvVaURCxUDutrcztaAJ380kzVIvNTa87miFWeulBLpUJo
 hFaASPPxQxjeHXW0mHDlmfGgfO19Zyw8t93i6ROyITOBBp3jfDHKngLsw8ib17AK9WMp iQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
        by mx07-00178001.pphosted.com with ESMTP id 2xakur2966-1
        (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
        Thu, 09 Jan 2020 15:53:45 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
        by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 194F0100034;
        Thu,  9 Jan 2020 15:53:39 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
        by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 00B7A2BD410;
        Thu,  9 Jan 2020 15:53:38 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 9 Jan 2020 15:53:38
 +0100
From:   Benjamin Gaignard <benjamin.gaignard@st.com>
To:     <daniel.lezcano@linaro.org>, <tglx@linutronix.de>,
        <robh+dt@kernel.org>, <mark.rutland@arm.com>,
        <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
        <linux@armlinux.org.uk>, <p.paillet@st.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-stm32@st-md-mailman.stormreply.com>,
        <linux-arm-kernel@lists.infradead.org>,
        Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: [PATCH 0/3] clockevent: add low power STM32 timer
Date:   Thu, 9 Jan 2020 15:53:30 +0100
Message-ID: <20200109145333.12260-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138,18.0.572
 definitions=2020-01-09_02:2020-01-09,2020-01-09 signatures=0
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series add low power timer as boadcast clockevent device.
Low power timer could runs even when CPUs are in idle mode and 
could wakeup them.

Benjamin Gaignard (3):
  dt-bindings: timer: Add STM32 Low Power Timer bindings
  clocksource: Add Low Power STM32 timers driver
  ARM: stm32: select STM32 low power timer clock event driver

 .../bindings/timer/st,stm32-lp-timer.yaml          |  44 +++++
 arch/arm/mach-stm32/Kconfig                        |   1 +
 drivers/clocksource/Kconfig                        |   5 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/timer-stm32-lp.c               | 186 +++++++++++++++++++++
 5 files changed, 237 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/st,stm32-lp-timer.yaml
 create mode 100644 drivers/clocksource/timer-stm32-lp.c

-- 
2.15.0


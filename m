Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F6182D5A1F
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 13:15:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2387580AbgLJMN5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 07:13:57 -0500
Received: from esa.microchip.iphmx.com ([68.232.154.123]:57596 "EHLO
        esa.microchip.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727921AbgLJMNz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 07:13:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1607602434; x=1639138434;
  h=from:to:cc:subject:date:message-id:mime-version;
  bh=qcs0vP++s9/jWYyApeBlg2MnU6kdvbG2oa1qH8lIUMI=;
  b=duBv80bxPCs3iOknqOEheGhLFzd/tPJ0FgIjw6+M7qQSxHs/Jx8oOEXo
   XNqxGcyXkj+ZIPDb1CplS72pjZsGXdt6+wndVhvAM9fhExE0G0zU7a9yB
   ydu1gXNwKSrS8eiQZU1b+WgDH487EqYSPNEf+njSyADHENmf2QydwCDKx
   anfwk0y3q+5fnW+X36UKlVGy112M0bTUKu/LzJx4nhtsxTIjZt+/aobri
   ydP4/1F8sMGjA4vFHxFt/aCMdPk+3uz98sDVhgvtjVtLQv4YdJkXPA3o6
   0e5qK9ME7l8sWLK7nQOHhTlvnIr44omshdhDexAt6mais0MTuVTGpBz8d
   g==;
IronPort-SDR: 7qCZ2cM49s5EvOmoQeygAFw8aQOQpBDRmbjeS6CDnn/vL4xiKJLIG1PPJa8/ipk1Rd7VRvv4+w
 W7+hSU+3al69LKzoIfd9NWsbQkcMOdENhTmwYIyl0Ot2CGEQc6/SiWrb1pI7mIXtmOOcWdPnD+
 9NSdFz6TgMkfKczIXSWfRuUcoweWHe4q6CxIyH6p4eLVlKWrYAkzvWX/EQZKdk9kZ5KY6yIN/u
 F4rTQYfdtLaR3P+SAwpAC25J3iVP++e1ILtB3TF98IDhHfMvOXHvPDlTdxIFNgDd1cBzChSkvA
 xVc=
X-IronPort-AV: E=Sophos;i="5.78,408,1599548400"; 
   d="scan'208";a="99350785"
Received: from smtpout.microchip.com (HELO email.microchip.com) ([198.175.253.82])
  by esa2.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256; 10 Dec 2020 05:12:38 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1979.3; Thu, 10 Dec 2020 05:12:38 -0700
Received: from soft-dev10.microchip.com (10.10.115.15) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1979.3
 via Frontend Transport; Thu, 10 Dec 2020 05:12:37 -0700
User-agent: mu4e 1.2.0; emacs 26.3
From:   Lars Povlsen <lars.povlsen@microchip.com>
To:     Arnd Bergmann <arnd@arndb.de>
CC:     SoC Team <soc@kernel.org>,
        LAK <linux-arm-kernel@lists.infradead.org>,
        Microchip UNG Driver List <UNGLinuxDriver@microchip.com>,
        <devicetree@vger.kernel.org>
Subject: [GIT PULL] Devicetree patches for Sparx5 v5.11
Date:   Thu, 10 Dec 2020 13:12:31 +0100
Message-ID: <87ft4dq2q8.fsf@microchip.com>
MIME-Version: 1.0
Content-Type: text/plain
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


Hi Arnd!

Alex made me aware we're late with DT updates for 5.11, I hope you can
fit these 2 patches in. Sorry!

---Lars

The following changes since commit 3650b228f83adda7e5ee532e2b90429c03f7b9ec:

  Linux 5.10-rc1 (2020-10-25 15:14:11 -0700)

are available in the Git repository at:

  https://github.com/microchip-ung/linux-upstream.git sparx5-next

for you to fetch changes up to 7e1f91cbfa0d330fad61c621389373cff81898fd:

  arm64: dts: sparx5: Add SGPIO devices (2020-12-10 11:55:31 +0100)

----------------------------------------------------------------
Lars Povlsen (2):
      arm64: dts: sparx5: Add reset support
      arm64: dts: sparx5: Add SGPIO devices

 arch/arm64/boot/dts/microchip/sparx5.dtsi          |  96 ++++++++
 arch/arm64/boot/dts/microchip/sparx5_pcb125.dts    |   5 +
 .../boot/dts/microchip/sparx5_pcb134_board.dtsi    | 258 +++++++++++++++++++++
 .../boot/dts/microchip/sparx5_pcb135_board.dtsi    |  55 +++++
 4 files changed, 414 insertions(+)

--
Lars Povlsen,
Microchip

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 95C59273E7B
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 11:24:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726565AbgIVJYW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 05:24:22 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:46222 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726461AbgIVJYW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 05:24:22 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1600766660; x=1603358660;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=8eyabsoA5jbWCxpDg5VUqeLw3S/6FPT1hhj7CQmsBFQ=;
        b=kAmYbYNtKn0AHQ34FTp5OPb7Nk/EcgtHvRpB95akysfrbruvYCse6eJH64hVB18s
        HOPQ8EUcoyaEb03jArcSj8Oex8d33TjKI/HWTfGiWYFOAjJvZCR3hz2FJnv+HhML
        J6y91pQyQT+AoCHFXSq8rKviXtYLAwXS45m7XuGT77s=;
X-AuditID: c39127d2-253ff70000001c25-a8-5f69c2c40264
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 52.E6.07205.4C2C96F5; Tue, 22 Sep 2020 11:24:20 +0200 (CEST)
Received: from lws-riedmueller.phytec.de ([172.16.23.108])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2020092211242039-473856 ;
          Tue, 22 Sep 2020 11:24:20 +0200 
From:   Stefan Riedmueller <s.riedmueller@phytec.de>
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Stefan Riedmueller <s.riedmueller@phytec.de>
Subject: [PATCH 6/6] ARM: dts: imx6ul: segin: peb-av-02: Mark stmpe touch as wakeup-source
Date:   Tue, 22 Sep 2020 11:23:13 +0200
Message-Id: <20200922092313.151293-6-s.riedmueller@phytec.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200922092313.151293-1-s.riedmueller@phytec.de>
References: <20200922092313.151293-1-s.riedmueller@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:24:20,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 22.09.2020 11:24:20
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrBLMWRmVeSWpSXmKPExsWyRoCBS/fIocx4g38PNSzmHznHavHwqr/F
        psfXWC3+79nBbvF3+yYWixdbxB3YPHbOusvusWlVJ5vH5iX1Hv1/DTw+b5ILYI3isklJzcks
        Sy3St0vgyvh1p4W1oIWtYuGX08wNjLNYuxg5OSQETCSenP7C3MXIxSEksI1RYuvLDUwQzjVG
        iS9Nm9hAqtgEjCQWTGtkArFFBJQlTm3sYwcpYha4wyixdvktsCJhgSiJJ5desYPYLAKqEq3L
        joLFeQVsJT7vbWaEWCcvMfPSd7AaTgE7iWXnJ4LFhYBq1l6ZAlUvKHFy5hMWkAUSAlcYJZ4d
        /sUE0SwkcXrxWWYQm1lAW2LZwtfMExgFZiHpmYUktYCRaRWjUG5mcnZqUWa2XkFGZUlqsl5K
        6iZGYOgenqh+aQdj3xyPQ4xMHIyHGCU4mJVEeNWM0uOFeFMSK6tSi/Lji0pzUosPMUpzsCiJ
        827gLQkTEkhPLEnNTk0tSC2CyTJxcEo1MOq/4EuREeP/eqLEukU5KjJ3r+bHZ4uPZLyQv/l5
        hsCi/PsWm7aIn9c3nX7q1v6zKr4Sy9pmV1x4yz7h29I3nYaOn7L4biY/Vm5LuHPp7LeZW7TZ
        H91RPepxutO/yGOJ+vcbnttYL7JXJ9qJ/S1qXfTqalwZV+7xnK+3eSJSZsdZF/0K4F0kf0+J
        pTgj0VCLuag4EQDUbvr1SwIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Mark the STMPE resistive touch controller as a wakeup-source.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
---
 arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi b/arch/ar=
m/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
index 86898546627c..610b778c753a 100644
--- a/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
+++ b/arch/arm/boot/dts/imx6ul-phytec-segin-peb-av-02.dtsi
@@ -70,6 +70,7 @@ stmpe: touchscreen@44 {
 		pinctrl-0 =3D <&pinctrl=5Fstmpe>;
 		interrupts =3D <3 IRQ=5FTYPE=5FLEVEL=5FLOW>;
 		interrupt-parent =3D <&gpio5>;
+		wakeup-source;
 		status =3D "disabled";
=20
 		stmpe=5Ftouchscreen {
--=20
2.25.1


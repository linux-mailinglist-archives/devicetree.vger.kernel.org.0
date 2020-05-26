Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C9A91E0F58
	for <lists+devicetree@lfdr.de>; Mon, 25 May 2020 15:23:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388826AbgEYNXF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 May 2020 09:23:05 -0400
Received: from gateway24.websitewelcome.com ([192.185.51.36]:43721 "EHLO
        gateway24.websitewelcome.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S2388685AbgEYNXE (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 25 May 2020 09:23:04 -0400
Received: from cm12.websitewelcome.com (cm12.websitewelcome.com [100.42.49.8])
        by gateway24.websitewelcome.com (Postfix) with ESMTP id E26FB18E3
        for <devicetree@vger.kernel.org>; Mon, 25 May 2020 08:23:03 -0500 (CDT)
Received: from br164.hostgator.com.br ([192.185.176.180])
        by cmsmtp with SMTP
        id dD4Jjy4sU1s2xdD4JjSWmM; Mon, 25 May 2020 08:23:03 -0500
X-Authority-Reason: nr=8
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
        d=castello.eng.br; s=default; h=Content-Transfer-Encoding:Content-Type:
        MIME-Version:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
        List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=ZlJcRTFhtej8T0UtBWcokFIRDI/JzVylWnvucohUJ7A=; b=vq9aRPShyuaIeDESHTZHBzkl6j
        AMEjiAKwtKeXVMqK61TH7ofchoit4SpmFWiSxFH5R9SVl7tPcvjbJLXZf+JtRYsafI6OuB6IgXMsS
        egrlfjFI0w92Abhq2YKc9vrLkJbye31UNLxHWzFyYF8+899in3kYEGy9Rx7nMXZlD69915Oz9T/F4
        OhWJmUD7Lv+YfHJBHs6gdiMYTCijtmFoweNen3f1PAuQT0VpVDqCov4OV1tQtcuRazAL2YrKZR/NJ
        8MGLhpU/ViE1nDlPMJfBJ/LIczL6H7gCQ9eBmnjRxtYWUEel/PnN7xlSPVrrIWEpfSXw3eQLa7VAb
        Er3uZEVA==;
Received: from [191.31.196.240] (port=46922 helo=castello.castello)
        by br164.hostgator.com.br with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
        (Exim 4.92)
        (envelope-from <matheus@castello.eng.br>)
        id 1jdD4I-002bEq-71; Mon, 25 May 2020 10:23:02 -0300
From:   Matheus Castello <matheus@castello.eng.br>
To:     afaerber@suse.de, manivannan.sadhasivam@linaro.org,
        mark.rutland@arm.com, robh+dt@kernel.org
Cc:     edgar.righi@lsitec.org.br, igor.lima@lsitec.org.br,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-actions@lists.infradead.org,
        Matheus Castello <matheus@castello.eng.br>
Subject: [PATCH v6 0/3] Add Caninos Loucos Labrador CoM and Base Board Device Tree
Date:   Mon, 25 May 2020 10:22:15 -0300
Message-Id: <20200525132218.190841-1-matheus@castello.eng.br>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - br164.hostgator.com.br
X-AntiAbuse: Original Domain - vger.kernel.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - castello.eng.br
X-BWhitelist: no
X-Source-IP: 191.31.196.240
X-Source-L: No
X-Exim-ID: 1jdD4I-002bEq-71
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: (castello.castello) [191.31.196.240]:46922
X-Source-Auth: matheus@castello.eng.br
X-Email-Count: 3
X-Source-Cap: Y2FzdGUyNDg7Y2FzdGUyNDg7YnIxNjQuaG9zdGdhdG9yLmNvbS5icg==
X-Local-Domain: yes
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Thanks Andreas, Mani and Rob for your time reviewing it.

Changes since v5:
(Suggested by Andreas Färber)
- Put caninos,labrador-v2 as const one level down

Changes since v4:
(Suggested by Rob Herring)
- Fix issues with yaml indentation

Matheus Castello (3):
  dt-bindings: Add vendor prefix for Caninos Loucos
  dt-bindings: arm: actions: Document Caninos Loucos Labrador
  ARM: dts: Add Caninos Loucos Labrador

 .../devicetree/bindings/arm/actions.yaml      |  5 +++
 .../devicetree/bindings/vendor-prefixes.yaml  |  2 ++
 arch/arm/boot/dts/Makefile                    |  1 +
 .../arm/boot/dts/owl-s500-labrador-base-m.dts | 34 +++++++++++++++++++
 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi   | 22 ++++++++++++
 5 files changed, 64 insertions(+)
 create mode 100644 arch/arm/boot/dts/owl-s500-labrador-base-m.dts
 create mode 100644 arch/arm/boot/dts/owl-s500-labrador-v2.dtsi

--
2.26.2


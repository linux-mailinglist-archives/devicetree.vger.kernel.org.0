Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5F36186483
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:39:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730768AbfHHOji (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:39:38 -0400
Received: from fllv0015.ext.ti.com ([198.47.19.141]:45264 "EHLO
        fllv0015.ext.ti.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729780AbfHHOji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:39:38 -0400
Received: from fllv0035.itg.ti.com ([10.64.41.0])
        by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x78EdZTH126885;
        Thu, 8 Aug 2019 09:39:35 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
        s=ti-com-17Q1; t=1565275175;
        bh=T6w8unx+lg1PIrwqHgfMMNaQTTJhly/4FV0p9XTDn1M=;
        h=From:To:CC:Subject:Date;
        b=HD/P17Bsgc4w8umTE35foSJ1gBg2Kcno/InPpAkDl/xaK8mTTKLT36X3YW8IC9MDL
         gTmeYTiIxwQ1j4hNpr+Uck9kEqHrlf1gVzG3FUtjZGvxOAdV9BbbJXM5+Ib0uneMxL
         no/M7es5uTXs9/Ca2OuVJs4eU+LBalGlBhigpuCk=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
        by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x78EdZPg094437
        (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
        Thu, 8 Aug 2019 09:39:35 -0500
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 8 Aug
 2019 09:39:34 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 8 Aug 2019 09:39:34 -0500
Received: from legion.dal.design.ti.com (legion.dal.design.ti.com [128.247.22.53])
        by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x78EdYRQ078386;
        Thu, 8 Aug 2019 09:39:34 -0500
Received: from localhost (irmo.dhcp.ti.com [128.247.58.153])
        by legion.dal.design.ti.com (8.11.7p1+Sun/8.11.7) with ESMTP id x78EdYZ25397;
        Thu, 8 Aug 2019 09:39:34 -0500 (CDT)
From:   Suman Anna <s-anna@ti.com>
To:     Tero Kristo <t-kristo@ti.com>, Nishanth Menon <nm@ti.com>
CC:     <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>, Suman Anna <s-anna@ti.com>
Subject: [PATCH 0/2] K3 dts minor typo fixes
Date:   Thu, 8 Aug 2019 09:39:27 -0500
Message-ID: <20190808143929.11148-1-s-anna@ti.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Tero, Nishanth,

The following 2 patches are minor typo fixes in git-its nodes
on both AM65x and J721E SoCs. Patches done on top of the latest
master.

regards
Suman

Suman Anna (2):
  arm64: dts: ti: k3-am65-main: Fix gic-its node unit-address
  arm64: dts: ti: k3-j721e-main: Fix gic-its node unit-address

 arch/arm64/boot/dts/ti/k3-am65-main.dtsi  | 2 +-
 arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

-- 
2.22.0


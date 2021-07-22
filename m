Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0B8723D1D0B
	for <lists+devicetree@lfdr.de>; Thu, 22 Jul 2021 06:26:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229955AbhGVDpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Jul 2021 23:45:49 -0400
Received: from out1-smtp.messagingengine.com ([66.111.4.25]:33427 "EHLO
        out1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S229965AbhGVDpt (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 21 Jul 2021 23:45:49 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 83A065C0040;
        Thu, 22 Jul 2021 00:26:24 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Thu, 22 Jul 2021 00:26:24 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=yXSxWCnrJmIxz
        MHdpwVteWEvFisATWsodcS3Vk4nhyA=; b=zE9Xfo6nZ6HwUtN5Kvf8xjvIiYU2w
        OTs+KM9r+0GumpnxG7jHwbojbeooqqZh5Hqp9ynm7cUVVIfUUQQw0KUp1v8KCPtc
        ryavX0nTfB54nZMl6E7VKcmSlA4MIZJA+x0oeNE3OJ9fYeAxNby/Siq+WTcR4ZL2
        xPcJGj3DIFfH7FJ38jA9p5/6mvaVraZV+ILcOsrLlP034r1MVhULk5koGloYKumF
        5Ws5At7cEZna/+83WB52dI4bEa3jvKo1rDPDexvaMMeX3ldAobzak0Bp/IIXSjuK
        pB+FOhdy6/aCok2iuL95/PEvNvMWpv406ww+L/KZsMXjYni+PI896+sjA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yXSxWCnrJmIxzMHdpwVteWEvFisATWsodcS3Vk4nhyA=; b=HEapQZdo
        lmIZbgUSo7EP5wCko46SiJIjvq/Mm81YN8zVipa1qyCl7ndVinHB1nxREWbitkPa
        6Ep97nWz4DB/c7LRTjg+OZ8+VPsqeG246L5UVN2QseVBixUeJL7AO0lDjLzq33F0
        mMQKV3pcnv6c5HT2Qnn48rkzd6ux9ViP32YTmbduFlG4zC+j5tqmKXMsqE/lKx5H
        fAtlUYfN2JE2K0JcULjkyDPcw8gJsM4qDMOULl8k9bZkbFy9dzISc/VsMPrMivLK
        04/hdlcwzoDRqRED7h2aLlXyKDXOvuIZ401QF7vxEuoxR7HoO/qs4v6uHCR85TSc
        RAUm2zbiFC3UKg==
X-ME-Sender: <xms:cPP4YHdJ8vd7KqJkHd4baEiVi55jrrRJrAbdAgW2oqKXJURc_iJgwg>
    <xme:cPP4YNNN1HMYaXGe3WSA1WvEM-kqlZSn2bLDKoTxOBjtjushPtcQczy4YRApVN0q4
    d8xOYe9NN0GKCiXsgs>
X-ME-Received: <xmr:cPP4YAgNNb_A8oAn5sztA_9DrX0YG2di95miGa2alz_nrHpvgKYyJ3sntB29uqA-Hi0Z2tziaWibItfEMUzDwKIW9K89Xy0PabG8qSi1cxWvW6R0uBQd7pzocAJLH-M>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrfeehgdekudcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
    fjughrpefhvffufffkofgjfhgggfestdekredtredttdenucfhrhhomhepofgrthhhvgif
    ucfotgeurhhiuggvuceomhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghuqeenucggtf
    frrghtthgvrhhnpeekleevteelvdduheetgfdvfeelueekffeggeethedtteeljeeivedv
    gfehjeejheenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhroh
    hmpehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruh
X-ME-Proxy: <xmx:cPP4YI8oj0vqAH_-ETtaIYVl27uYB0s5nhD1FbmIYGi9rv3OE9rsAQ>
    <xmx:cPP4YDuDfGzYO3yjbNTF8xzKQMFDUX0xDOY7MZKP_7d407mAZuJiYg>
    <xmx:cPP4YHF-NbT9jpFPIRqbXCbjY58jlKvnrNY1ZVX3mZTHMGHn1lFzug>
    <xmx:cPP4YJVkOuiKnVVMjbFsU9cqjwOkZpKzmKsmM6QV7qCCHmTJqyBQSg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 22 Jul 2021 00:26:22 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH 3/5] dt-bindings: vendor-prefixes: add Traverse Technologies
Date:   Thu, 22 Jul 2021 04:24:48 +0000
Message-Id: <20210722042450.11862-4-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210722042450.11862-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Traverse Technologies is a designer and manufacturer
of networking appliances.

Signed-off-by: Mathew McBride <matt@traverse.com.au>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 07fb0d25fc15..eba2029d3ba7 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1184,6 +1184,8 @@ patternProperties:
     description: TPO
   "^tq,.*":
     description: TQ-Systems GmbH
+  "^traverse,.*":
+    description: Traverse Technologies Australia Pty Ltd
   "^tronfy,.*":
     description: Tronfy
   "^tronsmart,.*":
-- 
2.30.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8829F3D53A2
	for <lists+devicetree@lfdr.de>; Mon, 26 Jul 2021 09:13:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231332AbhGZGch (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jul 2021 02:32:37 -0400
Received: from out4-smtp.messagingengine.com ([66.111.4.28]:38509 "EHLO
        out4-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S232038AbhGZGch (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Mon, 26 Jul 2021 02:32:37 -0400
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
        by mailout.nyi.internal (Postfix) with ESMTP id 272BA5C00A9;
        Mon, 26 Jul 2021 03:13:06 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Mon, 26 Jul 2021 03:13:06 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=traverse.com.au;
         h=from:to:cc:subject:date:message-id:in-reply-to:references
        :mime-version:content-transfer-encoding; s=fm1; bh=yXSxWCnrJmIxz
        MHdpwVteWEvFisATWsodcS3Vk4nhyA=; b=POA3AhNntGgtWfwNa6/CePopl5Ts6
        vUBQz7UURF6JEB910kdp6GSnGy9JD2K3O8Sfha1lyu6L0qiqRI/Mlgs1XQRHf93U
        oLkLti+p9NBWTOcyo3EDqTgj6zBxaWZz5iGjK8IBS0lSgJMz9GQkUUa0tuMjWl25
        0DQuwZdXXVTEDzK0+vaB3sQoiX1zS6q4synJjKFxdCDh5OUinN3+3tO5G5LK55f3
        7EM4DUwGFVppVTujSdvqytfA6umx8+GcwOYf+1cfvjX+y521vxux4VlUJnC+UTTe
        AQh3GnSrhAcqFqQ4Jgik5PaBhYjonLfhNmuxKUUnxQVBWEHbqiCs6nPww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-transfer-encoding:date:from
        :in-reply-to:message-id:mime-version:references:subject:to
        :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
        fm3; bh=yXSxWCnrJmIxzMHdpwVteWEvFisATWsodcS3Vk4nhyA=; b=LC656Tu0
        AzpQEb87Zu9illfM0GIo52YZWv+0b4SD9jHgqhNv1eYt2s1QXfs+2DbQ+C3/S5I+
        09YjPXJU7KS6T/ndbaXZnZloDmBvckOGAa8haQWezG3qPbYM507Faer8go2mIMed
        VKDndlRMk/iMEGSvwkT6hjiN9vbpzRsOoNyFSzGPcOJ/tIM/Zc0xr6geA+U3YE5y
        atLMtyrou4VT3qgixSRhJDhkwixvrrGY4yU8vwdjNmh9nbyhzzY31SQFMRHe1EHX
        3dPWyj8uS/u37UBFbsc0kb6G5c8/589+hpUWL0UEikwKSqhRy0b0w5WZdIMTsD3L
        gvBPd0xAfOXA6w==
X-ME-Sender: <xms:gWD-YGG6IZVt0NIU7vqWRj5_UeRpoE5ek93kQeu9eAVzFGqlOCKpaw>
    <xme:gWD-YHWdMQQcGxHpYEyUEi3IDiNQ4WuvPYCg9gvraiPYjmGNxVZc6TDkzRVU7NH1r
    9OGWJWVRP5s-0_ios4>
X-ME-Received: <xmr:gWD-YAKB0_HIYVwo0d9-xOyDh3rPhHb1JtBZjpxsJ6fscBMrVw5x4fQHQXISH1nOcIEyblvGMZsCzThy7nzMMz2-Q7VD4LHrpchumPsUAjuKQnQX4uBYHuaw8Zojigo>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvtddrgeeggdduuddvucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhephffvufffkffojghfggfgsedtkeertdertddtnecuhfhrohhmpeforghthhgv
    ficuofgtuehrihguvgcuoehmrghtthesthhrrghvvghrshgvrdgtohhmrdgruheqnecugg
    ftrfgrthhtvghrnhepkeelveetledvudehtefgvdefleeukeffgeegteehtdetleejieev
    vdfgheejjeehnecuvehluhhsthgvrhfuihiivgeptdenucfrrghrrghmpehmrghilhhfrh
    homhepmhgrthhtsehtrhgrvhgvrhhsvgdrtghomhdrrghu
X-ME-Proxy: <xmx:gWD-YAEmsesVcOW-lhR_2vAM1vtnDPj_VGghNn5W_Q0Fdh5-E6ELwg>
    <xmx:gWD-YMXYwaVx0z1ncOhqDhhhs1p-Guc-OEm-G9u3qHD_-tE7HRgmmg>
    <xmx:gWD-YDPmzOhn176v7nY7QexmcqMpYvlIMweoCBpD0REBAL7TuN7hzQ>
    <xmx:gmD-YGeHmI0p70SFFleaePZCSbYACK-k1U1IssobCTr_kj-cku7xtA>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Mon,
 26 Jul 2021 03:13:03 -0400 (EDT)
From:   Mathew McBride <matt@traverse.com.au>
To:     Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Mathew McBride <matt@traverse.com.au>
Subject: [PATCH v2 3/5] dt-bindings: vendor-prefixes: add Traverse Technologies
Date:   Mon, 26 Jul 2021 07:12:14 +0000
Message-Id: <20210726071216.22711-4-matt@traverse.com.au>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210726071216.22711-1-matt@traverse.com.au>
References: <20210722042450.11862-1-matt@traverse.com.au>
 <20210726071216.22711-1-matt@traverse.com.au>
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


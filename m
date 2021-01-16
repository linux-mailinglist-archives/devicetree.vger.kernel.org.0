Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7B9192F8AEC
	for <lists+devicetree@lfdr.de>; Sat, 16 Jan 2021 04:04:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726810AbhAPDEK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jan 2021 22:04:10 -0500
Received: from esa5.hgst.iphmx.com ([216.71.153.144]:31923 "EHLO
        esa5.hgst.iphmx.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726157AbhAPDEJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jan 2021 22:04:09 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
  t=1610766249; x=1642302249;
  h=from:to:subject:date:message-id:in-reply-to:references:
   mime-version:content-transfer-encoding;
  bh=ZPZhL+T8Z9NF/+BIa4GwReplGTgbLgirKE6EpwN9c2o=;
  b=PL9pG72TUb8Ozo2wJxVnQHF+LSAHacIQ1AV7djW4M1Eizil+HxEDlcLE
   ET0g2ueisJiZQx2TkACOStmyA1xUXazRlsP7Uy3PTbyI2toFD+DrDa9ID
   Qae/La6WwofFv1X06XdXez5xxCEGhyg2cqmQ6MppuXwe5Z28aLOBLeloM
   GnrJ91QYc40pWA3psP1n8aGyxsbEu0gQeCSrk4LJjREaeJrHHhAtAZZ9Y
   r8MTEjF4D/kBPbqGFyE6JUfp6Dk3FwF+i5UeB0DkUswXw8sux5imP90lx
   Zo4OafTc/KRXlOEf74HP3K6YXb/sSQ9nlYEByAA6MQwmlgGsicF8h2MZ7
   g==;
IronPort-SDR: HAr1KLETT5CDlKcqUaJY1GUF+YqVW025N+udRuIpCdxXQA6NsazVb1asgr94l6tPOw3/Zd9Esp
 9WyUe4QpHxm61xZQz2rn9luOJW++PlhPsPb2ElBFzlMEW9IesqByw0z5/DQxnQDjQbDKGJ1IeT
 F1CgVtY31KLTYzUFNf2JMC4E/15YGnZQTmRohZqqBnuu9UHYWyMMZ/kctW3boANxM5O+B73CQV
 7cC+KytqN77TlkjW6ic477o1zQs0JpBCw7XttIwhhme918nLXWQYaVRhdYMz+HH1GcQfkXe/my
 XA0=
X-IronPort-AV: E=Sophos;i="5.79,351,1602518400"; 
   d="scan'208";a="157556792"
Received: from uls-op-cesaip02.wdc.com (HELO uls-op-cesaep02.wdc.com) ([199.255.45.15])
  by ob1.hgst.iphmx.com with ESMTP; 16 Jan 2021 11:01:59 +0800
IronPort-SDR: s6JpUzkJtWwgPodQO6BN8Jn56ENGtc7PFuzYfM7NQAiX/9bQl5+BR1gQevc/Qb6WO2fKzdUxXW
 B4x2X36La2eh1HC1E7o5PVQC4BkH4zyAaMh9GEBZVnmfjVsugQzwcLncmVsE+5OcvYE8kgcH3C
 WZRkwCIWBNrfXFJKCEy60BFujVqVqbCNitLX1XNjwjZW9I9GjyX+0vKqRVv41UJzOiG8ytgcrr
 KAiTBT6tsOFF/5uiSNVx405eVYQStLHBNKVy0LlOZXsextxKRIQuDv0q7IhYtr6woQTng/hZTu
 hYtkJsJCag2d2vllDhN545dR
Received: from uls-op-cesaip02.wdc.com ([10.248.3.37])
  by uls-op-cesaep02.wdc.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Jan 2021 18:44:41 -0800
IronPort-SDR: G2gQbhK46/w1otpOJlsLuvFvrM636mcD0tDDF743edWcsXV7omZS0Sv13LtR+y3KgdpYz52JWQ
 BSgoEPYmgA4ZNJpQdhArWWsova9mIbGj3ZyZVLcfbj/M2Khu14GzUg4KVozYXD4Y0Tap/xbZWd
 pSVa8/LHoRtIX9PlFXJi1ZUv9m6ssYrprgT9vSm1fkzdLihBzGlFKdsWsMsRSbflAAuI+mQjHN
 JBAAp8vKneZtBWIbzDvpoNweXsQ+RDQwvFevwG6e8/OHAZ2LP57bCaBLqfaXqA11vXaFf8xqox
 loc=
WDCIronportException: Internal
Received: from cnf011319.ad.shared (HELO twashi.fujisawa.hgst.com) ([10.84.70.208])
  by uls-op-cesaip02.wdc.com with ESMTP; 15 Jan 2021 19:01:59 -0800
From:   Damien Le Moal <damien.lemoal@wdc.com>
To:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: Fix mt8192-mt6359-rt1015-rt5682 warning
Date:   Sat, 16 Jan 2021 12:01:56 +0900
Message-Id: <20210116030156.15726-3-damien.lemoal@wdc.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210116030156.15726-1-damien.lemoal@wdc.com>
References: <20210116030156.15726-1-damien.lemoal@wdc.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix identation of the maintainers entries in
mt8192-mt6359-rt1015-rt5682.yaml to remove an annoying dtbs_check
warning.

Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>
---
 .../bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml           | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
index bf8c8ba25009..54650823b29a 100644
--- a/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
+++ b/Documentation/devicetree/bindings/sound/mt8192-mt6359-rt1015-rt5682.yaml
@@ -7,8 +7,8 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: Mediatek MT8192 with MT6359, RT1015 and RT5682 ASoC sound card driver
 
 maintainers:
-   - Jiaxin Yu <jiaxin.yu@mediatek.com>
-   - Shane Chien <shane.chien@mediatek.com>
+  - Jiaxin Yu <jiaxin.yu@mediatek.com>
+  - Shane Chien <shane.chien@mediatek.com>
 
 description:
   This binding describes the MT8192 sound card.
-- 
2.29.2


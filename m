Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1E78E438592
	for <lists+devicetree@lfdr.de>; Sat, 23 Oct 2021 23:49:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229821AbhJWVvo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Oct 2021 17:51:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40926 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231174AbhJWVvn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Oct 2021 17:51:43 -0400
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 47256C061767
        for <devicetree@vger.kernel.org>; Sat, 23 Oct 2021 14:49:24 -0700 (PDT)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [80.241.60.245])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4HcFH54ctbzQk3P;
        Sat, 23 Oct 2021 23:49:21 +0200 (CEST)
Authentication-Results: spamfilter02.heinlein-hosting.de (amavisd-new);
        dkim=pass (2048-bit key) reason="pass (just generated, assumed good)"
        header.d=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1635025759;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=jWE/C5K55XfcxXustPzNMgLokBOhJ1D/90fssSjBzI0=;
        b=YTsMxS7BaUz41ewU/i2ix3kPfqEpTX5ULdQSsG0eYomzbz0r1gAiqXn2lXLhC5jJ8QYKIg
        nf3AJ+ZsLNjP/0e1kv+e0i98fwmI9vGjVBKX/+jhv59qF1OGevFGoTGjTS9Xo8TMBdI0V2
        7DB5ZF3nEef0mIx9Q1oAjW+C+jXzuEEW392fBi5Ux8FZBUquXNDmQZNrcyIztiajfuZiqD
        m5tSzRC7K63vV9ZeYjIKBC+k7JU1RziQUppyX91UufQvj4kdW1vd73CiVSMdfG9PRZHE1R
        Ek88r9mjWjmztwU4QSL5sp9/lYP6QYViZRJK9WWYPef9cxEs/ZmjEoWHK94llA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-transfer-encoding:mime-version:references:in-reply-to
        :message-id:date:date:subject:subject:from:from:received; s=
        mail20150812; t=1635025758; bh=BTuLw1wm2XqLeuo3sxBy9aQ8L8Rzo3OGA
        +rawP9hqaI=; b=RXd1+TjQM5zvJU4unEMhW0Zof4WZIpwj06LZeoGhapKIbT5t/
        MxN7z47jJec2teAUC9WUyx7mL6rhuUV6N7Q1CsGIUs7fhBZqgBK8AF/d++TKjqiJ
        S8OWVxs5cOaANSI4RfQKwJHXmjkXVnb29G9m/T5jBAiWbkoA7uGhxFV97fOw0Mnt
        RQbLXOafytpq+Dg9xdgouo41FhBLXe3QEAzO1CfDyLmbe6dWGOOxPTexL24yfZqb
        n9wv50VMn2H6er0LdQADhishMic5KH8k2DhTdf4IecOtuiL03jnIR6GUEcocl9Vs
        CxsOI7+KSlAEt084LfUlb/v78rhx6D39UgIGA==
X-Virus-Scanned: amavisd-new at heinlein-support.de
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 4/4] arm64: dts: amlogic: Fix SPI NOR flash node name for ODROID N2/N2+
Date:   Sat, 23 Oct 2021 23:48:56 +0200
Message-Id: <20211023214856.30097-4-alexander.stein@mailbox.org>
In-Reply-To: <20211023214856.30097-1-alexander.stein@mailbox.org>
References: <20211023214856.30097-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Queue-Id: BB8431317
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix the schema warning: "spi-flash@0: $nodename:0: 'spi-flash@0' does
 not match '^flash(@.*)?$'" from jedec,spi-nor.yaml

Fixes: a084eaf3096c ("arm64: dts: meson-g12b-odroid-n2: add SPIFC controller node")
Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
index 6e9ff5076b38..9c05c83453f5 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12b-odroid-n2.dtsi
@@ -611,7 +611,7 @@ &spifc {
 	pinctrl-0 = <&nor_pins>;
 	pinctrl-names = "default";
 
-	mx25u64: spi-flash@0 {
+	mx25u64: flash@0 {
 		#address-cells = <1>;
 		#size-cells = <1>;
 		compatible = "mxicy,mx25u6435f", "jedec,spi-nor";
-- 
2.33.1


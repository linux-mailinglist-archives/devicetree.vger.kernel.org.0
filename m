Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4D84E47E327
	for <lists+devicetree@lfdr.de>; Thu, 23 Dec 2021 13:24:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239495AbhLWMYz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Dec 2021 07:24:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243469AbhLWMYy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Dec 2021 07:24:54 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED8CFC061756
        for <devicetree@vger.kernel.org>; Thu, 23 Dec 2021 04:24:53 -0800 (PST)
Received: from smtp202.mailbox.org (smtp202.mailbox.org [IPv6:2001:67c:2050:105:465:1:4:0])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4JKTsZ714bzQjf1;
        Thu, 23 Dec 2021 13:24:50 +0100 (CET)
X-Virus-Scanned: amavisd-new at heinlein-support.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1640262288;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=aKcMJ+j2oyWpNwagklOb+qQvqMvdN8cr0o6AoVgyaHc=;
        b=MuD5cR/m8AYNiIEcP9IXw2JpBwT+zbjuYta36LHUX0URRpgUQ5RCil8wWakye1peNQmbMq
        MXijqQEF1vdSOE087O6S0m70mX2q5mXewA9SRziyMTBEmKxlZD2Rs9xZeWLeeFLeepAr6B
        1jiRlatxkFDkgfFH7rH1rUWiO0cuv3ANVoZtONocGzAQWArchRPmFpaUUNEXy77yuq4Vt8
        mmpYvCZIOaVgpNegNlY5sQGvCU3IJndlKDyU0G/QiyAfs/RYU/tOjf8ZSgCRXbBLoYV+8S
        ovhYqnkR81t2YlBipaW1/I0DRAgDkbtbLXcP+1QOgLggwaNwtjow2kQPBQcr1w==
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Jerome Brunet <jbrunet@baylibre.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Kevin Hilman <khilman@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc:     Alexander Stein <alexander.stein@mailbox.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 0/3] More amlogic sound-name-prefix DT fixes
Date:   Thu, 23 Dec 2021 13:24:31 +0100
Message-Id: <20211223122434.39378-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Following up [1] here are more fix for missing sound-name-prefix properties in
the arch/arm64/boot/dts/amlogic/ subtree.

[1] https://www.spinics.net/lists/devicetree/msg466125.html

Alexander Stein (3):
  dt-bindings: display: meson-dw-hdmi: add missing sound-name-prefix
    property
  ASoC: dt-bindings: spdif-dit: add missing sound-name-prefix property
  ASoC: dt-bindings: aiu: spdif-dit: add missing sound-name-prefix
    property

 .../devicetree/bindings/display/amlogic,meson-dw-hdmi.yaml   | 5 +++++
 Documentation/devicetree/bindings/sound/amlogic,aiu.yaml     | 5 +++++
 Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml | 5 +++++
 3 files changed, 15 insertions(+)

-- 
2.34.1


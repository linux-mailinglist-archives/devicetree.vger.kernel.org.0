Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C64531B2CE9
	for <lists+devicetree@lfdr.de>; Tue, 21 Apr 2020 18:41:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729212AbgDUQjn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Apr 2020 12:39:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726335AbgDUQjm (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Apr 2020 12:39:42 -0400
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com [IPv6:2a00:1450:4864:20::443])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FB5EC0610D5
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 09:39:41 -0700 (PDT)
Received: by mail-wr1-x443.google.com with SMTP id b11so17173626wrs.6
        for <devicetree@vger.kernel.org>; Tue, 21 Apr 2020 09:39:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pD/cklajXrTQwt9/i5DAty8o4fVAa/YnpTHBgrSpmUo=;
        b=cC3hjgLK/ed2VS7t6nroMpSd45uSi3v2KkxWLH57GmFzchId7vQD+xE75Cy6pC+J2t
         lI0tk54G+L7wk8fp5rDFWdyVIYor0pyA/Mnb6PDKhnkLdwtJGTFlvzi1jVWH1n69PkfO
         3Z4qwVDkhJzBzxKjoZoIANPzGMuVeUb+n5I9DuhKFdprbT49RWM5326NFEqO4nrS/8oV
         cWOpLbSVVZdqvE9IvrWHNMws7DLr6a+Txmf2zG1cN6LHVwF0AgY9Q0v5dXcxMynigQKD
         Dc1SuB9Rul4UYdn1bALQCRCnUugovCUySmVINrDIdSF22my2Vr/d5yfF56kXEs/r71DN
         lGyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pD/cklajXrTQwt9/i5DAty8o4fVAa/YnpTHBgrSpmUo=;
        b=YfnqGGVee5OQ48OSeMMmX+M8U3mI4xj17kA272g7FIKWYLecleAkxsl1ILcWSgANpJ
         y35+7UkKAZKQiBSTDt+IlmlR7ZBLe52J6Zu9wvRzQjMctoxKs1O62m5S2IO8jvo8lO9J
         /f0cmsBYxoNAVTHkYXgM92Wtr7wEOu9CLkoeVfot2S1KFBIZSEnn2lS1QMf7giSWfIYE
         2x4Yi3Ss4XAn58QZH1B6+qRvqMVf17bTPaT32hoWhsRmq/b7N6UbLquc/ndQziliF056
         CKi6IUmBqygNMy7EYbUObBGfAa7wZU9MNJbvlKDbsq2IlXkbdXZndmlkZH7R06Rh9wwv
         m8fg==
X-Gm-Message-State: AGi0PuZxSh+FFZDrnD67n2FJoXsu3CWIcZKbdSh5SadQX1EGkr6vaTVW
        Zq7PEjituL3iWB0pVC7x8MfCNg==
X-Google-Smtp-Source: APiQypLFS/luRYy1vtvb9oit1ZVDhPgOb4uA9Tjl0mXJJSRx+3VINZ7T+gVV+hgdxPvZr8sDYsupMg==
X-Received: by 2002:a5d:688f:: with SMTP id h15mr25248133wru.352.1587487180151;
        Tue, 21 Apr 2020 09:39:40 -0700 (PDT)
Received: from starbuck.lan (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.googlemail.com with ESMTPSA id 33sm4578513wrp.5.2020.04.21.09.39.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Apr 2020 09:39:39 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/6] arm64: dts: meson-gx: add initial playback support
Date:   Tue, 21 Apr 2020 18:39:29 +0200
Message-Id: <20200421163935.775935-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset is adding the aiu support in DT and well as basic card
support for the p230/q200 and libretech boards

I was hoping to provide the internal codec support with this series but
this is still blocked on the reset dt-bindings of the DAC [0].

So far, things are fairly stable on these boards. I have experienced
a few glitches on rare occasions. I have not been able to precisely found
out why. It seems to be linked the AIU resets and 8ch support. Maybe more
eyes (and ears) on this will help. If things get annoying and no solution
is found, I'll submit a change to restrict the output to i2s 2ch.

[0]: https://lore.kernel.org/r/20200122092526.2436421-1-jbrunet@baylibre.com

Jerome Brunet (6):
  arm64: defconfig: enable meson gx audio as module
  arm64: dts: meson-gx: add aiu support
  arm64: dts: meson: p230-q200: add initial audio playback support
  arm64: dts: meson: libretech-cc: add initial audio playback support
  arm64: dts: meson: libretech-ac: add initial audio playback support
  arm64: dts: meson: libretech-pc: add initial audio playback support

 .../dts/amlogic/meson-gx-libretech-pc.dtsi    | 40 ++++++++++++
 .../boot/dts/amlogic/meson-gx-p23x-q20x.dtsi  | 63 +++++++++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi     | 13 ++++
 arch/arm64/boot/dts/amlogic/meson-gxbb.dtsi   | 23 +++++++
 .../amlogic/meson-gxl-s805x-libretech-ac.dts  | 40 ++++++++++++
 .../amlogic/meson-gxl-s905x-libretech-cc.dts  | 40 ++++++++++++
 arch/arm64/boot/dts/amlogic/meson-gxl.dtsi    | 23 +++++++
 arch/arm64/configs/defconfig                  |  2 +
 8 files changed, 244 insertions(+)

-- 
2.25.2


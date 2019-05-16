Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id ACDBC209CB
	for <lists+devicetree@lfdr.de>; Thu, 16 May 2019 16:32:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727491AbfEPOc0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 May 2019 10:32:26 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:45647 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726943AbfEPOcZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 May 2019 10:32:25 -0400
Received: by mail-wr1-f65.google.com with SMTP id b18so3624318wrq.12
        for <devicetree@vger.kernel.org>; Thu, 16 May 2019 07:32:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MCh2hGUp25ZJxGPePdNkCdsXMQeyI1uh6u/3BErb/Yw=;
        b=OMEfpFp+KLYfHxBXZQN0DYJBsoAo0sh4lRfrR313ZuB2/XYxZ/vjI6eKK50+gx3Yjw
         iy/aG0HxJxse2ASHabxUprCKQwTA8S/D9Jbp/D+q6RSfdY/vwPZHD3yNw2YP6SZQLDOx
         uJOdZbDahQGnPtwFHIFAyPVE6NLig8V9vbihySB31clyVUel3Os3k0hcA+kLwKXzUNqS
         uJFODNwm8obBwNITLOp+rZ0t76VNSkUFBT8DstnZFCQboxjmJxsgH3AEbja7zzD4+7wM
         W5qbm0IrBKpwpPVx/zNQO8sDc4DurMp+oNShr2bhF0Vi2T9z/mZrVO8ynoNwX3uuPGXu
         eA0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=MCh2hGUp25ZJxGPePdNkCdsXMQeyI1uh6u/3BErb/Yw=;
        b=uQ5s79Nr0raDTgiQn0vdV/z4Ep+WB2HtEaSnJKn/0dWmKeruN00h7ghqTfwTVZEBxr
         m66K4ArwtonclJ7Ydg42R9w0o7yTbi0UJRZJYh+FncvwVFa+blRHPfGh0tKuN406dJzG
         q/Ix4wBxjB+3BCsZuc12g2a+mjCDLOkXft4C7k3bylfoyvd1dg8Y+a0AcqtlgalwaE/U
         EJ/E9wxOj4lesCScmwbh72JVcn7GzzPWgVA77buzlI3RTegm4Oljch0HjUnB9Ov81eld
         2OmpZ+A+VifEd8YfSyTUkwRPec1LI9t8+pHrdFWSzscvWhXqmvNOeH4GCKDa6cWEuJ9n
         /nqA==
X-Gm-Message-State: APjAAAWpIn7kR4zAJZzGQJKtM8bWD7IO1+cbRcSopcCJ/jJGdvDLH2aT
        lgh3/idnVJLUB2zgSOXurDMv9g==
X-Google-Smtp-Source: APXvYqxh4XiN4cDh/DoIiPtCPuo2gI4Fpj7ttgza+eSTorRPdi7jF2OwizM5OMIMXOYlejycpeH0jw==
X-Received: by 2002:a5d:45c7:: with SMTP id b7mr7863823wrs.176.1558017143940;
        Thu, 16 May 2019 07:32:23 -0700 (PDT)
Received: from boomer.lan (cag06-3-82-243-161-21.fbx.proxad.net. [82.243.161.21])
        by smtp.googlemail.com with ESMTPSA id h12sm2386548wre.14.2019.05.16.07.32.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 16 May 2019 07:32:23 -0700 (PDT)
From:   Jerome Brunet <jbrunet@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     Jerome Brunet <jbrunet@baylibre.com>, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: meson: g12a: add tohdmitx
Date:   Thu, 16 May 2019 16:32:16 +0200
Message-Id: <20190516143216.6193-1-jbrunet@baylibre.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-Patchwork-Bot: notify
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the hdmitx glue device linking the SoC audio interfaces to the
embedded Synopsys hdmi controller.

Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
---

 Hi Kevin,

 The related device driver and dt-binding have been merged in the ASoC
 tree, for-5.3 branch [0]

 This patch is based on the audio series I have just sent [1]. Like the
 patches I have sent this week, they are all based on Linus's master
 branch. This is done so it applies nicely when setup your branch based
 on 5.2-rc1

[0]: https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/log/?h=for-5.3
[1]: https://lkml.kernel.org/r/20190514142649.1127-1-jbrunet@baylibre.com

 arch/arm64/boot/dts/amlogic/meson-g12a.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
index 3c92d165621c..90da7cc81681 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a.dtsi
@@ -1677,6 +1677,14 @@
 					clock-names = "pclk", "mclk";
 					status = "disabled";
 				};
+
+				tohdmitx: audio-controller@744 {
+					compatible = "amlogic,g12a-tohdmitx";
+					reg = <0x0 0x744 0x0 0x4>;
+					#sound-dai-cells = <1>;
+					sound-name-prefix = "TOHDMITX";
+					status = "disabled";
+				};
 			};
 
 			usb3_pcie_phy: phy@46000 {
-- 
2.20.1


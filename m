Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 48E8DAC7B3
	for <lists+devicetree@lfdr.de>; Sat,  7 Sep 2019 18:51:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392078AbfIGQvp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 7 Sep 2019 12:51:45 -0400
Received: from mail-pl1-f173.google.com ([209.85.214.173]:34689 "EHLO
        mail-pl1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391664AbfIGQvo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 7 Sep 2019 12:51:44 -0400
Received: by mail-pl1-f173.google.com with SMTP id d3so4672668plr.1
        for <devicetree@vger.kernel.org>; Sat, 07 Sep 2019 09:51:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XqUaOhrKnokp+U3BIhPoQDVqzR2PKGp9qPpm7e89sj8=;
        b=rJO3Xx+LJilHSOb9TezJLprHbKLa2dVOr3TaqvRVliNReXln4ikSTBUFy1tINhdqbJ
         3nKy9dg+tTVf3PB4Q5TT7gmvcrI4S+fonQh0IeQ+3PyyCxK8PERFscpbBQCdyP9kvwtD
         j5dKgwau3ziI1vhYat1Mf0s84GvZUKlFEb2tLczomkR8g+BAGq4PVN9Nzt8Fw6KPhlfj
         WxWpGpNFrSnLkhqKZwOv3wCv1c9LppF7TgesGuEQ/qDa4q2fVdTi497CoXWq10A8tfxE
         EUgumPkeV8CHvoYTlkpL8yyLFWysH49yvmanA7lpEocj1Gw/MboNRnbIy9M5S20xBOXu
         HQkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=XqUaOhrKnokp+U3BIhPoQDVqzR2PKGp9qPpm7e89sj8=;
        b=fY7vPq5BZyfaJf863dkp3tayrasVgOjbSd+oCMDmpq1PEy55JjN1yoK8fgxxx+bajQ
         hPWeFVSSeuxRTKbwh69WwLm/fRzkyAcDL5ozTUQEWP6xx9k5sPmjpxuHXs3UwyOkCTyu
         66GUTBiogbzHpxTweaduJVq+rCkIaPomJZMMy+EekLdIjn8s7coOjnV89ve1pIjkky0x
         IuF8LZ3vBAV7poxd7jfQWBEM9VRH1WnsvGMKqmPYduj6KRnNhX7QfBLfqxD9TeNB+DcH
         SBZbXMrl2IKg182Bkggk3gUeJZ3xC6hp6oh0aS/jWwMf0LPrqQJLZpo7Xtp9g9JJhAWX
         6kJQ==
X-Gm-Message-State: APjAAAXVJOzcvIykPDe7SxqHjOfvi+bQ1fKV6iylcdxpUj+EUiLv3+b5
        rIcF2taudqUwlxsexYTPhm0=
X-Google-Smtp-Source: APXvYqzvVkIDHOF9Yw52KIee27ayrvwR/SoHofhN/T9/LVtP7i2DCkkwvkpYy39Yp0g2ee8MuwIUZQ==
X-Received: by 2002:a17:902:be12:: with SMTP id r18mr14697890pls.341.1567875103917;
        Sat, 07 Sep 2019 09:51:43 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.203])
        by smtp.gmail.com with ESMTPSA id v27sm20028215pgn.76.2019.09.07.09.51.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 07 Sep 2019 09:51:43 -0700 (PDT)
From:   Anand Moon <linux.amoon@gmail.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org
Subject: [RFCv1 0/1] Odroid C2: Enable DVFS for cpu
Date:   Sat,  7 Sep 2019 16:51:31 +0000
Message-Id: <20190907165132.464-1-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch enable DVFS on GXBB Odroid C2.

DVFS has been tested by running the arm64 cpuburn
[1] https://github.com/ssvb/cpuburn-arm/blob/master/cpuburn-a53.S
PM-QA testing
[2] https://git.linaro.org/power/pm-qa.git [cpufreq testcase]

Tested on latest U-Boot 2019.07-1 (Aug 01 2019 - 23:58:01 +0000) Arch Linux ARM

Patch based on my linu-next-20190904 on top of my previous patch's.

Best Regards
-Anand

Anand Moon (1):
  arm64: dts: meson: odroid-c2: Enable SCPI DVFS for cpu

 arch/arm64/boot/dts/amlogic/meson-gxbb-odroidc2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.23.0


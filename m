Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D10024E055
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 08:10:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726104AbfFUGKo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 02:10:44 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:37681 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725911AbfFUGKo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 02:10:44 -0400
Received: by mail-pf1-f196.google.com with SMTP id 19so3022166pfa.4
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 23:10:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=PpljmC8SLGkbR///XDkhntsRZdsmMvo/H3sw/I6A+Yg=;
        b=EdW+NqcLDpoZy6NvRMoxmD74pUzzt5PXYcRlmmEybEXBEoJoGrsC0sjcXC7JteWoAk
         met5tggjZVdSjqyNl03Wc4taU6vT2DYFO1c7gTi3i8P4wSP2BYH15enBj66j9xo0Euok
         3T4PzyrhZ3h8UQPbNBAC3zqAgtXNdCLUWC/ZHSdLt6i9cD9JU+/AhSxSuXsGRH5PfDy/
         /gEw2agtLxkl30fng4hU9XZPPAcEbFuHnAp3M20Ofc4mq95gRNZx6bft69ZB4h/jwgo5
         g79SL6OxLUSTEuqX+wVN1cKgEI+wiGql6VZJ4RA29H3BGQmHfZgM0rHNNFCCR0gbR6Zc
         lxsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=PpljmC8SLGkbR///XDkhntsRZdsmMvo/H3sw/I6A+Yg=;
        b=aAWd/PAhQvdAlVAmKfkCoFtxKhaouki2BLWsOj9hKeFu11/JoT7SCSrSfZ2tCXCcD6
         s8iDCzps/YqY5A4l/Gm7Ul2Vf9UGn4jyqUGb+DKfLsPOcB3wGM9A4//SCBNITNZa/8Ik
         f1DBU78FyKDDB01NhTnJC+Z4AsnBGBDV8sO/XJGZVaNXn0VGG1uuHoC/CoURZjiUraDh
         2lE5KyWu0wh7TUl1yT1N20liWxPMgd+VPiw/K+sjEEuXziAfJu44heicnZdLn8N5Xbhg
         R66YPn33SB5HiXbONgpHLqYiOQ7eqcvbDtArwHuarjcfAscHWk/smTxWfp9LUBxB5qwD
         rDUA==
X-Gm-Message-State: APjAAAXa0AVFfHeZTZsYsOO9yhNWZqt1E9ezWBU2gRcrp7gLGOW4Yq/D
        0T8HfDGRN4hFa5K1ZP/i9p8HFg==
X-Google-Smtp-Source: APXvYqzDsMUW7ZM0Bq051HoAYberjSCM05y0nHuvchc1Fadi0aGQa2Jg5EWR/GbdwYOUinaVk+lXGA==
X-Received: by 2002:a17:90a:2ec1:: with SMTP id h1mr4272423pjs.101.1561097443303;
        Thu, 20 Jun 2019 23:10:43 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id x17sm1450053pgk.72.2019.06.20.23.10.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 20 Jun 2019 23:10:42 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH] DT node for SiFive FU540 Ethernet Controller driver
Date:   Fri, 21 Jun 2019 11:40:21 +0530
Message-Id: <1561097422-25130-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch-set is based on 'riscv-for-v5.2/fixes-rc6' tag of
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git

Tested on HiFive Unleashed board with additional patches required for
testing can be found at dev/yashs/ethernet_dt branch of:
https://github.com/yashshah7/riscv-linux.git

Yash Shah (1):
  riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

-- 
1.9.1


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 751184E688
	for <lists+devicetree@lfdr.de>; Fri, 21 Jun 2019 12:57:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726260AbfFUK5b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Jun 2019 06:57:31 -0400
Received: from mail-pg1-f194.google.com ([209.85.215.194]:40259 "EHLO
        mail-pg1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726218AbfFUK5b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Jun 2019 06:57:31 -0400
Received: by mail-pg1-f194.google.com with SMTP id w10so3192802pgj.7
        for <devicetree@vger.kernel.org>; Fri, 21 Jun 2019 03:57:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=m4SystdEUYyTsZI3hnmFt3ur3sFjiDU6l/WcXNGnPvU=;
        b=Spoip36rQtmU/CyiMWVfJkYQIPink69AqYVxGtT0MpDnfdIT8FRP/FE3WbuZtH5Udb
         1zQ5J4mGDp2M57h6LgFxrEwKsi5/LPSA+xfL19vy/+41LBqTRapVUYPTVqEibPZwyN6t
         xGC0HNetqBxwnbd7RVVshUR/qKe85V/san+6PTJT6etBRJhBdK64vEVvBUd2CaOA7EJV
         kfSAnaKfW3RjlHQ2PbyyCGa/nW3NLdWUCU9APcgtpzH5+MwdjIAphhPYGrKy1y9onmIP
         Q4/C+TtHoKZxaIdW4Vgy5uoMErHjx+atNADwwvOjae2ibnebibV/f9Bs1b/Fsnfe0tXN
         hDJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=m4SystdEUYyTsZI3hnmFt3ur3sFjiDU6l/WcXNGnPvU=;
        b=D/urqYGKTMz/T7woR+9CYvXPMNKltfHY8SkFG8ruhWi0iN3uFHCpX8BfpGIgJuDx+V
         pxrH0YQLIhBjzPK2usm75IOFwu1Rqpr4PJhyp+FfkANVwBcsUoAxAU92+aEM6oQrxV42
         t/o5PHd8APQtBm3PY8FoFAZ7OujGQckCapxXpmNXc68kBmzvPCbfvnKHzv24VeBjR5GR
         LhQm3dwnc9zGuK7fWa6NaxiVhsPYGMIXpoUWz2cNimYFi0wvlWFBMA8YCO68PJyUo7/M
         3zk94PjhBuy938J5uTpj9NPE+qXt+VyxKSwPGl5wbeBcGE77YEIoRTrTAbL5IifzJhke
         ghiQ==
X-Gm-Message-State: APjAAAXsup8+qk4mOcWgZno7FepkKn+3hwp4MYsBx3YP5uSlQ99jOalG
        CrqlKzcCr1XHfJxDC4y8Gw+Xlg==
X-Google-Smtp-Source: APXvYqwzjjm4483alu65arc4JSsx+I/alCHC31k15aRzcosRcQA2NcisAKHpGycWDhXMyiza4ypiEg==
X-Received: by 2002:a63:c20e:: with SMTP id b14mr17159994pgd.96.1561114650984;
        Fri, 21 Jun 2019 03:57:30 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
        by smtp.googlemail.com with ESMTPSA id q63sm3889442pfb.81.2019.06.21.03.57.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 21 Jun 2019 03:57:30 -0700 (PDT)
From:   Yash Shah <yash.shah@sifive.com>
To:     robh+dt@kernel.org, paul.walmsley@sifive.com,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     mark.rutland@arm.com, palmer@sifive.com, aou@eecs.berkeley.edu,
        sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>
Subject: [PATCH v2] DT node for SiFive FU540 Ethernet Controller driver
Date:   Fri, 21 Jun 2019 16:23:48 +0530
Message-Id: <1561114429-29612-1-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch-set is based on 'riscv-for-v5.2/fixes-rc6' tag of
git://git.kernel.org/pub/scm/linux/kernel/git/riscv/linux.git

Tested on HiFive Unleashed board with additional patches required for
testing can be found at dev/yashs/ethernet_dt_v2 branch of:
https://github.com/yashshah7/riscv-linux.git

Change history:
v2:
- Set "status = disabled" in DTSI file and enable it in Board DTS file
- Move PHY related nodes into board DTS file

Yash Shah (1):
  riscv: dts: Add DT node for SiFive FU540 Ethernet controller driver

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi          | 16 ++++++++++++++++
 arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts |  9 +++++++++
 2 files changed, 25 insertions(+)

-- 
1.9.1


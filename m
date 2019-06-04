Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3817333FE4
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2019 09:20:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726941AbfFDHUP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Jun 2019 03:20:15 -0400
Received: from mail-pl1-f196.google.com ([209.85.214.196]:33465 "EHLO
        mail-pl1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726939AbfFDHUI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Jun 2019 03:20:08 -0400
Received: by mail-pl1-f196.google.com with SMTP id g21so7993519plq.0
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2019 00:20:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lbYhG2IuSKiELmsG7X1sFgDmhYmR01xHFlPBc4Rg+WY=;
        b=TyAq2VbaGgul2cYABt4qMWYSUDODaZK9Ip6g+GuxTxEUbFvrxrfTSxlVN2hCfD9QUy
         IWd3h8THlWspb++nEXiB0oyQxxe5PO9+wWHxyxS9OgJHt5CuWKfZhoeRQ++YZT4SW7VX
         zt8ilbOjYdjyCjr/kSwtRGErLi0MGl5NVQ6yvEX/HoZSzQ6Fl9gsfK9PC+bf7ifWE7v1
         0JUfDgzYcJUo5DOUSvbOtJbBRT4lvNvVcC/1ACUZRT+vp9qFHeuxgshuz1HYfI/jyt6k
         vGb2sHjLQaobG18OSqhaOrNqobFkfkMXnz2E2HaDwEzr3k+ddOj5ZRgn0kepYzTDeWm6
         fbbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=lbYhG2IuSKiELmsG7X1sFgDmhYmR01xHFlPBc4Rg+WY=;
        b=Ajpu2Oy3tWYmPzJX1NOvfFM3GTSu4i+h/iMA/p1rykmxoM74BHcI5Ig8jbHvzdYdX3
         MAzt9ShzUmFWJp4ALkIlizQLWrhJCLtjDbUrJ7BA6jEDuhGw4sjt3WyQZDdTuVdIZufV
         7/5EozCRpKQGCjDKJaGk5qGNFk8opQzkgwiXrF6X68sN1LW6K61kieRDX38KN1puiQSD
         9sJM1y9RyvintOQf0bwM9YAuavIPFuNRGqSkvKcCzCnlfSa3CC4/0rjkeDMy6PxUT85o
         euppN3YQZTLcOVvWEJKh8H1sgy3VCmSUgK2EW0NPQADTDvbXl8CA6MVsbptGJPrJhRQP
         KliQ==
X-Gm-Message-State: APjAAAWwPACPxqgTzhIhk1xRpr4vewUSZmToSEse8qcSxPaPXln/JVgl
        YK5XoEAD+Tu7n+uS97l/5l/6EQ==
X-Google-Smtp-Source: APXvYqwuduypUPwxFGsMyc5LSMguOHIO06/P46IPWcXnuuwx7EkUWP0+5LJTNqgrRVQQxdMrnHrFHw==
X-Received: by 2002:a17:902:a582:: with SMTP id az2mr34517864plb.110.1559632807726;
        Tue, 04 Jun 2019 00:20:07 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id d6sm17747446pgv.4.2019.06.04.00.20.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 04 Jun 2019 00:20:07 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Pedro Sousa <pedrom.sousa@synopsys.com>,
        "James E.J. Bottomley" <jejb@linux.ibm.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org
Subject: [PATCH 3/3] arm64: dts: qcom: sdm845-mtp: Specify UFS device-reset GPIO
Date:   Tue,  4 Jun 2019 00:20:01 -0700
Message-Id: <20190604072001.9288-4-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.18.0
In-Reply-To: <20190604072001.9288-1-bjorn.andersson@linaro.org>
References: <20190604072001.9288-1-bjorn.andersson@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Specify the UFS device-reset gpio, so that the controller will issue a
reset of the UFS device.

Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845-mtp.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
index 2e78638eb73b..d116a0956a9c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-mtp.dts
@@ -388,6 +388,8 @@
 &ufs_mem_hc {
 	status = "okay";
 
+	device-reset-gpios = <&tlmm 150 GPIO_ACTIVE_LOW>;
+
 	vcc-supply = <&vreg_l20a_2p95>;
 	vcc-max-microamp = <600000>;
 };
-- 
2.18.0


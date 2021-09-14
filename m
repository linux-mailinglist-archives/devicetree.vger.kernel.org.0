Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A872140A893
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 09:49:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231834AbhINHvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 03:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56446 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbhINHvH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 03:51:07 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 947DBC061A06
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 00:46:05 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id e16so11371524pfc.6
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 00:46:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=yUIdWvjj9q23RkzkQJPx6zsYTa4SnqwX2qzQZjHmW4w=;
        b=byiAg5C8jSm77FbYRDqhrcvAwhZ5B5wN50oDH4cED0QvxH2Y9uWex/0V6902ETBKR2
         /0HZ9TB8ARBlldDeoINQE8KiP2/FWuqnChBIK26Jmy5gri20OI0BDog+LR9x/MzZsseD
         7edGRUfeFi4X5yJ5S4bO3c7xMGc4VghXeQW5gYnSzSPQEatM7xy01godPiro8yt+iKFD
         51VzXW+oUEkxbitH1NVRj0DzjqjBRV3b/kd/iYojQUz3T22wiN8iuhk+Vx4nJrOtncF8
         /pdwtcRe4B2ZT2xyOeba2m0/cw0TUHO81yFNTUtH/m+c5q2uXvw3CNZVa9X0wL9Ek5g9
         Z1dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=yUIdWvjj9q23RkzkQJPx6zsYTa4SnqwX2qzQZjHmW4w=;
        b=ywfetgxnvEO0fuFttifg34FKzo/0gywgzyh21wid5+k2osqo68TJneDHGmyBp1tO5z
         jFDH3UDjNFy0t/JmcyHbIXhLv/CilpzqO0YSgkGjrxUdWUKD1jlXVruq8O1Z162QT5ER
         1W1wVGW+RPyyeLm4MWng79IDcAMp1KLw1NspnKvppxkvPEUC4pVoFV4AinZyBbLFm4S/
         BtkOn+XOJTwbCfrwuczv960vOSx9P/KYIYOe4/oFMVN28uh7X+YsmjV7bWBFJ9PjJOEF
         CeOMQSxQL+NyTj4KLdpNtmtTXO1r6aQe/kU+Fl28neOaflPqwJ3O4p2TmrdwDhXNf2jI
         +lwA==
X-Gm-Message-State: AOAM533IfHRB+TQrhtfRBB2rdE8684QXvZO4E74qW3z7d2Imd128A2F6
        WqexG1mcEBywk7WFS3defCq/MD8NFiS5kA==
X-Google-Smtp-Source: ABdhPJxnzOsXpAMcB0T5OdV0027JIXHuVA1vnJKKgl1uxVCUqMD4sqwjpcbaaj6TLZb7aZyMZFjhJA==
X-Received: by 2002:a65:434c:: with SMTP id k12mr14497088pgq.17.1631605565093;
        Tue, 14 Sep 2021 00:46:05 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id u16sm6696923pfn.68.2021.09.14.00.46.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 00:46:04 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH 0/2] Add pinctrl driver for QCM2290
Date:   Tue, 14 Sep 2021 15:45:40 +0800
Message-Id: <20210914074542.12957-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds QCM2290 pinctrl driver and bindings.

Shawn Guo (2):
  dt-bindings: pinctrl: qcom: Add QCM2290 pinctrl bindings
  pinctrl: qcom: Add QCM2290 pinctrl driver

 .../pinctrl/qcom,qcm2290-pinctrl.yaml         |  186 ++
 drivers/pinctrl/qcom/Kconfig                  |    8 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-qcm2290.c        | 1552 +++++++++++++++++
 4 files changed, 1747 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,qcm2290-pinctrl.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-qcm2290.c

-- 
2.17.1


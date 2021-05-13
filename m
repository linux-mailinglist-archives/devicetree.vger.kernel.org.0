Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D748A37FCE3
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 19:53:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbhEMRyz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 13 May 2021 13:54:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231435AbhEMRys (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 13 May 2021 13:54:48 -0400
Received: from mail-qv1-xf32.google.com (mail-qv1-xf32.google.com [IPv6:2607:f8b0:4864:20::f32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0D2BC061756
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 10:53:36 -0700 (PDT)
Received: by mail-qv1-xf32.google.com with SMTP id r13so14190350qvm.7
        for <devicetree@vger.kernel.org>; Thu, 13 May 2021 10:53:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=marek-ca.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nLwTH/gQ19iEKMaz/qV61PTvp9y5sz4omGkvP7gez50=;
        b=s7lE0IO6lpihoUDmwGy9e6oqhnUDiidDF/UDwHWx1ULn+cYfAmqkJVWQa9Rett/Knk
         Pwp6T2aWnF117p1dok1CfB83GtHqRrnJt0yJXjTBi60rPrlUqWsv1tWU8BXnPiNg1bbq
         McNwhVGiFSqxfzQDd7Gm0vW57H9+pOMcqZ6z4mQ9Dm8DFNoX0k/RixvPLb8k6dkcCjcY
         pRzjg1VN1vFP+RHGQ96GjZX1aPVtFaEyxMbAWD4Sn3ODzEhi8G2lYxXbO/gus/dRznOM
         4fzDHglojuNcUrpVALsLh5fhcHMUj/P6TG1/SjB2HLz05fAZ63RfLRA7Nh0bPMlryZ15
         9NXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=nLwTH/gQ19iEKMaz/qV61PTvp9y5sz4omGkvP7gez50=;
        b=YnOX8hPF90g+rE1fDBHExW9Kn73iR9IRFy1p690RjuCYbXP0A5bWtU67wBNjb67595
         BDsXd/4IFFwxa+7FlCH1xH4BdfHD32az3yKeOMjdUQWxSOVi+H2GH4lvQJcr5UkCh2DN
         IOGvkQwvJGXuPewhgzppZpRzk7V07/vPcEIudqaEVnf/xeDkh3tY1KVkn5LhKPBnbypX
         YWbpj8g8tG5DwATcQrQ4C1w+4wbaCOwNf0whzPLk/+TtyL0CkoVawakh+lom1Zwlvv5U
         VA0lwZH9ZyueFRRhLlPmQkJ7HX1Zd+oyNq9+EwLjKrcq8Zinpb8650OkynudkvFGMDQS
         N8hA==
X-Gm-Message-State: AOAM533pif8DAgfWDkSkUYE1UgX6pA7ciTmY9BtFOx1Td0u2yAQ1mujo
        xbVFyO2jGP1hO/gBkp3O68vWJw==
X-Google-Smtp-Source: ABdhPJy2680bpB24Wz9PUzNflK/5YmhpzCdwvjxM47ns5X1f6pEG6ks4oLS7/Ft4I7szLGpdSszYmQ==
X-Received: by 2002:ad4:4f2c:: with SMTP id fc12mr15523470qvb.49.1620928416053;
        Thu, 13 May 2021 10:53:36 -0700 (PDT)
Received: from localhost.localdomain (modemcable068.184-131-66.mc.videotron.ca. [66.131.184.68])
        by smtp.gmail.com with ESMTPSA id m67sm2778736qkd.108.2021.05.13.10.53.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 May 2021 10:53:35 -0700 (PDT)
From:   Jonathan Marek <jonathan@marek.ca>
To:     linux-arm-msm@vger.kernel.org
Cc:     robert.foss@linaro.org, andrey.konovalov@linaro.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org (open list:OPEN FIRMWARE AND FLATTENED
        DEVICE TREE BINDINGS),
        linux-clk@vger.kernel.org (open list:COMMON CLK FRAMEWORK),
        linux-kernel@vger.kernel.org (open list),
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH 0/3] clk: qcom: Add camera clock controller driver for SM8250
Date:   Thu, 13 May 2021 13:52:52 -0400
Message-Id: <20210513175258.5842-1-jonathan@marek.ca>
X-Mailer: git-send-email 2.26.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for the camera clock controller found on SM8250.

Jonathan Marek (3):
  clk: qcom: clk-alpha-pll: add support for zonda pll
  dt-bindings: clock: add QCOM SM8250 camera clock bindings
  clk: qcom: Add camera clock controller driver for SM8250

 .../bindings/clock/qcom,camcc-sm8250.yaml     |   73 +
 drivers/clk/qcom/Kconfig                      |    7 +
 drivers/clk/qcom/Makefile                     |    1 +
 drivers/clk/qcom/camcc-sm8250.c               | 2456 +++++++++++++++++
 drivers/clk/qcom/clk-alpha-pll.c              |  245 ++
 drivers/clk/qcom/clk-alpha-pll.h              |    6 +
 include/dt-bindings/clock/qcom,camcc-sm8250.h |  138 +
 7 files changed, 2926 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,camcc-sm8250.yaml
 create mode 100644 drivers/clk/qcom/camcc-sm8250.c
 create mode 100644 include/dt-bindings/clock/qcom,camcc-sm8250.h

-- 
2.26.1


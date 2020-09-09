Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8F8602632A7
	for <lists+devicetree@lfdr.de>; Wed,  9 Sep 2020 18:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730880AbgIIQsk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Sep 2020 12:48:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730930AbgIIQHj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Sep 2020 12:07:39 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2479BC0612FB
        for <devicetree@vger.kernel.org>; Wed,  9 Sep 2020 07:43:01 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id a15so3920215ljk.2
        for <devicetree@vger.kernel.org>; Wed, 09 Sep 2020 07:43:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6qDammCrp0EwptO3CtGoLqfo/rfLYjc1bnqq0Kza7Dk=;
        b=tD1KRG99K87Slut9PsLD50bnWV9IHs11Nt4RlM90goxiLCSr9qyu1410xG6SClag6H
         YY0ODvIYZojAHdwdoKhUe2PXv3AJVY7jLbZDYDuqX65dp93gxqhr/0EcTkH/VBl71W0k
         80vfCfofoM4PYefyjo8pEwfKufwtJu+jfONlJ3MsIjZ4ers1TbTk8USOODO1UUgwpF1I
         vlriawyCAdUTXHwyQQntwnEnbAE/3qSyLOC/UpyfNKMTY2qt2aSKsa8jSyJhFDIuqDrp
         1BeY6PwsaJCIDYdKMDwSzF/nBr/8mhM3l1gc6s+P+iTlk6Jb0Xw62GFWRWLmuKOAkkIO
         enoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6qDammCrp0EwptO3CtGoLqfo/rfLYjc1bnqq0Kza7Dk=;
        b=Ddgy4J8S2ORn2s0NHtlqSehHbl79DRST9WK+XD/bnXBsl3UifSboq0FGsQKabAQHWy
         SQgcHizeUbGCtktLR0Ah/3DEe3zX6xR46au76QI+GQQBoOhqR0S3NoG6DrPbLIK0snaQ
         ajApwK8JLHrkFB1by9Yc5r4Vu9lWt1Tg43tjyr7e441c6uVtMLC83ZX8o6IcMxOoOvw0
         yTQ40pYC2wVQMRo2k3nD6t4Juw1CUNRc8MGr6kVGLBUB6vwKrjKDOPBsnM5XtWA6RzFx
         hUo7A8DDYWj5uLIrn2PpULhW93CwH/aueGk4SK/t8j1zW5bN0Z0BLqaAjDa9TRWRu32o
         IRKA==
X-Gm-Message-State: AOAM5301lE86u3WbgvUzZ5DWjGi8z+WkwaYd3qNgDyDfkOtRkqffSaRU
        m49DJK7bEZMV2mzzWZb71jeJgw==
X-Google-Smtp-Source: ABdhPJxEuBTT8aEEjg3YXCValq4V9u4nYF0bTkCsaxt0ed3aIi4553PjjA3SvY86niYRjVh+SNxeDg==
X-Received: by 2002:a2e:b615:: with SMTP id r21mr1938629ljn.341.1599662575775;
        Wed, 09 Sep 2020 07:42:55 -0700 (PDT)
Received: from eriador.lan ([188.162.64.155])
        by smtp.gmail.com with ESMTPSA id t12sm621665lfk.26.2020.09.09.07.42.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Sep 2020 07:42:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Jonathan Cameron <jic23@kernel.org>,
        Hartmut Knaack <knaack.h@gmx.de>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Peter Meerwald-Stadler <pmeerw@pmeerw.net>
Cc:     linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 00/10] qcom: pm8150: add support for thermal monitoring
Date:   Wed,  9 Sep 2020 17:42:38 +0300
Message-Id: <20200909144248.54327-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch serie adds support for thermal monitoring block on Qualcomm's
PMIC5 chips. PM8150{,b,l} and sm8250-mtp board device trees are extended
to support thermal zones provided by this thermal monitoring block.
Unlike the rest of PMIC thermal senses, these thermal zones describe
particular thermistors, which differ between from board to board.

Changes since v2:
 - IIO: export of_iio_channel_get_by_name() function
 - dt-bindings: move individual io-channels to each thermal monitoring
   channel rather than listing them all in device node
 - added fallback defaults to of_device_get_match_data calls in
   qcom-spmi-adc5 and qcom-spmi-adc-tm5 drivers
 - minor typo fixes

Changes since v1:
 - Introduce fixp_linear_interpolate() by Craig Tatlor
 - Lots of syntax/whitespace changes
 - Cleaned up register definitions per Jonathan's suggestion
 - Implemented most of the suggestions from Bjorn's and Jonathan's
   review



Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 61534506583
	for <lists+devicetree@lfdr.de>; Tue, 19 Apr 2022 09:17:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238473AbiDSHTp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 19 Apr 2022 03:19:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240187AbiDSHTo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 19 Apr 2022 03:19:44 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 148D72E0B2
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 00:17:01 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id ks6so31036906ejb.1
        for <devicetree@vger.kernel.org>; Tue, 19 Apr 2022 00:17:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=9elements.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xF+L42vmwgqpFk1Raax8ErraSrqGWI+UPWjuXhYPhCI=;
        b=BF+uHh+YT4XGD2YTZLTuVfg3yh35DCkVGY9GKvMUfoVEt5bIXsEeoh1CjpDTSXLeax
         mrZntq7LPTs2EDSL43ea9Rbxl0OmDdWYYkiStPfmkGVqKymLRIA5PwBZr2VYBs1DWh7Q
         dom469TiTNTbhpe4shnm8uQV8MeTXYXvAsJ+IRMn93Pix2d8RUetv9Zsbcm7fwK/fT9B
         RI5uz9PjdMDIsUnr2GsOLm8ApNytI6Ww7tkvFYioxkUWzkwgDcnUe3BPxnCNLxzw079c
         5Bkxy20//osezPfk+LiJwXUqtO4/glG1rC/RIAV91FrDgW0k5S7UfoK1S3P/gonsYJr8
         Atig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=xF+L42vmwgqpFk1Raax8ErraSrqGWI+UPWjuXhYPhCI=;
        b=lNoaEFhQL+AskzF4YR4ztqr3jJJO8MQB0Cm4cI3fqAy0RkEO5AMaLWjI3pppawTuvK
         1Xm5TOViR+mBtmyhEf0AEan4s1/XH4KnJnMXJgLXOODm+U+7QU7Ulde8njzowuIwOHcH
         bQRjV8zPy1lXlEw7YWoJktK5WRbPf9GKRjSNReagI8cL6ZYl/SKpmr8CbwDdjQv1QHIb
         TF0W3zVrqIKSVXJoXMTt8PPFKm/VwqYI4krnZNw2KqDQlS2UaK66JObOMxokGx4JaeUt
         c/M/S1HUzCJitNhnOFZaCzxCP2j46sI9Iksr1atUHbN7vkSiKbg1surP8EyIMJg+4YA7
         7/9A==
X-Gm-Message-State: AOAM5302fHcrd8jgJD6zpCRVBJI83ztCY521YH567Chentv1V6eI4YQ0
        gYIKWbyWXHYa4Sszo1NzpuBklA==
X-Google-Smtp-Source: ABdhPJxNlwYpA4DWDgFUCHN80Fg4UVycI4ooalc9Jr96yyzW123duOoNxah+ikZ3NMGyapRjowUPCg==
X-Received: by 2002:a17:906:2991:b0:6cd:ac19:ce34 with SMTP id x17-20020a170906299100b006cdac19ce34mr12322551eje.746.1650352619641;
        Tue, 19 Apr 2022 00:16:59 -0700 (PDT)
Received: from fedora.. ([185.190.49.104])
        by smtp.gmail.com with ESMTPSA id k14-20020a170906128e00b006e4b67514a1sm5411596ejb.179.2022.04.19.00.16.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Apr 2022 00:16:59 -0700 (PDT)
From:   Patrick Rudolph <patrick.rudolph@9elements.com>
To:     Patrick Rudolph <patrick.rudolph@9elements.com>,
        linux-gpio@vger.kernel.org
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add support for cy8c95x0 pinctrl
Date:   Tue, 19 Apr 2022 09:14:59 +0200
Message-Id: <20220419071503.1596423-1-patrick.rudolph@9elements.com>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Patrick Rudolph (2):
  dt-binding: Add cypress,cy8c95x0 binding
  pinctrl: Add Cypress cy8c95x0 support

 .../bindings/pinctrl/cypress,cy8c95x0.yaml    |  139 ++
 MAINTAINERS                                   |    6 +
 drivers/pinctrl/Kconfig                       |   14 +
 drivers/pinctrl/Makefile                      |    1 +
 drivers/pinctrl/pinctrl-cy8c95x0.c            | 1388 +++++++++++++++++
 5 files changed, 1548 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/cypress,cy8c95x0.yaml
 create mode 100644 drivers/pinctrl/pinctrl-cy8c95x0.c

-- 
2.35.1


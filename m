Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EB5B40F01F
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 05:04:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243481AbhIQDGO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Sep 2021 23:06:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243473AbhIQDGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Sep 2021 23:06:14 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 29202C061766
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:04:52 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id c4so5216077pls.6
        for <devicetree@vger.kernel.org>; Thu, 16 Sep 2021 20:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=xfWLMEnzqQR6BIE1mrFkeIl5FyjRfgu7/fKn/trtwfw=;
        b=VbCmsAOiAPn/MfnVJTvWqSXqMPyS5YLX+2NNDlGtOSM+864NXmsBuBGRoUtfxlKpCl
         hZtw9GZiF2oXMLLL8Z1JrGU/hiMBjiNFDat2cvixKGNzHU+XWlna3gytdnT1isVWnAdZ
         mJGf9DUb6w+RMt2k5X4zLGqEz57baAW7WqNYnCO6ORi1wi3eZqMDyxpp+qNbzchojMN8
         OUzf39rX8NNVrAdBEGEtS8ac6LTxx2UqJwOP0um6+GfBg4tj9KdY5JC5EPIEynQQ03Sv
         thtL1sfZ+bu8qlqVZ6i71WLbBiPv5lJipdaIBwnmIcR2M6qNRuKln+B2bVMP53YDw/39
         thUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=xfWLMEnzqQR6BIE1mrFkeIl5FyjRfgu7/fKn/trtwfw=;
        b=QmoAZCgcjKVCXdaOeITOVgOH28USE9XZj65liaZwIzWRpPmizIdP5EBfkCQ1XC6/2y
         eCOz6HZYAJBn2lPsWEzrj7H00IJdjC84uvMoGRTVumXknP69GnDIJlih24djKWLnEIZK
         V2nJevPDuCvfIlTYJOQ8HS8KWkhXsUYZ5L3HQMJkmZ/AqpkkrBZz80mpnqACoIvItEQ9
         7LH+P65YB6dDRCy5QnuL+u7iwzRnQFz+kSEsbz4f/TvVlp8GefkJXDKUZrRDhu+qigoO
         3IVxdJEWvLTtWa7y2zQxvVRSRo1pM+SNuwczMZYNy28q7wUQal/uxk8mSMJUUBYT/FTP
         BX+w==
X-Gm-Message-State: AOAM531N37J/qY2o14NOFzEOlQrlEbSOgL5YY53/jWxuXHEL2Q92i5zQ
        h+1YrSmiSXPOTziykx/ePWi60A==
X-Google-Smtp-Source: ABdhPJwVZGAnX+2ysP6GEehgG9kVZxzPc74SiVh/9WTG2vVLMNsyjMPOSFfGOArdlV++viZcnGY50g==
X-Received: by 2002:a17:90a:de0b:: with SMTP id m11mr18599261pjv.39.1631847891465;
        Thu, 16 Sep 2021 20:04:51 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id q2sm9133930pjo.27.2021.09.16.20.04.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Sep 2021 20:04:50 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Stephen Boyd <sboyd@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Loic Poulain <loic.poulain@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH v2 0/3] Add QCM2290 RPM clocks support
Date:   Fri, 17 Sep 2021 11:04:31 +0800
Message-Id: <20210917030434.19859-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The series adds RPM clocks support for QCM2290.

Changes for v2:
- Use `rate` field of clk_smd_rpm to report branch clock rate, so that
  only .recalc_rate hook needs to be added into clk_smd_rpm_branch_ops.

Shawn Guo (3):
  clk: qcom: smd-rpm: Add .recalc_rate hook for clk_smd_rpm_branch_ops
  dt-bindings: clk: qcom,rpmcc: Document QCM2290 compatible
  clk: qcom: smd-rpm: Add QCM2290 RPM clock support

 .../devicetree/bindings/clock/qcom,rpmcc.txt  |   1 +
 drivers/clk/qcom/clk-smd-rpm.c                | 135 +++++++++++++-----
 include/dt-bindings/clock/qcom,rpmcc.h        |   6 +
 include/linux/soc/qcom/smd-rpm.h              |   2 +
 4 files changed, 111 insertions(+), 33 deletions(-)

-- 
2.17.1


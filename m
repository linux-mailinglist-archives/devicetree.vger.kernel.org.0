Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1C3F22660EE
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 16:09:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725891AbgIKOIJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 10:08:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41796 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726236AbgIKNSO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 09:18:14 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A9265C061796
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 06:09:58 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id m5so5774999lfp.7
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 06:09:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gyAVD2/7eQMwmMsDIWtFg83MjKgwXKVIZHVL6P751nE=;
        b=x3y6A4MAY6n7VWnN3GdxAjqDmcmYgJexmDZOwVXnnSpdupm/6aDsekwfGhsg6/rsVB
         qMvZYlavwXzNWJK5+cqSopt/Z71zXNFxc7Pra7faj5rp+Z2do/+FG77EsX9Yp/hS3QZY
         FXUFNfaeKSqjI67hFCrId4ROUuk/EnapEHRk84uqylDApJmmMGHvdoQkCyeIrm3GNa++
         SRVRMrMyH2R6bPHOkrfArvINFqBVufkuxIVBnjGsKj1KwzadMnbW/hwst/SUt3FD8YGp
         oARpSPNt9sYjWXgrMz7yjt7Ugbrv/IccBgJdj2v0MtlLWH2j09ZjZg+Cxi+L2uIvghvp
         vfuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=gyAVD2/7eQMwmMsDIWtFg83MjKgwXKVIZHVL6P751nE=;
        b=LVGcMOwr6DKO42bSRBf8PinvPaT+51LWRAVktpxQR4eY0kUYlYQu3YATeFqjYMZnOy
         Ktk4zEpO0ub3k1fHl4AcswEDG38NF8dtgDfN1s/7Ohx9LgNgHN9dOv0gAWWL50VCq5hu
         aNImddWF2GHBo8GRyJI2QGeoD/4tt5k0euEODfjQBMN2K0e34V1kgh79+5fgw2g2kwxv
         Pt2wgiAD6dOxTKnB4dZoaNRT/eTKp6EMTGfov/WrsgcsP7uzyJ+P4FIqk/X4UDEnHSZT
         Gzw9v41Ql0sauRoYJSXbu9qs3QHUjCNzw2GE7gyNrKf7b3JIEYarUVmE//8pEzCepeAA
         x3Iw==
X-Gm-Message-State: AOAM5300ke/Z1QiWUbXiBpHhQ2DfHFhU003QgsPOeowVQvmYQyXt7GWJ
        P0cUyXK5ZyYkd1xn91/kiGxMxQ==
X-Google-Smtp-Source: ABdhPJz28OVqssUAjaSDyYKCAhMqBA7Wu0lxsEp5PcQc6jWsbUnkPaFtiPZWSvCFhsLjiymRpOGV0Q==
X-Received: by 2002:a19:df53:: with SMTP id q19mr726587lfj.119.1599829795908;
        Fri, 11 Sep 2020 06:09:55 -0700 (PDT)
Received: from eriador.lan ([188.162.64.141])
        by smtp.gmail.com with ESMTPSA id 10sm429500lfq.64.2020.09.11.06.09.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Sep 2020 06:09:55 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>
Cc:     linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org
Subject: [RFC 0/4] clk: qcom: handle power domains links for GDSC
Date:   Fri, 11 Sep 2020 16:09:46 +0300
Message-Id: <20200911130950.578483-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On SM8250 MDSS_GDSC requires MMCX domain to be powered to access GDSC
registers. Handle this requirement in the gdsc code by binding the power
domain via dts file. The example in the schema file demonstrates this
binding (which is not required for SDM845).



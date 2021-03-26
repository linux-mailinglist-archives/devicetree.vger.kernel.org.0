Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7FDC234AE19
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 18:59:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230209AbhCZR6m (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 13:58:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40516 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230233AbhCZR6N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 13:58:13 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15EE3C0613B2
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 10:58:13 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id f16so8421691ljm.1
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 10:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PcQzTMILK75vkJ7HrFpUsFeadhrqqgnoJj8l6pMg2E0=;
        b=cCmVEkNAO3CSNkizj4S0CRatIlx/hUglkQbwApjM7ENh8SwPcOpZs1uMzs0IhHFffj
         +zPKkHr6LEPRvPliUxpOhsdQVhQNqATADL7DLHol6UhdDNNTT72BC4AxkRnVbc1gICOb
         ByWrEnKtbQ9aNvEnhj8BGxaYzGzUjSs/gme/7iIZdBS+kCUtjRRcFKS1X9+fDvJksJeM
         EsOGRzJhlXL6rXmQfvPqq+LBG4bbThRjjEpfD6B4JaprJ29fG64otsF4/IxvOGS08wTE
         nIl+AzGFYfJP9aaQw9ixIDQoEiOHnf2FGxJRW/nP60DFbBtJvN9Bg0u8MRjDEV1+9b1B
         aJbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PcQzTMILK75vkJ7HrFpUsFeadhrqqgnoJj8l6pMg2E0=;
        b=hmbEunwu78nBDZ72zPXUK0MwMyzdYb44rIVtC3lA46+aaWXMqNNKidJtdhiq0GcAXu
         RGSaFisjs1CvJJuRlP+dCx3KPR3LM4DuQXtum0fsWKNRiBHiIf3AHb7yRNpCyS5RD10G
         RDFWJFGQsAx48oZuu2kNtUGnQVazibp7mBdWjbzyyxG+HPtd7rTPNPXXJgS6wOnY3gYU
         HGiEjmj4JQvMvNfJkqeYlvEHMCcOlso8Odfutl3fScaM25B+f5FQNeMElDl+U4agaZQG
         zMBEOpbk/+zO2S/Kn2sX1Td1g8ED2+iGx6DhQYudzwjaYWRtqgZeumVZDsPZ+lbOjLor
         fjHw==
X-Gm-Message-State: AOAM533gyDcfQ8VoY54EpwyYuupPHgl8VSgxGKE4RG/UiXTsvYHvc8hl
        RCiod2nEI35xIcRPZCXFyKwJdCCpmDh+Bg==
X-Google-Smtp-Source: ABdhPJyI9bZ1TlxCCO1oNWqQBchjpGf81z6SKUqDj3MKClhNympPrzkOi3o/ISuyUNtfEsYQFoWacw==
X-Received: by 2002:a2e:545e:: with SMTP id y30mr9897883ljd.46.1616781491377;
        Fri, 26 Mar 2021 10:58:11 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id f3sm1249554ljm.5.2021.03.26.10.58.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Mar 2021 10:58:11 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Manu Gautam <mgautam@codeaurora.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Jonathan Marek <jonathan@marek.ca>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v4 0/7] phy: qcom-qmp: provide DP phy support for sm8250
Date:   Fri, 26 Mar 2021 20:58:02 +0300
Message-Id: <20210326175809.2923789-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Changes since v3:
 - Move qcom,sc7180-qmp-usb3-phy and qcom,sdm845-qmp-usb3-phy from
   qcom,qmp-usb3-dp.yaml to qcom,qmp-phy.yaml
 - Do not touch qcom,sm8250-qmp-usb3-phy compatible

Changes since v2:
 - Drop unused qmp_v4_usb3_rx_tbl

Changes since v1:
 - Provide dt bindings
 - Split register renaming from sm8250-dp-phy patch
 - Add respective changes to sm8250 device tree




Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 361EC22FFF9
	for <lists+devicetree@lfdr.de>; Tue, 28 Jul 2020 05:15:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726998AbgG1DPR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Jul 2020 23:15:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44368 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726989AbgG1DPR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Jul 2020 23:15:17 -0400
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com [IPv6:2607:f8b0:4864:20::1041])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E8EBC061794
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 20:15:17 -0700 (PDT)
Received: by mail-pj1-x1041.google.com with SMTP id ha11so3387905pjb.1
        for <devicetree@vger.kernel.org>; Mon, 27 Jul 2020 20:15:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PD2ZLQCvLaWVcoV1PzZsr55F59ipm51nH9LfNuI1BWE=;
        b=EjwAA3KCQnsgyym83+P1cOxkyODRcSK9IpoGYOEK8mo9VSqUL4M+G3WzSpNJSRYQA9
         y586nY0JjXTtfFnWhUCaxaE/0h4A5BMb85AH2INGsMulbg6VPaM/sY6p2gGS3DSzIqlX
         boAOW4/CtUL/7SK30IKifPmDizDBLglxmwmJh9IqHU/TYIA5Ru0CPlWcQ3nU0eQhDO5T
         Gtx4lpvl0TnG/jCP92EzfoGeSIQRbklRXSZmbE92OyLda3zwF7BtF6C/OB5EweH1I6e7
         qKnPgAMoeLt4IVhHIvneIRBJkhNGkLh9ClXVIslrK10smMjWzOTuc4hyJddRtz3Q2vDv
         XdyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PD2ZLQCvLaWVcoV1PzZsr55F59ipm51nH9LfNuI1BWE=;
        b=lZZUxA9bl9rIZoyYQ+nmiVP2HjGoYFiKZ64L4pRbBfgYxu3JaDLufpsufJpgKfI9P4
         SCxnCS2B6LH2E1lzLp3tLKqPm6xLsIi5+ipIq8m4+cPU5mvvYEnrlVhnRtvPMJVTdM3T
         /Xvvyb9sKCzm0KBYjumj7NHhnsiEiRxxTOaDGVhQwP2aw/bxDZDRkbB5fRrBKsjhy14S
         cTbZW1yzOqIQPbnRdqFcyF3c13+61wS0AUIrVllRChWg7X3u3XPMcrV7Tpup3ChflGOA
         o/hbudxRKnwQf9jTRneCr/kMt+r/luXjtcR2z6SPaqlarCXTb99eyhMIUCv6VDt9J4pT
         Cflw==
X-Gm-Message-State: AOAM531NNWZOG7pidixEJadBFwkYiz2vE4ff3xUm8SJ445d+sROGgRfr
        0N1aVKdk9LFWaNZ3tXeB6HsOUA==
X-Google-Smtp-Source: ABdhPJzhKrz0Xncjr22aQGFtwZngq8XVXIgQIPz03Ds2RskP8S8nIqrepHCZERgvSrGwYwgIXpZ4iA==
X-Received: by 2002:a17:90a:7805:: with SMTP id w5mr2362904pjk.192.1595906116854;
        Mon, 27 Jul 2020 20:15:16 -0700 (PDT)
Received: from debian.flets-east.jp ([2400:2411:502:a100:c84b:19e2:9b53:48bb])
        by smtp.gmail.com with ESMTPSA id s10sm3895285pjf.3.2020.07.27.20.15.13
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 27 Jul 2020 20:15:15 -0700 (PDT)
From:   Masahisa Kojima <masahisa.kojima@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     masahisa.kojima@linaro.org, jarkko.sakkinen@linux.intel.com,
        linux-arm-kernel@lists.infradead.org, ardb@kernel.org,
        devicetree@vger.kernel.org, linux-integrity@vger.kernel.org,
        peterhuewe@gmx.de, jgg@ziepe.ca, Rob Herring <robh+dt@kernel.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 2/2] dt-bindings: Add SynQucer TPM MMIO as a trivial device
Date:   Tue, 28 Jul 2020 12:14:32 +0900
Message-Id: <20200728031433.3370-3-masahisa.kojima@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200728031433.3370-1-masahisa.kojima@linaro.org>
References: <20200728031433.3370-1-masahisa.kojima@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add a compatible string for the SynQuacer TPM to the binding for a
TPM exposed via a memory mapped TIS frame. The MMIO window behaves
slightly differently on this hardware, so it requires its own
identifier.

Cc: Rob Herring <robh+dt@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Masahisa Kojima <masahisa.kojima@linaro.org>
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index 4165352a590a..814148939e5a 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -328,6 +328,8 @@ properties:
           - silabs,si7020
             # Skyworks SKY81452: Six-Channel White LED Driver with Touch Panel Bias Supply
           - skyworks,sky81452
+            # Socionext SynQuacer TPM MMIO module
+          - socionext,synquacer-tpm-mmio
             # i2c serial eeprom  (24cxx)
           - st,24c256
             # Ambient Light Sensor with SMBUS/Two Wire Serial Interface
-- 
2.20.1


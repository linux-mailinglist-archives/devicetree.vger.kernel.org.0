Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C84C31BEB0
	for <lists+devicetree@lfdr.de>; Mon, 15 Feb 2021 17:19:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232053AbhBOQQD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Feb 2021 11:16:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232672AbhBOQCT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Feb 2021 11:02:19 -0500
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 06E35C061756
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:01:39 -0800 (PST)
Received: by mail-wm1-x329.google.com with SMTP id v62so277201wmg.4
        for <devicetree@vger.kernel.org>; Mon, 15 Feb 2021 08:01:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qVi2asKzshWypR7bbgIXENQcCOBqkClEsBrr9Og5HKM=;
        b=qQjQOmlQ+i2DtlRSR+ZREMAk6bQoYvrQmulqXAslb5R0HcwtStOCV38BaDoDFb+QxI
         cBVilUbXHxQqfwlLuzwj7db4T4wQbI9LeI/8aiYz8sHAgzGz+ZuSBjLyoX66rH3cx4Rg
         b6R+ouYWLT5TRulMdaKBfW+exQoK3iP9y0221VRD4OK92jMrYvwdBhW+9VYF4xgVTWqa
         7QFCmQIuX+e1vmEb80c5pup+XfsRZ9Ru7rRJmvnchGZVcn3lL0dXjM+KDYPtnXknDGjT
         q5x4cM8lpRmqogLifuOfohYDSG67T/L9Ubmzul69UlhjpWHuxi8p8YprJSw/1sXlfIn2
         HpUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qVi2asKzshWypR7bbgIXENQcCOBqkClEsBrr9Og5HKM=;
        b=WUrrx7nvkFU5IV1SYgIrpeY5nahLArLVach6kPYDQmHbVsN4q7q5GFGbhVbCwfeX7b
         aWPMYf6HqDAXojKiUnsG8qOn2II8nyFZ65V+ZyGf0D90hNDbMYMaD6WxmIt1bt+LysBL
         siY/LvwUqLCalHMOdaIHUMDDmq7jVWpeN/ovAqxgYEDbCt3qGKCknmgHCUN5LQ5CMTCv
         F1dklQra6mpl6X5/ORPOgTxEu4DSjAGosjsrxwiOJGKbahI/8jQVJgiXKq6qu/RAdtFv
         3xtxBC5GeHkg31qVSaYgs6HtqPE6gxfMhUEibAg2VXeFUx0xDFnnX3Abt6DChxSUZIZJ
         1crw==
X-Gm-Message-State: AOAM531DZiBcMTP1etpAsJBi2y2gOis67HHh5HENWEqsv5ghOfsaf3eZ
        knLdLhdT1LGqhhYkUl8cyy2ctg==
X-Google-Smtp-Source: ABdhPJymMFTwrQGWLGhDotRu7nCII2/VtA8JFVw14S16aJyHpixyf+1trogskmDCGGNeTWwhyO7CUw==
X-Received: by 2002:a1c:6308:: with SMTP id x8mr14943396wmb.78.1613404897690;
        Mon, 15 Feb 2021 08:01:37 -0800 (PST)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id 101sm14698659wrk.4.2021.02.15.08.01.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Feb 2021 08:01:37 -0800 (PST)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, stanimir.varbanov@linaro.org,
        agross@kernel.org, bjorn.andersson@linaro.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH v2 0/2] Add dt bindings for sm8250 venus
Date:   Mon, 15 Feb 2021 16:02:52 +0000
Message-Id: <20210215160254.1572615-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

V2:
- Adds a dependency patch already present in clk/clk-next for reference
  9ba80d849c83 - dt-bindings: clock: Add missing SM8250 videoc clock indices
 
- Fixes yaml clanger
  I completely neglected to run dt_binding_check on v1, my mistake, fixed now.

Bryan O'Donoghue (2):
  dt-bindings: clock: Add missing SM8250 videoc clock indices
  dt-bindings: media: venus: Add sm8250 dt schema

 .../bindings/media/qcom,sm8250-venus.yaml     | 165 ++++++++++++++++++
 .../dt-bindings/clock/qcom,videocc-sm8250.h   |   2 +
 2 files changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/qcom,sm8250-venus.yaml

-- 
2.29.2


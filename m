Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E8970639CA6
	for <lists+devicetree@lfdr.de>; Sun, 27 Nov 2022 20:56:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229558AbiK0T4g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Nov 2022 14:56:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229509AbiK0T4f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Nov 2022 14:56:35 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEDA2DF50
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:56:34 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id t17so7648606pjo.3
        for <devicetree@vger.kernel.org>; Sun, 27 Nov 2022 11:56:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=juq5/mjC/KKXPH5Eez7pJsfr8RT85fZqcCMfwuxrs/M=;
        b=EJz24sx9HV4+nfAGByt9QAB3IEhPbrtR1EhvxRRae/kWs5PBc3/LGA7Di7A/LsofmL
         Co2eXjPPEh5yzYPRtvsorqprGcrleudUWAa7cNRHsFrXEuHkuT+/zX3r/KvPWdTrNuxF
         je009dBdNh5dJ5q7NCX0nBKbYgNOw+Bg1yhkk/vTjekHgtV2YajnTOwLsh2kt8a3G+gJ
         TlLv5EfwGlJ35MPtzvLDul2O8qyzqVvVrG2ajFNWzEqeX+Bmn6IZFrZMCYByNs69RZWY
         QzikZvw2FOII8kgZi8PELs9ijzJ7cLRWMFPMIf4cSeR6S7lV/rlUIxKWrXbIFXXu4zQz
         W9KQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=juq5/mjC/KKXPH5Eez7pJsfr8RT85fZqcCMfwuxrs/M=;
        b=DrI/8vv7gAq6RJFqXcThSQyK83hQBdrfbGg+kTrp9eYSH7FCQpZc66VzH58XOdRKsP
         y2pY5O82MRseWB25TmXaF1FqTeEbTLQkDZby15OzUmuflkIQ3EijHIMENrfWiw1EraWU
         o3eRWbyR0GAwaQN4gdlHs9ty1Z+wgCHW9tmKL9ALeBUEx+rgSgf1+zy0ap6sPnI99U+n
         b4GziqAqfY9DDVZkYbEnlpDyq9YAHNU1y1mgZ8qgLbyNbYzkGIhVrQXPLn22EXxOMp0K
         HPcyhlUnwV6ACQrfO7qxgQN6ip6vdR9yRqO0BPTqyxkVnkAMo1frpQlTDNCHjb3GuQ55
         8soQ==
X-Gm-Message-State: ANoB5pmlXvbKG8q0kq3b0BtG5A8iGilwKfo+aBPtfrtcKqViPBnD6BpL
        Zi2R27SlC/9WU/5FW5LlQoY91g==
X-Google-Smtp-Source: AA0mqf5Xy7d1FDxM3SQk8hovsH+Itwl6eIGMuNOyoH4njhj23ei2tlC26P5B6VDHB37sPWpVG5Mtxg==
X-Received: by 2002:a17:902:db09:b0:188:7dca:6f4d with SMTP id m9-20020a170902db0900b001887dca6f4dmr42119770plx.68.1669578994168;
        Sun, 27 Nov 2022 11:56:34 -0800 (PST)
Received: from localhost.localdomain ([223.179.131.184])
        by smtp.gmail.com with ESMTPSA id n1-20020a170902968100b00186616b8fbasm564636plp.10.2022.11.27.11.56.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Nov 2022 11:56:33 -0800 (PST)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     jassisinghbrar@gmail.com, devicetree@vger.kernel.org
Cc:     linux-arm-msm@vger.kernel.org, bhupesh.sharma@linaro.org,
        bhupesh.linux@gmail.com, agross@kernel.org,
        linux-kernel@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>
Subject: [PATCH 0/2] mailbox: Add SM4250 APCS IPC support
Date:   Mon, 28 Nov 2022 01:24:16 +0530
Message-Id: <20221127195418.1506876-1-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_WEB,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patchset adds the SM4250 APCS IPC support.

Cc: Jassi Brar <jassisinghbrar@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Konrad Dybcio <konrad.dybcio@somainline.org>

Bhupesh Sharma (2):
  dt-bindings: mailbox: qcom: Add SM4250 APCS compatible
  mailbox: qcom-apcs-ipc: Add SM4250 APCS IPC support

 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml       | 1 +
 drivers/mailbox/qcom-apcs-ipc-mailbox.c                          | 1 +
 2 files changed, 2 insertions(+)

-- 
2.38.1


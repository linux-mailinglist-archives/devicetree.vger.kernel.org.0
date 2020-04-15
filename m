Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A60D1A92FF
	for <lists+devicetree@lfdr.de>; Wed, 15 Apr 2020 08:14:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2393498AbgDOGOy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Apr 2020 02:14:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S2393497AbgDOGOx (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Wed, 15 Apr 2020 02:14:53 -0400
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com [IPv6:2607:f8b0:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE54CC061A0F
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 23:14:53 -0700 (PDT)
Received: by mail-pf1-x430.google.com with SMTP id d1so219903pfh.1
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 23:14:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HqQvOKqfrHmlAX92Y682AdF2gTPigwd+5eBqOa7fcfE=;
        b=Df5prwBn+5ezXeOmd8ekPAfWpFczjY16mDdI8p+4Df4zHEeJNSIey/YUZdmd2ArmYO
         GJ1oVoj4lzgWnaT0TTHmdXzfvcNCHi8JCId35FXkwqW4c6dzhb5pzDKRlFYn/Feta8eA
         LH1ozPrQgPOZLh9V4iKOJYgXaPwQICXPJlvqRzRLOXatsSbHw3GX/6Uh7w8oV1ClQdLF
         TT5pLTY9AgC3hYk849f/1m9Dv1+RVIVPjnwPQN1Do+ftkAiT7Y7WaUIbowJcjq9UWnM1
         ytAgJ62QB8rA5bcgAaO2o8uYlbuvq1NjDprxzbFbzfktDHiTAlmzt9TpjJSNKJ1EMvz0
         bufg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=HqQvOKqfrHmlAX92Y682AdF2gTPigwd+5eBqOa7fcfE=;
        b=uVjlWeX0LLdK62W8VhntabGzxpygtixgf3zhgXhz2SBOg2kQ3SqFzKC2nGLWviYh8b
         i2ZjDxj12SFhnsSlGKpiIN84tsgotYmFioIt4GytquyRj56VHoH41uxfWGxeWlZj3dic
         bH/+Rjv2zsNeSF7COfXWVdZXtfOXtLBxnmyG/bwZGIqHW9wKuUsy2tgJp/Jg7H7de35O
         QUpuwhqLl2XPv2B1JohFfL8KGGFl9t3fCSa6blQs/AWrWCru8Gjx8N7aS/JHrQkCYK2E
         dgfyguFyB3oLzt0/X3NHeiIJibQ+PdUTOjm7mGJyyIrT3SJTIhsXMzpC/S86u4p7GZW2
         HnfA==
X-Gm-Message-State: AGi0PuaXO9GY/W2sxvB4/8hKZyK/cGj3xEv9ATpZC22LFxrz4I2X6n6+
        Eac4ujvwvj9Ze7jJLn7qXQQ2bg==
X-Google-Smtp-Source: APiQypK4jsIQQbeIVh7i0t4TdFr1EvsteW6AJaD6lxkNT7mK5sIRI0rfopbstmRfzG2YOPYTpTb5HQ==
X-Received: by 2002:a63:e210:: with SMTP id q16mr24711275pgh.26.1586931292670;
        Tue, 14 Apr 2020 23:14:52 -0700 (PDT)
Received: from localhost.localdomain (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id e196sm2939332pfh.43.2020.04.14.23.14.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 23:14:52 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Qualcomm SM8250 regulators and UFS
Date:   Tue, 14 Apr 2020 23:14:28 -0700
Message-Id: <20200415061430.740854-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Define regulators for SM8250 MTP and add UFS nodes.

Bryan O'Donoghue (2):
  arm64: dts: qcom: sm8250-mtp: Add pm8150, pm8150l and pm8009
  arm64: dts: qcom: sm8250: Add UFS controller and PHY

 arch/arm64/boot/dts/qcom/sm8250-mtp.dts | 351 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8250.dtsi    |  71 +++++
 2 files changed, 422 insertions(+)

-- 
2.24.0


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C8862E7FE1
	for <lists+devicetree@lfdr.de>; Thu, 31 Dec 2020 13:24:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726071AbgLaMYf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 31 Dec 2020 07:24:35 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56946 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726261AbgLaMYe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 31 Dec 2020 07:24:34 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 778D0C061575
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:23:54 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id l11so43832325lfg.0
        for <devicetree@vger.kernel.org>; Thu, 31 Dec 2020 04:23:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qZB1AtrBu43JL4Z0ztKUFuHbHEpLk42ePJCa9AP7fR4=;
        b=xR+Hv0rGtfukXZKNZNGVJmQbfDpd+i53Z+xDXjNSkFcONyqjqNBxn3P1ULr2jTqSLa
         YE0fmfUdRNbPHUSTCZJufctzRfPv0gPH/9ycM5OoxX5YqZvP4wsW99tKqvserzJJsMO2
         OGw71AAtnnCygOP9oizhSgukJBJ0uXcQGoiou+dKPc04zmvJikEkbDw6nKJha51AlAp7
         wdLMhz8+PG5MwCwsCpWads/kQaBI2WdEckHR1Kk071fyFcEJo9HAXaG06gqSbryvXj+t
         3AB3BVIT68GH6soSJaFs1kEBhVYwCSC/mX3qDZs5+NtL2m5kIU1x8YCrlD6HANBuLZWv
         qYVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=qZB1AtrBu43JL4Z0ztKUFuHbHEpLk42ePJCa9AP7fR4=;
        b=U/Tnd2CJkEc1kNqO6Upd3OIZZqEQ+5HeqUhSwouN6gFJ9Jl0xsZPFgORB5M8wywPpx
         1OPXGbUBv8svnKJxRCn3YsxZSdxWPEVt586l7EOAdHaDAsHQ1J2uxNlzcQ/ThZzEhTAQ
         owG2G4zRO2RBc3X1N+lItiKu1a7l/9tXJ2tL5s5uYl6WHqPkhcGuuEhNRVT9RhauHsNa
         J5CfeNInLIDGerRlNSAVGVylDeUg6gMTxMNTi08RuatTKRHV6lUV/VNkmEIOBRQW845I
         HX+dJktdMlgAwpw1vAPoNm25mrWH1O6qVhUfEoc2JlTDu0ZYhK/6EW6wZlB856zRDpkR
         u0WQ==
X-Gm-Message-State: AOAM532u6StQyLeAUBAio+tZSnQwPZVl4P4hlljEPpRZGgYAcBLJqrpg
        SjMUW5J/gBEUKHAFVGk0QWu4Eg==
X-Google-Smtp-Source: ABdhPJzmxh3GiL2fCyqYuw7BSqAsk1cvtLafNZwjdu7WZkIaqueJSqbdif9gGfaaTx/DQ4GcAWdjhw==
X-Received: by 2002:ac2:5a50:: with SMTP id r16mr26188243lfn.195.1609417432846;
        Thu, 31 Dec 2020 04:23:52 -0800 (PST)
Received: from eriador.lumag.spb.ru ([94.25.228.115])
        by smtp.gmail.com with ESMTPSA id n10sm428569lji.99.2020.12.31.04.23.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 31 Dec 2020 04:23:52 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] regulator: fix pm8009 bindings on sm8250
Date:   Thu, 31 Dec 2020 15:23:44 +0300
Message-Id: <20201231122348.637917-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


PM8009 has special revision (P=1), which is to be used for sm8250
platform. The major difference is the S2 regulator which supplies 0.95 V
instead of 2.848V. Declare regulators data to be used for this chip
revision. The datasheet calls the chip just pm8009-1, so use the same
name.


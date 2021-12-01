Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7F71A465116
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 16:13:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350707AbhLAPQd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 10:16:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55666 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240187AbhLAPQ3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 10:16:29 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D834C061748
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 07:13:09 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id 7so49055863oip.12
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 07:13:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AQ7Y5deH0rXXKdKCqdtNv2XiuTvDwELjt8AU/Ta3z+Y=;
        b=bDLP6nKAMF7mygKsXaXJNOKH1xRs7vxKWVRxkWZVsMBW1aNYdoKvcaPTL3FTzbzCqm
         J0Bs7Fehv118Mj8FIDtFJB+2jNs4Xn65jgPe0JANDI0SXlKQhguaEXpqiME0cqXbyICh
         PvbDam/HLvb9aCnmWfINXE/esOLqOEX5Qxs+bxjiDLibgBloBcmGFQA8moBJHk3kgn6z
         mqU8K4Zxcz1m+CqOVxe/IjC+c/2A8v48MboqttBVswBdiUR4VtGNdSq06gpG8XCDL0bq
         aBZoUzuoPvwz1GwZOTFDOOIMR8c+sv40afVDiTFFv2SivMcOSeuMincryKKnxB3w0TDB
         +lKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AQ7Y5deH0rXXKdKCqdtNv2XiuTvDwELjt8AU/Ta3z+Y=;
        b=zVuwQTgkyJjUs/jT7ZCWUpMinAeOZJAfrCmf4+u4t3wRqz/pm50ZaneIVBH4CGB2bC
         siOVTBPhPKmkvN0fU70kBCDsfBAyQpLhABcwsFLb1b/JDbxBhVaHDkUfuAZTEeDLdKvc
         qv6DMM29352O0trdtSzlnhiGUrbrywR3OtpHJb33B8qe1FKNGgLoNQ94x6JnkDCn3cg3
         AspBjCMmyCm3BhptOM/cPFE8RjX38UEDJsUD00umaMIthRRk+GQYz4obZxTQvBUNQR/6
         obSjbVBZCacioyruDN2e0C7yPi40HCgs1oF8A/Yl4wL0sRe+5/EdVjZmjR8yeknIUXsH
         yhcQ==
X-Gm-Message-State: AOAM533CEM0H7bs+ww2ZUXtgKr4ACCzsK7ss4Rt6g0oR5a8ZfKoQAOeu
        xCWrxr0CgZtutvJUeDCx4QecQg==
X-Google-Smtp-Source: ABdhPJxqK1m3c2W2PqySfnuHWtj0lfxpiPuwR/bK2A0xaeFBkhhyt7wb5sxpOScoJ8NooLdHEvGimg==
X-Received: by 2002:a05:6808:1141:: with SMTP id u1mr6622003oiu.30.1638371588389;
        Wed, 01 Dec 2021 07:13:08 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id be12sm33933oib.50.2021.12.01.07.13.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 07:13:07 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dang Huynh <danct12@riseup.net>
Cc:     linux-arm-msm@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: Drop input-name property
Date:   Wed,  1 Dec 2021 09:12:55 -0600
Message-Id: <163837153033.1905338.6753402562427983898.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211123162436.1507341-1-danct12@riseup.net>
References: <20211123162436.1507341-1-danct12@riseup.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 23 Nov 2021 23:24:37 +0700, Dang Huynh wrote:
> This property doesn't seem to exist in the documentation nor
> in source code, but for some reason it is defined in a bunch
> of device trees.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: Drop input-name property
      commit: 95dcb997772e966919987b6dd96eb9a6212402eb

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

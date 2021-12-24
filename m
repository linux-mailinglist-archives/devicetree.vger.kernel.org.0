Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 300F747F08A
	for <lists+devicetree@lfdr.de>; Fri, 24 Dec 2021 19:12:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353426AbhLXSMJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 24 Dec 2021 13:12:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1353413AbhLXSMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 24 Dec 2021 13:12:06 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4BDF5C061401
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:12:06 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id i5-20020a05683033e500b0057a369ac614so11847125otu.10
        for <devicetree@vger.kernel.org>; Fri, 24 Dec 2021 10:12:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=givG84UFD4gNa7xeZxhpUFNzV7usFzOyWYPoeEhti1E=;
        b=u6mcMpK3feWBd6geWPTXyLMyawyZJpHes483r06hwk4TL08UdY/o+mkrGSwemRxHiD
         ZZ7CP4EMtJmhQAjbFyd+PmTi9B9tYwhKjPEeK1CX7boCoOiRvIIb78+/kWSgsLYcTUa0
         uGCc4Euyn4JDqSyTZ53vg5BjAtvymuzBLH9be9Wkn4qXFREn2d9CrkKXRGz95cFby8Hi
         BOfICf98sWXKZ1I2E9tnSeeyZI3D9hcIGK+9N7Ff5p64zCQxrODNtNE2xXTe4NHtdSE/
         xFuQ/6hiR4BpJV0MPUA76GDP4p5JvxnOcaLeTQdSSnQMUHjqaYPa6od5BqPQFKilo49D
         dkAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=givG84UFD4gNa7xeZxhpUFNzV7usFzOyWYPoeEhti1E=;
        b=ADPVLkBxUca3j/5jYZSq34DKniWUWxGPGeIHRHadBsRskmwcdFPSucPMd8mElcrHXd
         sZltMvJWVNwIHByzNsicSdjI5vn+Z9ad5p+8VRDeJeROpvxs8/xvRX4C2/B71srYS2qS
         kjrZOln/rUtPmW1iSsJ2y7TUb5urud5DLj41zkr1TMfPcpxdMrnLjcrCCl3b1UbuoP/p
         yGajyq/GshHpmkMXaseKi2zgM9KEMVD8medwFFuwG+oIR+q84fnCfL/r7aEA6rbSD1Lt
         HKOhwjFOLnsoYn1N7/bGGplmXR7kzRGtpKJjXKvHwZ23QFVZkeZ9C8qx+ahGDXe9ajjE
         cObg==
X-Gm-Message-State: AOAM533AshEeFxr/QBSzPkUNhyY3ybsG9qjMQ7IP/xF7aaJv1djDxTgu
        WooFySJbI12zYcr4AuJxUDwV3g==
X-Google-Smtp-Source: ABdhPJxW3loolgEUsdpaDRQ7lS5/U7vOfjUzMzyHJ9fnLd3MTMl54ab6cZ2PFwTgKxJrqYrZkYG0AA==
X-Received: by 2002:a9d:66d:: with SMTP id 100mr5357747otn.40.1640369525626;
        Fri, 24 Dec 2021 10:12:05 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 186sm1740772oig.28.2021.12.24.10.12.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Dec 2021 10:12:05 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        David Heidelberg <david@ixit.cz>
Cc:     ~okias/devicetree@lists.sr.ht, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: msm8996: use standartized naming for spmi node
Date:   Fri, 24 Dec 2021 12:12:01 -0600
Message-Id: <164036951699.3936163.2946375253138631316.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211224163107.53708-1-david@ixit.cz>
References: <20211224163107.53708-1-david@ixit.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Dec 2021 17:31:07 +0100, David Heidelberg wrote:
> Following naming convention, rename qcom,spmi@ node to spmi@
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: msm8996: use standartized naming for spmi node
      commit: 22cc83a0cee99d5cc50be20103fab3b303db51ea

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

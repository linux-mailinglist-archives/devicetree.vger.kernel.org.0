Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B39954A5668
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 06:21:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234070AbiBAFVA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 00:21:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233905AbiBAFUi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 00:20:38 -0500
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 761B6C06175C
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:36 -0800 (PST)
Received: by mail-oi1-x235.google.com with SMTP id y23so31121639oia.13
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 21:20:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=76Y77aX/PkT+BnRws6qQD9VkAMlblS38JRObQoogxBY=;
        b=S9BboYrytgPezrKIrGcej437N+5sau99LKxbxMMAIdxqhD1cRfe92sV8O5JDWYKUPr
         3FQV8easA3ey9Rag2Daj+UsDceZBjuy6jSqXcfhnoar2EGDFLMBgyFpAp/P1WBVrg5dm
         5OaBGGUQYan2xZI4dhf1NTbxHYtaUTra/rfkRmcuprR2NZj7CLclkW+zFfML8gnftUXg
         MLfmK5wkJG7VrMoTI4mNHRYvni416aMtr6rSm4UFWpdop0jDk9IZLLTfsSPVPImNnMRA
         QGgGns5cY6y7oHO1RREy71u5yLiJ1X7+uYvlIYaCMoGcHBiQuuZgyHFPO8MRAdQr9jVK
         TTpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=76Y77aX/PkT+BnRws6qQD9VkAMlblS38JRObQoogxBY=;
        b=3Vz6x1gZQUN4jCLq7S6Yg4bQq3LTG1YR2e8k/0E1FCAktFBvGfeQui7VGEoUnuTepx
         mn4HTeOqlcLAGHRqNH/J07ePq+V8HLk3FDnmvPZFIr5zurWOMEarL+H+S94N0wQJD65n
         hmK+KErM+HMRDcKXePvUxSBcZ3//az48HVtdUhtpAluiMPkjsVBxGwYUy9wnrfmjO9FS
         ypHEUhTufAyI3YOErJkurXcZYQ1H7F7NM+n9Kfd+0c5ycyuH+mkmiWAHr9K4gOiNMGjK
         u4pgpMae/H/iUbtEpdEw8B0CLSD6IO9v7tPSWuzoj5H+AB63M6NEhDOmeTrO9TZ24UMh
         upDQ==
X-Gm-Message-State: AOAM531ljnBNwhGgVOJX13++ZJN9kTdkIc82NNTFwO6OxBHk/zX4dh3y
        kYloF1cbYRMBjgrQFMWfveJjAQ==
X-Google-Smtp-Source: ABdhPJxStzc/zPxwFDLE0mUmfBRwAvwHw/nqlbgQ5pav34oJxEupc4tvbpBuFwo6pLME2Er9VA6QUg==
X-Received: by 2002:a05:6808:211e:: with SMTP id r30mr243037oiw.6.1643692835857;
        Mon, 31 Jan 2022 21:20:35 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id u3sm8193107ooh.19.2022.01.31.21.20.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 21:20:35 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Douglas Anderson <dianders@chromium.org>
Cc:     quic_rjendra@quicinc.com, swboyd@chromium.org, mka@chromium.org,
        Rob Herring <robh+dt@kernel.org>, sibis@codeaurora.org,
        devicetree@vger.kernel.org, konrad.dybcio@somainline.org,
        kgodara@codeaurora.org, pmaliset@codeaurora.org,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        linux-kernel@vger.kernel.org
Subject: Re: (subset) [PATCH v2 3/5] arm64: dts: qcom: sc7280: Factor out Chrome common fragment
Date:   Mon, 31 Jan 2022 23:19:44 -0600
Message-Id: <164369277342.3095904.4024774294496056588.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220125144316.v2.3.Iac012fa8d727be46448d47027a1813ea716423ce@changeid>
References: <20220125224422.544381-1-dianders@chromium.org> <20220125144316.v2.3.Iac012fa8d727be46448d47027a1813ea716423ce@changeid>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 25 Jan 2022 14:44:20 -0800, Douglas Anderson wrote:
> This factors out a device tree fragment from some sc7280 device
> trees. It represents the device tree bits that should be included for
> "Chrome" based sc7280 boards. On these boards the bootloader (Coreboot
> + Depthcharge) configures things slightly different than the
> bootloader that Qualcomm provides. The modem firmware on these boards
> also works differently than on other Qulacomm products and thus the
> reserved memory map needs to be adjusted.
> 
> [...]

Applied, thanks!

[3/5] arm64: dts: qcom: sc7280: Factor out Chrome common fragment
      commit: 90c856602e0346ce9ff234062e86a198d71fa723

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

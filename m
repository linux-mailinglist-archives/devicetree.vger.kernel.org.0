Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 73F4241A3A9
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 01:14:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238174AbhI0XPg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 19:15:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238153AbhI0XPf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 19:15:35 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49092C061575
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 16:13:57 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id j11-20020a9d190b000000b00546fac94456so26621945ota.6
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 16:13:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=w5Ooxkd/2W1SVsL+c5obIKvuXLUkHc42IA8RpQ4EDLQ=;
        b=Z6Jv9VYlNPiF/0AetlI99EUo9Ktni9ivJQxXUhXF3l3rNQ+IPouCnzlNJV2eDkAXmi
         DRiIVhl7D9ikwaVvo8iBsNDynIqvJKVfN28rZMTJumP2dUKsTpVpwEaz1Asx2xY/T/qi
         cKDURMDxAcuPKaJkuzkN/Ywu4cEixBleADZrrQdL1+tX1ZCI2C9S8uTqSjKiR8NCDu2Y
         mT5vOttM7T9ehmWr6E8u6bCbUoSP8/SRASiyoQ24uxLaedHHNyImMeSPDA8GXlez2yVk
         o3fhw5TjetOYcQ9pYnzycepjRbtcHpUJJnVVmt5BBglmcFwCufginf3/yEXh1ziUwxyp
         0mMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=w5Ooxkd/2W1SVsL+c5obIKvuXLUkHc42IA8RpQ4EDLQ=;
        b=HcJopSz++I6Tc4zhNeoxBx5k8dJyWjxjCdncIvOOL174r13zwKnINE74QG4dSh0yzz
         rQVVwlXyNz9GbtVkL4scahhR7cM3aZZWitE1dc4nmIic+IocnbV8NIGfyh/i6eAyfTec
         DFKfJ3F20Qm5317rCfBX6B6Faq6xEenet+Zty45A+bMNNGfq77Grfp3H2RdAbatcnnyD
         2UbjxO5YsFCrjAQbZtyHi0v03u5whEHg09yU2FG7utrYeIUGTq8Y1HoT3DFhZHPivTDz
         WU9vV+wCR4R22hZIdZ4dS5D+c6unzwu82/r0GuupgjEO8IFszLsakvGZAo7xDT5bN4Pi
         zaUQ==
X-Gm-Message-State: AOAM531pli1osNkVbmBUfTL3Yfo0viiaLL9Hb25Uc5L4bhL0G107zDdo
        h8DPEQ68LXMoXSNx1mSNmHSDBw==
X-Google-Smtp-Source: ABdhPJxeBCaW9TMScB7Aysl+CgjuywcQ9o3FrkqVMpbqGG4yG6C9KR1etUxDWenaB2Td71JySDDkeg==
X-Received: by 2002:a9d:7751:: with SMTP id t17mr2284713otl.276.1632784436673;
        Mon, 27 Sep 2021 16:13:56 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p21sm4162268oip.28.2021.09.27.16.13.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 16:13:56 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     robh+dt@kernel.org, mka@chromium.org, will@kernel.org,
        Sibi Sankar <sibis@codeaurora.org>, swboyd@chromium.org,
        saiprakash.ranjan@codeaurora.org
Cc:     evgreen@chromium.org, linux-remoteproc@vger.kernel.org,
        robin.murphy@arm.com, linux-arm-msm@vger.kernel.org,
        joro@8bytes.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        agross@kernel.org, p.zabel@pengutronix.de, dianders@chromium.org,
        ohad@wizery.com, mathieu.poirier@linaro.org
Subject: Re: (subset) [PATCH v5 03/10] dt-bindings: remoteproc: qcom: Update Q6V5 Modem PIL binding
Date:   Mon, 27 Sep 2021 18:13:51 -0500
Message-Id: <163278440375.1524647.11521640589539342548.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631886935-14691-4-git-send-email-sibis@codeaurora.org>
References: <1631886935-14691-1-git-send-email-sibis@codeaurora.org> <1631886935-14691-4-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Sep 2021 19:25:28 +0530, Sibi Sankar wrote:
> Add a new modem compatible string for QTI SC7280 SoCs and introduce the
> "qcom,ext-regs" and "qcom,qaccept-regs" properties needed by the modem
> sub-system running on SC7280 SoCs.
> 
> 

Applied, thanks!

[03/10] dt-bindings: remoteproc: qcom: Update Q6V5 Modem PIL binding
        commit: b577e51c8c2afc8e00dc99c0a3bd7d67cd06de44

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

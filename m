Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0881441A367
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 00:56:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237969AbhI0W6D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Sep 2021 18:58:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35406 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237957AbhI0W6C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Sep 2021 18:58:02 -0400
Received: from mail-oo1-xc2f.google.com (mail-oo1-xc2f.google.com [IPv6:2607:f8b0:4864:20::c2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5DFE1C06176A
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:23 -0700 (PDT)
Received: by mail-oo1-xc2f.google.com with SMTP id k11-20020a4abd8b000000b002b5c622a4ddso1233483oop.1
        for <devicetree@vger.kernel.org>; Mon, 27 Sep 2021 15:56:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=lLTtH4hZnMTDUXtG8QKxhCYz72VTXTnMX/KxhuwvS5Q=;
        b=uSFwX0imDyQ63j6benweN26xLl88rv6aO4w9SDKy+32Il6TonkY97iPFgESmGgvDHu
         StUokDsNrre8uRActn1E2d6IOWtSPKdESbrgwo7RMNY9ot/RnkmKFwQof3RdRqX9/2a3
         2amS4vBugNgpjTwyJ1tpq9I5IQKOTsGCzqIb3MZHY7u6yJ7B0bZq9wHdEEFQoWYi9fq6
         1lETN6nU0fSETrM3DOhRni2I3VpFJpu0EAH7fYNS5XY+Db0WlpJQkfFDMnjzMp+i/phY
         yoI2CVKMKYeDNNVfPNEkcTtAUSVevWmdJnRvBVyStMQRJRKmQhHIBqcQbp8YziHoTgQn
         BiGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=lLTtH4hZnMTDUXtG8QKxhCYz72VTXTnMX/KxhuwvS5Q=;
        b=X+m7ByCiFQjswUkOBv1TwmF2xAm4PlOtEdhsVnn11U1uDAezQmlJc6/X5NOkE3JoD1
         A0XKxlZ9lu4f77/C4Z291ezcDVMbbY/q36qq0GxfkeXfwlEMcjpgpP/Jtff3gl38QT8g
         gcpYV/mSPyxR0dX+BcqKzXdMv5ekZb+22HG7p/cBdfP2qG/T0oyU34ikAGAXVBAfzRiZ
         zPrt6aYAfkS7XXzpDfwH/BCQoUr5eVZ10gSX6thts4kl2Z+TPex8nEepoZV1Xjdimg7l
         AuzQBXdhy4ggEVJTVL3WNgHV3JszExDWiIvYGlM7/vSSDlIVnOdVOswsCulf5sMlenXB
         IVyQ==
X-Gm-Message-State: AOAM53098xzvBu6HESTrMSe60B2R6+EggE63DXpv4RHMZh4G6ElqQ7SR
        s5VhqIf451TWISkCZ5Va1PhdJQ==
X-Google-Smtp-Source: ABdhPJxN9pDoeXMNZfAHDNKwyo6/0etpQuQQZlma4UN8UEzcOHf2GLratD2IucJK8My0eqs6iqiiLw==
X-Received: by 2002:a4a:ded2:: with SMTP id w18mr2103037oou.77.1632783382762;
        Mon, 27 Sep 2021 15:56:22 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id w184sm4231084oie.35.2021.09.27.15.56.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Sep 2021 15:56:22 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     robh+dt@kernel.org, mka@chromium.org,
        Sibi Sankar <sibis@codeaurora.org>,
        saiprakash.ranjan@codeaurora.org, will@kernel.org,
        swboyd@chromium.org
Cc:     robin.murphy@arm.com, linux-kernel@vger.kernel.org,
        joro@8bytes.org, linux-arm-kernel@lists.infradead.org,
        linux-remoteproc@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        evgreen@chromium.org, dianders@chromium.org,
        p.zabel@pengutronix.de, mathieu.poirier@linaro.org,
        ohad@wizery.com, devicetree@vger.kernel.org, agross@kernel.org
Subject: Re: (subset) [PATCH v5 00/10] Add Modem support on SC7280 SoCs
Date:   Mon, 27 Sep 2021 17:56:16 -0500
Message-Id: <163278329751.1522839.17169491081318211175.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1631886935-14691-1-git-send-email-sibis@codeaurora.org>
References: <1631886935-14691-1-git-send-email-sibis@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 17 Sep 2021 19:25:25 +0530, Sibi Sankar wrote:
> This patch series adds support for booting the Modem Q6 DSP found on
> Qualcomm's SC7280 SoCs.
> 
> Depends on:
> qmp_send: https://patchwork.kernel.org/project/linux-arm-msm/cover/1630420228-31075-1-git-send-email-deesin@codeaurora.org/
> rproc qmp: https://patchwork.kernel.org/project/linux-arm-msm/cover/1631800770-371-1-git-send-email-sibis@codeaurora.org/
> 
> [...]

Applied, thanks!

[06/10] arm64: dts: qcom: sc7280: Update reserved memory map
        commit: eca7d3a366b3ab9f31e142c13a43c5b0f94a920d
[07/10] arm64: dts: qcom: sc7280: Add/Delete/Update reserved memory nodes
        commit: f83146890172da67443c7b80e529fd1781046c65
[08/10] arm64: dts: qcom: sc7280: Add nodes to boot modem
        commit: dddf4b0621d61b8203d500ef85a853626ff42432
[09/10] arm64: dts: qcom: sc7280: Add Q6V5 MSS node
        commit: 4882cafb99c2b004b9773631fb00ca6d96dc0124
[10/10] arm64: dts: qcom: sc7280: Update Q6V5 MSS node
        commit: 0025fac17b313cca5c640dd57cbf38d01ce10b27

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

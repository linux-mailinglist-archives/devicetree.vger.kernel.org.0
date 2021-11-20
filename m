Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34A4D458121
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237783AbhKTX7B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237712AbhKTX6y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:58:54 -0500
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6538C061574
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:50 -0800 (PST)
Received: by mail-ot1-x334.google.com with SMTP id 47-20020a9d0332000000b005798ac20d72so4274382otv.9
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=IOFbLS+tlnuwpxBC/Anao1n6jAiiiYf01VjyY7baQVc=;
        b=JWCri2ESDJG8NEamRgLSD/z5L3hCxUjT0obKNUBskL+77P7ifCph7pusrWCE+8Hc6m
         OfZ1/w4pPZtGiL2kJOaWogCg+whfWlKp41z2djNGfIiQaptMtKKCBiQumGYYV5wzmqZW
         RjICN3SfhQYwJxHT86epRYIvHhf3OcxCVHWLW/wOPiYkAGLo2FIzIamq9Vf6BvDShC2W
         oJuZah45Dc7GbI1UpMkYBmzWRp42C1jSPt9F5dJDc2QRNH6qs88aZfTeTeSNF2ZLRX76
         nG+bHDTOxr4xebaf3P+iT6PfXgp7QyHEiY9/B45iViU380+nB3yPloC75i/fPMALS7uk
         jhLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IOFbLS+tlnuwpxBC/Anao1n6jAiiiYf01VjyY7baQVc=;
        b=Q/9TUHdVW5Xt5O7R54nEZOZp6YXtxWSA23w2tK94jbZ2cDnJlX8Wz/Jr9V10+F9KJP
         Pz6tuOibIqs8mqJdPvFzHi1U+sgoCLStzjV5ZUAtQ9BR2f4Zf2SwNzYzqcb7c5bU4pOu
         9R/R+VmrLwyv4Reo/GOgdENdf5mfZFd6iEoKB0JQ0xmaJZ+5DAoML0fcDCti5osek7VR
         Qny3HQoFtJ7Kn7MBdD9yWUPOH06dgQZCK/Hh7+EVSYNNgst2v681T1E3hQKModWgkd+R
         ceg7bAelvDn5PBgf07I+e5i68IkuylDDsWdEEjOPSgO54DZAYQ1m/je6qgJDj74G/nQD
         Mxyw==
X-Gm-Message-State: AOAM532JU01IsG8cILvlAbI2IxLr81dZjTa2TSozblI+NWXdN4ZIQigk
        qWUa36Q/HeifUUuR26R4Wr0A2g==
X-Google-Smtp-Source: ABdhPJylwRvipTUt6BI9zBKhjQ8/NaQiQF0SlRXcizh08WHYEw3vLpEKuRONupEuq2VnlfnLcmOwxA==
X-Received: by 2002:a05:6830:3486:: with SMTP id c6mr14606076otu.19.1637452549848;
        Sat, 20 Nov 2021 15:55:49 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:49 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org,
        Prasad Malisetty <pmaliset@codeaurora.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        lorenzo.pieralisi@arm.com, robh+dt@kernel.org, bhelgaas@google.com,
        manivannan.sadhasivam@linaro.org, swboyd@chromium.org,
        svarbanov@mm-sol.com, agross@kernel.org, mka@chromium.org
Subject: Re: [PATCH v3 0/2] Add PCIe clock DT entries for SC7280
Date:   Sat, 20 Nov 2021 17:55:26 -0600
Message-Id: <163745250542.1078332.11094455988934878724.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <1637060508-30375-1-git-send-email-pmaliset@codeaurora.org>
References: <1637060508-30375-1-git-send-email-pmaliset@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 16 Nov 2021 16:31:45 +0530, Prasad Malisetty wrote:
> Changes Added in v3:
> 
> 	* Seperated v2 patch as two patches. One patch is for
> 	  Fixing incorrect clock name and another patch is for
> 	  Adding PCIe clock handle for SC7280.
> 
> 	* Added fixes patch for interrup-map parent address cells
> 	  For SC7280.
> 
> [...]

Applied, thanks!

[1/3] arm64: dts: qcom: sc7280: Fix incorrect clock name
      commit: fa09b2248714c64644576d8064e9bd292a504a0e
[2/3] arm64: dts: qcom: sc7280: Add pcie clock support
      commit: bd7d507935ca73fba6b6f0f52a3d08d77b143c58
[3/3] arm64: dts: qcom: Fix 'interrupt-map' parent address cells
      commit: 66b788133030f0c69a0ecc7f72f7939b119c9a69

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

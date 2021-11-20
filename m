Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D0A4F458128
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237939AbhKTX7R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49148 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237784AbhKTX7B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:59:01 -0500
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com [IPv6:2607:f8b0:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 699E6C06174A
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:57 -0800 (PST)
Received: by mail-oi1-x236.google.com with SMTP id m6so29595772oim.2
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=DAOqJ6JHmgT60LeSQfrtZDyxnZoljHjKLKZILlJrOXs=;
        b=zhDEhVzRChKbPgcCQPpASQkvowykyodJYbXwax81EnvS1uyn03wWcCUHbMrn6ikaSf
         7U5+6yCtftEvD0qu5ar67xcmFxsQqB/IyVzNxDew7sSzPYJvWYNvRGHwgr7NP/ykV6Te
         q6Z+lw8nk6OJVTjtcJaew4cKwNpCp+2fAy+IJ3o3JwC5DjXjau06y/tNMEQYTmViU4jw
         JotCGV2wTu9aVsX5FhPE3rG2duqM2i/Rd84zGf/fn8hOd/hKrdq4CF1mAvz0bFfGIIvJ
         pxICPP4mpDCeoPJmUeTxhceVLeY2z5wGx3HZkh0tCCgzbar/IR34frmVvXkWkG1mcus+
         E+LQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=DAOqJ6JHmgT60LeSQfrtZDyxnZoljHjKLKZILlJrOXs=;
        b=QvpA+2G5PsEn/i8ER97qhsyK4Sr1EvY1TLxV3EaoJQ6nR/3nMFr5iVP+B/u7UWqFJw
         T5lNWTbW9PavFdx62fr2xYO+QAVR3aDHqNhdAHgrQVk9KecIa7SNNJNro1wYEX1vZn+F
         NHa2Omh1vTEejRHjxACZ12zWhpW7xUX+AV0/00yBW7lDLSiUYSUzmyho8SVaiAdUrHCx
         xcskmeuI0AegOv2RFv5rx8iRsnt0JY+MS1PagAgNd1FH3PRHBjrTSnPOF22ALKDHcobL
         wrHI87hAC5ddtbs9oNYHPENC0bVZNkCqSF6FvH5WRa9179wf8Kog1zYi7S+Iw+abeh+E
         eXRg==
X-Gm-Message-State: AOAM531kFCPdLMJ5RbKZR0tvz+g9IhEl8ttm+xT739tPiENRmjw5vc9w
        0mL0WcgfbQ8WwnB2tBS5A6ykcw==
X-Google-Smtp-Source: ABdhPJzz+q4cdG3iJvh9/Y0dsZpawoq6SwSs9UvG0msWrhCd29ALZKVxdPLLGa0RGBUTiUoUT0g/SA==
X-Received: by 2002:aca:2319:: with SMTP id e25mr10515806oie.164.1637452556843;
        Sat, 20 Nov 2021 15:55:56 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:56 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, robh+dt@kernel.org,
        devicetree@vger.kernel.org, agross@kernel.org
Subject: Re: [PATCH 0/4] arm64: dts: qcom: sm8250-mtp: Audio support
Date:   Sat, 20 Nov 2021 17:55:32 -0600
Message-Id: <163745250541.1078332.15719179340415433530.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
References: <20211006164712.16078-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 6 Oct 2021 17:47:08 +0100, Srinivas Kandagatla wrote:
> This patchset adds Audio support to SM8250 MTP using
> - WCD938x Codec for headset playback and Capture
> - WSA8810 Smart Speaker Amplifier for Speaker Playback
> - DMICs via VA macro for Audio Catpure
> 
> 
> Srinivas Kandagatla (4):
>   arm64: dts: qcom: sm8250: Add nodes for tx and rx macros with
>     soundwire masters
>   arm64: dts: qcom: sm8250-mtp: Add wcd9380 audio codec node
>   arm64: dts: qcom: sm8250-mtp: Add wsa8810 audio codec node
>   arm64: dts: qcom: sm8250-mtp: add sound card support
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: qcom: sm8250: Add nodes for tx and rx macros with soundwire masters
      commit: 24f52ef0c4bfee3b18ca42bef47efa76abab56ab
[2/4] arm64: dts: qcom: sm8250-mtp: Add wcd9380 audio codec node
      commit: 5a263cf629a85aa831081de4b9f85926bb067c08
[3/4] arm64: dts: qcom: sm8250-mtp: Add wsa8810 audio codec node
      commit: 6fcda0b556cce2afee8322e3e01eeb9e3993eb6a
[4/4] arm64: dts: qcom: sm8250-mtp: add sound card support
      commit: fa244dca404c8b02999348098be7f2ae62670af0

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

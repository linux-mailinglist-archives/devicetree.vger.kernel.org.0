Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6284F458110
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:55:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237693AbhKTX6z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:58:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237650AbhKTX6u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:58:50 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8394EC061748
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:46 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id h19-20020a9d3e53000000b0056547b797b2so22771387otg.4
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=9GJrK6nefjIeraEHJzWvaKlieCTNqwzUPY8Lmxe7PTg=;
        b=c0SnihBVDu8b5qc+WdFgm8MlRbgSEYeZAGk7ZEmvMh4LkJce1LS8wXOwDlTuSsiWgY
         XASJM23O57bVXzD9pHboWmb6XoVBeRWlSS7yOkQ6oXbBgejklUZWrr8EIdfbBLqIfpmF
         hhirTaMS8F2SnNrJwF7sRAUF5534Hjl3fQJyHKXFgZz4s2EebvG73A5SnraQQpFwqN7W
         3Lw5JsHA4JTUjMnysIHh94Wucu/vyIaNDwtd02VjvSWN2bbo5ZmE5ljrXKq+eVgDEJck
         QHCqzyTGJ7AQTTjXHI0gyycWuzsl0dhDc1VHPoMl/L97N6R65tb8oDCD+BPEm3EPc97F
         2eUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=9GJrK6nefjIeraEHJzWvaKlieCTNqwzUPY8Lmxe7PTg=;
        b=xBHTuKji5Q4RrGJrJy4xEpgVexsDb4p+FTCdGelRNU/PJhWEMKbmZpL6dhh4iOSpes
         WZW+zhHD+WIHaOhNbdVOTYjQctn/BhuqCNghTgZwypcIvtTnkgYuvEEci/ynymJIopei
         /GjEilpecdH/7kUvCdtKyUssMoPQXwR5FI5yksDfb6T1sCYoYqwn0Vm+WrETSTmjNOhB
         dIMwwCO5exvno9MKSfuaQeDWpbcn5kDvfd5GjyJCGNUAy2ziNGy7WYBybi3KGP0I1TVW
         bAiZVAvKZJNBXrqz1U5fZaP43vb2n+P23Pw50dgjFYUykk4Y/EJi1hqSRERgtP4aHSSX
         0B1w==
X-Gm-Message-State: AOAM533agQjn1VlcBYCUmjwEQ2q68T/tXTWq0v5iWaZ3ii0JAjDjRswx
        o3i88zGExSgexbG6n3ywDKQb3w==
X-Google-Smtp-Source: ABdhPJywRZPUXpMmqH7rW7FsevQFjTaiGtt8WE+YKIqnlOH8FNdxdoAfXIhx8zBNnTpKc0YHYZ2MhQ==
X-Received: by 2002:a9d:137:: with SMTP id 52mr14254531otu.260.1637452545901;
        Sat, 20 Nov 2021 15:55:45 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:45 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kate Doeen <jld3103yt@gmail.com>
Cc:     Caleb Connolly <caleb@connolly.tech>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: sdm845-xiaomi-beryllium: set venus firmware path
Date:   Sat, 20 Nov 2021 17:55:22 -0600
Message-Id: <163745250541.1078332.10313476303397104922.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211028102016.106063-1-jld3103yt@gmail.com>
References: <20211028102016.106063-1-jld3103yt@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 28 Oct 2021 12:20:16 +0200, Kate Doeen wrote:
> Enable loading the Qualcomm Venus video accelerator firmware on Xiaomi Pocophone F1.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: sdm845-xiaomi-beryllium: set venus firmware path
      commit: 42dd1efffebd731e22623008058dd9c659812d1e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

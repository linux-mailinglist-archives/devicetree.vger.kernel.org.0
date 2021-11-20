Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0DA4445812D
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237997AbhKTX7T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237835AbhKTX7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:59:02 -0500
Received: from mail-ot1-x336.google.com (mail-ot1-x336.google.com [IPv6:2607:f8b0:4864:20::336])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51D0DC06173E
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:58 -0800 (PST)
Received: by mail-ot1-x336.google.com with SMTP id x19-20020a9d7053000000b0055c8b39420bso22795547otj.1
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:55:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=0dOZcbvvxoV5kK+4KDYjWpfED8ish1Yaz0C1X7kuA90=;
        b=uK3fFmy85udSaFtezHy0jsVeokGkGwZ3GalHznxImHgPLGj0nmRcrIw7Pgi6USCz7m
         3NsSYtxGLuryzz4nhbX+AmFAXJzYg0LtW1tBH2JKld17K9lhrGdhAJedDingJlyX9I39
         bwFQVkXoQh0bHGed4bkBhTHcU0/vXuEGAaeppzqaZ/9AHsJ5Tx4PHU4K/Orhioc6GHny
         eNPaWbd45pt+a5qndz6uJdcHT3RPwWKfTf8ospUlwoR7LBmwA5mR6NsPo9JYzZA2Fdwu
         jpvKGV3z10923KH/dH8Sn6WC4uSi7gPkTcaN30YGadI5LYxTszP6i3Ico1Zss/iYQbIJ
         4ctA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=0dOZcbvvxoV5kK+4KDYjWpfED8ish1Yaz0C1X7kuA90=;
        b=HnhRUrDLmX4cH9OneGW3flYriKVaQYhri1PBsRZ/8RrOajPvUO8IJqukw7tb2KTb+E
         a5F5w5yv8uqq9abA2QSZGE2PjiBvTIJD7Frlg7ItNP6PDsHktjj0MJG7IBIr9UInBopH
         dhVl1ZjzAKaQqem0Z9Zj0kbUDyxr4Z+qcit8763m+98PTn08HBMEuP9/pHvFhl4Crs9k
         9otlABqzPQLmUgYJcNTth0+TKwLfbaSVX25olgpmyM3jQmYP7lUh4hPZ9OcJWf5cqOll
         a4Kiu+HfEosPFI5T1PdtSi8MHiuocQL+AeWeQ6lNOYMZf+aHqklhnUbyC5iG0nqXfGPo
         Kxbg==
X-Gm-Message-State: AOAM5315PBIhcuSsiTsWxtwMQcMfNvC2y5F/JMgdzWTagVF9vvT0v5Kw
        TJCOf2VIoJja17UnXYrdtOz130OF0hEHHA==
X-Google-Smtp-Source: ABdhPJxYfJijDDMeOgStUfT71Qf1HtDr0gkAOahPqdBMH5xDiHh3sMLuehkKYkoe5VvTCH9qof0Ncw==
X-Received: by 2002:a9d:6a56:: with SMTP id h22mr14443064otn.135.1637452557725;
        Sat, 20 Nov 2021 15:55:57 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:55:57 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, Steev Klimaszewski <steev@kali.org>
Cc:     Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Andy Gross <agross@kernel.org>
Subject: Re: (subset) [PATCH] arm64: dts: qcom: c630: disable crypto due to serror
Date:   Sat, 20 Nov 2021 17:55:33 -0600
Message-Id: <163745250542.1078332.123070491536318039.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211105035235.2392-1-steev@kali.org>
References: <20211105035235.2392-1-steev@kali.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 4 Nov 2021 22:52:32 -0500, Steev Klimaszewski wrote:
> Disable the crypto due to it causing an serror when cryptomanager tests
> are enabled.  Add a fixme comment so that someone way smarter than I can
> come along and fix it.
> 
> 

Applied, thanks!

[1/1] arm64: dts: qcom: c630: disable crypto due to serror
      commit: 36be92f490a7f403c7b1ea7662c92e100e8c3096

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

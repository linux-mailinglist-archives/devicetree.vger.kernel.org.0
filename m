Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96451462605
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 23:43:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235143AbhK2WqI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 17:46:08 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235486AbhK2WpR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 17:45:17 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7CD6C133F54
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 10:45:20 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id n26so17862611pff.3
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 10:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=udg8U8ZrK4zD0jPwXwBzJ1AqVadNG6BfhHx30vYODk8=;
        b=jTiPmZE+A+B8TdmgN1frTiETVvj6KSteqVCJmYRVUnbmD7UTLPZKdRsu/r1QqyZK6M
         1ttLUnjInu9aSkzYmC+ObQTZW4OC1IRIykyNk3jAI1UVH/4GH55M/gRx5N5Eq9+vFF0Q
         oeLGokkknlvAuG9Uq7yAWjAeZlJcy2lHhr5kw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=udg8U8ZrK4zD0jPwXwBzJ1AqVadNG6BfhHx30vYODk8=;
        b=gyQ+67iZlvPJOhp7ubOaWx28RUReha33GP9gK5REC7f+6ehGcWHWygX2E2BDqtrWiT
         UgiiRL1EjLGzFrsB1jM9xHrooyRiwBRdrDuooo/21tBYGYsSgMINgcw5Ap+/8N1ED81m
         kyKrhfDw/DGQVzII/Yp4j19WD12mRrZ5r5DFFSAa64wwPbuqmvdTNGmFNl3CSSv1j69V
         U+6CMWxWl0ChwowLDapvb1CJP3Tzmb6kR63N9L5ivOe4uV3HXjSTziMBiNphcvePg+af
         YeFLdSF5ijqzOWTettI5cQR80JKbXVP5tusNW5bxoJxO52j2JkWnjtK2hFTKe0STQ7zZ
         2tkQ==
X-Gm-Message-State: AOAM530E33wh5DRn4i0t5TJAtWNv0PRFB82ddUiFlJ1v0Nx7xiOYbMMt
        2Gq4WJ+sSlMUogqOzT6a+4OEzg==
X-Google-Smtp-Source: ABdhPJyE/HZMDwyxB33tfW8Ns02CUwPle/MvrhS7Rr3NTcSgEGq4oP3BkaUcil19tlmhXG+rVSoZgg==
X-Received: by 2002:a62:1a03:0:b0:494:64b5:3e01 with SMTP id a3-20020a621a03000000b0049464b53e01mr41417902pfa.35.1638211520376;
        Mon, 29 Nov 2021 10:45:20 -0800 (PST)
Received: from localhost ([2620:15c:202:201:d16f:3a09:ab7a:238e])
        by smtp.gmail.com with UTF8SMTPSA id z15sm17715764pfc.2.2021.11.29.10.45.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Nov 2021 10:45:20 -0800 (PST)
Date:   Mon, 29 Nov 2021 10:45:19 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Rajendra Nayak <quic_rjendra@quicinc.com>
Cc:     agross@kernel.org, bjorn.andersson@linaro.org, robh+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, dianders@chromium.org,
        kgodara@codeaurora.org
Subject: Re: [PATCH v2 2/4] arm64: dts: qcom: sc7280-crd: Add device tree
 files for CRD
Message-ID: <YaUfv7b/4kfix+4i@google.com>
References: <1638185497-26477-1-git-send-email-quic_rjendra@quicinc.com>
 <1638185497-26477-3-git-send-email-quic_rjendra@quicinc.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1638185497-26477-3-git-send-email-quic_rjendra@quicinc.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 29, 2021 at 05:01:35PM +0530, Rajendra Nayak wrote:
> CRD (Compute Reference Design) is a sc7280 based board, largely
> derived from the existing IDP board design with some key deltas
> 1. has EC and H1 over SPI similar to IDP2
> 2. touchscreen and trackpad support
> 3. eDP display
> 
> We just add the barebones dts file here, subsequent patches will
> add support for EC/H1 and other components.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>
Tested-by: Matthias Kaehlcke <mka@chromium.org>

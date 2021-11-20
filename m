Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FF0A45813A
	for <lists+devicetree@lfdr.de>; Sun, 21 Nov 2021 00:56:47 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237797AbhKTX72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Nov 2021 18:59:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49208 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237914AbhKTX7G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Nov 2021 18:59:06 -0500
Received: from mail-ot1-x330.google.com (mail-ot1-x330.google.com [IPv6:2607:f8b0:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 63DCDC061574
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:56:02 -0800 (PST)
Received: by mail-ot1-x330.google.com with SMTP id x43-20020a056830246b00b00570d09d34ebso22820332otr.2
        for <devicetree@vger.kernel.org>; Sat, 20 Nov 2021 15:56:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yHRqBu3iNfib8VJ+q/4D44COg4vM90Zt6pdL+4iHmTs=;
        b=Lynz+OPEqMhPkbpidiVrZmhMmZZabB6seSsCr6tSFxh4DxpjMHAkJRAQwV/BidSJzH
         y1Mc3XN93j+/usemWQXo7Y7ZNBJCNkgJcPYY7ZwRD4X7ypA/yKFyrTWCpZ7v25SMYXVA
         tJFBk18C3ePNVynRPjzcPtqJqrcCMrjT5eMslEe83Lq+BvlKbKcAbh42cnYIxT7ClzCi
         20929prcKQhHetKESNnjlCf6y3fgumIgOGhUPqXn6Kzc8B3kKmz0DO6JTvvfCdvWcHDm
         6R3KEGwof+yDZmNUhTzJG7PCMOapjyH1misotAvX0NvIGFyZyUUSfJ1TcCNATmOMX7um
         zgYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yHRqBu3iNfib8VJ+q/4D44COg4vM90Zt6pdL+4iHmTs=;
        b=3EzL6qS73urgoDlKqh18SzxiEeyiLkFdoSshWLSUa+o0e0lkri0x0roaRyVGVqja2j
         mdZujcjy3FUQwduhUM5P8tFpMJ34Im2wV3yEN0YrMBU4UZR/7+ZvMnru8sFfkL4gRDoj
         PfdZmQ38sKqHeYFS6fUOdgt8E4/w0GGaxrom0xmnvDgHOdTgPwODh4PvmP5HCBy/u3H4
         qRPKBasm2NoDqzGj9txX6pDmj6cVOprLllOqhRwxy20cYu2qLTon7GPMdGh29CmJnmgk
         difZx0d4rTyU9XCan16Dywb8DDcU4i74XDFmxKwLOFvzQ7KWkdKjTfqOv1Cq+wCrdH5d
         VZxQ==
X-Gm-Message-State: AOAM5307KTjJ04xEQwM3ebd8S3G/CLfI9UUVnSGq+ZE0YlU5CrfWhr6F
        B0Q96x+Zec/4wnZRyXnbqFjYppHGrgqJTA==
X-Google-Smtp-Source: ABdhPJxN/zrJhAUPU3zpVuxYAxflXifJs6n2O/RbEfw6Rlch7lvT4A+hWRf7cOovQT6TdM7oPTW1ng==
X-Received: by 2002:a05:6830:2b25:: with SMTP id l37mr14368131otv.298.1637452561808;
        Sat, 20 Nov 2021 15:56:01 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id o26sm828474otj.14.2021.11.20.15.56.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Nov 2021 15:56:01 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>,
        robh+dt@kernel.org, dianders@chromium.org, agross@kernel.org,
        philipchen@chromium.org, swboyd@chromium.org
Cc:     linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: (subset) [PATCH] arm64: dts: sc7180: Fix ps8640 power sequence for Homestar rev4
Date:   Sat, 20 Nov 2021 17:55:38 -0600
Message-Id: <163745250542.1078332.13345331446027178006.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20211115030155.9395-1-yangcong5@huaqin.corp-partner.google.com>
References: <20211115030155.9395-1-yangcong5@huaqin.corp-partner.google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 15 Nov 2021 11:01:55 +0800, yangcong wrote:
> When powering up the ps8640, we need to deassert PD right
> after we turn on the vdd33 regulator. Unfortunately, the vdd33
> regulator takes some time (~4ms) to turn on. Add in the delay
> for the vdd33 regulator so that when the driver deasserts PD
> that the regulator has had time to ramp.
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: sc7180: Fix ps8640 power sequence for Homestar rev4
      commit: 96e1e3a15273a99d89b1389e4487e734c7d37d8e

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>

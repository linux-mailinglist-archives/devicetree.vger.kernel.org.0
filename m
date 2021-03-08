Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2593331503
	for <lists+devicetree@lfdr.de>; Mon,  8 Mar 2021 18:40:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230125AbhCHRjg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 Mar 2021 12:39:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41650 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229469AbhCHRjF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 Mar 2021 12:39:05 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEA68C06174A
        for <devicetree@vger.kernel.org>; Mon,  8 Mar 2021 09:39:04 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id o10so6856373pgg.4
        for <devicetree@vger.kernel.org>; Mon, 08 Mar 2021 09:39:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VhL8CwHew6ht4lQQGN+2YnQ680r63GWwQpYWdHTYd2c=;
        b=u92iHKJa65nDaVT+BIljBfu5cjEKF4fVI6awg03P/nB1+f4OLV+Yb9DpGlUilQnXuB
         YD55kOVk81Eqn0cHHypYAujwfj5Ig6HKnASMDUp1DiRGXimqGN1S/uEwORlyUHkeHRL6
         NMZpZromHwzSszWr4sHLB/h2Di/QVPKLZ+DH6+5Wg8NVTovkJvD3F/YruePD7T0ZtIwD
         h69wupT3i9suTfchMV5Lv6iYxC/DCVpW5ZCq6KsIEMZ7Uvok3qwEXXjAB5eF593aVoKS
         2mls0KmHuu01Fz/dQWEU0sRDv0cX7u+44d8Z7c8bdYYBOCE65IiFk0CRNsMcR4Cokif+
         ZOAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VhL8CwHew6ht4lQQGN+2YnQ680r63GWwQpYWdHTYd2c=;
        b=Uar+AM1nL8cSVEM0wKFyhMhuWfKoJ7Zqv0cts+d6yKRl+U8mLCkdtOCKb9HAUwTSw7
         dQ923JnJA3vKWyeQnCeNTbnv/ei3HM9waac9ZibLeaTNvO4KcuDq5BlgEj7k76iewao5
         5qVcfxXWxX3xxktJRx/IGPY8Mc4xWvt/xnIacNDLByorD7eZcYZGkxkPpQ9wg0FNfMLy
         jtoSZe6ohZHzBQsfm0HXyHAC7mJKzFi9wnyFmiyNKRbtXgAFvFqZpgO8PRL/veqWlD/m
         LQel7fxEKYMMqK2TcY3ZPuJBYSoL3tbBrROw5Pln3Iua5lYJubn4pOVljmoFQD5P8rb0
         wxKA==
X-Gm-Message-State: AOAM533v2pe81qH4clgaCoi1CXxCW7T9IaIZV91PkvebxFVictHPz/6h
        4m69iCKbgf3Hl93sPEGou9LbHpV7OKNT1w==
X-Google-Smtp-Source: ABdhPJxT6E1f5pLo03A35kx0a+5+z9qTd7Bljn2q+ElBTRr2tBVQ/12crRdOdo8HY3JjXKbCia6N2A==
X-Received: by 2002:aa7:86d9:0:b029:1ef:4f40:4bba with SMTP id h25-20020aa786d90000b02901ef4f404bbamr18884738pfo.54.1615225144333;
        Mon, 08 Mar 2021 09:39:04 -0800 (PST)
Received: from localhost (c-71-197-186-152.hsd1.wa.comcast.net. [71.197.186.152])
        by smtp.gmail.com with ESMTPSA id k3sm10120911pgq.21.2021.03.08.09.39.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 08 Mar 2021 09:39:03 -0800 (PST)
From:   Kevin Hilman <khilman@baylibre.com>
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Alexander Stein <alexander.stein@mailbox.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
Date:   Mon,  8 Mar 2021 09:39:02 -0800
Message-Id: <161522513396.14471.9490936640361776258.b4-ty@baylibre.com>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210203192824.854491-1-alexander.stein@mailbox.org>
References: <20210127230852.66686-1-alexander.stein@mailbox.org> <20210203192824.854491-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 3 Feb 2021 20:28:24 +0100, Alexander Stein wrote:
> Recently introduced async probe on mmc devices can shuffle block IDs.
> Pin them to fixed values to ease booting in environments where UUIDs
> are not practical. Use newly introduced aliases for mmcblk devices from [1].
> [1]
> https://patchwork.kernel.org/patch/11747669/
> 
> Commit message taken from commit 0011c6d18277 ("arm64: dts: rockchip: Assign a fixed index to mmc devices on rk3399 boards.")
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: amlogic: Assign a fixed index to mmc devices
      commit: 7827db7f6141fda9af4b07864cab0c10398affff

Best regards,
-- 
Kevin Hilman <khilman@baylibre.com>

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7E9CC3F411C
	for <lists+devicetree@lfdr.de>; Sun, 22 Aug 2021 21:13:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232245AbhHVTNq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 Aug 2021 15:13:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51824 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232633AbhHVTNp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 Aug 2021 15:13:45 -0400
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com [IPv6:2607:f8b0:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 677C7C061756
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:13:04 -0700 (PDT)
Received: by mail-pl1-x629.google.com with SMTP id b9so4506286plx.2
        for <devicetree@vger.kernel.org>; Sun, 22 Aug 2021 12:13:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kGQHvspicpRDlm7/k5Pyo5f7PuZ7GxSyUpGA8LGk6wA=;
        b=Uzrds7OoJ/uHlcTpu4WiJSkSrv8pzv7+KyQUeAQAcZ73YhGVWVDfrIE10/TotkVgGl
         nZo5GZc5xnXCRvcokvv6NiOIJUXFwfqv8hrVTV5d0qtaQOkQ9F8TuYUQjFFGo0kRUTsU
         lMZR79cKw/qND1ZCr3BCQLuCmm7Ce8Y7o39yKEcXuFZvXEldjiwpH/cbTnJGoYocgLxn
         CXFa6XKseurh7npeXffCxk4VsGH3gpQ72DC10ZRZRwvUrVry2VLx35eBqV2i567vk+LR
         qTykHX48I/3JyyTHd1qdfupaaY7NRdXXEotPhzYp4XrETKYivL5utxa8JYpbAntpGfFz
         H3Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=kGQHvspicpRDlm7/k5Pyo5f7PuZ7GxSyUpGA8LGk6wA=;
        b=sHTU/BjqQOtUSwnJfAeIcti2Okxpc2KSosrYV01JnFXek3fSrq2SW+5EdLiSQ8npOd
         JjYoNC9Onh+d6AhINtld1lO+8uNkSCoSq7Vb6r4wlVzxsCeZY+2pkkEPNQE3PoNfit4+
         zvOFi2/6tNNsiddTum0s+hHeJXcS55mFahL8UkayDtbrraWlmj2VHmGzOw1Zg7CUxce6
         01tzp2L0EtT5TneyQk2iBYrEqrN97vN3rGFi6cZ1p073vPZPiH6dqKw/5lNHGzNZjYEu
         xjJ2SDsitEsH7bnzCzZntNvD0kIwje2iz3s2NN1uuv5f+AzzF8+SB8O4zL0+XmtW3yhN
         x1vg==
X-Gm-Message-State: AOAM531vVNYIx0uBTxl5BZcZ5OrzSCO13WM2ZeAYTAIspusUrkX7O0Xy
        X3Lp2YfQAVSRpW0rQ99P1WM=
X-Google-Smtp-Source: ABdhPJzugVGFbRE+EoiPwXSebocSIvdnyLxbAAUALO/qxgYRf81mR20d33hjtCXXQOYm+xtiwWazDw==
X-Received: by 2002:a17:902:930c:b029:12c:d5c8:61c4 with SMTP id bc12-20020a170902930cb029012cd5c861c4mr25753095plb.73.1629659584011;
        Sun, 22 Aug 2021 12:13:04 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id v15sm13326304pff.105.2021.08.22.12.13.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 12:13:03 -0700 (PDT)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     Hauke Mehrtens <hauke@hauke-m.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/3] ARM: dts: BCM5301X: Fix MDIO mux binding
Date:   Sun, 22 Aug 2021 12:12:56 -0700
Message-Id: <20210822191256.3715003-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210819065702.15406-2-zajec5@gmail.com>
References: <20210819065702.15406-1-zajec5@gmail.com> <20210819065702.15406-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 19 Aug 2021 08:57:01 +0200, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This fixes following error for all BCM5301X dts files:
> mdio-bus-mux@18003000: compatible: ['mdio-mux-mmioreg'] is too short
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAAFD2D6EC6
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2395174AbgLKDkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:40:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733151AbgLKDkH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:40:07 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2999AC0613CF
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:39:27 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id 131so6134566pfb.9
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:39:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CNMDdyJMBXebGOJ4UO516qe0mpDuBJPgs1oiZzAXbCA=;
        b=lHXiLfI45BX81pQvT3UQyKN6LTx0oinFQ61N+H2Xk+Acyqc2LvtMLUuBQ/8JtkeqdT
         Eqj2Gk5HwyPNIQe2hdhMf5XEuSY0ozEIF9X0NeYUmzjdrvq5+9XF4YKvOj3ZVQQIkRX5
         8UiJ4PLnxRqkZ698O9vZyZJKPF1dDK60s3/jThxA4DHvXtMt3eQxyV/S3WqDzbxdEb4C
         haBrI03GEA/4HsTvn5KpKgD+zFxcFtZ6SPXE6umGENe4wPhxDSNpe4HjrhJRUC20L/Dp
         QLOllc5Y2ijFyw2co8F35pO6bXaCuSlgFb4+HvjlEDlGsYmrSgE20i2lYPy+DQY0GPXK
         0TPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CNMDdyJMBXebGOJ4UO516qe0mpDuBJPgs1oiZzAXbCA=;
        b=BJAuUHkxMXlHpFxzGC34hMPykpqFODNXd/6kiviHkoLv68NkPIa1wmHJxJ2sZZOxQS
         A19m8b3A7kUC2EaCTvFiDD4e49vNcNJSv6WVa5rzk7iqfMPbdrEqoDnLSVtXdDnhMlRQ
         5h/8wiP4c+dqoCjHwGMn553781qFto1Q6jaUag991A6EDwen46z2F3nQ/hfAaIoWEQTk
         2KzvXLZjkJUrPxPv0/TnMP7qbd3oTBRBq1ZGtKZJJCJ5fCa/GBuItZj5Mu1ac0Np3aBf
         QYAuJ9zWpo9W0s6HLWB4JL9ug96EPzp5bKzAd7M2zFmg/H1VdFo6uPvPyeL3CQFtSMP2
         Lj8Q==
X-Gm-Message-State: AOAM5306BdhkRKvXkX7ranH5K9hA7bOe8R0YpTXWPhNcdC8ta2vo83GL
        vZEjrXQasitRssLNBCsqjDY=
X-Google-Smtp-Source: ABdhPJzMNNdbcC2ZNXAYjzvb8kYZmqRfTYKL/jXg4xKA6BgN6ZsF18ng9E3+uOR5B6Enou8zUaAqqA==
X-Received: by 2002:a63:4b1f:: with SMTP id y31mr9836013pga.29.1607657966738;
        Thu, 10 Dec 2020 19:39:26 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id p9sm8171343pfq.109.2020.12.10.19.39.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 19:39:26 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH 2/2] arm64: dts: broadcom: bcm4908: add BCM4906 Netgear R8000P DTS files
Date:   Thu, 10 Dec 2020 19:39:24 -0800
Message-Id: <20201211033924.2389223-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208070304.12536-2-zajec5@gmail.com>
References: <20201208070304.12536-1-zajec5@gmail.com> <20201208070304.12536-2-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  8 Dec 2020 08:03:04 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Netgear R8000P is home router based on BCM4906 that is a cheaper variant
> of BCM4908 (e.g. 2 cores instead of 4).
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian

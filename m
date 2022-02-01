Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9136D4A5400
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:24:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbiBAAYK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:24:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33020 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230344AbiBAAYK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:24:10 -0500
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40266C061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:24:10 -0800 (PST)
Received: by mail-pj1-x1034.google.com with SMTP id b1-20020a17090a990100b001b14bd47532so795711pjp.0
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:24:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=2GrMEmobMluq8BgXEdQZ8R/5TRvzz9F27JkUkJFTRBE=;
        b=Ewln9m4GvBOVuBf4K/B4Amo/MnrqUD/tlZ5PWsm62rVTGAZBEps1St6qxaMiikjMfv
         BCfBys+aGBVrsNCvVHhHY7PVD/9hJlaMVhRz6NerIBckQFlO4vYhJMHeGzG1YjD89i8Q
         K0BSgaJ1UasLA2o/CQLMZk/5xk7aCvNIZw/qn2NtFCayoIXELHsfjCQxQtceMuWOa6Rl
         SAaX8cf6mbtrBMlP5JvOqThpYEL3LwLjbj7rU+Bfa98zEosIiMLhS/daZC1MoUgR7HKF
         GfuUYUkAS2OuwacPgKB2fTfJGPxGWdSisH5tJmHGshlD4+RUfRauFtfsYBxFObWlp01P
         ltCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=2GrMEmobMluq8BgXEdQZ8R/5TRvzz9F27JkUkJFTRBE=;
        b=DU3BF9fH9vaB13xpfLc02a8NieedxA02cG9HitYhRHD1egFuov1sk/zvlPwNvvqGdj
         ICb3qPNzgjJKq/YtEbdMW9CCPN+ZaPP6pRs6lfo5sfEo5BsZO9ECwJzC7XmVbE+BlZxT
         0QRMkcsV8sM3VpdANHRb1c8DLU1kRZ/1dNq3VIDj/waDtLPxWl6xEwy5AnYY6YLUpCw8
         uO2gLxG1kz7wmgH6fW7jXM687Z+GOgEfNrSTG6hVp7vd+a8IpuXkMmcTZYySHbJI02fk
         5T9BP81RUMLu2gjM2PPD3EoFifczPeDaYSFFdRFBLCiWJzA0FpvsUzzVHoHHQPmuvHdE
         g4MQ==
X-Gm-Message-State: AOAM531jycZn4Wpi8xhvI4dbFAmcWDXMdFw9lIFo0ovSWfjtZl+M/+WS
        94kf6NC43RPAVlzFr/louEHJB0bLK9k=
X-Google-Smtp-Source: ABdhPJwdrOoZE6S1kLpWgOFM6KUns0gyw+f+5hHJ65RfNLxUTzS538CoXIsSIRoUbEkCS+JlpgHIqw==
X-Received: by 2002:a17:902:d485:: with SMTP id c5mr23923997plg.148.1643675049719;
        Mon, 31 Jan 2022 16:24:09 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 76sm23909142pge.93.2022.01.31.16.24.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:24:09 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] ARM: dts: bcm2837: Add the missing L1/L2 cache information
Date:   Mon, 31 Jan 2022 16:24:07 -0800
Message-Id: <20220201002407.426327-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211218200009.16856-1-rs@noreya.tech>
References: <20211218200009.16856-1-rs@noreya.tech>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 18 Dec 2021 21:00:09 +0100, Richard Schleich <rs@noreya.tech> wrote:
> This patch fixes the kernel warning
> "cacheinfo: Unable to detect cache hierarchy for CPU 0"
> for the bcm2837 on newer kernel versions.
> 
> Signed-off-by: Richard Schleich <rs@noreya.tech>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 57B263331D5
	for <lists+devicetree@lfdr.de>; Wed, 10 Mar 2021 00:04:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230431AbhCIXDe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 18:03:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57456 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbhCIXDH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 18:03:07 -0500
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7B74C06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 15:03:06 -0800 (PST)
Received: by mail-pf1-x429.google.com with SMTP id y67so10687503pfb.2
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 15:03:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=fZTAvP2FBp8qV9hVRw02xZNJoRYaaNGxD7C97GOosXo=;
        b=IoViX8NwI17xYDhze5G/48NhAgsBOfTS9SIZinCHizEfspU3YIyQz8tmYfYN+w6bsY
         Hh91W94CY2/uYbD8RS1yLE55irz15FFk/sX/SqdT5pIs2Iyl21r8RXBJBvr68P1uGZ5f
         NaYFAHo/LSU+pqSkVnleoAgG5oIm5pZJZLS0iSRY/M0FAuK1cxIiCLrMf7DADTykgtxe
         xDAIH9r/xSqC6wuBY9l9RxYoJqyrxZB+SHgoEitug0lfLf1cBZovt4Y8q8ZhLAU9t6Id
         LrUjNGrvB3JovesjevLGv7k2a9iZIfI33GkBe3sxyJoTaTljJPvdEXuczx/SX2WzTm3p
         +oVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=fZTAvP2FBp8qV9hVRw02xZNJoRYaaNGxD7C97GOosXo=;
        b=Ja8zGtvD+fWu7cvol+0n98sGr3qZbBsU1KhMikxtpJRd72nOUzHtq5/ns05eT9vS3h
         cyCb+nSthPVR3rG9XtYeLinWK2oZfGsoe75J7C860vTJuVSLwEGSQ+Y95eoM38VvaCUi
         iRaAeHPwaB40MbBN5y7GOoNw86VcAHebRw43msTf/VjDVz1zxHm23YA++d0DJk9rA6pf
         KjonJ7eLPnsgvie2a6ciYAQk4WUCxSn/bxRA5pSSO3L1ZuVxxjQb2JtoucOH0NJK8MjW
         1VhRGtQHrlLp267OaU3aACEdlClgYLMZQLwwYs7vqiaVl3c+XKuv2BYQ5ed1Baas+dKt
         p3bg==
X-Gm-Message-State: AOAM5308+fdq3o+PZDsVu/fA6cJrAkrmviMSyKQXMGbgHQdWj7FdtXyF
        AWxqNPfOroZfeAabY6ZRrKE=
X-Google-Smtp-Source: ABdhPJyTw8HC3KNajTpi/dLDeCBKvvvPtUQyXl5RuOBcqBf46hlm3kOkMD6oIDu/THtjLW8hfDJskw==
X-Received: by 2002:a63:778e:: with SMTP id s136mr77142pgc.433.1615330986088;
        Tue, 09 Mar 2021 15:03:06 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id 15sm4320494pfx.167.2021.03.09.15.03.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Mar 2021 15:03:05 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: fix switch parent node name
Date:   Tue,  9 Mar 2021 15:03:04 -0800
Message-Id: <20210309230304.1224795-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210309184409.31409-1-zajec5@gmail.com>
References: <20210309184409.31409-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  9 Mar 2021 19:44:09 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> Ethernet switch and MDIO are grouped using "simple-bus". It's not
> allowed to use "ethernet-switch" node name as it isn't a switch. Replace
> it with "bus".
> 
> Fixes: 527a3ac9bdf8 ("arm64: dts: broadcom: bcm4908: describe internal switch")
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree/next, thanks!
--
Florian

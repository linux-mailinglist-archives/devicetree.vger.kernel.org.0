Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 33EDF2D6EC5
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 04:41:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391049AbgLKDkY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 22:40:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57878 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391028AbgLKDkN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 22:40:13 -0500
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FA7C0613D6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:39:32 -0800 (PST)
Received: by mail-pg1-x542.google.com with SMTP id f17so6234908pge.6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 19:39:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WMbPBe9/knh5GkKtTCfsMp5SaQCnLEtyzf6dbM9wEKQ=;
        b=MqVpkpOOx2n2GjbgqGu4AWbV+OX0fe9DqNLazVofiH7DjkgS25VVIVUzwDACLFNrH3
         M9P0dMEuLk+QZaeP3W46Sgp0xgIzVGEwlRwsNWzNmohxfTeddmoSi3OaGwRq1llsj3sQ
         gPDB1pvNGeWBhfaRDmLthG/Gahg1NAbBGuudhAyRWLGtIoEV1niLsTljlGIcfoZOHnpm
         jae/lZ5O+dCn9RX3rqr/2gKLTKg28faHp5U4qv1iX8aoxusSHhoXNrbx+gVpMpAsxXXq
         GRDY4SFOeByiaN1TeJ8HICmXKi0Zj1ChT5s8Tk5VYO0Xo7qoavPDSqMqufcuKsJyDwab
         J9VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WMbPBe9/knh5GkKtTCfsMp5SaQCnLEtyzf6dbM9wEKQ=;
        b=CaDI6y/RNr5ryAomzcukY9cumJiTwooNzyzWGE97Gxiy4rj+WmRM7+ZS4+WPi92A1g
         P5+W++wfCfyOjZRexuRQZhQhWYVH0ofoy0xgNwclMXZnTpYws1ied3Rmwr+x6EB3zTDR
         U9OMHWYxV7AFEOXOYTXGEm0EqfgT+Ml7xo+PdiN/8BKycuWbM/rIFFdjvAebY5Y9+9ul
         uC+R1iSWjUrEAR6BehRZmFW4VmpY6kvN9AsVGhRX34Ud+Y3yxx6r9rUXwtVLJbMwQpjT
         IrsSLfvW5qIQsKln2PJ4O7LSJ1Gw0rUtUr3AEY9pz3bg4RGXzRDhDrmV9hO75RRiZaif
         8k/Q==
X-Gm-Message-State: AOAM530oO4BFKalFA0LNgpOCUWHpwVGIrpLCdCq8pD/M/sRXmMt7pl92
        gr+Xl/o3G7kIe16aVuE3d4E=
X-Google-Smtp-Source: ABdhPJyaN0yX4J+VtU0nbLYs2/G9tcQa/CBolvw63kotkQ0Gs2J7SlyPFTudpJiUkoHId2jIJPz+cQ==
X-Received: by 2002:a63:1a58:: with SMTP id a24mr4268735pgm.118.1607657971612;
        Thu, 10 Dec 2020 19:39:31 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id z23sm7846474pfn.202.2020.12.10.19.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 19:39:30 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH] arm64: dts: broadcom: bcm4908: use proper NAND binding
Date:   Thu, 10 Dec 2020 19:39:29 -0800
Message-Id: <20201211033929.2389334-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20201208104950.14977-1-zajec5@gmail.com>
References: <20201208104950.14977-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue,  8 Dec 2020 11:49:50 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 has controller that needs different IRQ handling just like the
> BCM63138. Describe it properly.
> 
> On Linux this change fixes:
> brcmstb_nand ff801800.nand: timeout waiting for command 0x9
> brcmstb_nand ff801800.nand: intfc status d0000000
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian

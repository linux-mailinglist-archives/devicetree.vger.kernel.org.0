Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4AE7F2FD921
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 20:09:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392429AbhATTHQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 14:07:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54720 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2392291AbhATS7N (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 13:59:13 -0500
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com [IPv6:2607:f8b0:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D81CC061757
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:58:33 -0800 (PST)
Received: by mail-pg1-x52f.google.com with SMTP id n7so15830729pgg.2
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 10:58:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=uMFD8D7yPVDzbF9577Td93qx2kc/bmoT1O/GsH2Bkis=;
        b=kcGQOZogdCeJ8Av1HUlV+3ADCdEX/EeMKjqKaGVGGJvz2J3/KHtGLz2N4nYpwJgK41
         82BTeOH7/QlmZoE0+qlR5QFLOYJDHvcC6BeLExsDqOLqmFgJV1EhUfRlxcjmfACA6pVV
         JHCImtBvg27YCrOAZXj6wkcgKwi5UhqqqMOKyqCz9pwJ7bsv+p4uXhmGyj3OO5biwqqS
         7YnQjwayXR0Z1Ajfqq5YIbWp/ehkHwK9sEPslQU5rK7SneDBxmJUuUP5f1d36PG4SwC0
         JJbeeCw1lEMPubjRlHV0DdUVmbI4VLoeB6zlQWmXkroM1Wo8tz/34xAg09aElYCx3Ra4
         VZlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=uMFD8D7yPVDzbF9577Td93qx2kc/bmoT1O/GsH2Bkis=;
        b=VFYvQNzeyVdpYhP0Aru/ZnKihRMCSxuToaB/u8aTYfCJ4lUcEdz4BpARG12JCdaT44
         qXiwn4VI9b+R66liMpkgk0IgE1Lz7CqPpPBxIXdZ6ZCoFXVEYtE5wRjhr1LgftdIK9NS
         GJrQWzfL35+Sh5wWn9Sx1tMXsdhfs0D1u0vj/NBRGmncUi2xu0lmDUGQE31BvzqTjUi5
         WZB71VIT1jYa+03RFj7VXjfyS9Qff4eQu6I4bjzbi/cmw/zfbg5+nc33l01IO1cb8mhE
         nZeNVqLMoakAV64tMb0bzf/dYeo1EqI8RLwecOO86BTahCYtZWn4stIaw0mIQ6OahV9k
         g8EQ==
X-Gm-Message-State: AOAM533BNbEIPYxXXSFl9yWcqenSAKm4UugFpVLwgrDV+5NEuFRN4zcM
        RYl4ObnfdjCaAFQXjPIkrvQ=
X-Google-Smtp-Source: ABdhPJzvEh93NtoPpsM9HO//p+v96EUrq1TdM4HwAW4lv3bSDukazSN/XW+XiJmjXDmI27nvn7tRQA==
X-Received: by 2002:a63:5c61:: with SMTP id n33mr10946889pgm.153.1611169113137;
        Wed, 20 Jan 2021 10:58:33 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id f15sm3125830pja.24.2021.01.20.10.58.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 10:58:32 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>
Subject: Re: [PATCH V2] arm64: dts: broadcom: bcm4908: describe PMB block
Date:   Wed, 20 Jan 2021 10:58:31 -0800
Message-Id: <20210120185831.2364825-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210113111547.19972-1-zajec5@gmail.com>
References: <20210112192723.751-1-zajec5@gmail.com> <20210113111547.19972-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jan 2021 12:15:47 +0100, Rafał Miłecki <zajec5@gmail.com> wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> PMB (Power Management Bus) controls powering connected devices (e.g.
> PCIe, USB, SATA). In BCM4908 it's a part of the PROCMON block.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---

Applied to devicetree-arm64/next, thanks!
--
Florian

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0339C28269E
	for <lists+devicetree@lfdr.de>; Sat,  3 Oct 2020 22:31:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725875AbgJCUbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 3 Oct 2020 16:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725864AbgJCUbn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 3 Oct 2020 16:31:43 -0400
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com [IPv6:2a00:1450:4864:20::143])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 14303C0613D0
        for <devicetree@vger.kernel.org>; Sat,  3 Oct 2020 13:31:42 -0700 (PDT)
Received: by mail-lf1-x143.google.com with SMTP id b12so6205962lfp.9
        for <devicetree@vger.kernel.org>; Sat, 03 Oct 2020 13:31:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=lixom-net.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=hrmYGlSzfi9NcY27JUQ0Az4uMkGe37VFXF6J2fP0dWk=;
        b=y8gQdLkbBHs4S4paUJOkiMMxuUoC8WCRyYgTDoe1QmO8lcFnNaDHWSvZFM+aWTwUQb
         QS7+N2Iwh18Fp0SieSdkcY5RqmHAItzOx0Z6Lqq7hTiQIgGg1By9bWMJ7u6QCkwy8tfP
         kNxlAnkWBmTBi/fGg29qdjnxRQww+8Pr+n3lhx5lTbM+mhdALtVesTQPCIAUUoEX9Ddz
         CwNNJed3a5rEEdXbxUGz4+eU41ycgPKBfsjj6awS1rWbK6OZeRu51j49cIFmVQtqTuJc
         9yiozkOvrrs5g4rUn2wFfu8UDD4GkS45agwKNQOiybGy9fn7YweEdvIJDRFQm/3JYzOn
         mkZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=hrmYGlSzfi9NcY27JUQ0Az4uMkGe37VFXF6J2fP0dWk=;
        b=M8juuzuYfySKdw8H+zdd+skF3SOzRaPFXyuug29RaTMmLxDUljT9Tq6b02Oe1gmGqk
         kf/bMciLc2SC39F2dK4xcpGHoMalLBSGFzDyNdC9HloNbp5U+ibPeREa8Eibs0ppdNcY
         JF2iTTgTo3FjwcaK3L6YZGz2b5x2k3if3YG+Px8k8QKlFhUTGSd5pN54w/r6WKjlmuxZ
         AStI4fj9FU6wVsIulrKXvQjUQECnwjLLgVO9gdru3T+xNScdlStNV7QOay1/7QcL2fWO
         NIvnCva6/1OyDe4ubZf2rrCvdb44UUAreqdooBhTLS4836Rnj1JGFAPlfYl0ZmrpnRks
         oD8g==
X-Gm-Message-State: AOAM533nVigmvHMSW83Es1AIuT6HVx0biGJoUwTrASLXyHV+iqQ7Drqn
        Ne7ovYn6MHLvKfVqaB0KyFNCXC2njRaLqE0N
X-Google-Smtp-Source: ABdhPJyqK61rWNeTRHeu9Bsg0j3XSQPwxp/eGLKHTzbAHsf1DqqgyiM+rG/Y9sOzhwgmyUFvsAZ3FQ==
X-Received: by 2002:a05:6512:2147:: with SMTP id s7mr2718698lfr.498.1601757098546;
        Sat, 03 Oct 2020 13:31:38 -0700 (PDT)
Received: from localhost (h85-30-9-151.cust.a3fiber.se. [85.30.9.151])
        by smtp.gmail.com with ESMTPSA id r13sm1882503lfe.114.2020.10.03.13.31.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Oct 2020 13:31:37 -0700 (PDT)
Date:   Sat, 3 Oct 2020 12:48:51 -0700
From:   Olof Johansson <olof@lixom.net>
To:     Daniel Palmer <daniel@0x0f.com>
Cc:     soc@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, mark-pk.tsai@mediatek.com,
        arnd@arndb.de, maz@kernel.org
Subject: Re: [PATCH v2 0/5] ARM: mstar: wire up interrupt controllers
Message-ID: <20201003194851.GG8203@lx2k>
References: <20201002133418.2250277-1-daniel@0x0f.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201002133418.2250277-1-daniel@0x0f.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Oct 02, 2020 at 10:34:13PM +0900, Daniel Palmer wrote:
> Mark-PK Tsai's driver for the MStar interrupt
> controller should be going into 5.10[0].
> 
> This small series selects the driver when building
> support for MStar/SigmaStar Arm v7 SoCs, adds the
> instances of it to the base dtsi and wires up the
> interrupt for pm_uart.
> 
> Differences from v1:
> 
> - Added two extra commits that fix up the file names
>   for the MStar dtsi/dts files as requested by Arnd.
> 
> Daniel Palmer (5):
>   ARM: mstar: Select MStar intc
>   ARM: mstar: Add interrupt controller to base dtsi
>   ARM: mstar: Add interrupt to pm_uart
>   ARM: mstar: Add mstar prefix to all of the dtsi/dts files
>   ARM: mstar: Fix up the fallout from moving the dts/dtsi files

Thanks, applied to arm/soc (patch 1), and arm/dt for the rest.


-Olof

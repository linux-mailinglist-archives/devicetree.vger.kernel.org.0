Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8627414FA4
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 20:15:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236992AbhIVSQl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 14:16:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236943AbhIVSQk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 14:16:40 -0400
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com [IPv6:2607:f8b0:4864:20::1035])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8D3D1C061574
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 11:15:10 -0700 (PDT)
Received: by mail-pj1-x1035.google.com with SMTP id k23so2705809pji.0
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 11:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=w5Fxq0A45kpJPXU72GRyHBHrpH0/XhTL0iCIAU5SGac=;
        b=pUsYx7fIHIrfnUX/PNWiJm7pRSt9FBtUFwHC9pjMetjQ+YCsN00InVOLHUNPUBaqEF
         fQziKW/rixNvMUJpGo1UFfKTrskuSbn2rSXDD44611s09tl4PLP6Q6PLhBj8IuhmID6w
         QbjvL5IWreZeV2qd4akL6KgiP3WRCcb/lPidOzY/+vgeMQP8DdCWrs6+BoNLIgbRyuYA
         BsgIGiPGwQ5HbcAWm65yi/iqq5ljVv7RG4gyy5x7YI/UhuvSMs1x5sduAs70m6y0bF9Q
         B7UblndG7wOLXw01XrMXlYTe2BV1BNhaPbWeQOueTrkiVhSXipF4eqRb8ttmCXKMd7VH
         ZO9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=w5Fxq0A45kpJPXU72GRyHBHrpH0/XhTL0iCIAU5SGac=;
        b=vq1lxXlND+bpgjCvCPHg4/OPxukcxiC2FN3pnBv4706QDNelNQEtyLfJ7c2XyLZysi
         dWawWRWUnBTdd2f55ui/tn7ifu8rJYYC6beRZthk/NDcyMHxzLE1P8kXuqNla+GYOcsH
         NxCKCGmlFf4cGjDpHXkkqoSjZpFbFLMNNt+rESqnHSkRMtz4ZVFZpu7SktzgPdS6+dNF
         LU48De5cr6FdKA1etPRwnEKcGEh6RHHEZsxA37NM9bFXLGqJso96hMDmmwu5T3JBvgTx
         sqlvhqEg+J3Yev6ymmB8hZJsZPIcMqG7M+shijQtt5tfKXaQDJTAE2eWyBqo2uWh/TE8
         hAkA==
X-Gm-Message-State: AOAM531l5spFWpO10SJGs4aUJkPbA+UIihrsaqdB9Gnhvl1vN4eYLR7C
        /hGiOztA9N2n5oBorjyx72s=
X-Google-Smtp-Source: ABdhPJylWC83Z3+VK1UjLN0fRK+gVYJA/PuhJPI9VyeY6sX9MZ85k+ghKeAuziruO/E/MzLXIQdFtQ==
X-Received: by 2002:a17:902:dcd5:b0:13d:97c6:c480 with SMTP id t21-20020a170902dcd500b0013d97c6c480mr473945pll.70.1632334510014;
        Wed, 22 Sep 2021 11:15:10 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id k14sm3583466pgg.92.2021.09.22.11.15.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Sep 2021 11:15:09 -0700 (PDT)
Subject: Re: [PATCH] ARM: dts: BCM5301X: Add DT for Asus RT-AC88U
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20210921121901.24578-1-arinc.unal@arinc9.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b695c272-b718-f702-8890-e098eee7e093@gmail.com>
Date:   Wed, 22 Sep 2021 11:15:02 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210921121901.24578-1-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 9/21/21 5:19 AM, Arınç ÜNAL wrote:
> Hardware Info
> -------------
> 
> Processor	- Broadcom BCM4709C0KFEBG dual-core @ 1.4 GHz
> Switch		- BCM53012 in BCM4709C0KFEBG & external RTL8365MB

There is no Device Tree description of the RTL8365MB switch, can it be
driven/controlled via MDIO, SPI or GPIOs by any chance? This is not a
show stopper for accepting the patch, just wondering if you are somehow
trying to get that switch controlled by the rtl8366 DSA driver as well?
-- 
Florian

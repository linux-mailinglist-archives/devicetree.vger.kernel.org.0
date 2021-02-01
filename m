Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 04B3430A48A
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 10:42:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232917AbhBAJln (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Feb 2021 04:41:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232921AbhBAJlg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Feb 2021 04:41:36 -0500
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E91F3C061573
        for <devicetree@vger.kernel.org>; Mon,  1 Feb 2021 01:40:55 -0800 (PST)
Received: by mail-ed1-x536.google.com with SMTP id df22so2101852edb.1
        for <devicetree@vger.kernel.org>; Mon, 01 Feb 2021 01:40:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=hIUPWGL9LOU/zPCO63a7e5ubCBpwA6j8jBe7AJ0YMCY=;
        b=rLHbgqVkEul68rFEzQezpbE34F6ih6YVsgGrPQ43VjQa2hNVraIyB1ZVpKXt+sey5l
         vH76AX1VAfKJw2g6GjzRfz5ijYZD3kZn+q9P8mbjLuzNRnlSIEnOWJC3Q+lIjgJxDuWV
         KmcIL8Y9TVDOR0VBYdZdBsG1QCxmJKAZ3jMlRLziYarBEHORK6ksk9mO31xgnpyOXdNQ
         PYDtwY6LtFqpm6zc//jORlupXq2sEeWeLLDOZ9poqzvpQdqKSRk8BS7T1wXa/J82rTIa
         h4FtDI450iUoSD9lV1ZCsKLhybboUCizgCFcNJM0VOPQwBPWgUyJYdvUZ30/y78UhlSM
         HSKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=hIUPWGL9LOU/zPCO63a7e5ubCBpwA6j8jBe7AJ0YMCY=;
        b=iX8CQWU/Gc2V1AqT1JMMAuAlhdPjh9KmCYDum6CrqyY+WtOMYfQ4xAkOtmSt8i3/J+
         S8pEqUmVfzJkBXUoJmP6ipP/wrt400/CrNeN3svYQQEIiGxvcDR8xqtlCBi1OKdYFF09
         Z+/gQBZ6e+LZJ28U7RkOb3XvB1RFPhP+t/BSIlHgwUkOYv7II+BH0YzUNXX8x5n/2kAl
         jWLO6VNPACcSwJdDiHcAmty1JU6ab3EEwh6vj9wiKmdfi0Mw+w7MJWpPhApraMzH+6yo
         Wk7BqCCjPxUgjeGkjZoDdRWsXyFDgAJbyn5FflhuqqE1Di62TpOJ6NEFZ7xccjN/w3jt
         8olQ==
X-Gm-Message-State: AOAM531sIFkCebiglNDOFcFUXQ1EnEaF0mpXFCuHzoqxl1ZzENDfRxTs
        xCgXIsp9GyHcW3gmX6najDc3JQ==
X-Google-Smtp-Source: ABdhPJxWu2QunWYUgAcW1ur5IvAp69p7d1VmB/yHSW0iPnJqIW1cuI7d5j1graYwBbWO7IuD7EbPUw==
X-Received: by 2002:aa7:ca55:: with SMTP id j21mr17489370edt.172.1612172454672;
        Mon, 01 Feb 2021 01:40:54 -0800 (PST)
Received: from [192.168.0.105] (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id q4sm7788556ejx.8.2021.02.01.01.40.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 01 Feb 2021 01:40:53 -0800 (PST)
Subject: Re: [PATCH 0/3] arm64: dts: zynqmp: Enable and Wire DP
To:     Michal Simek <michal.simek@xilinx.com>,
        linux-kernel@vger.kernel.org, git@xilinx.com
Cc:     Kalyani Akula <kalyani.akula@xilinx.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <cover.1611232558.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Message-ID: <06015f0f-dece-a3e5-66d4-814069af4449@monstr.eu>
Date:   Mon, 1 Feb 2021 10:40:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.0
MIME-Version: 1.0
In-Reply-To: <cover.1611232558.git.michal.simek@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 1/21/21 1:36 PM, Michal Simek wrote:
> Hi,
> 
> I am updating DT patches which were there part of DP v11 series sent by
> Laurent in past [1]. Patches have been removed in v12 [2].
> The series is rebased on the top of [3] which wired si5341 clock chip.
> 
> [1] http://lore.kernel.org/r/20200318153728.25843-1-laurent.pinchart@ideasonboard.com
> [2] http://lore.kernel.org/r/20200718001347.25451-1-laurent.pinchart@ideasonboard.com
> [3] http://lore.kernel.org/r/cover.1611224800.git.michal.simek@xilinx.com
> 
> Thanks,
> Michal
> 
> 
> Laurent Pinchart (2):
>   arm64: dts: zynqmp: Add DPDMA node
>   arm64: dts: zynqmp: Wire up the DisplayPort subsystem
> 
> Michal Simek (1):
>   arm64: dts: zynqmp: Add DisplayPort subsystem
> 
>  .../arm64/boot/dts/xilinx/zynqmp-clk-ccf.dtsi | 10 ++++++
>  .../boot/dts/xilinx/zynqmp-zcu100-revC.dts    | 31 ++++++++++++++++++
>  .../boot/dts/xilinx/zynqmp-zcu102-revA.dts    | 10 ++++++
>  .../boot/dts/xilinx/zynqmp-zcu104-revA.dts    | 11 +++++++
>  .../boot/dts/xilinx/zynqmp-zcu104-revC.dts    | 11 +++++++
>  .../boot/dts/xilinx/zynqmp-zcu106-revA.dts    | 11 +++++++
>  .../boot/dts/xilinx/zynqmp-zcu111-revA.dts    | 11 +++++++
>  arch/arm64/boot/dts/xilinx/zynqmp.dtsi        | 32 +++++++++++++++++++
>  8 files changed, 127 insertions(+)
> 

Applied all.

Thanks,
Michal

-- 
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs


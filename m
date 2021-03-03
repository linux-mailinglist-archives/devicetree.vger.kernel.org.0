Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A2DEF32C0C2
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 01:01:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1579702AbhCCSbx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 13:31:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54188 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347868AbhCCNwm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 08:52:42 -0500
Received: from mail-pj1-x1033.google.com (mail-pj1-x1033.google.com [IPv6:2607:f8b0:4864:20::1033])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CB1AEC0617AA
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 05:51:59 -0800 (PST)
Received: by mail-pj1-x1033.google.com with SMTP id t9so4181942pjl.5
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 05:51:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=kernel-dk.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=jBA6lvDJZn6Hk7j7FcS/mDbmGz22UkseO6S0MrRrj/A=;
        b=uWyA/18bF5fExSwzcUitCKE6VMoHXZkwV8yl9K7oBG6OI5ETs/SWw5EAHgLfTNkFKw
         tSVpLMWiJIs1opBBQwio8BFCfzzjUlASi7k7H2ESuJNl9wyTM4CQMq/MwIU/zmrsza7s
         T1idj6JzBOk5J/gXaFzFhQgkHqjEQ9D3Zea2pKPMbs3DHyMJ9LqLnwsJtO07Af+AjYIr
         qjIufhzvOLyEHQ91YsICLMpR0npmG0gOY1kUwUuMlS9YMvZ5uEhaO5h/qfATu/1i5tE0
         EvlvJCwBvMqc6K/Ur0iXjXiNLSpiIMbc1Ol0Uqh4e4MomsETDaLC0AEPqaSxciGChnca
         PLiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=jBA6lvDJZn6Hk7j7FcS/mDbmGz22UkseO6S0MrRrj/A=;
        b=gPfXYAuN0G71JiYNG4AX2Ojq6PkuHHIPZ/Jrp4yjAmQLqpUCbtOUlcFLzpQGqalll6
         2Mm6jMQa6Gy5lSt0b0LT+fDtYfm5g/9NjuecCjx/W599c5BG6XwZIYK2qwbtObgcjsuo
         8RrlmUI6C5A+3QrZoijLZdJm1IR+gP0eLt6fiUC2mC8wjnIPEh/5y2OM4c9aNfNzzbVT
         HP15r5BBQ6pfZUvkLj4sU8zmBdtVn2RiLOZQhY5KYmn52Mjx86cYcQSL1a9GZH54quEm
         Kz+0vV39pp8VHjJNFggt1AZvfXpeG041Q86bZHZwe1xJH9zeakXNRiClkeDfTIdl5QIS
         DpTA==
X-Gm-Message-State: AOAM530uX7zXkVxUTz0isGl9tojZ9/UltAJZnqVBQnzb3umEwz7x/LVv
        jlyOH7Cn1H8Zf01n95E+RjzteA==
X-Google-Smtp-Source: ABdhPJxxLdNOJCU50tvUDCfpMI/bbuWEVaFMJCu24ZJkLR7/JUJkZeTy+JfJNteiMYn6Mcv5Q+6xaQ==
X-Received: by 2002:a17:903:1242:b029:e0:3263:1693 with SMTP id u2-20020a1709031242b02900e032631693mr2879573plh.33.1614779519172;
        Wed, 03 Mar 2021 05:51:59 -0800 (PST)
Received: from [192.168.1.134] ([66.219.217.173])
        by smtp.gmail.com with ESMTPSA id s1sm5977065pju.7.2021.03.03.05.51.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Mar 2021 05:51:58 -0800 (PST)
Subject: Re: [PATCH V3 0/2] ata: ahci: ceva: Update the driver to support
 xilinx GT phy
To:     Piyush Mehta <piyush.mehta@xilinx.com>, p.zabel@pengutronix.de,
        robh+dt@kernel.org
Cc:     linux-ide@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, git@xilinx.com, sgoud@xilinx.com,
        michal.simek@xilinx.com
References: <1612807436-5238-1-git-send-email-piyush.mehta@xilinx.com>
From:   Jens Axboe <axboe@kernel.dk>
Message-ID: <5c765f1f-6a92-a9f8-43f4-c2924d5d752b@kernel.dk>
Date:   Wed, 3 Mar 2021 06:51:58 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <1612807436-5238-1-git-send-email-piyush.mehta@xilinx.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/8/21 11:03 AM, Piyush Mehta wrote:
> This patch series updates the ceva driver to add support for Xilinx GT phy.
> This also updates the documentation with the device tree binding required
> for working with Xilinx GT phy.

Applied for 5.13, thanks.

-- 
Jens Axboe


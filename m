Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DFEDA4B305A
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 23:24:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1353885AbiBKWY3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 17:24:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:58916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234605AbiBKWY2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 17:24:28 -0500
Received: from mail-pj1-x1031.google.com (mail-pj1-x1031.google.com [IPv6:2607:f8b0:4864:20::1031])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8700D4C
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:24:26 -0800 (PST)
Received: by mail-pj1-x1031.google.com with SMTP id om7so9263522pjb.5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 14:24:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=subject:from:to:references:message-id:date:user-agent:mime-version
         :in-reply-to:content-language:content-transfer-encoding;
        bh=OtO4Lm1J3+3MaD61M8em53BUvOczyNafp49wHh8OYeQ=;
        b=Qrv/Hzk2dgr0nysF9PiaNQt8EwfFxVRVD+oYx8nzHZidehqzdisp8oQnySlJy4z2Ab
         Jasvda2Phu4Nol3MapC8dsdwyDdVdfAXYpGS/gCadvIhfH13bOTM1ZKrjcYHQN4Wrae9
         JJjqF+Bj8GVqSPWFSUlXc7yMw8PCm2Yeyw73JmVQl8WaMnu5TaRpQnB1PpztpFol/Wme
         ZPFoIypTLEHOKZssX1nh//tpIESELLNwdkQANmMteCyJDr53enMuPRTy0FJxb8fvd/cv
         VbRLAUvoA0Kt7itqpplbmYhHbeVLv5Dm3CnStBwVI+eUrXjwRsAwx2AqwcBpfMTV23Rk
         h65Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:from:to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=OtO4Lm1J3+3MaD61M8em53BUvOczyNafp49wHh8OYeQ=;
        b=MhIBWD1+OycKvqXh/RmpIjYiY+79bJMq1YxCCGrW0uqgrx0rG0ZfeBqMumO+OiYBnJ
         c+JcVOFlTTulujzf6CUvo4Yt5aZajIA8YMfupJf38XVsYFFOm5o14dKP/Xrr8UULx+a0
         Lwxks2C8qeKbgfVYM0HFYk9eYpLZo0ADzqrWkB13DVl9qBYRYOjDMPa3vJdZS4MSpJVM
         xtQYYfWCVTUGcHGATlZtxo6Rimu1k0nixZ6epSKBGany9/rPYZ+UtZ5iZMcTSb/lAZcD
         xI1OqH729BMu8mNQ6/LTFzw1A+oxPNOUR6Sz/QFv/ZhAVtQ1L+oQ506jqKx8QHQxXtcC
         FYkg==
X-Gm-Message-State: AOAM530DkrENiOdCEQLma+TzgUwEPtMmlVSn6pfMtLpK2LGTWT5LM0ji
        bOSIhzZ6GvFQ+3PBNcd/QCE=
X-Google-Smtp-Source: ABdhPJzUOwyXV4S/V2+lkxblKzGQ+Pa00bqORAe101ClPnQE+jIgZc6s1ei6pf0X3zXecMJP1RE+tA==
X-Received: by 2002:a17:90b:17c1:: with SMTP id me1mr2537736pjb.206.1644618266400;
        Fri, 11 Feb 2022 14:24:26 -0800 (PST)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id e17sm11203242pfv.84.2022.02.11.14.24.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Feb 2022 14:24:25 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm2711: Fix comment
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        Richard Schleich <rs@noreya.tech>, robh+dt@kernel.org,
        nsaenz@kernel.org, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
References: <20220205195802.52449-1-rs@noreya.tech>
 <20220211222326.1144489-1-f.fainelli@gmail.com>
Message-ID: <08126234-60e5-7d34-7fb1-86e839ef16ca@gmail.com>
Date:   Fri, 11 Feb 2022 14:24:22 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <20220211222326.1144489-1-f.fainelli@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/11/22 2:23 PM, Florian Fainelli wrote:
> On Sat,  5 Feb 2022 20:58:02 +0100, Richard Schleich <rs@noreya.tech> wrote:
>> No functional change.
>>
>> Signed-off-by: Richard Schleich <rs@noreya.tech>
>> ---
> 
> Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!

Squashed into "ARM: dts: bcm2711: Add the missing L1/L2 cache
information", thanks!
-- 
Florian

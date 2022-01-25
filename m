Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3DD8149B72B
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 16:05:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351818AbiAYPDi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 10:03:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45316 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352337AbiAYPBY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 10:01:24 -0500
Received: from mail-wm1-x330.google.com (mail-wm1-x330.google.com [IPv6:2a00:1450:4864:20::330])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50B0DC06177B
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 07:01:21 -0800 (PST)
Received: by mail-wm1-x330.google.com with SMTP id c190-20020a1c9ac7000000b0035081bc722dso1857540wme.5
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 07:01:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=subject:to:cc:references:from:organization:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Rtmp0dqKHGwJEKozu5JKnqXfvBDShJfZcOYDCM9O30s=;
        b=PLaIGp3oeEgbFGe60Jgv1mgImggG7+BEnaPTWFDFLpU8AB/c4Glw5Y1lfRQHX8syjw
         kCXCkXZSfBREnhzfQtBYYxSGsoa1xrg06P+2QdUcG3lIv2OQM4zSv2cCuSQsQ+vJg8nb
         M1uZO0EnbOpqzf+WTVDVGgxkcY0cVKEdgIfFDvKp1wmg6VyO2cXkpJ1kXbjF6D008eqf
         dVSKKinD9bRqD4UfVCGGgMVlxQbhvh2kE50XcLij98Kh1peJlXL6e1Ser0yKG/MEnU6N
         KECBjAdF3KXPD+KOkLxfkZv+u4LfxDOHP27LUtDnAqfg9K2tH7fGJlO8pLqVL3tSmYMr
         m+eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:subject:to:cc:references:from:organization
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:content-transfer-encoding;
        bh=Rtmp0dqKHGwJEKozu5JKnqXfvBDShJfZcOYDCM9O30s=;
        b=qpqvjAcATaMJOFvt7OC5T9qnlxowegrdXUUpyic52IGsAmsadz5C7EneHHKGGODLeS
         rgasbQ2tXtYewMxr1eVXHsG8r0omeJY6sbf9+XUWZPZsBpsPT4nBVn9/3j2pt6QbC8Il
         SDGE+9JPRVo87Ehj0KzXOFppM3u0Hoa3+c0Ft4q69CEfFZToejmp1IAAyFT7RkiNuLzH
         c4VzO+alJkGH4ejY5m/9UUWTukTtXKKCbKyNH23D1QM+RawpMTLAX0JGyLqgcsgWyUlx
         3TTYRtQivnUMp8Ap5ZHeyvAfLEcTyGkFMKRQwrDqjU4uMbEbx8E+QInrLJfBNZIOhPv2
         qqcA==
X-Gm-Message-State: AOAM530Z2kJGmRLX5VnBvJIYK0MwC9zWpPX5lMOw9egcKYAtKoFwmvoB
        eyxrcNrRBSMg1ZME0gag0gNEyg==
X-Google-Smtp-Source: ABdhPJzc2KXsXyiQcSuN83qgJUqGoOMhhb0gIw+vQatj3F3MBeRiqOh2SqpwYmDMDPz75JiC07+TXQ==
X-Received: by 2002:a7b:ca55:: with SMTP id m21mr3424984wml.114.1643122879789;
        Tue, 25 Jan 2022 07:01:19 -0800 (PST)
Received: from ?IPv6:2001:861:44c0:66c0:e03f:56c1:665f:b320? ([2001:861:44c0:66c0:e03f:56c1:665f:b320])
        by smtp.gmail.com with ESMTPSA id o14sm6444341wry.104.2022.01.25.07.01.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Jan 2022 07:01:18 -0800 (PST)
Subject: Re: [PATCH 0/3] arm64: dts: meson: add BL32 reserved region to
 Beelink g12b devices
To:     Christian Hewitt <christianshewitt@gmail.com>,
        Kevin Hilman <khilman@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Furkan Kardame <furkan@fkardame.com>
References: <20220122073221.2398-1-christianshewitt@gmail.com>
 <7h7daoyka3.fsf@baylibre.com>
 <C8B4EA0E-6593-4C42-B116-F9C043D29452@gmail.com>
From:   Neil Armstrong <narmstrong@baylibre.com>
Organization: Baylibre
Message-ID: <4a8727f4-fbdd-33f7-1f1b-c4baf92ad986@baylibre.com>
Date:   Tue, 25 Jan 2022 16:01:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.14.0
MIME-Version: 1.0
In-Reply-To: <C8B4EA0E-6593-4C42-B116-F9C043D29452@gmail.com>
Content-Type: text/plain; charset=windows-1252
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On 25/01/2022 05:02, Christian Hewitt wrote:
> 
>> On 25 Jan 2022, at 12:02 am, Kevin Hilman <khilman@baylibre.com <mailto:khilman@baylibre.com>> wrote:
>>
>> Christian Hewitt <christianshewitt@gmail.com <mailto:christianshewitt@gmail.com>> writes:
>>
>>> This resolves a long-running issue where Beelink GT-King/Pro and
>>> GS-King-X wedge on boot or shortly after when booting from vendor
>>> u-boot. In some distros the issue is often reported as triggered
>>> by large file transfers to/from USB or SD cards. Reserving the
>>> BL32 memory region prevents the issue.
>>
>> The BL32 is typically common for the SoC family, so this change should
>> probably go into the g12b.dtsi.  Or probably even
>> meson-g12-common.dtsi, which is where the BL31 reserved-memory is
>> described.
> 
> Hi Kevin,
> 
> Would you be okay with the same change applied to GX devices too? - I
> normally have these two catch-all patches in my tree to deal with random
> tv box hardware and it would be great to drop them:
> 
> https://github.com/chewitt/linux/commit/4315ea4612389fc08d0a008b562cafbda96374fc <https://github.com/chewitt/linux/commit/4315ea4612389fc08d0a008b562cafbda96374fc>
> https://github.com/chewitt/linux/commit/3c0df794baa7ea9d32d8ad54530b5a056c770ea9 <https://github.com/chewitt/linux/commit/3c0df794baa7ea9d32d8ad54530b5a056c770ea9>

Sure, it has been done in a similar way for bl31:
https://github.com/torvalds/linux/commit/48e21ded0432ee1e2359d4143d7a6925cefee1b5

in a perfect work we wouldn't need this since mainline U-Boot does the job by reserving these
memory zones, but vendor u-boot exists and isn't avoidable.

Neil

> 
> Christian


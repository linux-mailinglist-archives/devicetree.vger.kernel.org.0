Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5DAE56BA15F
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 22:22:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229734AbjCNVWb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 17:22:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34680 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229707AbjCNVWb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 17:22:31 -0400
Received: from mail-pl1-x630.google.com (mail-pl1-x630.google.com [IPv6:2607:f8b0:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F88E4E5C6
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:22:30 -0700 (PDT)
Received: by mail-pl1-x630.google.com with SMTP id u5so17997574plq.7
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678828950;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oSMMYpMwHGejyn9j/p82E+qqcEr4QAovjETTUKuYHjg=;
        b=kxmhvfXC2L8Vtf/NGg9j3iGmdAGayE9lLLATblVcHzVTONhJ5rP5K6VEoO2lUDbnlD
         asr47dpydH0puaJIeAEqINQhJ1OF3B9Ngz3o3hCb5rlAqXdRTaJ4qUFmGRs2/+awQG0P
         xstFDq3CCvkzTjEjbgE3JzAfy5UuUGfRJ1d3WBSVbfR/YxAZToLB3YV+JaTMq2bfIlG2
         mPO+V0LpsOy6YlEnKG3OMB8UaFfHCVZcxivvK17b0E/zIaELe9Z32BVOKye1WXCszFr3
         8jlAZLfoVirlITcNuXQiq7DpSw3F+2iEhU6v8nf04HJXV1JNv4sLon6iP8JfM9us00Vj
         dx5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678828950;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oSMMYpMwHGejyn9j/p82E+qqcEr4QAovjETTUKuYHjg=;
        b=FQOH6pvKHhclII3gkfbb+GcWOs2fiVhk7O1daD3xb22SLOvNjOIcHQeqXVTbUJ54XJ
         HAHbdQqH7FIbw7bQHd58cq4NY2cmy5iqA6JdjDKyUeCSN/YXFCrhE55DohnDkitbXWaI
         XEvJ4LnYuHyH+Anc0ouuK5ApIxeCgsEjiMd+n6ErpgcPogs+0I0vcuuMtumrF7yOJsRm
         /eu34a7J3eb77f2uZgY7g11FYJGTRX+jdzhm4H9FXRXjTMPO1ACAMv2W2i8/BHwPx+wF
         /UU4gPwnuekUamwQiCKtNjxiEGBs6stNsp3QiEkf2hErsRK0eNgwFu+fHNyc7SSIKneC
         YSOQ==
X-Gm-Message-State: AO0yUKW+nl4SjdoKGgws5NhqLnFAzwWMW8I9wvqzdAqwBwlR74TVQtkF
        hx4U5GXmqxXWzh4UsBUcc2A=
X-Google-Smtp-Source: AK7set8aYU6Hhs7iCJ8LGNRAZBL7E3rCQ6u2UK1UmEavXDUkgAv8dP5mAyW0QhtaMLIO5KaUXwcBfw==
X-Received: by 2002:a05:6a20:4da7:b0:bc:a2a9:1aa with SMTP id gj39-20020a056a204da700b000bca2a901aamr36318508pzb.55.1678828949668;
        Tue, 14 Mar 2023 14:22:29 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id y10-20020aa7854a000000b0056d7cc80ea4sm2030520pfn.110.2023.03.14.14.22.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Mar 2023 14:22:28 -0700 (PDT)
Message-ID: <bc15cbf2-4b4c-b132-7b50-d3a1edc422b1@gmail.com>
Date:   Tue, 14 Mar 2023 14:22:25 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH 1/3] arm64: dts: broadcom: bcmbca: bcm4908: add on-SoC USB
 ports
Content-Language: en-US
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Florian Fainelli <f.fainelli@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        William Zhang <william.zhang@broadcom.com>,
        Anand Gore <anand.gore@broadcom.com>,
        Kursad Oney <kursad.oney@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>
References: <20230228144520.21816-1-zajec5@gmail.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <20230228144520.21816-1-zajec5@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2/28/23 06:45, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM4908 has 3 USB controllers each with 2 USB ports. Home routers often
> have LEDs indicating state of selected USB ports. Describe those SoC USB
> ports to allow using them as LED trigger sources.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>

Also applied all 3 to devicetree-arm64/next, thanks!
-- 
Florian


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 272D4624090
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 12:00:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229832AbiKJLAk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 06:00:40 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiKJLAi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 06:00:38 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6F1AB2BED
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 03:00:37 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id x21so883053ljg.10
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 03:00:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2wAFtEClsVPoiOCl0FiiHDut23153asSp/I7TrSrg1M=;
        b=Zsl72Zc1ntixRLP/pk0w3BZtYflbMuQXE9BrMWfJ+0+4GgJNjtieqn8vi/FnBpU2r2
         oZQQJzaPrEPXUrrV57ymMTaKCvlBQ8sjzUSzVcOqq8NQwGJ6zr8YI3TPWUZ3/SyJuKYJ
         rSuY258I3J/4Lh08d6Wp3dbd4i8tbKbgD0zBLWSMlu6RDSNTLckivjgqLksHQ3lrtQH1
         dHgMBKwWUhS+BGrSMYhinArutQhtuf/0WVSXc5gWcWZUeBtcBiSw/UckKZiViwVOW0AH
         0GXl49f7SVuEGAIDn48LRH/X6yAKZdRpihBfw/qDCMezNdZkn7Y1JM8hus+r/vdBktxa
         TtdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2wAFtEClsVPoiOCl0FiiHDut23153asSp/I7TrSrg1M=;
        b=2eAE1oNgWExYVAEOVxHYjoGZUtLmdaTl37gsuzHFSGIwYvut5ouTbGO00WhCpeQ7yO
         4K3rPQ8cdLW+oLRlrxNu1gKwh+rYM3xe+zzink40bhfd2ENdODhHafydreAAxTWKdPXk
         GsvDNO7uqpzdNvA5iRjawoiWoAV/GT+BeyhCjCVGpMr5zL88fXOqCpZXVpQG1Q6w1zoQ
         1fcDc+cmrexraHKiUkJIjvsn5HhXDGwcvWekFmeNJ4dzs0Avta8PVKlVSUfFEanxuSs7
         H9rES+BZi7ruFav+VJ3qEjaL4YeHaPCsN44W5VHMmMMg2Qd0Ctn+OTQ94bSmU6jj03UN
         y79Q==
X-Gm-Message-State: ACrzQf32pOwbpO0NUY+l+v5lUWqEsRJ96mlieRtccIDkPzwVBeW7BNui
        dCfesQrlWZPDSCcAgtTkQQ32zQ==
X-Google-Smtp-Source: AMsMyM6KhkSh3LyMNf5GknzSMODEs3/ILC9uPSqjBI/QcJMcKMtEa/rQElw0Is3tZKnKDY5kkvrY+A==
X-Received: by 2002:a2e:8092:0:b0:26f:bd61:ac4f with SMTP id i18-20020a2e8092000000b0026fbd61ac4fmr8958423ljg.396.1668078035832;
        Thu, 10 Nov 2022 03:00:35 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id 17-20020ac25f51000000b004abc977ad7fsm2677067lfz.294.2022.11.10.03.00.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Nov 2022 03:00:35 -0800 (PST)
Message-ID: <2d1cddd6-448b-4a3c-72e1-2ce3cfb44268@linaro.org>
Date:   Thu, 10 Nov 2022 12:00:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: (subset) [PATCH v2 1/2] dt-bindings: edac: Add bindings for
 Xilinx Versal EDAC for DDRMC
Content-Language: en-US
To:     Borislav Petkov <bp@alien8.de>
Cc:     linux-edac@vger.kernel.org,
        Shubhrajyoti Datta <shubhrajyoti.datta@amd.com>,
        devicetree@vger.kernel.org, tony.luck@intel.com,
        mchehab@kernel.org, michal.simek@xilinx.com, git@amd.com,
        robh+dt@kernel.org, james.morse@arm.com, rric@kernel.org
References: <20221107062413.9642-1-shubhrajyoti.datta@amd.com>
 <20221107062413.9642-2-shubhrajyoti.datta@amd.com>
 <166807145377.16822.15787804198836912482.b4-ty@linaro.org>
 <Y2zL3OXBNfR/VNPK@zn.tnic> <207ae5bd-dbc2-9c4b-2acc-bda480da711e@linaro.org>
 <Y2zYqetP6IhG01Bg@zn.tnic> <490d26ce-a09c-db16-93b1-8f468a5c3f87@linaro.org>
 <Y2zZj69EEZlqRfBd@zn.tnic>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y2zZj69EEZlqRfBd@zn.tnic>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/11/2022 11:59, Borislav Petkov wrote:
> On Thu, Nov 10, 2022 at 11:57:11AM +0100, Krzysztof Kozlowski wrote:
>> I don't anticipate more work for current cycle... but I also did not
>> anticipate such in other occasions (e.g. recently Tegra binding
>> headers), so my anticipation is not accurate. :)
> 
> Ok, let's try them your way - you take care of the dtree patches pls and
> I do the EDAC ones and then we'll see where this goes.

I already dropped them from my tree, so let's wait for respin and then
you can take entire set.

Best regards,
Krzysztof


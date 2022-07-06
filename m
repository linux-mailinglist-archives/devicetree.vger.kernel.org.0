Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3D053568EE5
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 18:19:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232351AbiGFQS7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 12:18:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233659AbiGFQSz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 12:18:55 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4C70013D1C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 09:18:54 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id bs20so18922697qtb.11
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 09:18:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zXnl7dnKS6f9NGR7htJdod0sZ/WysfkcPP2p/z2KtT8=;
        b=ktB2+pGV+oAklIOMoFurPWKuFvs3Dnc6fHHvIdsfXbNGSeXMTbe0mC/IBzEa92tRXC
         mhZ7vxnLC17p/qjyX0OTRNmgSjf1k0ybNEw17eYH+uJ00GPviWQZcbmE1yzCH5zjaFkR
         HXDGCgBHMgAneexxJ6A8DL0CwbDiSMU/Zb93MHXlknPOCCtVbzQQP6cMVcIV738SrWQO
         WXvb+ofPsFtR2dnkeDvGwmbKum3IVt6gJqJN1nBEGJ1ybhIRSGsW/AbWwcDmlrJ9bjLr
         9BFeqHEZPYMlwx59j8Ca8lfhru6d/MsIve6EWJcVHJKoKK3/bnzlu/UgWb2j31ZMtNCl
         qi1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zXnl7dnKS6f9NGR7htJdod0sZ/WysfkcPP2p/z2KtT8=;
        b=FQp6JR7hJZua32FbYmWY+rnxpbLqRjhllwY5E50O1mYGhu6bbWpvRWtVQugUx2BHLc
         xGmvpDeITzvt9FFRQYUUERBoJLpGwj/RdlQRSPF60I3Ue3t8IY1N5cWBwdMzOmaebRN1
         KPCmIWq7Un+MeJkpqC/4SwdcLf5DqL1DfOl1xqM1Ruizg+KgiPf/OUaTV8GNmrggYPPp
         7v3t26w9TU0xY3HDNoZV46o2bZNcZ0Rr7Q5Qf534dqfj8v/LlNAxTLXq18k+nQ3sT9rb
         8wDEmheOkBQZ9L1gD+ZpVpf5ULCponmmS+T+y3lSBu5vHRv6wnjGJ+2sdduTpaZcEWbh
         WaEw==
X-Gm-Message-State: AJIora/i1zPMQ5+vy5R9SSIKmhuR4HYXZfpa4MQNnMsCf92Pe4pjc5nY
        ocYfDRfs7pTbSgoiHQm7zRs=
X-Google-Smtp-Source: AGRyM1uBpQFFmOPO2ctLOeLz8DfD2OFmgbc9XddZCE2XMh9aBZJReyAULVrxEPqZIcv+NcaMPaHfrg==
X-Received: by 2002:a05:622a:606:b0:31d:46a0:59d7 with SMTP id z6-20020a05622a060600b0031d46a059d7mr15802663qta.321.1657124333272;
        Wed, 06 Jul 2022 09:18:53 -0700 (PDT)
Received: from [10.67.48.245] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id r13-20020a05620a298d00b006afc53e0be2sm21917672qkp.117.2022.07.06.09.18.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 09:18:52 -0700 (PDT)
Message-ID: <804b3068-7d21-23e7-fb7e-9f505e2a2813@gmail.com>
Date:   Wed, 6 Jul 2022 09:18:28 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [GIT PULL] Immutable branch between MFD and SoC due for the v5.20
 merge window
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>,
        Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        Peter Robinson <pbrobinson@gmail.com>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220625113619.15944-1-stefan.wahren@i2se.com>
 <YsV4/2ShlUNgqcdx@google.com>
From:   Florian Fainelli <f.fainelli@gmail.com>
In-Reply-To: <YsV4/2ShlUNgqcdx@google.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
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

On 7/6/22 04:58, Lee Jones wrote:
> Enjoy!
> 
> The following changes since commit f2906aa863381afb0015a9eb7fefad885d4e5a56:
> 
>    Linux 5.19-rc1 (2022-06-05 17:18:54 -0700)
> 
> are available in the Git repository at:
> 
>    git://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git ib-mfd-soc-bcm-v5.20
> 
> for you to fetch changes up to 9e95c67efa8aa26f03b08147a552eb71e83e1a77:
> 
>    soc: bcm: bcm2835-power: Bypass power_on/off() calls (2022-07-04 11:59:55 +0100)
> 
> ----------------------------------------------------------------
> Immutable branch between MFD and SoC due for the v5.20 merge window

OK, merged into drivers/next, thanks!
-- 
Florian

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF5CF4ABE67
	for <lists+devicetree@lfdr.de>; Mon,  7 Feb 2022 13:13:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1392363AbiBGMJs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Feb 2022 07:09:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33748 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383071AbiBGLVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Feb 2022 06:21:31 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2AB8EC0401E0
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 03:21:13 -0800 (PST)
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com [209.85.221.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 566753F32B
        for <devicetree@vger.kernel.org>; Mon,  7 Feb 2022 11:21:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644232866;
        bh=8Y9yNV8EX7NTdignHPRQY252HgYt0mlpY9TRr3lWof4=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=D5GQnQDYNVz8/gm93YmV7/IRezjfmOWGdR38TrWkhNlv4lgOnu/YzEsIQDPENP+AD
         s5zWqAs+2ARwZKKxWM2EkyJuoOn3Hqu3tixQ1XhRu0YKaXymuKPiU/JnC+um9UuREZ
         CDZB6gZsvtxFwP+AcgiJlJ+Innj/INn8tNL669GptfHfh55GGZ85WZmcmifmIP0y+5
         KmcKApCyN4Gc21ndwnJyW2D2gIE7ABx1OXst3nd8YrjhHZJCI7GSSa+4uhmB4NOKIS
         NH4XVk9YP5NOnAs4WrmdSPw9xKg+I/uLlgUuJJwdg4VcgRtHWxr43+i97G5LglYzb0
         EEAesAMC2M5rg==
Received: by mail-wr1-f72.google.com with SMTP id e17-20020adfa451000000b001e3267c9e9fso546618wra.9
        for <devicetree@vger.kernel.org>; Mon, 07 Feb 2022 03:21:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8Y9yNV8EX7NTdignHPRQY252HgYt0mlpY9TRr3lWof4=;
        b=EIayEjuCCJ/BwnXi8Tp06zUJ+nSPnIx1EGt+beV6uwpGMPqzQtGY1Q0hnIb/MZATgB
         LbXCMhFovV3uxV9VPPrF1dWDWs+hs574aw1ROY8Ux12njBPxrPJQS6KSEibTZYCflxYK
         6ded2TWbUU1bYvneXun/2BC3KEWB67ZPBz8cgYiNHKxJ8eN1mPxJOhY+vzAOt3Ze9CDA
         nPVvwsKJXWoidPTppgrCxv8Gmbn4CFM78ltjeYDz78hVQ5sRNOzPkpQfVXOsDLiI9AVD
         jLZfSQcQhT6XTvJh/3I3oyoTvE0Vh9xGJOrQG+NsrG7ecbuKs9kZ14TVu69pGIekgNtB
         iiFQ==
X-Gm-Message-State: AOAM533vR0Je9X4aQ6acTTAcbiTCxDniROllbsJHcCBbMVXx6aU3k2PH
        530mfpIW5Au09MHP43z3n/kLt5DTJyzsD23a0OvYKsV+yxadWg1z3yyDuUDSXL/5+nEl02ujhdK
        kXFZDob3WYQcYafYpR3cwuXsQ5wE0Rs3ZF2asN0Y=
X-Received: by 2002:a5d:6603:: with SMTP id n3mr9256719wru.20.1644232865982;
        Mon, 07 Feb 2022 03:21:05 -0800 (PST)
X-Google-Smtp-Source: ABdhPJz28bw0iWdum97UqccNObiTCl0E42zll9NAhEqs1JdVzu878pa6CnjxT2SeV0Ew8TU0VtcspA==
X-Received: by 2002:a5d:6603:: with SMTP id n3mr9256693wru.20.1644232865857;
        Mon, 07 Feb 2022 03:21:05 -0800 (PST)
Received: from [192.168.0.87] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id b4sm2321525wrw.100.2022.02.07.03.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Feb 2022 03:21:05 -0800 (PST)
Message-ID: <776e1b61-678d-6686-06fe-a74b7ff68b85@canonical.com>
Date:   Mon, 7 Feb 2022 12:21:03 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v1 2/6] i2c: npcm: Fix timeout calculation
Content-Language: en-US
To:     Tyrone Ting <warp5tw@gmail.com>, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        semen.protsenko@linaro.org, yangyicong@hisilicon.com,
        wsa@kernel.org, jie.deng@intel.com, sven@svenpeter.dev,
        bence98@sch.bme.hu, lukas.bulwahn@gmail.com, arnd@arndb.de,
        olof@lixom.net, andriy.shevchenko@linux.intel.com,
        tali.perry@nuvoton.com, Avi.Fishman@nuvoton.com,
        tomer.maimon@nuvoton.com, KWLIU@nuvoton.com, JJLIU0@nuvoton.com,
        kfting@nuvoton.com
Cc:     openbmc@lists.ozlabs.org, linux-i2c@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220207063338.6570-1-warp5tw@gmail.com>
 <20220207063338.6570-3-warp5tw@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220207063338.6570-3-warp5tw@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/02/2022 07:33, Tyrone Ting wrote:
> From: Tali Perry <tali.perry1@gmail.com>
> 
> Use adap.timeout for timeout calculation instead of hard-coded
> value of 35ms.
> Use syscon to access gcr, instead of "compatible".

One commit = one fix/feature/logical change, so requirement of syscon
should be a separate commit.


Best regards,
Krzysztof

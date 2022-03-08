Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BB1A74D251F
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 02:13:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229836AbiCIBIL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Mar 2022 20:08:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230102AbiCIBHu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Mar 2022 20:07:50 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F24D5D5DEE
        for <devicetree@vger.kernel.org>; Tue,  8 Mar 2022 16:48:17 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id p9so614362wra.12
        for <devicetree@vger.kernel.org>; Tue, 08 Mar 2022 16:48:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=wirenboard-com.20210112.gappssmtp.com; s=20210112;
        h=message-id:date:mime-version:user-agent:to:cc:references:subject
         :content-language:from:in-reply-to:content-transfer-encoding;
        bh=R5rD06Jb33tlpsYg+zacl9gOGE39RgYTcZ3AUmAKk+k=;
        b=kT0CoUpD6C3Xk+Syyc3g2EyRA6X+44nx9fnethcGlcRmfLBQpCmyre7xE3rkEC/Y1t
         STrq8nxvUWIMlu5tRsYNT16i802tLm/s3IyJRYk1bI2Pji3IVN7bLx7hyyfvCgTJitIy
         0+vQ8zJSa9Kbj2C1GGvbWbLCvbf1mMaHoiZlr/iSm9Xp3F1GJw1SB3m1Z2Al1R00X5Ne
         ibT8bT+jzYCECm9PLVzl145bqj7V9/GAo3/T9kdCmR/N4ksOT/UM/LVxLZa4iXVRb38J
         7a9ZtfrtSSJZ4ORPlySmANv/5Ig1MxehiFh0UVmL1aJv5jZtyFSLRccKYl490TDoCnWl
         cCmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:to:cc
         :references:subject:content-language:from:in-reply-to
         :content-transfer-encoding;
        bh=R5rD06Jb33tlpsYg+zacl9gOGE39RgYTcZ3AUmAKk+k=;
        b=1ZRUUMpFoUeBi9JCseWpx2juzcrOzRRPmaEzaYgu6k2XKblUWIX0qxOHMpUkcauzdY
         4NzVRvAOIPZrNwxNHigwhwKCh/CO2RNrSN/1DEqbBRej7aVjrPZbo22JURX5sjCPXs8I
         Q3bugFA9uf+8+NTfhpAEZoIXWhDYF2kKKzCCw12f0zP1tmZnh9XSpnnYewyLdKKHqs3N
         OfwzK7f8W5WwQcS1Ykgbwld9TZRM+72tm/6Q+hyqR1gcqt266WGH9B693a3a99Ke87ly
         PVfpNvBGHMhmIqh6xKCEWP2ImBjdT4sLIygpAF3L538S7D0LngbnZu5CcY38lnkNdJA1
         AB6g==
X-Gm-Message-State: AOAM533gdjk0pBn8y0QscjuQLQ5K/F4n6+I2g4H+fEBrPxD1nk11b9Nw
        BGt9avPYlysZEW2P3JARM4CKVvs0TzbsN/vf
X-Google-Smtp-Source: ABdhPJwAa5h+FPbQ9EbtrO+8twaLOcIwcj6An3X7zE034ZrmYDx1nBgzQc3Ssz/Np+zl4LlJ6UlLlg==
X-Received: by 2002:a05:6402:354f:b0:416:8fba:8348 with SMTP id f15-20020a056402354f00b004168fba8348mr968136edd.73.1646783099315;
        Tue, 08 Mar 2022 15:44:59 -0800 (PST)
Received: from [192.168.0.103] ([37.252.93.155])
        by smtp.googlemail.com with ESMTPSA id fq6-20020a1709069d8600b006db088ca6d0sm74709ejc.126.2022.03.08.15.44.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Mar 2022 15:44:58 -0800 (PST)
Message-ID: <bc846d95-5571-cfd1-c848-1ae9240f50a4@wirenboard.com>
Date:   Wed, 9 Mar 2022 02:44:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
To:     fuyao1697@cyg.com
Cc:     devicetree@vger.kernel.org, jernej.skrabec@gmail.com,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-sunxi@lists.linux.dev, maijianzhang@allwinnertech.com,
        mripard@kernel.org, robh+dt@kernel.org, wens@csie.org
References: <YiCnR5v9fYoXXy39@scg>
Subject: Re: [PATCH] sunxi:dts: remove r40 can node
Content-Language: en-GB
From:   Evgeny Boger <boger@wirenboard.com>
In-Reply-To: <YiCnR5v9fYoXXy39@scg>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

as I explained in the original commit message, CAN is definitely there 
and is working perfectly at least on A40i.
I know it was removed from the user manual, but I personally verified 
that it is working.

Maybe you can tell why CAN should be removed besides not being described 
in the manual? Are there some hardware or maybe license issues?

Thanks!

--
  Best wishes,
  Evgeny Boger
  CTO @ wirenboard.com






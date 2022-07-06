Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 24C09568013
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 09:39:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbiGFHim (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 03:38:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55512 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229771AbiGFHij (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 03:38:39 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50B1E20F7C
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 00:38:38 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id c15so17420796ljr.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 00:38:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=trquhX2v5hf1BT4HUMEUBLzdauQAKwMC9iHS8PTcLDg=;
        b=nwsJuK2oWultTAa1iO+UC6+1RUtO1bajTk9sBHUwXGMsv8ojZWzGdqNQXSKGM84tKM
         Ho2MkBEDFsUbupjQRhddDviAJo9xR9EmzFz6xZExc7+znBJ5+zxOsx9RS9EusPWICkiJ
         rAiX8cY7Cr3Q58+3tYnietAqwJhdggCAs0cm6YJ6/AQsb0s/nGFDhsxkDThpyX/pBD3f
         sgndxF6RkCjsh6li1JtAamO4IwI94YkbTia4LMCduMJDMQN2rEOGxwZW480HRyhPyNor
         Vy+ZAu9/S2bGnQvQxxzMctKZYmzdd1UgCDr36IphNkNiYum6GoxO1tob1+4WUfoJFHAL
         O26w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=trquhX2v5hf1BT4HUMEUBLzdauQAKwMC9iHS8PTcLDg=;
        b=0waQWw7BvWGpM6nG9/cSEDE2dMWtzr1BNvqFfM5QzzsXpyci6uyM7l0y20Cj+hQ1V7
         1Vp1Ey7I0I2/TjmZrDOID7l3PAv6PVS4GglXrNYhthTvBNJXTRj+VS1Fq4mZbUbLOudf
         vvIt0s1aPnfXMaxl4t2DYPeff+pkGh4/5cRaroDFyJgj45YVkaOWqSEPlNQZdv4TMOQP
         QbERq/6Xx16BKybfZcjZ+UmccdEwv+lUb5uXk4mNo4UuL51BRRm9DU7dxe0lNldJ623M
         uMVMyTXUG+5CfxlujOCqBWgg8CyxpJaPM0N/fFRicc8mf2VHUYOfLvClLxPjd32VQnqa
         EXWA==
X-Gm-Message-State: AJIora+3xWBQZ7+3GFoCyztmmzW8grmgvonqxcaYYricKd3SORNAqhb8
        MMfrzunc+G8z8Udcqh3WaC9QVDdQG80beA==
X-Google-Smtp-Source: AGRyM1uSNyVht9UQyzUgj3vCTc/S6Gil5cgnfTi/LPy5iOUm9IhZjPrn4/qwW2Mnm6WBPYFtIURPtg==
X-Received: by 2002:a05:651c:54a:b0:25b:c79e:e0fd with SMTP id q10-20020a05651c054a00b0025bc79ee0fdmr21832092ljp.94.1657093116646;
        Wed, 06 Jul 2022 00:38:36 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id f10-20020a056512360a00b0047255d211c2sm2744578lfs.241.2022.07.06.00.38.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 00:38:35 -0700 (PDT)
Message-ID: <fa5abbbf-4c12-3f01-57ea-02c6e26fa48e@linaro.org>
Date:   Wed, 6 Jul 2022 09:38:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH net-next v2 4/9] memory: tegra: Add MGBE memory clients
 for Tegra234
Content-Language: en-US
To:     Bhadram Varka <vbhadram@nvidia.com>, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        thierry.reding@gmail.com, jonathanh@nvidia.com, kuba@kernel.org,
        catalin.marinas@arm.com, will@kernel.org, pabeni@redhat.com,
        davem@davemloft.net, edumazet@google.com,
        Thierry Reding <treding@nvidia.com>
References: <20220706031259.53746-1-vbhadram@nvidia.com>
 <20220706031259.53746-5-vbhadram@nvidia.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706031259.53746-5-vbhadram@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 05:12, Bhadram Varka wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> Tegra234 has multiple network interfaces with each their own memory
> clients and stream IDs to allow for proper isolation.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>
> Signed-off-by: Bhadram Varka <vbhadram@nvidia.com>

Hmm... you need to send a proper v3 without ignoring people's tags and
with proper changelog describing all the changes you made.




Best regards,
Krzysztof

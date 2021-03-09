Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81455333153
	for <lists+devicetree@lfdr.de>; Tue,  9 Mar 2021 23:04:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231915AbhCIWDg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Mar 2021 17:03:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230320AbhCIWD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Mar 2021 17:03:29 -0500
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0DCBC06174A
        for <devicetree@vger.kernel.org>; Tue,  9 Mar 2021 14:03:28 -0800 (PST)
Received: by mail-pl1-x633.google.com with SMTP id w7so3845871pll.8
        for <devicetree@vger.kernel.org>; Tue, 09 Mar 2021 14:03:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=Y4dMOg9HGf+5rERtHzynPiCkjSI8CasbCQRtakRMk6g=;
        b=KkKuwpu6r/w5IgiYA8yEVurS9NPFslDMYJRR4rI77kvrn8R6y/Aauox3PPPzaLCm7E
         1wwdpwfHLOpUbEZUTxRCp5Gc9pKVpBHiBD5I56e9KGxL+Iru3XnUCoLs8dTGlE+43O4U
         fD3DM3PC+hEKx52edxZNo/WL5ajjXtMU9G3weqdb/zL5aaYbzgCHUIiJbRcuI29/wOfc
         S+lJ4E2DnISezGHzmyWO0JM134Kjk+62HXHlYGTvQRupUXriq4AnI4+XRSHYeHH0WxvS
         mzmah4XQVrSAOdir66mP2LfWKtMg9Q6yZ+6KISY/KAOub/SAGuauk3/vHwY30cQ5dh7W
         clsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Y4dMOg9HGf+5rERtHzynPiCkjSI8CasbCQRtakRMk6g=;
        b=Wk5p0UyWwGVwPUFOOgodRdUgrJTOIdslUwG4qqQV+VqAX+27rvf8MqfWmBZrSdQtRc
         HS60BkCMDkYwy9CyUl4bilT4gAu2LrcfFkKAh/8OyF0ta+IyWgbG5pWREz9lU2fzfLxI
         lIyxK4idSME35LEky849UvMag+JANgQJpyZKxrBvwwSyvoL+oE4CBnmGLSLnkrwnQJIF
         t4+7ZB27wPxN1w1ItEQLMDaF/zXItx6IgXDi7EVFQLTQl/DhySkya5XA3UlCR7iu5nfz
         928+Ev2b0vVc5slLCNrI4bNDAysDorRLSVPezvYq9KlbAB41Q7HdeccZZshjAm+r7Zqa
         XYjQ==
X-Gm-Message-State: AOAM531vtPKXhru4PcyJ1v29qnuuGe1dY3QTGzMiI8bNRLB03hrpSEYA
        sahtwWEthKrjdbFmb+4JoZM=
X-Google-Smtp-Source: ABdhPJwzRFWxyoZKlNsVqjaAT6dKqKx8seSsFh70zgE/MqrtLLAEiSPaO+VlrNNuP0LuSK/CUpSPzQ==
X-Received: by 2002:a17:90a:f403:: with SMTP id ch3mr32319pjb.126.1615327408304;
        Tue, 09 Mar 2021 14:03:28 -0800 (PST)
Received: from [10.67.49.104] ([192.19.223.252])
        by smtp.googlemail.com with ESMTPSA id j20sm3854261pjn.27.2021.03.09.14.03.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 14:03:27 -0800 (PST)
Subject: Re: [PATCH stblinux] arm64: dts: broadcom: bcm4908: fix USB PHY reg
 name typo
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
References: <20210309181132.23144-1-zajec5@gmail.com>
 <9e649338-5431-735d-5aa5-b4323a2e91ad@milecki.pl>
From:   Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2459152b-0660-c386-690a-37aa69b6ffc9@gmail.com>
Date:   Tue, 9 Mar 2021 14:03:26 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.7.1
MIME-Version: 1.0
In-Reply-To: <9e649338-5431-735d-5aa5-b4323a2e91ad@milecki.pl>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 3/9/21 1:17 PM, Rafał Miłecki wrote:
> On 09.03.2021 19:11, Rafał Miłecki wrote:
>> From: Rafał Miłecki <rafal@milecki.pl>
>>
>> s/crtl/ctrl/
>>
>> Fixes: 17aa606c5f9b ("arm64: dts: broadcom: bcm4908: describe USB PHY")
>> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> 
> Ah, that commit wasn't pushed yet and above 17aa606c5f9b sha is my local
> one.
> 
> Florian: please consider using this as fixup or replacing sha with yours.

Will do, and likewise for your other patch, thanks!
-- 
Florian

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 30D3A4A53FD
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 01:22:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230359AbiBAAV7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Jan 2022 19:21:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230351AbiBAAV7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Jan 2022 19:21:59 -0500
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com [IPv6:2607:f8b0:4864:20::42f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BB62C061714
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:21:59 -0800 (PST)
Received: by mail-pf1-x42f.google.com with SMTP id a19so8356665pfx.4
        for <devicetree@vger.kernel.org>; Mon, 31 Jan 2022 16:21:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=KcCf7GCuMvReLBdkVb1Q3S+kJ5kQBtdJGzNUaJco2XY=;
        b=oKWIKo+bVeLRcoa1ozlwFvnqAqzp6mZPlQY4Y9PAkdLaBwEAaMv/3joNXmp9cBP16e
         oY2AEdugDakPmk5lBGnnGTIOP4HKjtXtVaLbV4nOZykXviBoL5yAZt/rdHSETilP7tcS
         ej9Hv44mt9F+Tzam8fPt+20n6ZJo/QOF4CsgkM4UtqVInb2tC1RNtevKtW/ATZr50gTO
         1xoxvls5H7oqFs0137NbbLcj+uvrrxlPAvOFY4ZWmu6dSppDKRWuHaCpERRLPrhm4RtK
         jG7+o4+o/AQ2Liw54TCe8oXARNbg4lUD/6X7BtD3BHvSgWf0EZn2ZyV2diq/WDyNNKdF
         f48Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=KcCf7GCuMvReLBdkVb1Q3S+kJ5kQBtdJGzNUaJco2XY=;
        b=rQ7zB68PiSrsefp3lbKIE5m7b8Vi/YPmzhwnZC6axKmXzjPxsWWo8RilNMawPMtfDv
         N6KK/A4PEBSOkjb70oU9dCowdFF+Lyn4fD09OCLIYi8GVLV0P1aesWxF0yP0m0GeD0Gq
         kbHA6LCoBIp1ikVRToocfmSNamhXq3iv7B59HXfxp+piaOSVXJ75vBp8UWRja8NjSTsr
         rRQ5WjmLX+RqzuMMx8akneZr+8e5SL2nUlzJX7IgI4tLTU/nnRoK5xuip1lzfCNWgtU5
         OJQ1ofA8x+pDtbA+nMKknk6tG+n+c/VK2EFoC6VEXZ3VtECWNJwFtyCHiyXf6lVUh0W1
         j+mQ==
X-Gm-Message-State: AOAM532AdLuMpAC/SQd1JyPS9ubnYPPqsxZ/pz1Qhl7NTmnZadbQIaHN
        otOgZKL1DzuaXGMgBynWWPo=
X-Google-Smtp-Source: ABdhPJyYCzFV2hpshZKLYY5aQ8aNF48NAiOJP2LmTA2VI1FIDuK8eIhrb7J8/OOytlCmCcPUHEx0Hg==
X-Received: by 2002:a62:1813:: with SMTP id 19mr22284318pfy.14.1643674918759;
        Mon, 31 Jan 2022 16:21:58 -0800 (PST)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
        by smtp.gmail.com with ESMTPSA id p8sm20407620pfo.41.2022.01.31.16.21.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Jan 2022 16:21:57 -0800 (PST)
From:   Florian Fainelli <f.fainelli@gmail.com>
To:     bcm-kernel-feedback-list@broadcom.com,
        =?iso-8859-9?b?QXL9bucg3E5BTA==?= <arinc.unal@arinc9.com>
Cc:     =?iso-8859-2?q?Rafa=B3_Mi=B3ecki?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Alvin =?iso-8859-2?q?=A9ipraga?= <alsi@bang-olufsen.dk>
Subject: Re: [PATCH] ARM: dts: BCM5301X: define RTL8365MB switch on Asus RT-AC88U
Date:   Mon, 31 Jan 2022 16:21:56 -0800
Message-Id: <20220201002156.426183-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220102203304.10420-1-arinc.unal@arinc9.com>
References: <20220102203304.10420-1-arinc.unal@arinc9.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun,  2 Jan 2022 23:33:04 +0300, Arınç ÜNAL <arinc.unal@arinc9.com> wrote:
> Define the Realtek RTL8365MB switch without interrupt support on the device
> tree of Asus RT-AC88U.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> Acked-by: Alvin Šipraga <alsi@bang-olufsen.dk>
> ---

Applied to https://github.com/Broadcom/stblinux/commits/devicetree/next, thanks!
--
Florian

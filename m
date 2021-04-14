Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 620BC35F137
	for <lists+devicetree@lfdr.de>; Wed, 14 Apr 2021 12:06:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232089AbhDNKE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Apr 2021 06:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348673AbhDNKEg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Apr 2021 06:04:36 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31D89C06175F
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 03:04:02 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id sd23so21856824ejb.12
        for <devicetree@vger.kernel.org>; Wed, 14 Apr 2021 03:04:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=2OpST8LZI3on8yL2X/9Onf1MCgH2abOvm7orSC5DgBk=;
        b=lt8+i8lovz9jfZGaOrASIPMN/fDFTBck9Fq0nTM7pv1znMsXju14rrSC+rEONzv9ar
         u8P/Ee2s4Az7i0+dfG7w0hGm4uxOQxlg9BBeUdtQ66hdIlFpTie0XO4AFDHqK41jtekf
         PxP3cAUwvl9veQ5sUPSixbmg830+ZVLq2TlR+1K/ceAAc9pFHvIYXLFyyk1xXmwEm6Zm
         itFdzMrXqMv0FpCEDFEwPrcaS3ZlYZqrTliSbNIjY2ewsuRbOQRNjohDB3Wgm47jwWDf
         CKXzTRgoug31mdPXDoaSeNa0hJL56biyPxQz/vvKy43gXYgE5SpOc+1jKG/iszmaaDNr
         CFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=2OpST8LZI3on8yL2X/9Onf1MCgH2abOvm7orSC5DgBk=;
        b=KV9mlAaUi07T3jXFBAid+gZ6cOHoB/pjo4NBSdV7xk1BTCFIpp2ClUbeiGT0wi9XZ+
         +QYxKxZUOz1Zv2VEAVvad4yNzB/o/Fb132maXcIhdvDQzvl4at9Q3n08DrNXuy2KOHOE
         4lJv742PTSntBBUiuQzKcNrIxcXQCCw7sTT/Xf1GWSkNnycjplluJUXrN3IYoOUI5XoJ
         4RWHGfNCW2VwSEPrXK4Woep8l5h7C6Y94F4MHi+ZK3ceR+CXNluJTlO5TCdMKkNJv4XU
         3KHm/2TGW3dZGVa4XCJei6hxWnVVeGNK8fJUthu/lyP9q9Cx2JPFUMEqXbj5KPICKpuJ
         BHcw==
X-Gm-Message-State: AOAM533nqlPY2DabOCdiR5Q6esqskcBEOGB/vc9H6AzaTMqAOx4z+a4K
        9208FTqNK+8N6Q12JlKK4d2cSQ==
X-Google-Smtp-Source: ABdhPJz91W52QEgwyT/N/q7ZpiRgN8LqDMeAi7/HCXCRFRkriz17el2EnLVeJBWrE/CdPAzD1GN89A==
X-Received: by 2002:a17:907:1b06:: with SMTP id mp6mr37360252ejc.292.1618394640619;
        Wed, 14 Apr 2021 03:04:00 -0700 (PDT)
Received: from dell ([91.110.221.215])
        by smtp.gmail.com with ESMTPSA id d18sm1809230edv.1.2021.04.14.03.03.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Apr 2021 03:04:00 -0700 (PDT)
Date:   Wed, 14 Apr 2021 11:03:58 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Quan Nguyen <quan@os.amperecomputing.com>
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        Jean Delvare <jdelvare@suse.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Jonathan Corbet <corbet@lwn.net>, linux-hwmon@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-doc@vger.kernel.org, linux-aspeed@lists.ozlabs.org,
        openbmc@lists.ozlabs.org,
        Open Source Submission <patches@amperecomputing.com>,
        Phong Vo <phong@os.amperecomputing.com>,
        "Thang Q . Nguyen" <thang@os.amperecomputing.com>
Subject: Re: [PATCH v2 2/4] mfd: simple-mfd-i2c: Adds Ampere's Altra SMpro
 support
Message-ID: <20210414100358.GL4869@dell>
References: <20210329015238.19474-1-quan@os.amperecomputing.com>
 <20210329015238.19474-3-quan@os.amperecomputing.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210329015238.19474-3-quan@os.amperecomputing.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 29 Mar 2021, Quan Nguyen wrote:

> Adds an MFD driver for SMpro found on the Mt.Jade hardware reference
> platform with Ampere's Altra processor family.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
>  drivers/mfd/Kconfig          | 10 ++++++++++
>  drivers/mfd/simple-mfd-i2c.c |  6 ++++++
>  2 files changed, 16 insertions(+)

For my own reference (apply this as-is to your sign-off block):

  Acked-for-MFD-by: Lee Jones <lee.jones@linaro.org>

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

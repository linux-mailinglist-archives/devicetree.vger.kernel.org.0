Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8FBB5492DB8
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:47:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348295AbiARSrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:47:23 -0500
Received: from smtp-relay-internal-1.canonical.com ([185.125.188.123]:37254
        "EHLO smtp-relay-internal-1.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348298AbiARSrS (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:47:18 -0500
Received: from mail-ed1-f69.google.com (mail-ed1-f69.google.com [209.85.208.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A5AB640028
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:47:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531637;
        bh=m+xP6bN0zKQ33R8bBjTU3wo4FVKXSjHRB56Y8SB1Y2Q=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=G6ZqhmKcgjOcF0JxRVmPtTJA4zDGludRX+wN4e2R6EzX0tF54Ev/H4Ztr8W7JQXYa
         YmWbaCAWFFXFMksZ3qkMSfSgv9sN5DJ0tDdMeRPNM7tM3nJQZwnUSzHQjd7fQynCd2
         MaRuWrZIjFEwjYMjtQRiI10nJeKMhAF8hszXiMGtiEBfuHQ7pr5pzZx/YjjtmzDH8s
         bQh3xaLkz71Hqn9rcHVZIVcv7TsvxA2Bmwfqxpx2tOI6NeJMN2oMx+YmW8SE11Y16q
         rAn9ker+npplrvrD0opegA4h4wxNJze7zFINkUPyQIpNS7nlFWMiqZuIIP/2k0cRYX
         jg8IhZkJJsuhA==
Received: by mail-ed1-f69.google.com with SMTP id k10-20020a50cb8a000000b00403c8326f2aso1689276edi.6
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:47:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=m+xP6bN0zKQ33R8bBjTU3wo4FVKXSjHRB56Y8SB1Y2Q=;
        b=Ky/8L296BWrg2LU57WXrxRZpt5dzKtKjJrguXgqTLIThTygVJw+CGXOQ8tcR5pB6em
         IpAooh49TBJ9ZuIwTSy8CqDN1VVBV2nFbNrTnghx1UNkxbkMsZSZ15xBI2cnQUhdrcRV
         VVAVsPJNmup2UtQSEMCWYd/uCBCPZ0D4uEkAcAdX+8CC4aSlTpXDEWxFLSaBk3ZCEoHd
         P6oPqWwx5GV46p8hj2w0Fwa9dp1Jl+F5P7DsQScdTOVNhXo2RVSynd/v4ljrDwPMg3vL
         6zf54dPWHp1Ul84rex2nuliTgV5p8xPr72nSt1fwsbN+89nE9vawvbc7PMXTj23r7PBe
         lrHA==
X-Gm-Message-State: AOAM5324/RYnycCf5Puopl2NXeW67vhXRs5Lojj8wT/S7+6akNuOzPK5
        vAw4yuojnpaogDXRM+cEPZVBBDlQtQRmcUoTzLvfrgp69lNtQoJ4nk0SjE/dyIrWR583ktEe7yo
        0Lj6hoOdMSVWV4YneRM2cl4SDFS0jJLSiDo6GLJI=
X-Received: by 2002:a17:907:9810:: with SMTP id ji16mr21457487ejc.202.1642531637299;
        Tue, 18 Jan 2022 10:47:17 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwhhrWDVROJkHhOAFBu8GoY4CzXaN/5V1ROMx/f1ASWRjjDQzxbHDuWfmOIns530yDN2yadsw==
X-Received: by 2002:a17:907:9810:: with SMTP id ji16mr21457468ejc.202.1642531637135;
        Tue, 18 Jan 2022 10:47:17 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id nd10sm5603511ejc.214.2022.01.18.10.47.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:47:16 -0800 (PST)
Message-ID: <ed1f3bd3-b17c-8c6e-35c6-c996cf0facfa@canonical.com>
Date:   Tue, 18 Jan 2022 19:47:15 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 16/16] arm64: defconfig: Enable Tesla FSD SoC
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     soc@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, olof@lixom.net, arnd@arndb.de,
        linus.walleij@linaro.org, catalin.marinas@arm.com,
        robh+dt@kernel.org, s.nawrocki@samsung.com,
        linux-samsung-soc@vger.kernel.org, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com
References: <20220118144851.69537-1-alim.akhtar@samsung.com>
 <CGME20220118150116epcas5p415b4b658b3ca3fe5e52e11a33546b926@epcas5p4.samsung.com>
 <20220118144851.69537-17-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-17-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> This patch enables the Tesla FSD SoC in arm64 defconfig.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

Best regards,
Krzysztof

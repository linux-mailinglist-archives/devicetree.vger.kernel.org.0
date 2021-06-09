Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B60483A1573
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 15:23:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236038AbhFINZO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 09:25:14 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:42924 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236194AbhFINZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 09:25:08 -0400
Received: from mail-wm1-f70.google.com ([209.85.128.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1lqyAr-0006wc-AS
        for devicetree@vger.kernel.org; Wed, 09 Jun 2021 13:23:13 +0000
Received: by mail-wm1-f70.google.com with SMTP id v25-20020a1cf7190000b0290197a4be97b7so1929961wmh.9
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 06:23:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=HZHcwmcBCk5lvprMQJK82JaJ9zMetfOy1nrGFdC8Lf8=;
        b=WhcQlkzClISzaTh26KoUaS+aVkp6CA68zy/Xuh4UIB39dNX1j1JZcy9z5nOWC2m9vb
         PwWJF8LXePEf9m96+sKiItlVXl1tEs3hjafL9uyXh/mveHC4xfwPv0JNbPpe/SxfjQmv
         73z0PQ9EjVZpbKRctHwDX9kb9/M/Ah3gkBvM2dqbxBQzXw6cNfFHvvvY7Fl+mT6X7Y3H
         zBzKjVUp6vfsCvlzMDrjdVITem1o7h5kLQzUiFrXTMRX/biS/7G36rXgHRmqhR1+FIfU
         tI74Zf1/TP6qpYSlZawiyDSyLVDVi27hSJKOc6U8Z4i8Qf7fWn3Y0p94GeJnZ+9jwprP
         83tQ==
X-Gm-Message-State: AOAM532Eumdi7GF2kry+IhHC94AdSAY+9r8ogD89CQMe5Sl221aEVf+6
        elHnmCtFLfNByzlBcd1F96/XQ6iH71ZllnJfiEPb8RtOPG0kbW5ftLBdJyncKEgDBDo47akFK9f
        C+nAL/qD2BvL/snAX9qQGy/9dNGZz5dP9U7v0nx0=
X-Received: by 2002:a05:600c:410a:: with SMTP id j10mr9555983wmi.6.1623244992938;
        Wed, 09 Jun 2021 06:23:12 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwE07PURI2CbXH6LOfvKl/P4UxKK5oXM/IoS0mjhrCSr11j6J28ssoLODge0i12ZK8N16q/iw==
X-Received: by 2002:a05:600c:410a:: with SMTP id j10mr9555966wmi.6.1623244992844;
        Wed, 09 Jun 2021 06:23:12 -0700 (PDT)
Received: from [192.168.1.115] (xdsl-188-155-177-222.adslplus.ch. [188.155.177.222])
        by smtp.gmail.com with ESMTPSA id e16sm3716389wrw.49.2021.06.09.06.23.12
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Jun 2021 06:23:12 -0700 (PDT)
Subject: Re: [PATCH v22 15/18] MAINTAINERS: Add PL353 SMC entry
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>
Cc:     Michal Simek <monstr@monstr.eu>,
        Amit Kumar Mahapatra <akumarma@xilinx.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        Vignesh Raghavendra <vigneshr@ti.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        helmut.grohne@intenta.de, Srinivas Goud <sgoud@xilinx.com>,
        Siva Durga Prasad Paladugu <sivadur@xilinx.com>,
        Richard Weinberger <richard@nod.at>,
        Tudor Ambarus <Tudor.Ambarus@microchip.com>
References: <20210609080112.1753221-1-miquel.raynal@bootlin.com>
 <20210609080112.1753221-16-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
Message-ID: <f04b06fc-72f9-8f90-343d-e4826a3bf4d7@canonical.com>
Date:   Wed, 9 Jun 2021 15:23:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <20210609080112.1753221-16-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/06/2021 10:01, Miquel Raynal wrote:
> Add Naga from Xilinx and myself responsible of this driver.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---
>  MAINTAINERS | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Memory controller bits look good to me, except few things in bindings. I
can take them up to this patch, for which I would need also Ack from
Naga Sureshkumar Relli confirming he will co-maintain this code.

I assume the NAND driver depends on this, so I can prepare a stable tag
with the memory controller part, if needed.

Best regards,
Krzysztof

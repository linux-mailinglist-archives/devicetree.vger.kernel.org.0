Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CAF7550F245
	for <lists+devicetree@lfdr.de>; Tue, 26 Apr 2022 09:23:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232626AbiDZHZ7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Apr 2022 03:25:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49736 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230468AbiDZHZ6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Apr 2022 03:25:58 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD4A4AD100
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:22:51 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id b24so21156746edu.10
        for <devicetree@vger.kernel.org>; Tue, 26 Apr 2022 00:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=MKxnmTE3uOgxAO/+uZwxLwv2U0/Qh3mDlrdirHKM0/A=;
        b=H2gjdZBOC2dpNIMF+Q8CmNuGnW1EMJQqaDtejdVkfxPiVDP71nSmUPUMuYVusy33yh
         6W8SCytU7RaPPwdJ6mhjdk56k36sVzaVBnHWb4NASLG4SRhqKOMYTQeHEuR1IB3Bz7DD
         fSZ7adxHzuDnAKeDLjHb/C+rw/TuthcIJmHq/Qw4pjeGPCWm7epnFT8YBqZ3bCfB8CDS
         BAwENOVkg04Kd3/FCn4/A3gBgkmG3tfmaJgOCJXgBnS7XaGGtjXoB2tDj6UGBDMp6qxa
         V+qaFu6ffVxQr1/Cv9Y8rc4Gd2sYDPyEnjhh/M5+p2Eu1JXposGwiT9OSAqBCeeOTlsm
         1KUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=MKxnmTE3uOgxAO/+uZwxLwv2U0/Qh3mDlrdirHKM0/A=;
        b=tKte0YJ11NYP0ZTpk+/eviJCS38ZWy05x2kcZP/P80RqF0VBoonyykseTmabneREP4
         1e7sqF7P3LhCQdy609prs2SciQxM8Nv0FRwp/rc9yndpKBphnxAquOG8PihsBkLbETYj
         3KBGf4qq3GCzmRWNRBnFynKaqug53NbTr3FEncHrkINjqhXBZP7rgdtJHnk3DgO65NvV
         ZUNXKVAK5YpwPo3KRE6wFe9fuFQhTWzIvCRRrXNgOZiH8bseRcjwbo64GECNrpD+0jEi
         ReuLJM5YU/uIpfnrdJ/Y1hkCKY8zTXwHqIRpKeNeBihQgd4SDPQnGTS1yBfi6ddAyTLK
         L0nA==
X-Gm-Message-State: AOAM531yJTgrDOBX5qkZ1YX781LgUro0uiRKhrnvLq6aeciR77kfoLVM
        OHj9QUgoCGMWiT/+t33R/R4A5Q==
X-Google-Smtp-Source: ABdhPJzvu2Vd064kjxJq6VJYtqsPamQ6BFDr3D9T7sP1wZH04kUchD/daCDrNxQkvt9PXDOkYA3e4g==
X-Received: by 2002:a05:6402:2815:b0:420:c32e:ebe2 with SMTP id h21-20020a056402281500b00420c32eebe2mr22751734ede.1.1650957770522;
        Tue, 26 Apr 2022 00:22:50 -0700 (PDT)
Received: from [192.168.0.244] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id ak18-20020a170906889200b006f39a445b93sm1706351ejc.141.2022.04.26.00.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Apr 2022 00:22:50 -0700 (PDT)
Message-ID: <f2fe2b0c-1f57-9bd0-d03a-990c83648a65@linaro.org>
Date:   Tue, 26 Apr 2022 09:22:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v5 10/11] arch: arm: boot: dts: Introduce HPE GXP Device
 tree
Content-Language: en-US
To:     nick.hawkins@hpe.com, verdun@hpe.com, joel@jms.id.au,
        arnd@arndb.de, openbmc@lists.ozlabs.org
Cc:     Olof Johansson <olof@lixom.net>, soc@kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220421192132.109954-1-nick.hawkins@hpe.com>
 <20220421192132.109954-11-nick.hawkins@hpe.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220421192132.109954-11-nick.hawkins@hpe.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 21/04/2022 21:21, nick.hawkins@hpe.com wrote:
> From: Nick Hawkins <nick.hawkins@hpe.com>
> 
> The HPE SoC is new to linux. This patch
> creates the basic device tree layout with minimum required
> for linux to boot. This includes timer and watchdog
> support.
> 
> The dts file is empty at this point but will be
> updated in subsequent updates as board specific features
> are enabled.
> 
> Signed-off-by: Nick Hawkins <nick.hawkins@hpe.com>
> 
> ---
> v5:
> * Fixed commit message to show previous changes
> * Fixed typo ehci -> echi

One more thought, but I am pretty sure we talked about this already:
please fix your commit subject. git log --oneline.


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC11C4D4354
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 10:19:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240658AbiCJJUi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 04:20:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234456AbiCJJUh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 04:20:37 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B91ED13912F
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:19:36 -0800 (PST)
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 4B2103F1D0
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 09:19:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646903975;
        bh=wolYD6gWpPa4mgxaXy7jJAPNgL7qzDoq13axnLPnNdY=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=bEoswCjw12MM10HwRiNVlPmIcUOZlPQkmeinKVCPbjhQDsDJO1t2AenY2SC9U5zcZ
         Zm4EFczL43X2m3Kw1K24MmPrdwVo3g5mcZbX1zRwFl5bSB1nUnrepXeys0zfbEGkPu
         UIRO79D/4Xv4idqaPWMg1Gh4TGjThB2TYWuR8JsbmqZ/MhL1ZvLt5IhWHyBEZvCWv4
         Gab2TIAVxb5pUOgaDhLHlpVDvwfZ3XxJx6Uj63ubQ3cdL8IUfAxYxVb22zTGXycvRa
         gxLH+sa5aAAKiTDSODj5nRoqyWsgiD7Rju+6r96hBb1AZ0uNaO/3U8sktfScbahBrT
         nNtJ1D9IvMvqQ==
Received: by mail-ed1-f72.google.com with SMTP id b24-20020a50e798000000b0041631767675so2758739edn.23
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:19:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=wolYD6gWpPa4mgxaXy7jJAPNgL7qzDoq13axnLPnNdY=;
        b=N1sCJnP5nsAwaOaLX+la1iCCpywPf4cek8D1Huu0xSe6vRjIUauxKTICLzUW0uFFQ5
         CKtbgo+n3DWXSakMWBI+0cYoT5kRhaCTNexszfWQqSENoFugcogjtNROk3ykt0b2PI5J
         9s2J3dDQuOLH+akDIF+1z2tRvjFW8LVtGajxHudnKe+o/HBMOj4+vTWMx/B8Z4ZFrcJk
         QdyP6bdaK/zb6lC7aEcJVcflRnbqkOh86hEUjbg42664w2PKKWqLE8qji9HG1vbJi6KV
         qdXto/R1iNl7HxuItTmb5S/vDBV55OH5C9fm8iGA5LVIFqVHtI2zF/r3JPZOxc09Sz/r
         ZjDA==
X-Gm-Message-State: AOAM530bcOrHrsmOnSeo2/CeZ3uaAEwYlPDPbLH9lRHX6sFfURs5I9FX
        /yXCARGDi0apDDmkUptrc0nwC3/eu1AkBpDGeb6HOrelo2EGFg6xL4BRV8nT9uR+Qj1fuUqnsxn
        tb2OLJIPmcWZN+pgVaqKz/zBh1yGIgSaTY/Rhrxo=
X-Received: by 2002:a05:6402:1e89:b0:416:a641:9fe with SMTP id f9-20020a0564021e8900b00416a64109femr3324148edf.312.1646903974976;
        Thu, 10 Mar 2022 01:19:34 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxEpz4RRjBaSivyyvtfkaXEPL3a3Xc4qFVuAT0sgvUR1JBq5DBBq0dWHJsog6DnKViiuQZrZg==
X-Received: by 2002:a05:6402:1e89:b0:416:a641:9fe with SMTP id f9-20020a0564021e8900b00416a64109femr3324129edf.312.1646903974756;
        Thu, 10 Mar 2022 01:19:34 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id y6-20020a056402358600b004166413d27bsm1772019edc.97.2022.03.10.01.19.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 01:19:34 -0800 (PST)
Message-ID: <e9f73649-8361-c844-8ed5-9e1132f991b8@canonical.com>
Date:   Thu, 10 Mar 2022 10:19:33 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: arm: Convert QEMU fw-cfg to DT schema
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Laszlo Ersek <lersek@redhat.com>
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220310013552.549590-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310013552.549590-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 02:35, Rob Herring wrote:
> Convert the QEMU fw-cfg binding to DT schema format. As this binding is
> also used on Risc-V now, drop any architecture references and move to a
> common location. The fw-cfg interface has also gained some DMA support
> which is coherent, so add the missing 'dma-coherent'.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/arm/fw-cfg.txt        | 38 -------------
>  .../bindings/firmware/qemu,fw-cfg-mmio.yaml   | 54 +++++++++++++++++++
>  2 files changed, 54 insertions(+), 38 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/fw-cfg.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/qemu,fw-cfg-mmio.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

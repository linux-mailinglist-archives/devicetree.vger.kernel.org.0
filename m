Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A785E4D438F
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 10:29:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240818AbiCJJa0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 04:30:26 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236413AbiCJJaZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 04:30:25 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EAD8650B07
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:29:24 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 05B983F1AF
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 09:29:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646904563;
        bh=1NdJWh/PvB3rUR4jNqgZINU0/6CuntLvKcmqadFgqrk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=sD3ZSrIw6zS7xEvkIZE+IV7l1z4P4JvHaLTIFwm979ZbvC28oxEy6i6C1J0FcAmED
         2rCj5QzrJ4Gq2qBzT2hu5ksHOg8vjbkNhLVRt0IHmsEtYj7yIG1dcpyZeXXsvxyeyA
         dEd2Yj6U7L2MBcxwfw7x38D5NwapFyXjUyqozvJlzpeKU4k7O6ulZgCPElRXoI4a6l
         hHgvJRZMJR839LCwDpfPiruwprM5ADsuMfDDIUVpEJ3peQcG2SizFsBGNxaTSdGTjl
         clifU3eI3eKdnDUHaUnpolqSMZeGHfLrAxVdJGTWCn2MXwD+naocZW8G7TegF+cSX7
         xGyJcebUzVKTQ==
Received: by mail-ed1-f71.google.com with SMTP id bd4-20020a056402206400b004162b6d8618so2745416edb.19
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 01:29:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=1NdJWh/PvB3rUR4jNqgZINU0/6CuntLvKcmqadFgqrk=;
        b=xo2AToDlGrsztZ/zrvl0/ILiwLhkKx/XD8Z/717VVnNyrmdznw1sxi43Ag5DhFOSOd
         lQDakKX8y4OWJylGrEvxV1ffPjadWkgq90esJBp3lEv2ZOia88FWN5D2S+uchNMeLg1I
         dRxjQtJgvfHs3U0/yUABNBzyQUngOwlLgBVdEvvvV46OIQUp18psupU4ur+Q2TejPhH9
         WrijXlsPsp/EuHyVhf7dONalGBZYgoq35b5Q/G0Z5hm3+6Ec7x4pka1Pv8qaTSeGC1id
         N9+XdoQMI8pu9aIvKfKTcvrFFMcyZt0KwbgEVXyUcM7heo2Oq+jmbihOUaocQXFnfhxe
         lgtA==
X-Gm-Message-State: AOAM5321SzYp462k8MHblNNzPuhI6RCHHhGOAHro+q4wt3r6q2VzPMY3
        eJGOQv+RgjOkbZZSeq06YDKEZ+xaWv9tIhYKbtQ7vTV6ynPWHHwrKT3TNBhlwBvqhyVO+Hp8/GN
        iZxE+fro/ZnFvluugL6yQDpinKFJhvO99opQzzcM=
X-Received: by 2002:a17:906:a210:b0:6d5:9fa:11ce with SMTP id r16-20020a170906a21000b006d509fa11cemr3628265ejy.172.1646904562603;
        Thu, 10 Mar 2022 01:29:22 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxsL/hVWFJ2S2dnF40xaxa9bw6b0lYz8CaZYtyrcNxk8PiNss5Y44G6uC1XRYU2bqtrqXyM6A==
X-Received: by 2002:a17:906:a210:b0:6d5:9fa:11ce with SMTP id r16-20020a170906a21000b006d509fa11cemr3628254ejy.172.1646904562431;
        Thu, 10 Mar 2022 01:29:22 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id u9-20020aa7db89000000b0041372781e69sm1775343edt.52.2022.03.10.01.29.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Mar 2022 01:29:22 -0800 (PST)
Message-ID: <8e531efa-1619-a337-0d54-5f0cc24404f7@canonical.com>
Date:   Thu, 10 Mar 2022 10:29:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: Add QEMU virt machine compatible
Content-Language: en-US
To:     Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220310021224.599398-1-robh@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220310021224.599398-1-robh@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/03/2022 03:12, Rob Herring wrote:
> The top level QEMU virt machine compatible, linux,dummy-virt, has been
> in use for a long time, but never documented. Add a schema for it.
> 
> Signed-off-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/arm/linux,dummy-virt.yaml        | 20 +++++++++++++++++++
>  1 file changed, 20 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/linux,dummy-virt.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

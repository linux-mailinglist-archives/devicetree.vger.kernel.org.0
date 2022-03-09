Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B64C24D2B71
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 10:09:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231841AbiCIJKC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 04:10:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230158AbiCIJKB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 04:10:01 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7C6AF14F9A5
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 01:09:03 -0800 (PST)
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com [209.85.218.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 7A6B93F222
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 09:09:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646816941;
        bh=WzHkSBUQpjp6lbzAQCdNWpRnWZNKxL9bPgaE1U5jbzc=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=iTMWEx5kqBub5kJk/mV3kyM3geHDAgrzoNcdYEak3SoCnDTQ7lHFRgjAmjBFTsSg2
         Dux6BtpJmqELIWrRMpmKxnq79C9qqmfCGn9AjU/mZjwgdMXy8FB5AM7eo5VG350mCO
         k93aSHfKHGMvY6kGN9yzM1tWdHRTk7zO1iPVQ+fVneVT+aF/TazfH/kSmD9Ni55r4t
         9XxeG7imH8nvyZ9sWob3kLooBpkw33Dlc6QNg61qoZpM7bafu5no5GNMgxFpo5mK2l
         /w8SGb1T+LzyCeMQYGw9JDi0KYhQrGOrimMOC9rG11JONAGo5LDoDQHApLpJmtPU9E
         rXFrzqPbumo5A==
Received: by mail-ej1-f71.google.com with SMTP id ga31-20020a1709070c1f00b006cec400422fso926270ejc.22
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 01:09:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=WzHkSBUQpjp6lbzAQCdNWpRnWZNKxL9bPgaE1U5jbzc=;
        b=EBKylWHNwDwgBIUW1iHJPqPN4lgj+H8E0PjK/kosOF+6sDTuimkRCjuslOlgvd3WO1
         PLS5NTS+QUtR7Ny9d0wHlhn/tXaGXszDTatCp2uITC0sWBiy9qEUVjq1pN1ydzGJaJE7
         ivJ9IbiUi3266fRLRyrgxuLXxXNpY2VvBm0Qff+IpXKLlu37v1wV1gnwR1jDC4+g+xvq
         MtigOcxUu+CwWwRGdVGAGGmw8VcjjaEvQjg11ew+93gbhL3SouDfvM4hMfzTK/UHVqFt
         f6ncIHY71ytfXDx/VY0dtLuyz5F80mxV8bNqs/0jwEo2Dfwrai4xy18VBpZOn1vaoDZF
         WIsg==
X-Gm-Message-State: AOAM530YMvKzA9l+ZGBkwD3WQrONVSyb8vuuK5I9g4UN/QEx3H44QjwG
        6bximq+Kc7wAZ21myRX7KVLLFMC3OAKeIkWvOvALnZwcqfMGBboOxwZ6mGV1CrVpQbKcatAtaiC
        lGpiuov/nqPPzCTs5hVWwX7KfwGwg5OWaV01Ubdk=
X-Received: by 2002:a17:906:31c1:b0:6c9:cfb3:4dd3 with SMTP id f1-20020a17090631c100b006c9cfb34dd3mr16530545ejf.392.1646816940954;
        Wed, 09 Mar 2022 01:09:00 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyokg1UCn/6f42J+LUZN2KQU+wzLO/g3QE5jQNu/CJVwGdXXaVXsl0iCLmJT1kJ7fjTkbU2tQ==
X-Received: by 2002:a17:906:31c1:b0:6c9:cfb3:4dd3 with SMTP id f1-20020a17090631c100b006c9cfb34dd3mr16530530ejf.392.1646816940747;
        Wed, 09 Mar 2022 01:09:00 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id dz10-20020a0564021d4a00b0041665989a9csm533969edb.41.2022.03.09.01.08.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 01:08:59 -0800 (PST)
Message-ID: <730c8fd2-111e-e028-43d0-0942df2ce188@canonical.com>
Date:   Wed, 9 Mar 2022 10:08:59 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: regulator: Add bindings for Richtek
 RT5190A PMIC
Content-Language: en-US
To:     cy_huang <u0084500@gmail.com>, broonie@kernel.org,
        robh+dt@kernel.org
Cc:     lgirdwood@gmail.com, cy_huang@richtek.com,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1646812903-32496-1-git-send-email-u0084500@gmail.com>
 <1646812903-32496-2-git-send-email-u0084500@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <1646812903-32496-2-git-send-email-u0084500@gmail.com>
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

On 09/03/2022 09:01, cy_huang wrote:
> From: ChiYuan Huang <cy_huang@richtek.com>
> 
> Add bindings for Richtek RT5190A PMIC.
> 
> Signed-off-by: ChiYuan Huang <cy_huang@richtek.com>
> ---
>  .../regulator/richtek,rt5190a-regulator.yaml       | 141 +++++++++++++++++++++
>  .../regulator/richtek,rt5190a-regulator.h          |  15 +++
>  2 files changed, 156 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/regulator/richtek,rt5190a-regulator.yaml
>  create mode 100644 include/dt-bindings/regulator/richtek,rt5190a-regulator.h
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 96781492D8F
	for <lists+devicetree@lfdr.de>; Tue, 18 Jan 2022 19:40:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233142AbiARSkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Jan 2022 13:40:06 -0500
Received: from smtp-relay-internal-0.canonical.com ([185.125.188.122]:44118
        "EHLO smtp-relay-internal-0.canonical.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1348173AbiARSkE (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Tue, 18 Jan 2022 13:40:04 -0500
Received: from mail-ed1-f72.google.com (mail-ed1-f72.google.com [209.85.208.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 9CF464004F
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 18:40:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1642531203;
        bh=f+2umpBovoEMQQYdKSu7Hsi6nUQIgy6EPRX6r+n6WEs=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=gI0kTgF1Vt98cjmP/Mo/+/fFhdfOqDbvartmNnuare2DaxX4mZx3D/CPgYQJMHqtV
         px3DMSAmiRZgQDtEgskfHRGRk7kGP6jsGF64m//qucOVtAFm7KUWI2q9/bDzzmydNK
         Pn6WbOvIacNvtSuQWJdaj/ijZj+HbgHYdkuWtE3927QUTFl10jf/LsM1ZAsqJ7R8aH
         GDONnnaGGWKTXUvLf8ZsYNTrtMcdTwKLzrljjEa8ICPCexvrbisjRrMWR0/U23n6Jt
         cz9lSd5tAbRnKhYWyySixPrId7SB82FRMXX+MRTEh+YIsr/9M/bI7wso0jPNoo5/vl
         kFNBiPLUtkRNw==
Received: by mail-ed1-f72.google.com with SMTP id c8-20020a05640227c800b003fdc1684cdeso17901968ede.12
        for <devicetree@vger.kernel.org>; Tue, 18 Jan 2022 10:40:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=f+2umpBovoEMQQYdKSu7Hsi6nUQIgy6EPRX6r+n6WEs=;
        b=z5Radjh+v51CYOHtdlRh2QA1maEp+JIU9jQhvOW2fIH9GIWKxTzR2fJCOStuCD5hGF
         CDu5zlaM7mXVVHN0SDUg1KGsX5Z1scDXppeNDtNFoqJTtQfY9v8E9ZNzdFhN3Ezr76sm
         Vmr/RkFJVtDWNrSL3MI4zJBzfzo1s6iLZSWtyOAttAkWfNIj5DIvBgxui46K5sGnqrTe
         7DeS6dtlursdRpWxT0zKjbWaFzcfgmYJzLfWkFQfdTlRzM6tq6eUXmkUPP9n+Rcc9vTf
         3gad27SiY1luKgRdWE67vmVoEV/ulVprv983VDqLCCUfrxu2n3+CuyIEYtcWyP4nFOkT
         tZYA==
X-Gm-Message-State: AOAM530/gNPQTW3G6nRD3tfHvaoR/WYUEEthiIfslvn8lCav4eb1IJMl
        55HJ+ag1YGzbME3kwEtcjfczjzu1y93UwrhGKdxWf5y75UexKyFpggCHn034PosY7rR/lSu+q7U
        OZyRnF99URtPguGCl+Wn8rjaGgFNJWOspuAN31sc=
X-Received: by 2002:aa7:d617:: with SMTP id c23mr23862866edr.138.1642531202671;
        Tue, 18 Jan 2022 10:40:02 -0800 (PST)
X-Google-Smtp-Source: ABdhPJyu5aW0XJhnNwSWHFutY369qOWBZxrMpbOix0c2l2pCMT1g//7aoxN//m/dPRbAWK/k8U04RQ==
X-Received: by 2002:aa7:d617:: with SMTP id c23mr23862850edr.138.1642531202508;
        Tue, 18 Jan 2022 10:40:02 -0800 (PST)
Received: from [192.168.0.42] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id qw28sm5582890ejc.154.2022.01.18.10.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Jan 2022 10:40:02 -0800 (PST)
Message-ID: <b1bf4b43-639d-c09c-2fb2-0ac58a6eb858@canonical.com>
Date:   Tue, 18 Jan 2022 19:40:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Subject: Re: [PATCH v2 13/16] dt-bindings: arm: add Tesla FSD ARM SoC
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
 <CGME20220118150104epcas5p4ac6fdc739d21c7d7eb2e53e469466487@epcas5p4.samsung.com>
 <20220118144851.69537-14-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220118144851.69537-14-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/01/2022 15:48, Alim Akhtar wrote:
> Add device tree bindings for the Tesla FSD ARM SoC.
> 
> Cc: linux-fsd@tesla.com
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> ---
>  .../devicetree/bindings/arm/tesla.yaml        | 27 +++++++++++++++++++
>  1 file changed, 27 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/tesla.yaml
> 

Looks good to me. I'll take it via Samsung-SoC after the merge window
unless there are some comments/discussion.


Best regards,
Krzysztof

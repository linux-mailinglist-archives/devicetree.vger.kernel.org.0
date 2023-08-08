Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A25777740BF
	for <lists+devicetree@lfdr.de>; Tue,  8 Aug 2023 19:09:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231759AbjHHRJj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Aug 2023 13:09:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231698AbjHHRJO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Aug 2023 13:09:14 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 62612A606
        for <devicetree@vger.kernel.org>; Tue,  8 Aug 2023 09:03:40 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2b9b6e943ebso82251221fa.1
        for <devicetree@vger.kernel.org>; Tue, 08 Aug 2023 09:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691510614; x=1692115414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KpD7foOm6i4767dJ2l9LxzAcITgY/YPgfVTk9ZBcekk=;
        b=lpS/O63kDaThEqykDhVsrTxUfHNaWrJTulL7nbnjSnxswrP92tU+hPovNyGmJSSzVD
         M5hoZm6HX/4EWEGQ3dUzh6bRmrRNHtlh2Aj94bP9G9RwyCp35zy0Sw1Bmzx8RoLx3Yrr
         kYMIBZMnavliMDGzyNuKgaLwpzqfu0SEpfgW3rXfSYefRnx7/sLQHrkaIF5y+hvpDUfO
         X5ENM6aQL8uZYTeDWgB8HoABOsowmXq9JSIiD3d/Iw7YGhP9V2oJAEYQG+PH/5Ub0vJq
         zJU0JtSgJ5s57YSuStuxPBnNQ9UAUVw8USkCKGO6J04xGqvyzOtmTQ3VLhEns6QDzQyI
         +Jog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691510614; x=1692115414;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KpD7foOm6i4767dJ2l9LxzAcITgY/YPgfVTk9ZBcekk=;
        b=l39XKeiN9MZHUH70t6CCPaws4YyHJrRmtYQX0fZQU/3T5LctPZRlZSTAFXI3gz9DKQ
         YBkt2kIbRLtOGsLXweMnnx1VXQgHmqwz2Fd98h5qD1bKDm3z95Pp7A2sGuZvEaQgNxPZ
         YKRzP+4uq8ezcN/s+F8AdQmiJ707sRNW5Qm2DEb1TOq6sdKQd6gsHXhJQaZbBooUJA/m
         1Hn6jjg++ARoL35wPHZ4XLa6tnAIIrsgUbA2O7cKxdnLpguyM69c6SRMyjLLMS6Kg/5L
         WHtpZ/og+IfY6sS3N7sCvKJiuT/DUXsgLGiRYiE7WjK2Sxy3OKsZbL8JtP3c53TQNaSM
         LiMw==
X-Gm-Message-State: AOJu0YzVzPHOimZK80JZS6qhzdo4Y1lvJEt0z4tVgEUeozrUXTlHDKI9
        VdlicrGArLcNSTHxCJ1+j4oQFaGgGgkdYnF9jqQ=
X-Google-Smtp-Source: AGHT+IEtgWszaCfk/W0JzAN0V9c2nJELnMsvvxv323YBZLtJfR4PRxZhgiU7x8HiMLMdoTwI4M8ZVg==
X-Received: by 2002:a05:600c:4e43:b0:3fb:b18a:f32d with SMTP id e3-20020a05600c4e4300b003fbb18af32dmr7516833wmq.17.1691489931013;
        Tue, 08 Aug 2023 03:18:51 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.113])
        by smtp.gmail.com with ESMTPSA id t22-20020a7bc3d6000000b003fe1ddd6ac0sm17878127wmj.35.2023.08.08.03.18.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Aug 2023 03:18:50 -0700 (PDT)
Message-ID: <eaad297b-9baf-4557-fb9e-72d64d998209@linaro.org>
Date:   Tue, 8 Aug 2023 12:18:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH -next v2] ARM: dts: integrator: fix PCI bus dtc warnings
Content-Language: en-US
To:     Lin Yujun <linyujun809@huawei.com>, linus.walleij@linaro.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, arnd@arndb.de
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20230808090942.3109000-1-linyujun809@huawei.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230808090942.3109000-1-linyujun809@huawei.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/08/2023 11:09, Lin Yujun wrote:
> An warning is reported when allmodconfig is used to compile the kernel of the ARM architecture:
> 
> arch/arm/boot/dts/arm/integratorap.dts:161.22-206.4: Warning (pci_bridge): /pciv3@62000000: node name is not "pci" or "pcie"
> 
> Change the node name to pci to clear the build warning.
> 
> Signed-off-by: Lin Yujun <linyujun809@huawei.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B9F279CA00
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232650AbjILIdC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:33:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232421AbjILIdC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:33:02 -0400
Received: from mail-wm1-x32d.google.com (mail-wm1-x32d.google.com [IPv6:2a00:1450:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FC4B9
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:32:58 -0700 (PDT)
Received: by mail-wm1-x32d.google.com with SMTP id 5b1f17b1804b1-402cc6b8bedso60521845e9.1
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:32:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507576; x=1695112376; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JOXZyVPbt4x6PArqkvj00Ax7/PzBQASDYQPgIeF3DaI=;
        b=Zga0jx+bWLftJJn1r6jSAbUQMdDcPkyu88n8u5pSaBUykEO5Yfn/wS8vuJxO2/YpeK
         wi61UOHO8a1QQTjHwGZX7P1P6bCFv+iHDyskdqAPbUq+cenFIFeFDeRUPb2wFvHzIYPX
         OBVDW72iKhEjfB3/1bz06k1ZEiMDVBOCctvt2WhNPeSerTRVUr3p7O5IqtInmUOAmZEb
         cksVSYdFk9wWdhf+ztbZ4KY8lCYIhd3IFiBD6hHXLn5SRjoErxE9cOLlL/LGKX7ktmbO
         UrvPWeZGTV6J29CkJ0veBMW2EiDzK7JzN+KmYuNrMXAfQilkCsiu3JajXkSWQV2g8UYf
         3MLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507576; x=1695112376;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JOXZyVPbt4x6PArqkvj00Ax7/PzBQASDYQPgIeF3DaI=;
        b=arIE9WuSqOs3rAQmEunrEhOTMyryErS1NJTSW5y06u5eNxxHxtszNgSx3tRVLlu6m5
         XOAEIC2abfmhkAXA/bpitxKccvCrxFh/1zyxi5iMJy9v/AMjPywQ45OeDxvVTJP5lBxQ
         bLqe+CEm2BVd4XQhNRNBXuMNN5z6hxJ5g/dDcpz3UyD3d3C6EHsNwdYuCz79t14P0XXc
         G8Kj3p/sjZnuI8OkSvj8dMpGNtYBISsE2dFEGZw8r5dMGAfGH4+VDSkuesAAURLQYGRB
         sSyz6U1hY4MSyy/wHGYV0tnBPb+rX7E8UYW7HhW7mIMl+EMGhPooZdF20xrZP73PVxXO
         IuqQ==
X-Gm-Message-State: AOJu0YyXPeAj+eoBTgHsxReKabwcCygE2/3SdNgLB1wkycFn5XG/j9k3
        hfn2iopBONZkxX/jyvmimNXBqg==
X-Google-Smtp-Source: AGHT+IG6Q7ctX7SQ6Q03KawPpam8bd5z4s/DztqYNucdlJ4fAfYQDRhaH1vEw3LAnx5/2O3u+RUmzg==
X-Received: by 2002:a05:600c:20b:b0:3fe:d448:511a with SMTP id 11-20020a05600c020b00b003fed448511amr10759035wmi.9.1694507575975;
        Tue, 12 Sep 2023 01:32:55 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id p17-20020a7bcc91000000b003fee8502999sm15372579wma.18.2023.09.12.01.32.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:32:55 -0700 (PDT)
Message-ID: <2fb8c43c-c079-e04e-f727-3bc1dc29996e@linaro.org>
Date:   Tue, 12 Sep 2023 10:32:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: imx8-jpeg: Add clocks entries
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230908141238.642398-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908141238.642398-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2023 16:12, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The JPEG decoder/encoder present in iMX8QXP and iMX8QM SoCs need

Subject: media: dt-bindings: nxp,imx8-jpeg:


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


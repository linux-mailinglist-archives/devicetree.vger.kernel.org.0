Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 93B24732D2B
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 12:15:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242108AbjFPKPo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 06:15:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42424 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243836AbjFPKPm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 06:15:42 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C8CCAAC
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:15:40 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-97881a996a0so77722766b.0
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 03:15:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686910539; x=1689502539;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zwScczYRHDuS+uM/rfmKO4C5p7n2XSuTcTw270MNkk4=;
        b=zu3fjlKDUVErA66PTf6isUYRnsi7raaRLUcMH8ROUwv9ap/uu6U8BdfBi0HWSg1D0n
         jIWXf8WKfMLoFoD/HMSIyr7h6cSx6mUIQTUDx1ojxopOqHpnY/Cd5fsYjkXjbpflKhGs
         /Bxj7GTAXk/eFTPgRZWgEENN33IOxXjFPSsnTAyrHupI8Ch+8Fqh83+tMGqRQZZfMdd5
         7i+BEgnvwp9iQTSkb4JDIBqygGSSCdPzRO8NWfQxEDShRtk5NcREle6gpZ3WbytjaUMJ
         +xKCckYV9aXSmfRRr5fCGpJ7S1ucHVhegy4U97iGyCgKIna2QnwMnbnz1JRNNuD+1Tw2
         Nevw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686910539; x=1689502539;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zwScczYRHDuS+uM/rfmKO4C5p7n2XSuTcTw270MNkk4=;
        b=KG/2bX76LIVQ1P0L12Z9gfkplxTafKUDkytm+eHi3DjLMzFV7L8KO8GxT/Lja4c5fM
         S4kyVmbwgGgVayPHpBkqF9gVhEkESkDNr6D+Vc8J1cTLdIRgwszCmgLdovEDNEqPhXZa
         NZhjYPx1umb2lg3Z8X2VBIljOCn6/SCkWuMHQvN1Xv1I9SMHp877No8y6TtzZ5/vnBp4
         bnMA+LDB30pg7ptqOKPuErjV92oCrs1+hmhkTZOnYMD3vgoCTJD/BAMG7gNCcD35y7SB
         J1zHEyQ5b7npdFqBEe2cBz3FtUZsYX9L0mQ+IbE/igJhOdIf333Vf1quoadE+cRktjZl
         gwXg==
X-Gm-Message-State: AC+VfDyUSapZs1ecdbL+V7yg3tSNku3NgYlqKPY+nvDHfpHkdSmqmR7L
        9JT5lu8IpWEsYdxsnkFB3sFiJg==
X-Google-Smtp-Source: ACHHUZ6a9+a+UtZA5+MxGsJZ0KNpW4rSE+S0VhL127tZfNrsWcrP79KtqNmz573hlr6hcjvmtpqGYQ==
X-Received: by 2002:a17:907:9621:b0:982:8a28:ba24 with SMTP id gb33-20020a170907962100b009828a28ba24mr1789141ejc.63.1686910539290;
        Fri, 16 Jun 2023 03:15:39 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id x5-20020a1709060a4500b00982a60f2c0asm1926383ejf.74.2023.06.16.03.15.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 16 Jun 2023 03:15:38 -0700 (PDT)
Message-ID: <165dd295-1b3a-5062-772a-613a7bf6fd45@linaro.org>
Date:   Fri, 16 Jun 2023 12:15:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH] dt-bindings: arm: socionext: add bindings for the
 Synquacer platform
Content-Language: en-US
To:     jaswinder.singh@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, robh@kernel.org,
        ilias.apalodimas@linaro.org, masahisa.kojima@linaro.org
References: <20230616035813.255062-1-jaswinder.singh@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230616035813.255062-1-jaswinder.singh@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/06/2023 05:58, jaswinder.singh@linaro.org wrote:
> From: Jassi Brar <jaswinder.singh@linaro.org>
> 
> Socionext's DeveloperBox is based on the SC2A11B SoC (Synquacer).
> Specify bindings for the platform and boards based on that.

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.

> 

Binding without it's user is usually useless. Where is the user?

Best regards,
Krzysztof


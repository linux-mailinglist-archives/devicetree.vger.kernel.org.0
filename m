Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 748EE79CA06
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 10:34:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232716AbjILIeJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Sep 2023 04:34:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52916 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232421AbjILIeI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Sep 2023 04:34:08 -0400
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AB90B9
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:34:04 -0700 (PDT)
Received: by mail-wr1-x434.google.com with SMTP id ffacd0b85a97d-31ad779e6b3so5373997f8f.2
        for <devicetree@vger.kernel.org>; Tue, 12 Sep 2023 01:34:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694507643; x=1695112443; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=9AC4YvWzPXQvr2YT6xOWizylhr3zImpyN4dDJcgLXsI=;
        b=H1Yd4kEulsvVxD4l1bcLHpP4a7V5d+EJw7mJ0pGBex04QOtJUKBfGpElz2hQ8Rm5QE
         i49oYW6JsxQGbyU6AiPSgfunw9TmiZzqdbwlZZIOwQtt7L2TwSOCizhot63r7eyUtGcN
         vc/A0sqzEeXfZ4IlEIBOa/70Gg8x+egsRIYEETVmYpDsGQakc3WVP5mfGeLFt6Xl3279
         yno1AVdwClg8w0ReLnaPe5yojbR1kJF0hHDYcLGM4Su7AEk8rhwrtAXh/cKNhgCWvicq
         XZjVyoo+5KvDrenKpjEHJejia7sbS4ayEUNTN1GEuHwJCR4DX3+3iSgaeVg/fd+wKNhT
         ON8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694507643; x=1695112443;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9AC4YvWzPXQvr2YT6xOWizylhr3zImpyN4dDJcgLXsI=;
        b=adP5tmmzroJVIjbhO6SgnLVqDoSt9TrgwcUCy3n03/xGzCIHEDaflmVXnz70czSFQy
         p71eVBHOPsfu4PYpWuFXs5e/mIazM8V+Qwb1O084uvWAB3S0IDHuzV2YoUZybxXN/bix
         0NwEqpp6Q5MNmOYMY9rU9ouv0TIyv8FaTUtUVcrfJyUtZeW9DbOqqM8nf6GFVr5kDoL4
         2Q/2czZwP9zIvVxgtXnopIgb619NMx7OnUBzsEnZlv92Db4LxAgzebjiUmzu+6wj6lTJ
         G+zxz5vZ0poPeB6AKseXlvi5xG5Q95pfNNhILhQu8wyw76QuFXKvo5+sjSYbQIxKjQQ+
         5Bfg==
X-Gm-Message-State: AOJu0YwLuSSFVoe9qnHN80XUQFzTlA+5IUfMBlfNpEheDItGUMAg1QsB
        UbqKjS+j1NG4LDx7BIqErMjWQQ==
X-Google-Smtp-Source: AGHT+IFsEdtANdWN9q+CRw+W8nRLXBM1ogE+wc9ZfR1prseRxcrRnN7zjhTYbhXCUViAOM7Vzp1Fhg==
X-Received: by 2002:a05:6000:156c:b0:31f:8a6d:e527 with SMTP id 12-20020a056000156c00b0031f8a6de527mr9515842wrz.45.1694507643021;
        Tue, 12 Sep 2023 01:34:03 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id y1-20020adff6c1000000b0031ad2663ed0sm12202372wrp.66.2023.09.12.01.34.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Sep 2023 01:34:02 -0700 (PDT)
Message-ID: <e928c114-dbd2-f59d-97d7-b563515b7621@linaro.org>
Date:   Tue, 12 Sep 2023 10:34:00 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 2/2] arm64: imx8qm-ss-img: Fix jpegenc compatible entry
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, mirela.rabulea@nxp.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20230908141238.642398-1-festevam@gmail.com>
 <20230908141238.642398-2-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230908141238.642398-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/09/2023 16:12, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The first compatible entry for the jpegenc should be 'nxp,imx8qm-jpgenc'.
> 
> Change it accordingly to fix the following schema warning:
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


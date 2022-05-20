Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C571852E5F2
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 09:11:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345887AbiETHLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 03:11:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346348AbiETHLU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 03:11:20 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59C4912AAA
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:11:18 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id 27so3721727ljw.0
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:11:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=IkAH0H3IBxHLU/CbxKDtJHZQyKc3Gg/d1mUG6mepk2M=;
        b=lmmyHfzYh8kQYYO7BHfpd7uoUwQkuCL0uSnOgPDyNBPIujbLS3z7aEHbumNnT767zp
         vBWRQf57lAzWjHwgBcEsJFTmOC/p4Pz0PlQCWot/BHsASQalXSUfGZ2mxFWgEpnjG4EO
         oQStUMLVjudja2MoIzu4dt8AM0Mz09/BuFmdZtIPrK62PoTRIw+szSylZugH3fb9AKsh
         3N6MSV4d4YKrsCdiELbTlLbbDsnOesTS+JP/O1dyHxSo9reuUhSyHUz75jnPbMb6z5TR
         n4znBFkkH8oG1wxEdfsTAo3zGUOErw2Y+TWNbweJz0J0TnDng0riJu0wucPZiQb8QxRC
         bV6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=IkAH0H3IBxHLU/CbxKDtJHZQyKc3Gg/d1mUG6mepk2M=;
        b=DXqba4w9sntv+qZnxbnRAbUotdJjsIF1CUHQXrO4pGUsHzdx8qEKjHDdXRnvCnNz3L
         Rdygklt3OnpjNtIoIg1tqK9HrnYRez7A01ad37NJP1+01Zv+ijZwnZ9U9HXHrQxzH/Ko
         3ZbthVciZq8/0h+A2B+o5Bk+8jH1EyF+p3BXbuuGv+VYXT/hLa23y9WNMXbrNiNrPytM
         WCth/IZEb7v8wTB4G8kLXMeKMMtSgJegfWjlLlkp9sOFPjne/AgYglgIvyUCSuSpiAwR
         okxqay2Dzj2WvFdRCeZDW1rKRDdAFIQSqwUrNJdDEOIWNOwuCRwIFhU1Cr4Vzfa/9kIh
         Yd8g==
X-Gm-Message-State: AOAM531svKXCgiBP57gNlIS6o5zplaPA+BvSf1ivDeWhfpl0Nzgnb2pI
        OqbIH53E9aG/PgB0UzJYJFVi/A==
X-Google-Smtp-Source: ABdhPJyyk9JZA2aznwu1lFh9WNmGTR6aC3+XhBXUxMwr9pMbyFwO9qcO8LkrwszjUEFXa/Uh5qrTfg==
X-Received: by 2002:a2e:a794:0:b0:250:5de1:1ec5 with SMTP id c20-20020a2ea794000000b002505de11ec5mr4759321ljf.270.1653030676679;
        Fri, 20 May 2022 00:11:16 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p5-20020a19f005000000b00477c2fc6180sm543536lfc.293.2022.05.20.00.11.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 May 2022 00:11:16 -0700 (PDT)
Message-ID: <a59d1bce-702e-b865-0daf-008f4e2d4c11@linaro.org>
Date:   Fri, 20 May 2022 09:11:14 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v16 04/10] dt-bindings: clock: Add bindings for SP7021
 clock driver
Content-Language: en-US
To:     Qin Jian <qinjian@cqplus1.com>, sboyd@kernel.org
Cc:     robh+dt@kernel.org, mturquette@baylibre.com, tglx@linutronix.de,
        maz@kernel.org, p.zabel@pengutronix.de, linux@armlinux.org.uk,
        arnd@arndb.de, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org
References: <cover.1653027644.git.qinjian@cqplus1.com>
 <3e65fb889dc99ca91f1b583b058267b396bfecc7.1653027644.git.qinjian@cqplus1.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <3e65fb889dc99ca91f1b583b058267b396bfecc7.1653027644.git.qinjian@cqplus1.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/05/2022 08:50, Qin Jian wrote:
> Add documentation to describe Sunplus SP7021 clock driver bindings.
> 
> Signed-off-by: Qin Jian <qinjian@cqplus1.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

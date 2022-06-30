Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ACBCD562260
	for <lists+devicetree@lfdr.de>; Thu, 30 Jun 2022 20:55:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233355AbiF3Szz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Jun 2022 14:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36494 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233100AbiF3Szy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Jun 2022 14:55:54 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4118B34BA7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:55:53 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id ge10so40767483ejb.7
        for <devicetree@vger.kernel.org>; Thu, 30 Jun 2022 11:55:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=zveEp55sahmOs7bahXZONZH6/4SsivXk5eL+rEQbYbs=;
        b=fbbVeGhnNXqvwnGb487/KlxjDBU4umDgh2JzIyHL7CO86gpu4Q1lEOrOBaHEoG7xTV
         /ES2QD+nehT+Tg2QYsW2Jv+2qaz9YWE5dzXeuETQb+Wss3q6EvALlrkTI2El5DAtzvCZ
         QEmcfhNtvQ9AWo9nw7/HEirxmx1k6KN3gjej6zLKavWXVZWp7YMPeMay/sk6eOfOHJVv
         pq0+SRzULn/m8z7rR87TXPXXW1Gm/+l3/+bpLfLhm8H+9+pOrLw/ojKsaGOXahehuNIo
         m5OPaC/z038hOZRJYTjQevIbVTNE4/dIqib5ACZRvQzqsheqUoEfdasT6fawEqN70K1t
         1b0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=zveEp55sahmOs7bahXZONZH6/4SsivXk5eL+rEQbYbs=;
        b=2LQI4TRqeeaeC5B75lhUvDGDOzitZlh8NcQ1zgjO6lvznJAMLi3PGl5P8XBTWBP2lp
         ux6EBQ8pIXvDKZa2gyMplrWZejsAm2FrFn7mA/BQ+USKBVtfTTf0tWbfYXUkyZ4/V2RA
         zHNtjuyIyhLOdbV2yeGmjvFhcymQgj1Fb1uCJgaMJBFR+BoLTNOjcLnTTOocjXc1yNkE
         FIQ6WSfCZzH7kPf0OQcAVq9N/KJz1Saw7CdTDlP6xzI4z1fthUiyVCzyMIe3Wv39CZ4l
         YbFTw05c/KM1bVQZ42R8WM0idzM5UzMtBpI3Cc/FbftVXPEsu+m2IBay3DLGCkBl5KNR
         OF8Q==
X-Gm-Message-State: AJIora/rBvFwF1oxFyuJ869e8jHxAYZ+EEwt3ifI/XwkVURQchJCGrdL
        MZihjtJRzYIN+WyPEN8FNOShsA==
X-Google-Smtp-Source: AGRyM1sSG7LPNbx+O3QX/U8EPf9wPHDJE6QJSdhqjAJZWBwB70LYl89mpiDhkHvZS4kLeJBaKPZwtw==
X-Received: by 2002:a17:906:d54f:b0:726:2c7c:c0f9 with SMTP id cr15-20020a170906d54f00b007262c7cc0f9mr10357394ejc.441.1656615351848;
        Thu, 30 Jun 2022 11:55:51 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id by27-20020a0564021b1b00b004356112a8a2sm13582941edb.15.2022.06.30.11.55.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Jun 2022 11:55:50 -0700 (PDT)
Message-ID: <3b1339d1-515d-20d2-074d-25d555f5e6d9@linaro.org>
Date:   Thu, 30 Jun 2022 20:55:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] ARM: dts: imx6qdl-ts7970: Fix ngpio typo and count
Content-Language: en-US
To:     Kris Bahnsen <kris@embeddedTS.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Mark Featherston <mark@embeddedTS.com>
References: <20220630182746.3813-1-kris@embeddedTS.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220630182746.3813-1-kris@embeddedTS.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/06/2022 20:27, Kris Bahnsen wrote:
> Device-tree incorrectly used "ngpio" which caused the driver to
> fallback to 32 ngpios.
> 
> This platform has 62 GPIO registers.
> 
> Signed-off-by: Kris Bahnsen <kris@embeddedTS.com>

You should add here Fixes tag.

Best regards,
Krzysztof

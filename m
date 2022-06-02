Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0233B53B7D0
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 13:29:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233662AbiFBL3Z (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 07:29:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbiFBL3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 07:29:24 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5887E297507
        for <devicetree@vger.kernel.org>; Thu,  2 Jun 2022 04:29:23 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id f9so9462601ejc.0
        for <devicetree@vger.kernel.org>; Thu, 02 Jun 2022 04:29:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=BR4CJA+/4AAtUQYZXsslsKLQ/9UqeN150vqbG7TsZAE=;
        b=wJJEWs450yRmmlWyMiCPywLvuCW8+IXzJhM+LA2I8ScJu5TR/fbMUDJTXi8kuDW9aZ
         BVRtyOcV5ZuNTHgncbX9+80r5nIi8AfnfmPHhIvRNIf5CeUIk2NU0e77XvhqNZ7fqeCR
         Of3DQuXS1iJRQNWcEu+YUFU0lAPDLNzaWOkHyWXrkYAH3+VEVPZbLBWreWtVfP5Q8xrI
         d7Mz70OD7Evc6QVRci1QWyFydaVERv1l5o9cBHY8rHKEvNEGLYaDlqvYWEm04jhEMfa8
         mKEMtGKMF9+9AUj20KwG6M9qH9HHILKlD+K9zRTOHCynoSov7AinUMIRFec3ZoveBVzl
         Je8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=BR4CJA+/4AAtUQYZXsslsKLQ/9UqeN150vqbG7TsZAE=;
        b=5eau+2WL8Ds5g65XkRSq295uUroqjCVaWu2CkJCpf4+jXuMNsk8VD/IOyxGy7BSuE8
         Mqqh+tNr/JBkgCUKSlC+ehXAtBSwFsMwHTaVdbHzfR97uW8DI+lXHLbP6/DUp7O7zymd
         aI63ufo4uH/zvGJ6O6zCpEeidwFlpmGTYKqFTvWNk0gjx6reE1nxxwYYyME3Ag+gY12O
         0JTW4HcSNd+rdk+7EbN0XjOosjJiFC+sHrBcsyiw55tsXL5VH68rsY6QFEUub3vOJUVy
         zqdcN2t2BiBt8boHhSGUh/BphoIabAbzyKSrvjSHiJAcpeHgKbFap41YckCdb9RC2x27
         Lqtg==
X-Gm-Message-State: AOAM531DgOCRk+gQ6Ym1x55lHTr27szaVSof7rCr8eM5qCcVsqT2LpGF
        88YFKMtjKtCxZhq9v9xq/QhoVA==
X-Google-Smtp-Source: ABdhPJy8Q3jBJVRW3cwgdUL2t2k+yqIhReFZqw6ckj0Lni3KQ5dhNrhjlvYwc7oD+tp6BK2EMfu0ig==
X-Received: by 2002:a17:907:720f:b0:6f8:5e72:d8d8 with SMTP id dr15-20020a170907720f00b006f85e72d8d8mr3524715ejc.541.1654169361804;
        Thu, 02 Jun 2022 04:29:21 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id kx18-20020a170907775200b006feec47dadfsm1612789ejc.156.2022.06.02.04.29.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 02 Jun 2022 04:29:21 -0700 (PDT)
Message-ID: <2f495a30-04ad-5507-8d08-1f6afa732f89@linaro.org>
Date:   Thu, 2 Jun 2022 13:29:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v2 1/3] dt-bindings: remoteproc: pru: Re-arrange
 "compatible" in alphabetic order
Content-Language: en-US
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Suman Anna <s-anna@ti.com>, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220602101920.12504-1-kishon@ti.com>
 <20220602101920.12504-2-kishon@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220602101920.12504-2-kishon@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/06/2022 12:19, Kishon Vijay Abraham I wrote:
> Re-arrange "compatible" string in alphabetic order to decrease the
> chance of conflicts.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

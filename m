Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F02F7574874
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 11:18:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238132AbiGNJST (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 05:18:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237955AbiGNJSA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 05:18:00 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF52F4A823
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:15:48 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id n18so1809305lfq.1
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 02:15:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=R+KzWMV4PGws7LHrrh61+iUc6s0/upYI0aondL2dwwY=;
        b=qxclZdaOL0Z2pWNQkJeemWXR7/uucodFnIH6t05D3hME0vYV542h+0TcKto/g/+L9L
         kCrfljDmp7NmiDi+iAjXKqBlAnJJRId8hBZ3vYZlGwgmNHkQZSuPVpOuLNYwfLG0tY9N
         9ZNnJyL1PzpjcMNwr3O37tsrUNGox5N5VPiJYYKCabDQN7z0h4rRRWhht0Fr+QRmv+0k
         MdOLRruTS1V6lTAA5M+xV/wghi7koOOCiDQuMyIdztrwRrGONdDnd1MsAx56UPRFZTX8
         ILOwDQO6BGDQ5c3nwlK9G7/uq1S9rjS4+z+RwJrgF77dwzbubFlDmQ+mnxUBvEzdDCdh
         cdDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=R+KzWMV4PGws7LHrrh61+iUc6s0/upYI0aondL2dwwY=;
        b=mdQDmIHlTLI05idDMT5WDzbWO7/RaJzCRJJLJdAdVEaTBBpr+B0vyuC5ghRO80nWg2
         FtWf3PkZpv+eoqjgtZz4CMHZOxyiL3fjAcjFwFE2NDUgQExglw+SR5IVsPLiecuHQ9uD
         1HB3xUETQmTV6X2gGQluuzhYax5B1spco23cBUz5YzL6REboX1A4cBetM1FgH6qVzgVT
         R3KeogSe6AAGm7e3ZUObNz5OqFF6x+RhOQTvwsFqDdu1qfYl5F4XdOvZ5F1rKigExldr
         PVAxMsqxztGLdqzpzTTm78gncT7c85SgNv1QLdweAivZrAsS+BIOpFjAsPiuPEoiCrxW
         1BgA==
X-Gm-Message-State: AJIora84DU4gFPwKrxF/zPE1AMKmQ2HkC/JVL7Co8zrWuUj5OGAVM0I0
        OxkrxoUDFn5O2YAU3Gt4PWn7wA==
X-Google-Smtp-Source: AGRyM1sQWC4ogVdKX+fBAK6mPRvhxHD8r32F51/7jDL1xoqZXPehDsD9tbjLIkKwEPqmVgm7V44uBA==
X-Received: by 2002:a05:6512:16a2:b0:489:cbc9:a4ec with SMTP id bu34-20020a05651216a200b00489cbc9a4ecmr4630321lfb.173.1657790143160;
        Thu, 14 Jul 2022 02:15:43 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id h25-20020a056512055900b0047f79c636f7sm253111lfl.167.2022.07.14.02.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jul 2022 02:15:42 -0700 (PDT)
Message-ID: <0e698eed-e6ff-9c37-1de9-f1f224531c8c@linaro.org>
Date:   Thu, 14 Jul 2022 11:15:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 13/30] dt-bindings: phy: qcom,qmp-pcie: add missing
 child node schema
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220707134725.3512-1-johan+linaro@kernel.org>
 <20220707134725.3512-14-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220707134725.3512-14-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/07/2022 15:47, Johan Hovold wrote:
> Add the missing the description of the PHY-provider child node which was
> ignored when converting to DT schema.
> 
> Fixes: ccf51c1cedfd ("dt-bindings: phy: qcom,qmp: Convert QMP PHY bindings to yaml")
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---
>  .../bindings/phy/qcom,qmp-pcie-phy.yaml       | 92 +++++++++++++++++++


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

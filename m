Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1A3DB590E54
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 11:46:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237568AbiHLJqD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 05:46:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33638 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232812AbiHLJqC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 05:46:02 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DAD23321
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 02:46:01 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id x9so409142ljj.13
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 02:46:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=HnIwDlX/JVtrallIUFUhoxgC7/rC4uW7G6kTzn+y9Kc=;
        b=fRrc83dABxCIedBFCkJR4KrcJ6EsoBjay0O9ApFu02EC/3pSx1DI5FWhHts4mCxlGy
         5+iV6+XPfv2zGCzwA5gR/q79wjifndv/4Ut9jFVdMDhTfErbxq4NcPjwPPIVfNfUF2rT
         u/nhZmfeNJzFry2PMuA1JFjp9Dfdr1jcObsSYkzEUsJf9/s2xGriaheByd8ayp1RmLXh
         Pqa5K4i7T/UWbNcSPytTFiRUf76zq/e82FvCYMh7rUszghrIMLifPFBmhowYF8smPPv0
         0p4DMylY277cSCt0CVMmUp22qgW53MdH42oZB6doErBIuYcgCxpXE4msd85XLorXcgoI
         mixA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=HnIwDlX/JVtrallIUFUhoxgC7/rC4uW7G6kTzn+y9Kc=;
        b=5882lolRXV4PdOqzm9IK7B1xN0vk+iQ0+IJuAzaIUWSIJeLCisminh30vObOpZxHSh
         0tBswlHXUt0RqLowGprcFi8EPrUggi4kOt/0bPhNvG7kdTGPQ2FAjc4haVhaJtEiz5cz
         qEas9TEop20WIgfUy6WOTATct6FRXJeSPHMJ4pQl79pJaEVwP2n8DWY4okTd0OOghags
         gieC6T2M3/QDE1lBWozH/hSJ/sNBFuklI3mtPkPhRf6ViyAjkt1v052WQWGwVxwl3jW2
         EeIbNPPWIXkZJ3ZLQP9JYQNXo+TQpa9w4FmLvofsFv7k3OCsoCLP2JpbZHJWwqdTaY2b
         ssdA==
X-Gm-Message-State: ACgBeo0z/UhoIu+XdUo04pc29ZOmPSN4df5BqqFxIC70BwlQvHVarADl
        HHEOAMpuARj6DaFsqtVIGhmXqg==
X-Google-Smtp-Source: AA6agR5nsQJw3hCnA/C5NhEoOLK+EQ1boJ+MFa4vGfmppLxUjoXGmYFFuol9O/BdFML65udzNfGzkQ==
X-Received: by 2002:a2e:7e02:0:b0:25f:f8fa:53bb with SMTP id z2-20020a2e7e02000000b0025ff8fa53bbmr941575ljc.6.1660297560279;
        Fri, 12 Aug 2022 02:46:00 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id z23-20020a195057000000b0048b08f0c4e9sm152554lfj.176.2022.08.12.02.45.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 02:45:59 -0700 (PDT)
Message-ID: <8fafda4e-cb4d-1e89-cd26-1778c84841b2@linaro.org>
Date:   Fri, 12 Aug 2022 12:45:56 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v4 1/2] dt-bindings: arm: fsl: Add MSC SM2S-IMX8PLUS SoM
 and SM2-MB-EP1 Carrier
Content-Language: en-US
To:     Martyn Welch <martyn.welch@collabora.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, Li Yang <leoyang.li@nxp.com>
Cc:     kernel@collabora.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220812084120.376042-1-martyn.welch@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812084120.376042-1-martyn.welch@collabora.com>
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

On 12/08/2022 11:41, Martyn Welch wrote:
> Add DT compatible strings for a combination of the 14N0600E variant of
> the Avnet (MSC branded) SM2S-IMX8PLUS SoM on it's own and in combination
> with the SM2-MB-EP1 carrier board.
> 
> Signed-off-by: Martyn Welch <martyn.welch@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E398F635398
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 09:58:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236626AbiKWIyl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 03:54:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236722AbiKWIyg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 03:54:36 -0500
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 246C6F2C37
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:54:36 -0800 (PST)
Received: by mail-lj1-x232.google.com with SMTP id d3so20669340ljl.1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 00:54:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=PNci12Bf0vBYmKC3Nyo1ySusK0Po552Ewnk3CKCFgiM=;
        b=uFzBBFc2i+/cs2eokxyz9+zPpobzbSA5PttHyEmsE5O8m9d0ffaSHLkggJctyfOHvC
         GaPb456kzfgPTkarLmQq0yq4EJflAF87ejknNDXPUDrCKpRfra4nGdRn/MkhxB14eNZ1
         ClWptRHX/l2rYgeWkhXxPa41aBgHHxWm+g0rcTLfvkcIZu9UiUx3KWtdGirv3IzK3P1C
         d+kcfk6eZbP4gUupa5jfz+RXFrQzQpjEljUS+lAsH+ZJEm8dQn3+s9msHQNZFPQvI+wn
         ZuZqRPpgb4B7j4uDvSGrfDyrkJPNLSSgW9D6IbIviLL1NGiCVNKXuNGMJ5D6ATxPIAzy
         wkWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=PNci12Bf0vBYmKC3Nyo1ySusK0Po552Ewnk3CKCFgiM=;
        b=uGoUyCGglaSp6Tq64fdra1DIpEwNAtJU5BA5yvQItR6Jr6ca8zBEX374UYYaj/ROS0
         44HNZimbXyPob8cToqT3ZdoTOtAP6OhxOKAgwF6vItna3iyqs0f55yJN8FzllyU4CmxH
         hUyiHvVoOoU+tlW78M0kKSFHrDaN1unuEUoOC4x9ZX4u8vnbHkFqHxcrO9hg/3pGBK8I
         tX6Y69ZI+QXVt77+BiBaN5RbJF/wTnsO4rI1XDJICDsL7zeUMVFy9facg30FEhOzn3Sv
         VJFD7YVp0IsRPmpWXQRtpTuWv1l6qI5h+Q8pyTHWSrsfV5Pwl3RUo1L/XRZDOKVlJriG
         yF7A==
X-Gm-Message-State: ANoB5png1E0D/qSn4acLiZNlukpG9DKdEv9KCCuoZpeMMG2QhGOlNsdM
        T0nnt6hPGwoFoo0jP5Ie88UelA==
X-Google-Smtp-Source: AA0mqf7zw0pr/I8AJsrt0bkdgbbMNDxfTG/Inc4P8oO0f9B7+bwl+WZbKu89sNkMdVirsGZ8SjdSMA==
X-Received: by 2002:a2e:a80a:0:b0:277:2600:9cc0 with SMTP id l10-20020a2ea80a000000b0027726009cc0mr8668597ljq.437.1669193674524;
        Wed, 23 Nov 2022 00:54:34 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id t17-20020a195f11000000b004994117b0fdsm2812854lfb.281.2022.11.23.00.54.33
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Nov 2022 00:54:33 -0800 (PST)
Message-ID: <40a0eff9-607d-1143-3835-378079f38c0f@linaro.org>
Date:   Wed, 23 Nov 2022 09:54:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Subject: Re: [PATCH v2 1/2] dt-bindings: phy-j721e-wiz: add j721s2 compatible
 string
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, r-gunasekaran@ti.com,
        rogerq@kernel.org, vkoul@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vigneshr@ti.com
Cc:     linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20221123032413.1193961-1-mranostay@ti.com>
 <20221123032413.1193961-2-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221123032413.1193961-2-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/11/2022 04:24, Matt Ranostay wrote:
> Add ti,j721s2-wiz-10g compatible string to binding documentation.
> 
> Signed-off-by: Matt Ranostay <mranostay@ti.com>
> ---
>  Documentation/devicetree/bindings/phy/ti,phy-j721e-wiz.yam


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


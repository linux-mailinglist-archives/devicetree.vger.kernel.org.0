Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14B92542B45
	for <lists+devicetree@lfdr.de>; Wed,  8 Jun 2022 11:19:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233772AbiFHJTk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Jun 2022 05:19:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235202AbiFHJTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Jun 2022 05:19:03 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 61A57224138
        for <devicetree@vger.kernel.org>; Wed,  8 Jun 2022 01:41:11 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id gl15so26150814ejb.4
        for <devicetree@vger.kernel.org>; Wed, 08 Jun 2022 01:41:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=S47dvdWUN7Ba1ERPw3oejaVkM1n7wr7OiK0XR5kUMiQ=;
        b=uskTefCRS9kyK9iuKEe/3qoMsEytarqwN6AXzGTDBnv2LVMTzz/sxDZoGIH9d8zBPt
         cwNJs62tItAXDHb2G0GHD/49bmVrFskdBCNFpJn9rsNKyvczECgj6pXsrBwZdj4cefa1
         jGCnSUwy/sce9iFb8mwBofAv4BW4wX6IVWnOIA0tRBa6/VzaL+epPxgqPPIaQCePnjnP
         WsQk67eePQ2ffVELCDJVr1sT+uJ71CzGaUe8ielsLR2g9tTGuZA+SlSAgH1RbqG+FZb3
         /SFPJLn/gsaXj4WZXQ+xT8iyPB5wh9jEr4c5NRm4HVWcMq4gz3oRLqhi8ieVbYfm4QhM
         cdiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=S47dvdWUN7Ba1ERPw3oejaVkM1n7wr7OiK0XR5kUMiQ=;
        b=3Fr/3z1FoVLNXeN6zI4C3zt7iMN16yLNZthWBClqhaw0p+GF3cw1HcINwym/3c/cfD
         MRLBx+U1kHLBrEGMzxtTZq4R4gqmiN7H87quMPCXoehhumN/EgObZGzJZ4PHIVmFsNzk
         pjYJex1YkG5Ps+1pf0LWY8LtMj2ANPM9VkkDcLS0C1hHNdfcMDumJaqdRJ7oxt70pKbQ
         mjKwQK/lo5CQLrj+XoV/xQD95CEOECjDlNo+OrlaFDnOAmyiUZJOZKbX4Mg4EvYpVBDP
         jGl+MCSOb/wm7F3kP2LHBLuX9dYzUEGFWSpDRksw82S1sz8Wwq1u6ym95m4E6qGNyRG9
         5NVQ==
X-Gm-Message-State: AOAM533xOmTix/4SlPdx7Wo5J28TRlUoW2VVz9GqkfzzTi+NQi1bxe7a
        SQ8rBZcRZxdQ6QObv3sxCNS1cg==
X-Google-Smtp-Source: ABdhPJxy4wBmQ7wW9pIeaifXRzMYwbZ1QM8BkkK3IBZZEIknvSNeVtXpfTetoTj1b+dT5cZTfxs6iA==
X-Received: by 2002:a17:906:449:b0:711:c975:cfb8 with SMTP id e9-20020a170906044900b00711c975cfb8mr15670663eja.58.1654677669990;
        Wed, 08 Jun 2022 01:41:09 -0700 (PDT)
Received: from [192.168.0.189] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id c2-20020a170906154200b006f3ef214dd2sm8699500ejd.56.2022.06.08.01.41.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Jun 2022 01:41:09 -0700 (PDT)
Message-ID: <c2724dc0-b3c7-00eb-08ea-b23296f40044@linaro.org>
Date:   Wed, 8 Jun 2022 10:41:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 1/9] ARM: dts: at91: use generic name for reset
 controller
Content-Language: en-US
To:     Claudiu Beznea <claudiu.beznea@microchip.com>,
        nicolas.ferre@microchip.com, alexandre.belloni@bootlin.com,
        p.zabel@pengutronix.de, sre@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220608083942.1584087-1-claudiu.beznea@microchip.com>
 <20220608083942.1584087-2-claudiu.beznea@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220608083942.1584087-2-claudiu.beznea@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/06/2022 10:39, Claudiu Beznea wrote:
> Use generic name for reset controller of AT91 devices to comply with
> DT specifications.
> 
> Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
> Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

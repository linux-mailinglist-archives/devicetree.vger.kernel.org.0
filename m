Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9C0FC5E5C97
	for <lists+devicetree@lfdr.de>; Thu, 22 Sep 2022 09:39:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231204AbiIVHju (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 22 Sep 2022 03:39:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40452 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231191AbiIVHjq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 22 Sep 2022 03:39:46 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E0A8220E0
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:39:44 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id z20so9954718ljq.3
        for <devicetree@vger.kernel.org>; Thu, 22 Sep 2022 00:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=QC8NSLMZ3dkpRhYs4wtJiBcmM9tDKBZ8SwAjsZ988u0=;
        b=Y16s4/b6xGv5TzTVLE1i4ForYnWQlTw77wBzzUH0cXxxZFMOmAgFDQnOJS8AmL+6mh
         AHRSDODYsk97rDuG6n4lvssfcXEGQxKkJdBz/RaD1At9Z4askc6y4/avx29Vn4VCj7y1
         Gv7Le9hRqJpmGlrOQsi4ChgdrRlG2xbY7uwi7aU2djt+rXJNC+Ry/k0pc8u6vqzTm6+x
         SjeZ8Y+ZVN3MBxX0k+bCgkjUxoEA78zgoyrdPAO0Z3Me8m1mykRrYmkikUDfuwISL2hT
         UbJl/MTYoYnEcQCfTIoYSQUnTiwOh5ke/YGkPCnrlfNd/FA9BytB6IV1WcbC9KTKoCkf
         pn9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=QC8NSLMZ3dkpRhYs4wtJiBcmM9tDKBZ8SwAjsZ988u0=;
        b=uddAPa6wGMsx8CKeyarE3MxtGeWO6OVpHJoBnc70y5qZpYy8XoNiKe0Yq/wDW6BGeK
         T2qLjSG42aImtnGPdNZRkAUQom2Wy2hYnfeAAHVO2yqHKlFGlgno66JTxXPOlGXJ77dJ
         e16F6XbcrXtv6S6VWPNhzCi3mMIOYdso6yRpDXlBVZwKPT9v5JS/rBfmj1c4EuN86PyE
         1HA4Br+H33PsYuMM5qm6QVsNb9miQ0M7/vsuThvT2loJ2yO/R9wl648UaA2oJaPBjIz2
         o4DE4Fja27EwnVLL+G4+y5y3COpUpxTIQpNnZwUeaP1SALHwWzFVptTUo79HkZPqGFsu
         Yp0Q==
X-Gm-Message-State: ACrzQf2hoTwSPP+OIGRfVhVOQ/AuXUVz5pmJUU7QTK1LuqkmBgebmlKX
        r+59G5z8ZfbzLfdE1/gSKUnZNg==
X-Google-Smtp-Source: AMsMyM5G44NPDzPfpzJEzTFjOT+M/o3QGB3chqI/lvpSTb4zSnAe8BWJEGkPAOZHCidQto+yXna46w==
X-Received: by 2002:a2e:b693:0:b0:26c:3ddc:4175 with SMTP id l19-20020a2eb693000000b0026c3ddc4175mr660198ljo.486.1663832382176;
        Thu, 22 Sep 2022 00:39:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id f13-20020a2eb5ad000000b0026ab83298d6sm772792ljn.77.2022.09.22.00.39.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Sep 2022 00:39:41 -0700 (PDT)
Message-ID: <7e46c597-5420-e1f7-96fe-29618a6a2e93@linaro.org>
Date:   Thu, 22 Sep 2022 09:39:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH v3 1/3] dt-bindings: net: renesas: Document Renesas
 Ethernet Switch
Content-Language: en-US
To:     Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
        pabeni@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     netdev@vger.kernel.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org
References: <20220922052803.3442561-1-yoshihiro.shimoda.uh@renesas.com>
 <20220922052803.3442561-2-yoshihiro.shimoda.uh@renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220922052803.3442561-2-yoshihiro.shimoda.uh@renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/09/2022 07:28, Yoshihiro Shimoda wrote:
> Document Renesas Etherent Switch for R-Car S4-8 (r8a779f0).
> 
> Signed-off-by: Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>
> ---
>  .../bindings/net/renesas,etherswitch.yaml     | 286 ++++++++++++++++++
>  1 file changed, 286 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> 
> diff --git a/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> new file mode 100644
> index 000000000000..988d14f5c54e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/net/renesas,etherswitch.yaml
> @@ -0,0 +1,286 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/net/renesas,etherswitch.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

All the previous comments from v2 are still applicable (as I replied
after you sent this).

Please fix this or respond to my comments on v2.

Best regards,
Krzysztof


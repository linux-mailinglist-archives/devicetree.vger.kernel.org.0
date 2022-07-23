Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C997557F190
	for <lists+devicetree@lfdr.de>; Sat, 23 Jul 2022 22:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238772AbiGWU6Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 23 Jul 2022 16:58:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236829AbiGWU6P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 23 Jul 2022 16:58:15 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 862F2183A6
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:58:14 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id a13so8859999ljr.11
        for <devicetree@vger.kernel.org>; Sat, 23 Jul 2022 13:58:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=4tjnViAfdAE3PZkZlAtnEiY3dNQfVBhqVbN9YH3dYIk=;
        b=BWl3FxErX9EK/BnvgoCHGHxePmjLs9o/Ye8aQYM0aaRQe7CIwKN3rwtcjQG/+Zisgm
         2z9INlTIpd/0tJJNVEFZbJvXZPkVHN6tJieLr8fJEUQNkuaFf6rq1Zr+4JgLe/am97n8
         EH1U1uZY2uusUQ2DkQBEGkQnaoh5f5lu8La3LkXNbUQhrdT4u1lB6HxUfQGS86XSEEvH
         vEPJkud6BQnP7KK6xCs3de/UGog2QKei8zMz0fKZGqkCdpRqZwaoSW0avgl7g+hMKZLV
         N6oSqnGazR+fhzHHIZjMasNGvHADaXchaKyZz4AWcI8DXyz+Ucn1TpRWGfhG2va8cRFn
         kv/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=4tjnViAfdAE3PZkZlAtnEiY3dNQfVBhqVbN9YH3dYIk=;
        b=ByC6O8kO78gmTulRKwCbKpwI+p8NP2n940F6rFkV/nwOtMPTgy8ou7VfTWNVnEPvXI
         gqtgfZXz3A8GtcOI/BIBptostbkvjmDrOjpDmIz5utFSakUbriaysk8IF381j0O9FOBO
         iO/8RXqe70x2iR/6yhbvcmvQG74o7H82aMsorAzHbU6i2hrR4JwFMaGF6oOZEg8iS4lk
         um7lo0ePi23Y0hZpG82ngT9Dlq0JWk47jhAnS/J7SbVNYgeQbph1FPsK14y1LtaYKt60
         isc5G0UeFOIJ42q737P54qe3X+l6O/4KQS1GUDFOWWKo526VXRMaQoHWX8lUuup5vHEG
         PdaQ==
X-Gm-Message-State: AJIora8vC3aBme/mz1sWXAoRI1kcpQCxDAHSB2Le09YWw/qZ3NlE2swH
        a495QAGYzyv8+C96tNBVxGSsdQ==
X-Google-Smtp-Source: AGRyM1vkcOPh6s2+9q0laFZ3A8f86bLfRcMLquXDZ/oLJtDd0s8i7fIhtqH+DHtl4Rqm9IPaZcb1zA==
X-Received: by 2002:a2e:980e:0:b0:25d:53f0:642c with SMTP id a14-20020a2e980e000000b0025d53f0642cmr1958260ljj.405.1658609892568;
        Sat, 23 Jul 2022 13:58:12 -0700 (PDT)
Received: from [192.168.10.173] (93.81-167-86.customer.lyse.net. [81.167.86.93])
        by smtp.gmail.com with ESMTPSA id u13-20020ac251cd000000b004811a829de5sm1825310lfm.59.2022.07.23.13.58.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Jul 2022 13:58:12 -0700 (PDT)
Message-ID: <e1d57de9-060b-bd58-2cea-85f41f75e7be@linaro.org>
Date:   Sat, 23 Jul 2022 22:58:10 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 02/22] dt-bindings: power: Add power-domain header for
 RV1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Elaine Zhang <zhangqing@rock-chips.com>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-3-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220723204335.750095-3-jagan@edgeble.ai>
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

On 23/07/2022 22:43, Jagan Teki wrote:
> Add power-domain header for RV1126 SoC from description in TRM.
> 
> Signed-off-by: Elaine Zhang <zhangqing@rock-chips.com>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  include/dt-bindings/power/rv1126-power.h | 34 ++++++++++++++++++++++++
>  1 file changed, 34 insertions(+)
>  create mode 100644 include/dt-bindings/power/rv1126-power.h
> 
> diff --git a/include/dt-bindings/power/rv1126-power.h b/include/dt-bindings/power/rv1126-power.h
> new file mode 100644
> index 000000000000..f15930ff06f7
> --- /dev/null
> +++ b/include/dt-bindings/power/rv1126-power.h
> @@ -0,0 +1,34 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Dual license and a blank line,  please.

> +#ifndef __DT_BINDINGS_POWER_RV1126_POWER_H__
> +#define __DT_BINDINGS_POWER_RV1126_POWER_H__
> +


Best regards,
Krzysztof

Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 120246D9EE6
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 19:36:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235777AbjDFRgA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 13:36:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238972AbjDFRf4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 13:35:56 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F86976BF
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 10:35:31 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id sg7so3204560ejc.9
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 10:35:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680802528;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=m1btbIk9lIX208iJ98SIci39LtLuOBmrAbL3puHRRMg=;
        b=nRVv+3uCVe7Yi4r8ib0kl89/LT0qVMLHiib3jYpxycoVP9nnfEHFfrTJGJCNK560Cn
         22/300/e5PyAXimORlhvO7afrJrt3Vtd5KMfa4jhKxHg3LlGNf9bRT6pS6+HJeo+CYru
         fgqlqimGbij20LDhSXgmq+Vn/Ur7+DyyeFUlwtbKaG1pSfr2r16+nflof+jFIuTUWA0Z
         raqomzDgY9GviR9YAdIud1pW+8VMV+WmxhdkvJmTktmEUYwkvJUgdH3WOLuma5jLrg8m
         vlsPjiNH0E7DnaZEiFmNbJH84ODtQ5i2bFCionQVLDR7yCqgcRbZpnhSTbo/HggquP4v
         2J0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680802528;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=m1btbIk9lIX208iJ98SIci39LtLuOBmrAbL3puHRRMg=;
        b=meqmP7S2tNLs6mNZwudv2xKfoOhdn2v+YkMFgpYt32alK6BsrCCmh8Cpn94x2ko8ol
         UyuECQvtF7ylSv9/4YElYXCmt9nawF7Q4qa2bkoXd2WCOMKWp10FG6dh2uug9EsjAnqq
         veI6BGHijh6O0OIDpw3Nbhjj/Z7RDynOUoizc11lJd4x51Onn5LvJsbZiuTPnLGP+Snp
         PtoY3DnFkgAYsvNexA65YKpe4ChamAk67QJs19J+pTwGxGDM6RSrQ1G4cUJ8Oc5mQaSA
         hECBxh8v5Cmw+RBqFUc5949yNzXfaunKVj+NYGC5nV6WFrEgTXwzgtDsTH7yvPFIaouN
         0iRg==
X-Gm-Message-State: AAQBX9ePMbMj0ArXvGuwBzukPoMEs+3hO85W/hqw4bRKtgQubOJs+Hy3
        9+MIdgfwrXmI0gvhTLKsjvDm4A==
X-Google-Smtp-Source: AKy350ZISRw2PrH33AOh/gVZh/kG+wFLuCObpeAeTUOtA+Xr8RBQXSsU4+2jeXAfSzXrH8UC1E/YIw==
X-Received: by 2002:a17:906:1119:b0:8ee:babc:d40b with SMTP id h25-20020a170906111900b008eebabcd40bmr7625029eja.58.1680802528737;
        Thu, 06 Apr 2023 10:35:28 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id gz19-20020a170907a05300b0093debb9990esm1055939ejc.212.2023.04.06.10.35.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 10:35:28 -0700 (PDT)
Message-ID: <24c505df-9145-a515-4b68-aa5806916430@linaro.org>
Date:   Thu, 6 Apr 2023 19:35:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: wm8711: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel.baluta@nxp.com
Cc:     patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230405205820.6836-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230405205820.6836-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 05/04/2023 22:58, Saalim Quadri wrote:
> Convert the WM8711 audio CODEC bindings to DT schema
> 
> Signed-off-by: Saalim Quadri <danascape@gmail.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof


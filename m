Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CA8B5A91B7
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 10:10:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233768AbiIAIKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 04:10:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233801AbiIAIKY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 04:10:24 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2236F4A801
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 01:10:06 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id s15so11918154ljp.5
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 01:10:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=SKGmwv8AbUSC9zege3PH8qea0gYr5fiWxmtpqEyUyAg=;
        b=VdsXrRQzInj9f2cf+DidXonzE4h3voXfwU/iUZWeLf5mneEZHid2UF7sHva8v2eRxF
         3MJ8W83cZCc1khW/EjjndoKtR7A4NvRuMpp/2qehoJIZgECLjcwMK3GVeYl2t7cqlSQD
         aKRFF1txHvWHYfC/svIOtwXcqtPMR4KhBewzVc5DLTVYIDTodZD0UpNOmI0qv/YOMu0e
         oj1qEOp/2FL+ZEwnpICszfuydtO7V+5/FpSrjBX9I5v4BB76fY8G7XMiDwhgcH92un3t
         90wpuBtFrrixeGEsdfYP/4iApWhGbQ2/xqTyMptoXVVERtph2p2a8tYywAI9sRmZvF5p
         UZnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=SKGmwv8AbUSC9zege3PH8qea0gYr5fiWxmtpqEyUyAg=;
        b=WgxHz/mGJUvXjgTVMtvquFfxL35Gqf9t2itIz9nZosodVUjVwYGnijT2f81nrXaR5D
         LVCjH2s9dIJl50Z5jfAd4DkZCJ47bfB5dpPJMfeek1x+KEIh2vJ8bsf1JOL55f5lrVoT
         mpIjYJsT9cPpGGomPoKnD6k5u88wea3mQso9oFgHJysSEXGpMgoWT1C6bcyF+3wtGy7N
         wpOhGAMNovJBochcnGIPUOWYunspqIs9EPC+HiNP/ylH+zEBknv15osb9o1Hk79QwJKB
         5WxLGjFuj5fo83aPlJ8Mz2kp3JKcKV6vVEAHg4b8zr4Smr/l1AGwbV1eT3EI1Ychu8+z
         Aizg==
X-Gm-Message-State: ACgBeo11QCtCcpUNkWwKnweDEpEgSzntjIOxaf0Uu4N2MMWAS6OEC73W
        dVZopQvE+Wj0lcvT+xcR6wIHSA==
X-Google-Smtp-Source: AA6agR67ZwDjKHNlqrgITbSej3pDpqFcTje7eL8XIngDydh7nyivybENP1bQMjqNGOIRKAN2ynvUqQ==
X-Received: by 2002:a05:651c:1114:b0:268:9d4b:c208 with SMTP id e20-20020a05651c111400b002689d4bc208mr1561461ljo.4.1662019804190;
        Thu, 01 Sep 2022 01:10:04 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id z20-20020a0565120c1400b004946b3d4517sm1405111lfu.55.2022.09.01.01.10.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 01:10:03 -0700 (PDT)
Message-ID: <7367b752-bd27-35c3-4114-92d950983982@linaro.org>
Date:   Thu, 1 Sep 2022 11:10:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2] dt-bindings: display: bridge: renesas,dw-hdmi: Add
 resets property
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        Andrzej Hajda <andrzej.hajda@intel.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Robert Foss <robert.foss@linaro.org>,
        Jonas Karlman <jonas@kwiboo.se>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-renesas-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220831213536.7602-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831213536.7602-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
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

On 01/09/2022 00:35, Lad Prabhakar wrote:
> The DWC HDMI blocks on R-Car and RZ/G2 SoC's use resets, so to complete
> the bindings include resets property.
> 
> This also fixes the below warning when running dtbs_check:
> arch/arm64/boot/dts/renesas/r8a774b1-hihope-rzg2n-rev2-ex-idk-1110wr.dtb: hdmi@fead0000: Unevaluated properties are not allowed ('resets' was unexpected)
> 	From schema: Documentation/devicetree/bindings/display/bridge/renesas,dw-hdmi.yaml
> 
> While at it mark resets property as required as all the DT sources
> in the kernel specify resets and update the example node.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof

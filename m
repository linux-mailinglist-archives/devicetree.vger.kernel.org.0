Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 34EB14D99C1
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 11:58:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347658AbiCOK7L (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 06:59:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347749AbiCOK6G (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 06:58:06 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5C6735267
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:56:54 -0700 (PDT)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 982623F32D
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:56:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647341811;
        bh=ht8KpCSDXfMeLKk1Iy9OjwDkeWKdnRpzH0Z8PU+F89M=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=LSDzC0deInfWjrGAItDnx4m/E5k6DCq6tWecLyJ4YhEooqeREvuPhb+4GYTT5NeYG
         t0tVG2+hX9U9/ytDV/AhjC/oYZFQkbKAyUTzea48+YXxlcCMJYSIoeZBoavgQNDBbP
         7dc9HdzAWeKM0RVFROooP5t3YgWV00Eh57aRbfXkzXcfyocZRDty2UxtD5muiTdxOa
         hnsQYy0NHqJAVomjhMv8RieBND6DFGRdFEpxxYKenGzKGMJn6rksDmEZN0Xw/ule0q
         r6Q1ZYtHCRngqmVDgl6Wvp1Kj8ClUcSVNfcc748Ko8aTE4A3+ZJ55sUh7OAydDiB1b
         oXlHYbvuYeO2A==
Received: by mail-ej1-f70.google.com with SMTP id ga31-20020a1709070c1f00b006cec400422fso9435039ejc.22
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 03:56:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ht8KpCSDXfMeLKk1Iy9OjwDkeWKdnRpzH0Z8PU+F89M=;
        b=gvMZjn4uPISeFtqdFlW3vRu6FU3Mrolux28V72tI+qR0+focyNrCgkb6qeleka4v9T
         t74SIJXY/jl3UimleWztDSpGFVPzy5Bvb0cOi8HNHUX5XpbGmFZfcynIlkGEciicr5Yv
         SOE1Xovz6PzICWH5TE68P5VIIp/65nPi5/XBTZH85CT6kcX/6ZKk8uWfY0Vsu8pqLTui
         4HhZNb7yKazGfc56kDBDzcWNxL2JNVpaq21F9x+ehgTA778qrpscfkBCYd3HoZ8luM72
         9OCH1tK4xYw4N4iLZhqDz3C/oM5gIfrkEhkQkUy3yDcX0tS4l+xFis/MYXnPp5ehWhbv
         fkmA==
X-Gm-Message-State: AOAM533lpKSAHknaQ42K5Jtx3G0hAK2jeK+bTvFNLF0EDhTmPg25unhy
        MOd97U5AfQmXe+Mn9lNvNJeZ6kcVlb30Wk1WR0dq6REc75fmuwoucom7dWD7gypx2eyUDjyhodt
        pt4VY0Ns6unDiiAB8C2kofqJkfT94CUH1Ko31HOA=
X-Received: by 2002:a17:906:1f11:b0:685:d50e:3bf9 with SMTP id w17-20020a1709061f1100b00685d50e3bf9mr22467088ejj.275.1647341811109;
        Tue, 15 Mar 2022 03:56:51 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx1Vc0VBi8iyHSnXP0SjQn1EF5R+EUhGiixvRk7hd4/4ka6soIYQAQL/knRyeFkxKGN4H/zyg==
X-Received: by 2002:a17:906:1f11:b0:685:d50e:3bf9 with SMTP id w17-20020a1709061f1100b00685d50e3bf9mr22467063ejj.275.1647341810849;
        Tue, 15 Mar 2022 03:56:50 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id e9-20020a170906c00900b006d4a45869basm8011143ejz.199.2022.03.15.03.56.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 03:56:50 -0700 (PDT)
Message-ID: <095b4dad-ade6-c742-1993-e5dc89f5cb93@canonical.com>
Date:   Tue, 15 Mar 2022 11:56:49 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH V7 1/5] dt-bindings: display: mediatek: add aal binding
 for MT8183
Content-Language: en-US
To:     Rex-BC Chen <rex-bc.chen@mediatek.com>, chunkuang.hu@kernel.org,
        matthias.bgg@gmail.com, robh+dt@kernel.org
Cc:     p.zabel@pengutronix.de, airlied@linux.ie, daniel@ffwll.ch,
        jassisinghbrar@gmail.com, fparent@baylibre.com,
        yongqiang.niu@mediatek.com, hsinyi@chromium.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220314090033.25773-1-rex-bc.chen@mediatek.com>
 <20220314090033.25773-2-rex-bc.chen@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220314090033.25773-2-rex-bc.chen@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/03/2022 10:00, Rex-BC Chen wrote:
> Add aal binding for MT8183.
> 
> Signed-off-by: Rex-BC Chen <rex-bc.chen@mediatek.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  .../devicetree/bindings/display/mediatek/mediatek,aal.yaml      | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> index 61f0ed1e388f..6c8c83988a24 100644
> --- a/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> +++ b/Documentation/devicetree/bindings/display/mediatek/mediatek,aal.yaml
> @@ -23,6 +23,8 @@ properties:
>      oneOf:
>        - items:
>            - const: mediatek,mt8173-disp-aal
> +      - items:
> +          - const: mediatek,mt8183-disp-aal

Use enum in previous entry. This is weird setup to have items with one
element and then duplicate it for another oneOf entry.

>        - items:
>            - enum:
>                - mediatek,mt2712-disp-aal


Best regards,
Krzysztof

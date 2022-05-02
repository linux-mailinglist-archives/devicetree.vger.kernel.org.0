Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28694516CF1
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 11:03:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1384066AbiEBJHR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 05:07:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1384157AbiEBJHK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 05:07:10 -0400
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.133.124])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id EAE3D5A2C4
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 02:03:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
        s=mimecast20190719; t=1651482219;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=FpGY3cW3/6J4yKa8EXXxCJr3Lj9472mc1S4Wz6WqNsk=;
        b=IN8tumOO8OjSD3LA2B3jOr1yNlSVQPbcldrO1iBq6T1e47Rgm4Bc3jtG0QZQgvIp6eBYuP
        lZm8Z4IZnjG99KqV6RMFH5xdEy++5cqVKsUt2Q6qP3QIc1nARrRTphpQ4am7IHsc2eyVqi
        Q5UdndNNMPI9r2YRs4p8xuIy7y17/0Q=
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-212-JrqyRrhEODOIQhooEn14VA-1; Mon, 02 May 2022 05:03:38 -0400
X-MC-Unique: JrqyRrhEODOIQhooEn14VA-1
Received: by mail-wm1-f69.google.com with SMTP id c125-20020a1c3583000000b0038e3f6e871aso4841244wma.8
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 02:03:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=FpGY3cW3/6J4yKa8EXXxCJr3Lj9472mc1S4Wz6WqNsk=;
        b=1eA4mvkrDAdUgoh+k2tz+t2kUsYgxoimigyFhPGyGU/OONzrSVp8z5ePCUxBQ8Hjk4
         1KN8c57vomboUVGrYuqDcEqH8BM/hZRhYQxQ9YTdl9GH1fKOMU/GW4ByJLFtB9sLFRYI
         1IivHZUw6jxypxnRlJ+QI7W/wMPSXeIVbQk1yyC2355kJCK7ToO9wE9W1ftpveGqdn4B
         pMetTlkwrI/9Pvi+Y/52ryeWpgG1/qXj3AKMLoDL/1tJOeGLASoFcXaGqqkbKs4iiErP
         yxOD7FlkWtLLmpDFg6lq6qAx3acQ7fgS6me8E7VuiRcU5D/I0nA7cpAljZ6SeLON7NBI
         Y5pg==
X-Gm-Message-State: AOAM532a5+FbhjTKmc2YcDDrANNc0jsRebjWCH9SjMuHZRHvVVaV6x78
        P2ux4TNf1udWWV3HDlrbyvAVSEXgcI32NmK/k/4Io25jka0RmiA+wMjbK7rcsmb+FAMOL+ZELgC
        KctFMQhby4VhdNjN2ZpmLCQ==
X-Received: by 2002:a05:600c:2315:b0:394:1f6:f663 with SMTP id 21-20020a05600c231500b0039401f6f663mr14058388wmo.115.1651482217418;
        Mon, 02 May 2022 02:03:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbsULLQNb9vjo1ezL+p8Cf6dFKE2nVwfN6guohdCbyn8WVcpZBi6zUW8w0MqtOmAaZ35aCWg==
X-Received: by 2002:a05:600c:2315:b0:394:1f6:f663 with SMTP id 21-20020a05600c231500b0039401f6f663mr14058369wmo.115.1651482217206;
        Mon, 02 May 2022 02:03:37 -0700 (PDT)
Received: from gerbillo.redhat.com (146-241-115-66.dyn.eolo.it. [146.241.115.66])
        by smtp.gmail.com with ESMTPSA id e23-20020adf9bd7000000b0020c5253d8ccsm6694778wrc.24.2022.05.02.02.03.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 02:03:36 -0700 (PDT)
Message-ID: <a11501d365b3ee401116e0f77c16f6c2f63ef69b.camel@redhat.com>
Subject: Re: [PATCH 1/2] dt-bindings: net: adin: document
 adi,clk_rcvr_125_en property
From:   Paolo Abeni <pabeni@redhat.com>
To:     Nate Drude <nate.d@variscite.com>, netdev@vger.kernel.org
Cc:     michael.hennerich@analog.com, eran.m@variscite.com,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Date:   Mon, 02 May 2022 11:03:35 +0200
In-Reply-To: <20220429184432.962738-1-nate.d@variscite.com>
References: <20220429184432.962738-1-nate.d@variscite.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.42.4 (3.42.4-2.fc35) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello,

On Fri, 2022-04-29 at 13:44 -0500, Nate Drude wrote:
> Document device tree property to set GE_CLK_RCVR_125_EN (bit 5 of GE_CLK_CFG),
> causing the 125 MHz PHY recovered clock (or PLL clock) to be driven at
> the GP_CLK pin.
> 
> Signed-off-by: Nate Drude <nate.d@variscite.com>
> ---
>  Documentation/devicetree/bindings/net/adi,adin.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/net/adi,adin.yaml b/Documentation/devicetree/bindings/net/adi,adin.yaml
> index 1129f2b58e98..5fdbbd5aff82 100644
> --- a/Documentation/devicetree/bindings/net/adi,adin.yaml
> +++ b/Documentation/devicetree/bindings/net/adi,adin.yaml
> @@ -36,6 +36,11 @@ properties:
>      enum: [ 4, 8, 12, 16, 20, 24 ]
>      default: 8
>  
> +  adi,clk_rcvr_125_en:
> +    description: |
> +      Set GE_CLK_RCVR_125_EN (bit 5 of GE_CLK_CFG), causing the 125 MHz
> +      PHY recovered clock (or PLL clock) to be driven at the GP_CLK pin.
> +
>  unevaluatedProperties: false
>  
>  examples:

The recipients list does not contain a few required ones, adding for
awareness Rob, Krzysztof and the devicetree ML. If a new version should
be required, please include them.

Thanks!

Paolo


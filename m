Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1CEBE58082B
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:26:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229737AbiGYX0v (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:26:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52682 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229809AbiGYX0u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:26:50 -0400
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DB8D726136
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
Received: by mail-oi1-f170.google.com with SMTP id r13so14966476oie.1
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=zQQwIAk5EozhLG3rn8vfm+aflsqjWz1F5kcQhq5h+oo=;
        b=PzfnhHsdOQe1mEA+m++oLXv+YZBMRw/aP1QcCwXDEX6hIjjWna1k807f8BFr4uKqcq
         aU/Ns/3bLAj2ZAaN3H+oThqmQp7hzzUYrg5YZpA8KMi07H0/w65JyepFO5CALljxinLP
         omjetDOSskYpYWkpbOZnQeX2M96j1AKPdDuIo0iLnBoD9PnLZeKGeS0rxb9+wQSTkHkp
         uaCQd+3MDzxJEYnQllz8pRoEbTolAW+YnJmke0/eVgJMEhRAFjOTps9OBw6dz+yLVfXc
         k/IN8yVNJ7avmisB/E6pqdBICjnTZ+bsdUOzHu2APR66X42gRpNPwUm/w/Umzb3VjaEV
         9BgQ==
X-Gm-Message-State: AJIora+Ut/OVOUai1ABMS0UI7XUAkrdLsJorwyaRb3LlxLu8N+InLNTy
        EAtHYjcJfik6ow++czjFFA==
X-Google-Smtp-Source: AGRyM1u3GAsIM8kxIdTFxl33WWpOoAzD+fw0d1zIp8xzGsKJWR4XV1a/Fp3hJQh4XU1Zv0yfo/Ly/Q==
X-Received: by 2002:aca:ba86:0:b0:33a:c6f7:3001 with SMTP id k128-20020acaba86000000b0033ac6f73001mr5932856oif.5.1658791609542;
        Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id x13-20020a4ab90d000000b00435f239e5b3sm743914ooo.10.2022.07.25.16.26.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:26:49 -0700 (PDT)
Received: (nullmailer pid 2953746 invoked by uid 1000);
        Mon, 25 Jul 2022 23:26:47 -0000
Date:   Mon, 25 Jul 2022 17:26:47 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Lee Jones <lee.jones@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 16/22] dt-bindings: mfd: syscon: Add Rockchip RV1126 QoS
 register
Message-ID: <20220725232647.GA2953643-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-17-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-17-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022 02:13:29 +0530, Jagan Teki wrote:
> Document dt-bindings for Rockchip RV1126 QoS registers.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

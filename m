Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA51758082E
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 01:27:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232580AbiGYX12 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 19:27:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237068AbiGYX10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 19:27:26 -0400
Received: from mail-oa1-f48.google.com (mail-oa1-f48.google.com [209.85.160.48])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A7E126550
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:27:26 -0700 (PDT)
Received: by mail-oa1-f48.google.com with SMTP id 586e51a60fabf-10d845dcf92so16673226fac.12
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 16:27:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=6c482wUHG0+BswLvQPyJOx86Nn42yE6Ct0i20LUXo8g=;
        b=LIk6XVUTg2VwxF1JMzcvymvuLenZ/CCxx7MkcIUNoXfvAm4Y/4Ak7fvi/0TnCLvkPy
         h/YtMdTzY5lU3i3UikYyPt+3sllQo0qQrG4hD1K+4isS2Mc9mIMuNkcmVCaic3Z+yQFV
         +ghiW2z2k1n8AdfkIh06szaPakTJ6bYMilRJpFkXVPOn/rfhND5rs1PAWJ06tw+PA5Ea
         fhbRYYfKLCGyW5MaeMSO15FY68KE396bqKSUXMV1xMZAgCdb/FHuQaIiCk837nIqI32R
         tUZdebM1tw4Ems6HOrW+LvBICJB+E6IvI9MRwUz4MuN6jPbcED3fKbDK2/YTO/IZlKwy
         8u7w==
X-Gm-Message-State: AJIora/ZTcIHOZYsD3o3gbC+/xQbDgO8j+QBvSdRyKHoAI/oDcAfKvQy
        PYIL14+nAXQppG0DT1z7fw==
X-Google-Smtp-Source: AGRyM1sY2VakZcPds7b7R5w9Ntzb3+qiiLoaNiQI0DMCChT8JprhnRcKK6/s1pxWE/DY3PZ33nJ8xQ==
X-Received: by 2002:a05:6870:51cf:b0:fb:79c:a42a with SMTP id b15-20020a05687051cf00b000fb079ca42amr15965803oaj.159.1658791645307;
        Mon, 25 Jul 2022 16:27:25 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id t21-20020a056870f21500b0010dc461410bsm4873170oao.38.2022.07.25.16.27.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jul 2022 16:27:24 -0700 (PDT)
Received: (nullmailer pid 2954833 invoked by uid 1000);
        Mon, 25 Jul 2022 23:27:23 -0000
Date:   Mon, 25 Jul 2022 17:27:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jagan Teki <jagan@edgeble.ai>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Kever Yang <kever.yang@rock-chips.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 18/22] dt-bindings: vendor-prefixes: Add Edgeble AI
 Technologies Pvt. Ltd.
Message-ID: <20220725232723.GA2954779-robh@kernel.org>
References: <20220723204335.750095-1-jagan@edgeble.ai>
 <20220723204335.750095-19-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220723204335.750095-19-jagan@edgeble.ai>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 24 Jul 2022 02:13:31 +0530, Jagan Teki wrote:
> Edgeble AI is an Artificial Intelligence company with a focus
> on deploying Neural Acceleration principles at the Edge.
> 
> Add vendor prefix for it.
> 
> Signed-off-by: Jagan Teki <jagan@edgeble.ai>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

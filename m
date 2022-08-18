Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8AC8598A1F
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 19:20:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344213AbiHRRQJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 Aug 2022 13:16:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1343967AbiHRRPz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 Aug 2022 13:15:55 -0400
Received: from mail-pl1-f179.google.com (mail-pl1-f179.google.com [209.85.214.179])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5404E57245
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 10:08:37 -0700 (PDT)
Received: by mail-pl1-f179.google.com with SMTP id y4so2037478plb.2
        for <devicetree@vger.kernel.org>; Thu, 18 Aug 2022 10:08:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc;
        bh=jaYV5KsXQx65EbpLx16Cuu54AXrpKHiBaSSwkmhU37Y=;
        b=BmEt/ZsmG5wgLobaMeFpFkQrf82aywEzY/MjatpgggxR+MQsEQeeK3wuNjm1WW4JDX
         Gcogui3FO9KFGL05RWds0+u+r4wUEDkI8gIW1f3bl6o+I3UqdFEPwoRwAp3upjcWV1nC
         RwFH1irkCybbncbDwzIgZd3fx4Cq28/hDsEJmbhDwnw80Tl6LP8Doi8tLfJgdJrJNTHF
         4HEauVjwioFqEij2FIuEw7WCzOJaUfHsjwjyus1r9A8XZef6khu5aVj44nW46VgmSPCC
         oRhR4c9i11JqNgArRQBsnCJSwAD35bASdsL3GbCJaxc7m1uKb0Nl7mIMpG0SXuDtmvNA
         oEGA==
X-Gm-Message-State: ACgBeo1/CQTkr6oEzizH6pTsHJFuuiLvEY4k/SQ/BMWxGfplaonCR9so
        imsqCNpDnqjjcPzyUm+ggw==
X-Google-Smtp-Source: AA6agR5IyIeVlir6NXvkgKrWHixgzbSgk0dAWywP6fp6Su42dma+hIglyfD4mZIBKyQfl8jkKqJkwQ==
X-Received: by 2002:a17:90b:4f83:b0:1f2:fe65:7f89 with SMTP id qe3-20020a17090b4f8300b001f2fe657f89mr9480421pjb.20.1660842490374;
        Thu, 18 Aug 2022 10:08:10 -0700 (PDT)
Received: from robh.at.kernel.org ([2607:fb90:647:4ff2:3529:f8cd:d6cd:ac54])
        by smtp.gmail.com with ESMTPSA id h6-20020a170902680600b0015e8d4eb26esm1634138plk.184.2022.08.18.10.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 Aug 2022 10:08:09 -0700 (PDT)
Received: (nullmailer pid 2040464 invoked by uid 1000);
        Thu, 18 Aug 2022 17:08:07 -0000
Date:   Thu, 18 Aug 2022 11:08:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Dominik Haller <d.haller@phytec.de>
Cc:     sam@ravnborg.org, thierry.reding@gmail.com,
        krzysztof.kozlowski+dt@linaro.org, upstream@phytec.de,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add EDT ETML1010G0DKA
 panel
Message-ID: <20220818170807.GE1978870-robh@kernel.org>
References: <20220818124518.42080-1-d.haller@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220818124518.42080-1-d.haller@phytec.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 18, 2022 at 02:45:17PM +0200, Dominik Haller wrote:
> Add binding for the Emerging Display Technology ETML1010G0DKA panel.
> It's a 10.1" WXGA (1280 x 800) LVDS panel with backlight and capacitive
> touch.
> 
> Signed-off-by: Dominik Haller <d.haller@phytec.de>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)

Acked-by: Rob Herring <robh@kernel.org>


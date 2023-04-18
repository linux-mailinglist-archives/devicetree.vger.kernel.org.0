Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3C6956E6C68
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 20:48:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjDRSsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 14:48:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232714AbjDRSsK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 14:48:10 -0400
Received: from mail-oo1-f43.google.com (mail-oo1-f43.google.com [209.85.161.43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 26AC572A7
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 11:48:05 -0700 (PDT)
Received: by mail-oo1-f43.google.com with SMTP id 006d021491bc7-54711bc097bso142928eaf.0
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 11:48:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681843684; x=1684435684;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LlWfKESFE5Jk+2KzqRJVpsSQyFn8vQwUgqr78N8g9ds=;
        b=BBPc5Sz3nZOpwoJlW6Is76oAK3XYg50VyHHHnsIVQ8lkFKszxFhZbVhBSM/fQpN+5X
         cX8PS/nOnukXERWOdbZmngGonVjovMcE6nQ2Gt1e11gScDboDQH8sQFy4/MdXbyVn8uf
         3sHC06xtAYIHiOEYgPIcWkKsVe7BG+JrfjCgpHeP/tpoIf9EHX9x56BmNjftgAKyzkWi
         pk/BbSOFhsRiTepEkxLAeMumJWMQh/bP3Yx563QYiKCf6zYCtlumCaTSGtdMTY5V3S4i
         pDJxzwWZY5poh0g7lGKP/OxVFhi/fRZn+EsJz/zS99hBXTEr3Zkans5Qf12z7GS0JOPS
         f29A==
X-Gm-Message-State: AAQBX9cYsaLarZx3dDSP29LXrRrtB0up1m1gPJl6vCNvYMzZV2rHQunf
        NBFxzcDAR14xGzAFBjbQ0Q==
X-Google-Smtp-Source: AKy350YAJi0Y2+ntAHVq86cev8s34h8Ch8vdGUqQJGWeGSgusRldbKrsc1B4GjvyhXGmu/oMCmTgKw==
X-Received: by 2002:a05:6808:1cb:b0:384:167d:736b with SMTP id x11-20020a05680801cb00b00384167d736bmr1569368oic.15.1681843684397;
        Tue, 18 Apr 2023 11:48:04 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o203-20020acaf0d4000000b0038c5c0d8a83sm2847613oih.33.2023.04.18.11.48.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Apr 2023 11:48:04 -0700 (PDT)
Received: (nullmailer pid 2110941 invoked by uid 1000);
        Tue, 18 Apr 2023 18:48:03 -0000
Date:   Tue, 18 Apr 2023 13:48:03 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, dianders@chromium.org,
        Fabio Estevam <festevam@denx.de>, neil.armstrong@linaro.org,
        dri-devel@lists.freedesktop.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org
Subject: Re: [PATCH] dt-bindings: drm/bridge: ti-sn65dsi86: Fix the
 video-interfaces.yaml references
Message-ID: <168184368037.2110846.14889471836578329348.robh@kernel.org>
References: <20230412175800.2537812-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230412175800.2537812-1-festevam@gmail.com>
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


On Wed, 12 Apr 2023 14:58:00 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> video-interface.txt does not exist anymore, as it has been converted
> to video-interfaces.yaml.
> 
> Instead of referencing video-interfaces.yaml multiple times,
> pass it as a $ref to the schema.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Pass  video-interfaces.yaml as a $ref to the schema. (Rob)
> 
>  .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml    | 6 +-----
>  1 file changed, 1 insertion(+), 5 deletions(-)
> 

Applied, thanks!


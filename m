Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C8A9E66E488
	for <lists+devicetree@lfdr.de>; Tue, 17 Jan 2023 18:11:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234166AbjAQRLd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 17 Jan 2023 12:11:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234106AbjAQRLc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 17 Jan 2023 12:11:32 -0500
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2372833470
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:11:29 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1433ef3b61fso32615019fac.10
        for <devicetree@vger.kernel.org>; Tue, 17 Jan 2023 09:11:29 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=sVkPYQT0+8PLUEYOWtovJMpxQSI+MX+r2Tx1WauPkPU=;
        b=yrbHsh8Udqkrc7iMIzyxqzF9UyWTc/CAVMppfOsjbnMEY424QF9+nfi3+7y0IJORl0
         B4RWKGfygXeoPscCfHHxlNFia3qQlUqZfMDDHXhgCkv12qTMVlk3mK0BU+vio940BRIo
         M/npZ6b1cmvsGsqfevGYGdDIAhMsz4YF7nYeRaT1GUoOdXGp5tEy3Yk8Y1fgGh4zEnRD
         PgllAhAyXisYJYNku8aOO+R5ihuTystCgpN8BsR4kVoZLzXMSE/LkRdtMkZLcrYGeKtS
         8na4/5ndoHJQ+JLm1isI1Rgayuqhq5ZchGFdDAG8EzT1MUxnJiktnAiVInJsTkmPMbIb
         vu2A==
X-Gm-Message-State: AFqh2krOLDtPGbWlm0lDCJnIqa6YESLVfztabFhND7uLLlbmFp0uvcS3
        cM3Hf2yvkeCFWUEI5epF7g==
X-Google-Smtp-Source: AMrXdXuv4aRfwPuKQk0uSp1scr1y9JapyxOAs2+2rhBM5xBmqDE7nV74YC021t+S9eEbr2xx7dkbiA==
X-Received: by 2002:a05:6871:4684:b0:150:c4e4:447e with SMTP id ni4-20020a056871468400b00150c4e4447emr2308171oab.12.1673975489154;
        Tue, 17 Jan 2023 09:11:29 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id t13-20020a056871020d00b0014435b51ef7sm16662914oad.30.2023.01.17.09.11.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jan 2023 09:11:28 -0800 (PST)
Received: (nullmailer pid 3253303 invoked by uid 1000);
        Tue, 17 Jan 2023 17:11:28 -0000
Date:   Tue, 17 Jan 2023 11:11:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        devicetree@vger.kernel.org,
        Linux-ALSA <alsa-devel@alsa-project.org>
Subject: Re: [PATCH v2 05/10] ASoC: dt-bindings: audio-graph-port: remove
 prefix
Message-ID: <167397548762.3253243.4644404963209524392.robh@kernel.org>
References: <87358hj2ub.wl-kuninori.morimoto.gx@renesas.com>
 <87v8ldho43.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v8ldho43.wl-kuninori.morimoto.gx@renesas.com>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Wed, 11 Jan 2023 01:11:08 +0000, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Audio Graph port doesn't use prefix.
> This patch removes it.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/audio-graph-port.yaml | 3 ---
>  1 file changed, 3 deletions(-)
> 

Acked-by: Rob Herring <robh@kernel.org>

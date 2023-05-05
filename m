Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F3FD6F833B
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 14:46:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232258AbjEEMqL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 08:46:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54098 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232263AbjEEMqI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 08:46:08 -0400
Received: from mail-oa1-f50.google.com (mail-oa1-f50.google.com [209.85.160.50])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0996F1D96B
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 05:45:58 -0700 (PDT)
Received: by mail-oa1-f50.google.com with SMTP id 586e51a60fabf-192cd5579faso1463283fac.1
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 05:45:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683290758; x=1685882758;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HRJRQ0UETCwajV8o0hoH4rj6ViayRkurN2vMWQnHeqU=;
        b=ck06SXtfwBMHTqomZZEPuMN4J38Iq5v60mNdTZVwpepMfw4FzJe97CH7IyWPn3lkV4
         LG08/OTTSq0dhyhGt7GIVGALm0RKVeUQ8s5W1RJKq2CTE4cf5PTGauPNAQ0Cm0oywH7u
         gn/pxhBkXYnMeyEam1GHjKzZYF9xz4Jgc2bqrHShcQZaX7lJ8ciy6vtj7lDPBStWnpXx
         iUSuPmQ0W4Cd29wGbJq9xf8dm6SJwZbm2VH8ofEBhyPJqcAMQDqd8Uzfvsb5w5UFDo/X
         ghUKMCeZn/SPDAqBpi5ZZnBT/O2Scnydrge6PfD755sFlSUBmzackUBDGe6oLu8m8z/k
         saWQ==
X-Gm-Message-State: AC+VfDybWr5oX5E+3n/g0RkPjTSsvFI7nl7r9xH3NsuzJFWwYAlMiumt
        xOaeEOvuo/xRTj6Bw6D5Yw==
X-Google-Smtp-Source: ACHHUZ44JmIFhFU7z8g6wUNK0y/Mx1Q6mbh5GRH32DT74E4ugKJbKFYS2/F1Tav7VKLgNHbFuZ9ZMw==
X-Received: by 2002:a05:6870:8c08:b0:187:aeb3:81a6 with SMTP id ec8-20020a0568708c0800b00187aeb381a6mr803362oab.6.1683290758100;
        Fri, 05 May 2023 05:45:58 -0700 (PDT)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id l5-20020a4ae385000000b00545442d89b3sm886369oov.23.2023.05.05.05.45.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 05:45:57 -0700 (PDT)
Received: (nullmailer pid 2408705 invoked by uid 1000);
        Fri, 05 May 2023 12:45:56 -0000
Date:   Fri, 5 May 2023 07:45:56 -0500
From:   Rob Herring <robh@kernel.org>
To:     Conor Dooley <conor@kernel.org>
Cc:     devicetree@vger.kernel.org, krzysztof.kozlowski+dt@linaro.org,
        robh+dt@kernel.org, Conor Dooley <conor.dooley@microchip.com>
Subject: Re: [PATCH v1] MAINTAINERS: add Conor as a dt-bindings maintainer
Message-ID: <168329073579.2408219.8798697389690352941.robh@kernel.org>
References: <20230504-renderer-alive-1c01d431b2a7@spud>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230504-renderer-alive-1c01d431b2a7@spud>
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


On Thu, 04 May 2023 22:58:39 +0100, Conor Dooley wrote:
> From: Conor Dooley <conor.dooley@microchip.com>
> 
> Rob asked if I would be interested in helping with the dt-bindings
> maintenance, and since I am a glutton for punishment I accepted.
> 
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>  MAINTAINERS | 1 +
>  1 file changed, 1 insertion(+)
> 

Applied, thanks!

